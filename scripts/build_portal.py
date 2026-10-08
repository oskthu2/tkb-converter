#!/usr/bin/env python3
"""
build_portal.py — genererar den wrappande IG:n igs/rivta-portal/ som återskapar
rivta.se:s sidor (Start, Tjänstedomäner, Tjänstekontrakt, Dokument, Aktuellt,
Utveckling, FAQ) och länkar vidare till varje domäns FHIR IG.

Källor (igs/rivta-portal/portal-data/):
  servicedomains-snapshot.json  DOMDB-ögonblicksbild (samma format som
                                api.ntjp.se/dominfo/v1/servicedomains.json)
  documents.yml                 arkitekturella dokument (ARK_xxxx)
  development.yml               sidan Utveckling
  news.yml                      nyheter (Aktuellt + RSS)
  faq.yml                       vanliga frågor och svar
samt contracts-registry.json (vilka domäner som har en FHIR IG).

Skriver (genererat, redigera inte för hand):
  igs/rivta-portal/sushi-config.yaml
  igs/rivta-portal/input/pagecontent/*.md
  igs/rivta-portal/input/images/rss.xml

Användning:
  build_portal.py            # bygger från ögonblicksbilden
  build_portal.py --live     # försöker hämta DOMDB live, faller tillbaka på
                             # ögonblicksbilden om api.ntjp.se inte svarar

Miljövariabler:
  SITE_BASE_URL  publik bas-URL för Pages-sajten (default härleds från
                 GITHUB_REPOSITORY, annars https://oskthu2.github.io/tkb-converter/).
                 Används för länkar till domän-IG:erna och i RSS-flödet.
"""

import argparse
import html
import json
import os
import re
import sys
import urllib.request
from datetime import datetime, timezone
from email.utils import format_datetime
from pathlib import Path

import yaml

ROOT = Path(__file__).resolve().parent.parent
PORTAL = ROOT / "igs" / "rivta-portal"
DATA = PORTAL / "portal-data"
PAGES = PORTAL / "input" / "pagecontent"
IMAGES = PORTAL / "input" / "images"
REGISTRY = ROOT / "contracts-registry.json"

DOMDB_URLS = [
    "https://api.ntjp.se/dominfo/v1/servicedomains.json",
    "http://api.ntjp.se/dominfo/v1/servicedomains.json",
]
RIVTA = "https://rivta.se"
GENERATED = "<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->\n"

DOMAIN_TYPE_SHORT = {
    "Nationell tjänstedomän": "Nationell",
    "Extern tjänstedomän": "Extern",
    "Applikationsspecifik tjänstedomän": "Applikationsspecifik",
}


def esc(s) -> str:
    return html.escape("" if s is None else str(s), quote=True)


def site_base_url() -> str:
    base = os.environ.get("SITE_BASE_URL")
    if not base:
        repo = os.environ.get("GITHUB_REPOSITORY", "oskthu2/tkb-converter")
        owner, name = repo.split("/", 1)
        base = f"https://{owner}.github.io/{name}/"
    return base if base.endswith("/") else base + "/"


def slugify(text: str) -> str:
    text = text.lower()
    for a, b in (("å", "a"), ("ä", "a"), ("ö", "o"), ("é", "e")):
        text = text.replace(a, b)
    return re.sub(r"[^a-z0-9]+", "-", text).strip("-")


def domain_page(name: str) -> str:
    return f"doman-{slugify(name)}"


# ── Data ─────────────────────────────────────────────────────────────────────

def load_domdb(live: bool):
    snapshot = json.loads((DATA / "servicedomains-snapshot.json").read_text(encoding="utf-8"))
    if live:
        for url in DOMDB_URLS:
            try:
                with urllib.request.urlopen(url, timeout=30) as resp:
                    doc = json.loads(resp.read().decode("utf-8"))
                domains = doc["answer"] if isinstance(doc, dict) else doc
                if domains:
                    stamp = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M UTC")
                    print(f"[build_portal] Hämtade {len(domains)} domäner live från {url}")
                    return domains, f"hämtad från DOMDB ({url}) {stamp}"
            except Exception as e:  # nätverk, DNS, ogiltig JSON …
                print(f"[build_portal] Kunde inte hämta {url}: {e}", file=sys.stderr)
        print("[build_portal] Faller tillbaka på ögonblicksbilden", file=sys.stderr)
    return snapshot["answer"], f"ögonblicksbild av DOMDB från {snapshot.get('retrieved', 'okänt datum')}"


