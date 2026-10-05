#!/usr/bin/env python3
"""
tkb_version.py — gör en RIV-TA-versionsetikett eller Bitbucket-tagg till
IG:ns SemVer-version.

Regeln (beslutad 2026-10-05, se planen "semver och parallella versioner"):

    1.0.10                               -> 1.0.10
    2.0                                  -> 2.0.0
    1.0_RC3, 4.1-RC1, 1.0 RC2            -> 1.0.0-rc3, 4.1.0-rc1, 1.0.0-rc2
    1.0.0_beta_r2037                     -> 1.0.0-beta.r2037
    TD_MONITORING_1_0_0_R                -> 1.0.0
    infrastructure_itintegration_messagebox_1.0 -> 1.0.0

Etiketten (label) är TKB:ns eget nummer utan domänprefix, t.ex. "2.0" eller
"1.0_RC3". Den visas i IG:ns text; SemVer-versionen används som paketversion
och i sökvägar.

Användning:
    scripts/tkb_version.py 2.0                 # -> 2.0.0
    scripts/tkb_version.py --label TD_REGISTRY_1_0_0_R   # -> 1.0.0
"""

import re
import sys

_PRE = re.compile(r"[ _-]?(rc|beta|alpha|draft|snapshot)[ _.-]?([0-9a-z]*)$", re.I)


def label(tag: str) -> str:
    """Tagg -> TKB-etikett (versionsdelen, utan domän- eller TD-prefix)."""
    t = str(tag).strip()
    m = re.match(r"^TD_[A-Z_]+?_((?:\d+_)+\d+)(?:_(R|RC\d+))?$", t)
    if m:
        lab = m.group(1).replace("_", ".")
        if m.group(2) and m.group(2) != "R":
            lab += "_" + m.group(2)
        return lab
    m = re.search(r"(\d+(?:\.\d+)*(?:[ _-]?(?:rc|beta|alpha|draft|snapshot)[ _.-]?[0-9a-z_]*)?)$", t, re.I)
    if not m:
        raise ValueError(f"ingen version i taggen: {tag!r}")
    return m.group(1)


def semver(tag: str) -> str:
    """Tagg eller etikett -> SemVer (major.minor.patch[-pre])."""
    lab = label(tag)
    pre = ""
    m = _PRE.search(lab)
    if m:
        kind, num = m.group(1).lower(), m.group(2).lower().replace("_", ".")
        pre = "-" + kind + (num if kind == "rc" else ("." + num if num else ""))
        lab = lab[: m.start()]
    parts = lab.split(".")
    if not all(p.isdigit() for p in parts):
        raise ValueError(f"ogiltig version: {tag!r}")
    while len(parts) < 3:
        parts.append("0")
    return ".".join(str(int(p)) for p in parts) + pre


def is_release(tag: str) -> bool:
    return "-" not in semver(tag)


if __name__ == "__main__":
    args = sys.argv[1:]
    if not args:
        sys.exit(__doc__)
    fn = semver
    if args[0] == "--label":
        fn, args = label, args[1:]
    for a in args:
        print(fn(a))
