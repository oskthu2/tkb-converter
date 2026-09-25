#!/usr/bin/env python3
"""
registry_update.py — uppdatera en domäns post i contracts-registry.json.

Används av pipeline-sessionerna istället för handredigering, så att en
sammanslagningskonflikt i registret (t.ex. mot commit-results-botens
commits på main) alltid kan lösas mekaniskt: ta main:s version och kör
samma kommando igen.

Exempel:
    scripts/registry_update.py population.residentmaster --status done --completed
    scripts/registry_update.py x.y.z --status in-progress --started \
        --set zip_url=https://... --set domain_version=1.2 \
        --contracts '[{"id": "GetX", "version": "1.0"}]'
    scripts/registry_update.py x.y.z --status blocked --blocked-reason "..."
    scripts/registry_update.py --next-pending       # skriv ut nästa pending-domän
"""

import argparse
import datetime
import json
import sys
from pathlib import Path

REGISTRY = Path("contracts-registry.json")


def now() -> str:
    return datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")


def parse_value(raw: str):
    try:
        return json.loads(raw)
    except json.JSONDecodeError:
        return raw


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("domain", nargs="?")
    ap.add_argument("--status", choices=["pending", "in-progress", "done", "blocked"])
    ap.add_argument("--blocked-reason")
    ap.add_argument("--started", action="store_true", help="sätt started_at till nu")
    ap.add_argument("--completed", action="store_true", help="sätt completed_at till nu")
    ap.add_argument("--contracts", help="JSON-lista med {id, version}")
    ap.add_argument("--set", action="append", default=[], metavar="KEY=VALUE",
                    help="godtyckligt fält; VALUE tolkas som JSON om möjligt")
    ap.add_argument("--next-pending", action="store_true")
    ap.add_argument("--exclude", action="append", default=[],
                    help="domän-id att hoppa över vid --next-pending (t.ex. med öppen PR)")
    args = ap.parse_args()

    data = json.loads(REGISTRY.read_text(encoding="utf-8"))

    if args.next_pending:
        for d in data["domains"]:
            if d["status"] == "pending" and d["id"] not in args.exclude:
                print(d["id"])
                return
        sys.exit(3)  # inga pending-domäner kvar

    if not args.domain:
        ap.error("domän-id krävs")
    entry = next((d for d in data["domains"] if d["id"] == args.domain), None)
    if entry is None:
        sys.exit(f"okänd domän: {args.domain}")

    if args.status:
        entry["status"] = args.status
        if args.status != "blocked":
            entry["blocked_reason"] = None
    if args.blocked_reason is not None:
        entry["blocked_reason"] = args.blocked_reason
    if args.started:
        entry["started_at"] = now()
    if args.completed:
        entry["completed_at"] = now()
    if args.contracts:
        entry["contracts"] = json.loads(args.contracts)
    for kv in args.set:
        key, _, raw = kv.partition("=")
        entry[key] = parse_value(raw)

    data["last_updated"] = now()
    REGISTRY.write_text(json.dumps(data, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps(entry, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