def load_registry():
    """domän-id (med punkter) → (titel, IG-katalognamn) för domäner med en byggbar IG."""
    if not REGISTRY.exists():
        return {}
    reg = json.loads(REGISTRY.read_text(encoding="utf-8"))
    out = {}
    for d in reg.get("domains", []):
        if d.get("version_of"):
            continue  # äldre huvudversion (igs/TKB_x/versions/<v>/), inte en egen domän
        outdir = (d.get("output_dir") or "").rstrip("/")
        if outdir and (ROOT / outdir / "sushi-config.yaml").exists():
            out[d["id"]] = Path(outdir).name
    return out


def ig_slug_for(name: str, registry: dict):
    key = name.replace(":", ".")
    if key in registry:
        return registry[key]
    # Registret kortar ibland långa id:n (t.ex. "...insurancemedicinedecisio").
    for rid, slug in registry.items():
        if len(rid) >= 40 and key.startswith(rid):
            return slug
    return None


def select_domains(domains_all, registry):
    """Synliga DOMDB-domäner, plus dolda domäner och registerdomäner som har en FHIR IG.

    rivta.se visar inte domäner med hidden=true, men flera av dem har en IG i
    detta repo. De tas med (markerade) så att alla IG:ar går att nå från portalen.
    """
    selected = []
    for d in domains_all:
        if not d.get("hidden"):
            selected.append(d)
        elif ig_slug_for(d["name"], registry):
            selected.append({**d, "portalNote": "dold på rivta.se"})
    linked = {ig_slug_for(d["name"], registry) for d in selected}
    for rid, slug in registry.items():
        if slug not in linked:
            selected.append({
                "name": rid.replace(".", ":"),
                "description": "Domänen finns inte i DOMDB-datakällan, men har en FHIR IG i detta repo.",
                "portalNote": "saknas i DOMDB",
                "interactions": [],
                "versions": [],
            })
    return sorted(selected, key=lambda d: d["name"])


def load_yaml(name: str):
    return yaml.safe_load((DATA / name).read_text(encoding="utf-8"))


# ── Inline-markörer i datafilerna ────────────────────────────────────────────

def make_expander(docs: dict):
    def doc_link(m):
        doc_id, label = m.group(1), m.group(2)
        if doc_id not in docs:
            raise SystemExit(f"[build_portal] Okänt dokument {doc_id} — lägg till det i documents.yml")
        text = label if label else docs[doc_id]["title"]
        return f'<a href="{RIVTA}/documents/{doc_id}/">{esc(text)}</a>'

    def image(m):
        filename, alt = m.group(1), m.group(2) or ""
        # Bilden publiceras från input/images/ om den finns; annars visas
        # originalet på rivta.se så att sidan inte får en trasig bild.
        src = filename if (IMAGES / filename).exists() else f"{RIVTA}/images/{filename}"
        return f'<p><img src="{esc(src)}" alt="{esc(alt)}" style="max-width:100%"/></p>'

    def expand(text: str) -> str:
        text = re.sub(r"\{doc:(ARK_\d{4})(?:\|([^}]*))?\}", doc_link, text)
        text = re.sub(r"\{image:([^|}]+)(?:\|([^}]*))?\}", image, text)
        return text

    return expand


def strip_tags(s: str) -> str:
    return re.sub(r"\s+", " ", re.sub(r"<[^>]+>", " ", s)).strip()


# ── Sidor ────────────────────────────────────────────────────────────────────

def filter_box(table_id: str, placeholder: str) -> str:
    return (f'<p><input type="search" class="portal-filter" data-filter-for="{table_id}" '
            f'placeholder="{esc(placeholder)}" style="width:100%;max-width:30em;padding:4px"/></p>\n')


