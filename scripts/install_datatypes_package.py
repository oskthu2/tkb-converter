#!/usr/bin/env python3
"""Installera paketet inera.rivta.datatypes (igs/rivta-datatyper) i ~/.fhir/packages.

TKB-IG:erna har paketet som beroende (sushi-config.yaml, dependencies), och varken
SUSHI eller IG Publisher kan hämta det från packages.fhir.org. Därför byggs det ur
repot och läggs i den lokala paketcachen innan någon TKB-IG byggs:

    scripts/install_datatypes_package.py              # från SUSHI-utdata (kör SUSHI vid behov)
    scripts/install_datatypes_package.py --from-output  # från IG Publishers output/package.tgz (CI)

Med --from-output används paketet som IG Publisher byggt (med other/spec.internals, så
att TKB-IG:ernas sidor länkar till typernas sidor). package.json får url satt till var
datatyps-IG:n publiceras på GitHub Pages, så att länkarna går dit och inte till
canonical-adressen (som inte är en webbsida).
"""
import argparse
import json
import shutil
import subprocess
import sys
import tarfile
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import rivta_datatypes as rd  # noqa: E402

CACHE = Path.home() / ".fhir" / "packages" / f"{rd.PACKAGE_ID}#{rd.PACKAGE_VERSION}"


def from_sushi():
    res = rd.IG / "fsh-generated" / "resources"
    # Alltid om, med snapshots: SUSHI kräver dem när en lokal typ ärver en gemensam
    subprocess.run(["sushi", "--snapshot", str(rd.IG)], check=True, stdout=subprocess.DEVNULL)
    pkg = CACHE / "package"
    shutil.rmtree(CACHE, ignore_errors=True)
    pkg.mkdir(parents=True)
    for f in res.glob("*.json"):
        if not f.name.startswith("ImplementationGuide-"):
            shutil.copy(f, pkg / f.name)
    return pkg


def from_output():
    tgz = rd.IG / "output" / "package.tgz"
    if not tgz.exists():
        sys.exit(f"[install_datatypes_package] {tgz} saknas — bygg igs/rivta-datatyper med IG Publisher först")
    shutil.rmtree(CACHE, ignore_errors=True)
    CACHE.mkdir(parents=True)
    with tarfile.open(tgz) as t:
        t.extractall(CACHE, filter="data")
    return CACHE / "package"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--from-output", action="store_true")
    a = ap.parse_args()
    pkg = from_output() if a.from_output else from_sushi()
    pj = pkg / "package.json"
    meta = json.loads(pj.read_text(encoding="utf-8")) if pj.exists() else {}
    meta.update({
        "name": rd.PACKAGE_ID, "version": rd.PACKAGE_VERSION, "canonical": rd.CANONICAL,
        "url": rd.WEB_URL, "fhirVersions": ["4.0.1"], "type": meta.get("type", "fhir.ig"),
        "title": meta.get("title", "RIV-TA gemensamma datatyper"),
        "dependencies": meta.get("dependencies", {"hl7.fhir.r4.core": "4.0.1"}),
    })
    pj.write_text(json.dumps(meta, ensure_ascii=False, indent=2), encoding="utf-8")
    print(f"[install_datatypes_package] {rd.PACKAGE_ID}#{rd.PACKAGE_VERSION} -> {CACHE}")


if __name__ == "__main__":
    main()
