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
        --set zip_url=https://... --set source_tag=1.2 --set domain_version=1.2 \
        --contracts '[{"id": "GetX", "version": "1.0"}]'
    scripts/registry_update.py x.y.z --status blocked --blocked-reason "..."
    scripts/registry_update.py --next-pending       # skriv ut nästa pending-domän
    scripts/registry_update.py --add-version-of x.y.z --tag 2.1.19 \
        --set source_commit=...                     # äldre levande major som egen IG
"""

import argparse
import datetime
import json
import sys
from pathlib import Path

REGISTRY = Path("contracts-registry.json")


def now() -> str:
    return datetime.datetime.now(datetime.timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")


# Versionsfält är alltid strängar: "2.0" får inte bli talet 2.0.
STRING_KEYS = {"domain_version", "ig_version", "source_tag", "source_commit", "version"}


def parse_value(raw: str, key: str = ""):
    if key in STRING_KEYS:
        return raw
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
    ap.add_argument("--add-version-of", metavar="DOMÄN",
                    help="skapa en post för en äldre levande major av DOMÄN (kräver --tag); "
                         "posten får id DOMÄN@<semver> och output_dir <domänens katalog>/versions/<semver>/")
    ap.add_argument("--tag", help="Bitbucket-taggen för --add-version-of")
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

    if args.add_version_of:
        if not args.tag:
            ap.error("--add-version-of kräver --tag")
        sys.path.insert(0, str(Path(__file__).resolve().parent))
        import tkb_version
        parent = next((d for d in data["domains"] if d["id"] == args.add_version_of), None)
        if parent is None:
            sys.exit(f"okänd domän: {args.add_version_of}")
        semver = tkb_version.semver(args.tag)
        vid = f"{parent['id']}@{semver}"
        if any(d["id"] == vid for d in data["domains"]):
            sys.exit(f"finns redan: {vid}")
        slug = parent["bitbucket_slug"]
        data["domains"].append({
            "id": vid,
            "version_of": parent["id"],
            "role": "supported",
            "bitbucket_slug": slug,
            "zip_url": f"https://bitbucket.org/rivta-domains/{slug}/get/{args.tag}.zip",
            "domain_version": tkb_version.label(args.tag),
            "status": "in-progress",
            "blocked_reason": None,
            "output_dir": f"{parent['output_dir'].rstrip('/')}/versions/{semver}/",
            "contracts": [],
            "questions_count": 0,
            "sushi_result": None,
            "started_at": now(),
            "completed_at": None,
            "source_tag": args.tag,
            "source_kind": "tag",
            "ig_version": semver,
        })
        args.domain = vid

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
        entry[key] = parse_value(raw, key)

    data["last_updated"] = now()
    REGISTRY.write_text(json.dumps(data, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(json.dumps(entry, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