def write_page(name: str, title: str, body: str, scripts: bool = False):
    content = GENERATED + body
    if scripts:
        content += '\n<script src="portal.js"></script>\n'
    (PAGES / f"{name}.md").write_text(content, encoding="utf-8")
    return name, title


def page_domains(domains, registry, base, source_note):
    rows = []
    for d in domains:
        slug = ig_slug_for(d["name"], registry)
        ig = f'<a href="{base}{slug}/index.html">FHIR IG</a>' if slug else "–"
        dtype = DOMAIN_TYPE_SHORT.get((d.get("domainType") or {}).get("name"), (d.get("domainType") or {}).get("name") or "")
        if d.get("portalNote"):
            dtype = f"{dtype} ({d['portalNote']})" if dtype else d["portalNote"]
        rows.append(
            "<tr>"
            f'<td><a href="{domain_page(d["name"])}.html"><code>{esc(d["name"])}</code></a></td>'
            f'<td>{esc(d.get("swedishShort"))}</td>'
            f'<td>{esc(d.get("swedishLong"))}</td>'
            f"<td>{esc(dtype)}</td>"
            f"<td>{ig}</td>"
            "</tr>"
        )
    n_ig = sum(1 for d in domains if ig_slug_for(d["name"], registry))
    body = (
        "Här hittar du en förteckning över tjänstedomäner. Klicka på domännamnet för mer information. "
        f"{len(domains)} domäner listas, varav {n_ig} har en FHIR Implementation Guide.\n\n"
        + filter_box("domains", "Filtrera på namn, svenskt namn eller typ")
        + '<table class="grid" id="domains">\n<thead><tr><th>Tjänstedomän</th><th>Svenskt kortnamn</th>'
        "<th>Svenskt namn</th><th>Typ</th><th>FHIR IG</th></tr></thead>\n<tbody>\n"
        + "\n".join(rows)
        + "\n</tbody>\n</table>\n\n"
        f"<p><i>Källa: {esc(source_note)}.</i></p>\n"
    )
    return write_page("tjanstedomaner", "Tjänstedomäner", body, scripts=True)


def contracts_of(domain):
    """En rad per (interaktion, huvudversion) med högsta minorversion."""
    best = {}
    for i in domain.get("interactions") or []:
        rc = i.get("responderContract") or {}
        key = (i["name"], i.get("major"))
        minor = rc.get("minor") or 0
        if key not in best or minor > best[key]["minor"]:
            desc = (i.get("interactionDescriptions") or [{}])[0].get("description") if i.get("interactionDescriptions") else None
            best[key] = {
                "name": i["name"].removesuffix("Interaction"),
                "interaction": i["name"],
                "major": i.get("major"),
                "minor": minor,
                "profile": i.get("rivtaProfile"),
                "namespace": i.get("namespace"),
                "description": desc,
            }
    return sorted(best.values(), key=lambda c: (c["name"].lower(), -(c["major"] or 0)))


def page_contracts(domains, source_note):
    rows = []
    count = 0
    for d in domains:
        for c in contracts_of(d):
            count += 1
            rows.append(
                (c["name"].lower(),
                 "<tr>"
                 f'<td>{esc(c["name"])}</td>'
                 f'<td>{c["major"]}.{c["minor"]}</td>'
                 f'<td><a href="{domain_page(d["name"])}.html"><code>{esc(d["name"])}</code></a></td>'
                 f'<td>{esc(c["profile"])}</td>'
                 "</tr>")
            )
    rows.sort(key=lambda r: r[0])
    body = (
        f"Här hittar du en förteckning över tjänstekontrakt, {count} stycken, med en rad per huvudversion. "
        "Klicka på tjänstedomänen för namnrymder, versioner och granskningar.\n\n"
        + filter_box("contracts", "Filtrera på kontrakt, domän eller profil")
        + '<table class="grid" id="contracts">\n<thead><tr><th>Tjänstekontrakt</th><th>Version</th>'
        "<th>Tjänstedomän</th><th>RIV-TA-profil</th></tr></thead>\n<tbody>\n"
        + "\n".join(r[1] for r in rows)
        + "\n</tbody>\n</table>\n\n"
        f"<p><i>Källa: {esc(source_note)}.</i></p>\n"
    )
    return write_page("tjanstekontrakt", "Tjänstekontrakt", body, scripts=True)


