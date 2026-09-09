#!/usr/bin/env python3
"""
commit_qa_results.py — skriver in CI-byggets QA-resultat i repot:

1. Kopierar qa-results/<slug>/qa-errors.json till
   igs/<slug>/ig-publisher-logs/qa-errors.json (den plats CLAUDE.md-agenten
   läser ifrån, se "Steg 4.6 — Feedbackloop").
2. Uppdaterar contracts-registry.json: ig_publisher_result + publish_status
   för varje domän vars output_dir matchar en byggd katalog.

Körs av .github/workflows/build-and-publish.yml i commit-results-jobbet,
efter att qa-results/-artefakten laddats ned. Committar INTE själv — det
gör workflow-steget efteråt (så att git-loggen förblir tydlig och enkel att
felsöka om något går fel här).
"""

import json
import shutil
from pathlib import Path

QA_RESULTS_DIR = Path("qa-results")
REGISTRY_PATH = Path("contracts-registry.json")


def main():
    if not QA_RESULTS_DIR.is_dir():
        print("[commit_qa_results] Ingen qa-results/-katalog — inget att göra.")
        return

    registry = json.loads(REGISTRY_PATH.read_text(encoding="utf-8")) if REGISTRY_PATH.exists() else {"domains": []}
    by_output_dir = {d.get("output_dir", "").rstrip("/"): d for d in registry.get("domains", [])}

    updated = 0
    for status_file in sorted(QA_RESULTS_DIR.glob("*/status.json")):
        status = json.loads(status_file.read_text(encoding="utf-8"))
        qa_file = status_file.parent / "qa-errors.json"
        ig_dir = Path(status["dir"].rstrip("/"))

        if qa_file.exists():
            dest = ig_dir / "ig-publisher-logs" / "qa-errors.json"
            dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy(qa_file, dest)
            print(f"[commit_qa_results] Skrev {dest}")

        domain = by_output_dir.get(str(ig_dir))
        if domain is None:
            print(f"[commit_qa_results] VARNING: ingen registerpost med output_dir={ig_dir} — hoppar över registeruppdatering")
            continue

        qa = json.loads(qa_file.read_text(encoding="utf-8")) if qa_file.exists() else {}
        summary = qa.get("summary", {})
        domain["ig_publisher_result"] = {
            "ran_at": status.get("ran_at"),
            "exit_code": status.get("ig_publisher_exit"),
            "fatal": summary.get("fatal", 0),
            "errors": summary.get("errors", 0),
            "warnings": summary.get("warnings", 0),
            "hints": summary.get("hints", 0),
            # status.get("status") speglar publisher-processens faktiska
            # exitkod — den auktoritativa signalen. qa.get("passed") bygger
            # enbart på mönstermatchning av loggrader och missar t.ex. en rå
            # Java-stacktrace från en kraschande subprocess. Båda krävs.
            "passed": status.get("status") == "success" and qa.get("passed", True),
            "note": "Byggd av GitHub Actions (build-and-publish.yml)",
        }
        domain["publish_status"] = status.get("status", "unknown")
        if status.get("status") == "success":
            domain["completed_at"] = status.get("ran_at")
        updated += 1

    if updated:
        from datetime import datetime, timezone
        registry["last_updated"] = datetime.now(timezone.utc).strftime("%Y-%m-%dT%H:%M:%SZ")
        REGISTRY_PATH.write_text(json.dumps(registry, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
        print(f"[commit_qa_results] Uppdaterade {updated} registerpost(er) i {REGISTRY_PATH}")
    else:
        print("[commit_qa_results] Inga registerposter uppdaterades.")


if __name__ == "__main__":
    main()