def link(url, text):
    return f'<a href="{esc(url)}">{esc(text)}</a>' if url else ""


def page_domain(d, registry, base):
    name = d["name"]
    slug = ig_slug_for(name, registry)
    dtype = (d.get("domainType") or {}).get("name")
    facts = [
        ("Svenskt kortnamn", esc(d.get("swedishShort"))),
        ("Svenskt namn", esc(d.get("swedishLong"))),
        ("Typ", esc(dtype)),
        ("Anmärkning", esc(d.get("portalNote"))),
        ("Förvaltare", esc(d.get("owner"))),
        ("FHIR IG", f'<a href="{base}{slug}/index.html">{esc(slug)}</a>' if slug else "Ingen FHIR IG ännu"),
        ("Källkod", link(d.get("sourceCodeUrl"), "Bitbucket")),
        ("Ärenden", link(d.get("issueTrackerUrl"), "Bitbucket issues")),
        ("Informationssida", link(d.get("infoPageUrl"), "Confluence")),
    ]
    out = []
    out.append(f"<p>{esc(d.get('description'))}</p>\n" if d.get("description") else "")
    out.append('<table class="grid">\n' + "\n".join(
        f"<tr><th>{k}</th><td>{v}</td></tr>" for k, v in facts if v) + "\n</table>\n\n")

    contracts = contracts_of(d)
    if contracts:
        out.append("### Tjänstekontrakt\n\n")
        out.append('<table class="grid">\n<thead><tr><th>Tjänstekontrakt</th><th>Version</th>'
                   "<th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>\n<tbody>\n")
        for c in contracts:
            out.append(f'<tr><td>{esc(c["name"])}</td><td>{c["major"]}.{c["minor"]}</td>'
                       f'<td>{esc(c["profile"])}</td><td><code>{esc(c["namespace"])}</code></td></tr>\n')
        out.append("</tbody>\n</table>\n\n")

    versions = [v for v in d.get("versions") or [] if not v.get("hidden")]
    if versions:
        out.append("### Versioner\n\n")
        out.append('<table class="grid">\n<thead><tr><th>Version</th><th>Dokument</th>'
                   "<th>Granskningar</th><th>Nedladdning</th></tr></thead>\n<tbody>\n")
        for v in sorted(versions, key=lambda v: version_key(v.get("name", "")), reverse=True):
            docs = ", ".join(esc(x.get("documentType") or x.get("fileName")) for x in v.get("descriptionDocuments") or [])
            reviews = "<br/>".join(
                (link(r.get("reportUrl"), f'{r["reviewProtocol"]["name"]}: {r["reviewOutcome"]["name"]}')
                 if r.get("reportUrl") else esc(f'{r["reviewProtocol"]["name"]}: {r["reviewOutcome"]["name"]}'))
                for r in v.get("reviews") or [])
            dl = " · ".join(x for x in (link(v.get("zipUrl"), "zip"), link(v.get("sourceControlPath"), "källkod")) if x)
            out.append(f'<tr><td>{esc(v.get("name"))}</td><td>{docs}</td><td>{reviews}</td><td>{dl}</td></tr>\n')
        out.append("</tbody>\n</table>\n")

    out.append('\n<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>\n')
    return write_page(domain_page(name), name, "".join(out))


def version_key(name: str):
    return [int(p) if p.isdigit() else -1 for p in re.split(r"[._-]", name)[:4]]


def doc_table(ids, docs):
    rows = []
    for doc_id in ids:
        d = docs[doc_id]
        rows.append(f'<tr><td>{doc_id}</td><td><a href="{RIVTA}/documents/{doc_id}/">{esc(d["title"])}</a></td>'
                    f'<td>{esc(d.get("status", ""))}</td></tr>')
    return ('<table class="grid">\n<thead><tr><th>ARK-nummer</th><th>Dokument</th><th>Status</th></tr></thead>\n'
            "<tbody>\n" + "\n".join(rows) + "\n</tbody>\n</table>\n")


def page_documents(doc_data):
    docs = doc_data["documents"]
    out = [
        "På denna sida återfinns länkar till referensarkitekturer, RIV Tekniska anvisningar, samt mallar och presentationer.\n\n",
        "Länka till dokumenten med mönstret `https://rivta.se/documents/ARK_XXXX/`, där ARK-numret framgår i tabellerna nedan. "
        "Genom att länka via ARK-numret blir länkarna beständiga även när dokumenten revideras och får nya namn.\n\n",
    ]
    for s in doc_data["sections"]:
        out.append(f"### {s['title']} {{#{s['id']}}}\n\n")
        for g in s["groups"]:
            if g.get("title"):
                out.append(f"#### {g['title']}\n\n")
            out.append(doc_table(g["documents"], docs) + "\n")
    out.append("### Presentationer {#presentationer}\n\n<ul>\n")
    for p in doc_data.get("presentations", []):
        parts = [esc(p["title"])]
        if p.get("video"):
            parts.append(link(p["video"], "inspelning på YouTube"))
        if p.get("id"):
            parts.append(f'<a href="{RIVTA}/documents/{p["id"]}/">ladda ner presentationen ({p["id"]})</a>')
        if p.get("url"):
            parts = [link(p["url"], p["title"])]
        out.append("<li>" + " — ".join(parts) + "</li>\n")
    out.append("</ul>\n")
    return write_page("dokument", "Dokument", "".join(out))


def page_development(dev, expand, docs):
    out = [f"<p>{expand(dev['intro'])}</p>\n\n"]
    for s in dev["sections"]:
        out.append(f"### {s['title']} {{#{s['id']}}}\n\n")
        for para in s["text"].strip().split("\n\n"):
            out.append(f"<p>{esc(para.strip())}</p>\n")
        out.append('\n<table class="grid">\n<tr>' + "".join(f"<th>{esc(c['title'])}</th>" for c in s["columns"]) + "</tr>\n<tr>")
        for c in s["columns"]:
            items = []
            for ln in c["links"]:
                if "doc" in ln:
                    items.append(f'<li><a href="{RIVTA}/documents/{ln["doc"]}/">{esc(docs[ln["doc"]]["title"])}</a></li>')
                else:
                    items.append(f"<li>{link(ln['url'], ln['title'])}</li>")
            out.append('<td style="vertical-align:top"><ul>' + "".join(items) + "</ul></td>")
        out.append("</tr>\n</table>\n\n")
    return write_page("utveckling", "Utveckling", "".join(out))


def news_anchor(item, used):
    base = f"nyhet-{item['date']}-{slugify(item['title'])[:40]}".rstrip("-")
    anchor, n = base, 2
    while anchor in used:
        anchor, n = f"{base}-{n}", n + 1
    used.add(anchor)
    return anchor


def prepare_news(news_data, expand):
    used = set()
    items = []
    for it in news_data["news"]:
        date = str(it["date"])
        items.append({"date": date, "title": it["title"], "body": expand(it["body"]).strip(),
                      "anchor": news_anchor({"date": date, "title": it["title"]}, used)})
    items.sort(key=lambda x: x["date"], reverse=True)
    return items


def page_news(items):
    years = sorted({i["date"][:4] for i in items}, reverse=True)
    out = [
        "Här hittar du information om bland annat nyheter, pågående arbeten och beslutsärenden. "
        'Prenumerera via <a href="rss.xml">RSS-flödet</a>.\n\n',
        "<p><b>Arkiv:</b> " + " · ".join(f'<a href="#ar-{y}">{y}</a>' for y in years) + "</p>\n\n",
    ]
    for y in years:
        out.append(f"### Nyheter från {y} {{#ar-{y}}}\n\n")
        for it in (i for i in items if i["date"].startswith(y)):
            out.append(f'<div class="portal-news" id="{it["anchor"]}">\n'
                       f'<h4>{esc(it["title"])}</h4>\n<p><i>{it["date"]}</i></p>\n{it["body"]}\n</div>\n\n')
    return write_page("aktuellt", "Aktuellt", "".join(out))


def page_faq(faq, expand):
    out = ["Klicka på en fråga för att visa svaret. Varje fråga har en egen länk (faq.html#&lt;id&gt;).\n\n"]
    for f in faq["faq"]:
        out.append(f'<details id="{esc(f["id"])}">\n<summary><b>{esc(f["q"])}</b></summary>\n'
                   f'{expand(f["a"]).strip()}\n</details>\n\n')
    return write_page("faq", "FAQ", "".join(out))


def page_index(items, domains, n_contracts, registry, base):
    n_ig = sum(1 for d in domains if ig_slug_for(d["name"], registry))
    latest = "".join(f'<li>{it["date"]} — <a href="aktuellt.html#{it["anchor"]}">{esc(it["title"])}</a></li>\n'
                     for it in items[:5])
    body = (
        "Denna webbplats samlar regelverket för RIV Tekniska Anvisningar (RIV-TA): "
        "tjänstedomäner, tjänstekontrakt, arkitekturella dokument, nyheter och vanliga frågor. "
        "Varje tjänstedomän länkar dessutom till sin FHIR Implementation Guide, där hela "
        "tjänstekontraktsbeskrivningen (TKB) finns som webbsidor tillsammans med logiska FHIR-modeller.\n\n"
        "### Innehåll\n\n"
        '<table class="grid">\n'
        f'<tr><td><a href="tjanstedomaner.html">Tjänstedomäner</a></td><td>{len(domains)} tjänstedomäner, varav {n_ig} med FHIR IG</td></tr>\n'
        f'<tr><td><a href="tjanstekontrakt.html">Tjänstekontrakt</a></td><td>{n_contracts} tjänstekontrakt (en rad per huvudversion)</td></tr>\n'
        '<tr><td><a href="dokument.html">Dokument</a></td><td>Referensarkitekturer, RIV Tekniska anvisningar, mallar och presentationer</td></tr>\n'
        '<tr><td><a href="aktuellt.html">Aktuellt</a></td><td>Nyheter och arkiv sedan 2014, även som <a href="rss.xml">RSS</a></td></tr>\n'
        '<tr><td><a href="utveckling.html">Utveckling</a></td><td>Anvisningar, mallar och verktyg för tjänstekontrakt, e-tjänster och tjänsteplattform</td></tr>\n'
        '<tr><td><a href="faq.html">FAQ</a></td><td>Vanliga frågor och svar</td></tr>\n'
        f'<tr><td><a href="{base}index.html">Byggstatus</a></td><td>Kvalitetsrapport för alla FHIR IG:ar</td></tr>\n'
        "</table>\n\n"
        "### Senaste nyheterna\n\n<ul>\n" + latest + "</ul>\n\n"
        "Den gemensamma arkitekturen utvecklas och förvaltas av [Inera](https://www.inera.se/).\n"
    )
    return write_page("index", "Start", body)


def write_rss(items, base):
    portal = f"{base}rivta-portal/"
    entries = []
    for it in items[:30]:
        dt = datetime.strptime(it["date"], "%Y-%m-%d").replace(tzinfo=timezone.utc)
        entries.append(
            "  <item>\n"
            f"    <title>{esc(it['title'])}</title>\n"
            f"    <link>{portal}aktuellt.html#{it['anchor']}</link>\n"
            f"    <guid isPermaLink=\"false\">rivta-portal-{it['anchor']}</guid>\n"
            f"    <pubDate>{format_datetime(dt)}</pubDate>\n"
            f"    <description>{esc(it['body'])}</description>\n"
            "  </item>"
        )
    feed = (
        '<?xml version="1.0" encoding="utf-8"?>\n'
        '<rss version="2.0">\n<channel>\n'
        "  <title>RIV-TA — Aktuellt</title>\n"
        f"  <link>{portal}aktuellt.html</link>\n"
        "  <description>Nyheter om RIV Tekniska Anvisningar, tjänstedomäner och arkitekturella dokument.</description>\n"
        "  <language>sv</language>\n"
        + "\n".join(entries) + "\n</channel>\n</rss>\n"
    )
    (IMAGES / "rss.xml").write_text(feed, encoding="utf-8")


def write_sushi_config(page_list, domain_pages, doc_data, dev):
    def q(s):
        return json.dumps(s, ensure_ascii=False)

    lines = [
        "# Genererad av scripts/build_portal.py — redigera portal-data/ eller skriptet i stället.",
        "id: inera.rivta-portal",
        "canonical: https://fhir.inera.se/ig/rivta-portal",
        "name: RivtaPortal",
        'title: "RIV Tekniska Anvisningar — tjänstedomäner och regelverk"',
        "status: draft",
        "version: 0.1.0",
        "fhirVersion: 4.0.1",
        "copyrightYear: 2026+",
        "releaseLabel: draft",
        "",
        "dependencies:",
        "  hl7.fhir.r4.core: 4.0.1",
        "",
        "pages:",
    ]
    for name, title in page_list:
        lines += [f"  {name}.md:", f"    title: {q(title)}"]
        if name == "tjanstedomaner":
            for dname, dtitle in domain_pages:
                lines += [f"    {dname}.md:", f"      title: {q(dtitle)}"]
    lines += [
        "",
        "menu:",
        "  Start: index.html",
        "  Tjänstedomäner: tjanstedomaner.html",
        "  Tjänstekontrakt: tjanstekontrakt.html",
        "  Dokument:",
        "    Alla dokument: dokument.html",
    ]
    for s in doc_data["sections"]:
        lines.append(f"    {s['title']}: dokument.html#{s['id']}")
    lines += [
        "    Presentationer: dokument.html#presentationer",
        "  Aktuellt: aktuellt.html",
        "  Utveckling:",
        "    Översikt: utveckling.html",
    ]
    for s in dev["sections"]:
        lines.append(f"    {s['title'].replace('Utveckling av ', '').capitalize()}: utveckling.html#{s['id']}")
    lines += [
        "  FAQ: faq.html",
        "",
        "parameters:",
        "  apply-contact: true",
        "  apply-publisher: true",
        "  apply-version: true",
        "  apply-copyright: true",
        "",
        "publisher: Inera AB",
        "contact:",
        "  - name: Inera Arkitektur",
        "    telecom:",
        "      - system: url",
        "        value: https://www.inera.se",
        "copyright: >-",
        "  Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
        "",
    ]
    (PORTAL / "sushi-config.yaml").write_text("\n".join(lines), encoding="utf-8")


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--live", action="store_true", help="hämta DOMDB live från api.ntjp.se (med fallback)")
    args = ap.parse_args()

    base = site_base_url()
    domains_all, source_note = load_domdb(args.live)
    registry = load_registry()
    domains = select_domains(domains_all, registry)
    doc_data = load_yaml("documents.yml")
    dev = load_yaml("development.yml")
    expand = make_expander(doc_data["documents"])
    items = prepare_news(load_yaml("news.yml"), expand)
    faq = load_yaml("faq.yml")

    PAGES.mkdir(parents=True, exist_ok=True)
    IMAGES.mkdir(parents=True, exist_ok=True)
    for old in PAGES.glob("*.md"):
        old.unlink()

    n_contracts = sum(len(contracts_of(d)) for d in domains)
    page_list = [
        page_index(items, domains, n_contracts, registry, base),
        page_domains(domains, registry, base, source_note),
        page_contracts(domains, source_note),
        page_documents(doc_data),
        page_news(items),
        page_development(dev, expand, doc_data["documents"]),
        page_faq(faq, expand),
    ]
    domain_pages = [page_domain(d, registry, base) for d in domains]
    write_rss(items, base)
    write_sushi_config(page_list, domain_pages, doc_data, dev)

    print(f"[build_portal] {len(domains)} domäner ({source_note}), {n_contracts} kontrakt, "
          f"{len(items)} nyheter, {len(faq['faq'])} FAQ-frågor → {PORTAL.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
