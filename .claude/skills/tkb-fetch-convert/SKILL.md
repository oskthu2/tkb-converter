---
name: tkb-fetch-convert
description: Steg 1–2 i TKB-migreringen: hämta en domäns zip från Bitbucket (git-tagg-metoden), packa upp, konvertera TKB-dokumentet till markdown (docx_to_md.py, eller LibreOffice/antiword-fallback för legacy .doc) och ta fram domain-metadata.json. Använd när en ny domän ska påbörjas.
---

# Hämta, konvertera och parsa en TKB-domän

_Flyttat från CLAUDE.md 2026-09-25, i huvudsak ordagrant (del av omläggningen till en session per domän + PR per domän). Se `.claude/skills/tkb-next-domain/SKILL.md` för hur stegen hänger ihop. Stegnumren hänvisar till den ursprungliga CLAUDE.md-indelningen: Steg 1–2 = `tkb-fetch-convert`, Steg 3 = `tkb-ig-builder`, Steg 4–4.5 ("FSH-konventioner") = `tkb-fsh-model`, Steg 4.6–4.7 = `tkb-ci-feedback`, Steg 5 (QUESTIONS.md-format) = `tkb-next-domain`._

## Steg 1 — Fetcher-agent

rivta.se/tkview är en JavaScript SPA — scraping fungerar inte. Zip-filerna publiceras på Bitbucket under workspace `rivta-domains`. Slug-mönster: `riv.{domännamn-med-punkter}`.

**Fas 1 — Upptäck alla domäner via Bitbucket API:**

```bash
# Lista alla repos i workspace (paginera med ?page=2, ?page=3 tills nästa sida är tom)
curl "https://api.bitbucket.org/2.0/repositories/rivta-domains?pagelen=100&fields=values.slug,values.name,next" \
  -H "Accept: application/json"
```

Filtrera bort repos som inte är tjänstedomäner (t.ex. `best-practice`, `verify-scripts`). Domänrepos har slugar på formen `riv.{a}.{b}.{c}`.

**Fas 2 — Hämta senaste zip per domän:**

**OBS (sedan 2026-09-14): Bitbuckets "Downloads"-funktion (attachments) är tom för samtliga repos i `rivta-domains`-workspacet** — detta gäller även domäner som tidigare hämtats framgångsrikt via den (verifierat genom omprov mot en `done`-domän). Detta verkar vara en uppströms/plattformsbreddad förändring hos Bitbucket, inte ett fel i en enskild domän. Använd därför **git-tag-baserad arkivnedladdning** som primär metod. Försök Downloads-endpointen först ändå (den kan komma tillbaka), men förvänta dig ett tomt svar och fall tillbaka på tag-metoden utan att markera domänen `blocked` av den anledningen ensamt.

```bash
# Metod A (primär): lista git-taggar för domänen
curl "https://api.bitbucket.org/2.0/repositories/rivta-domains/{slug}/refs/tags?pagelen=50&fields=values.name,values.target.date,next" \
  -H "Accept: application/json"

# Metod B (fallback, troligen tomt svar just nu): lista downloads
curl "https://api.bitbucket.org/2.0/repositories/rivta-domains/{slug}/downloads?pagelen=50" \
  -H "Accept: application/json"
```

**Val av tagg (Metod A):** Taggar följer inget helt enhetligt namnmönster mellan domäner (t.ex. `2.0`, `4.0`, men även äldre `{domännamn}_{version}_RC{n}`-format och milstolpetaggar som `-M5`/`-M6`). Filtrera bort release candidates (`RC`, `-rc`) och milstolpar (`-M\d`) om en icke-RC-tagg med samma huvudversion finns; välj annars taggen med **högst semver-liknande versionsnummer** (extrahera med regex `(\d+\.\d+(?:\.\d+)?)`), och vid oavgjort, senaste `target.date`. Logga ASSUME om valet är oklart.

Om Downloads-endpointen (Metod B) undantagsvis returnerar träffar: välj den zip-fil med **högst versionsnummer** i filnamnet (t.ex. `clinicalprocess_healthcond_description_4.0.zip` > `_3.1.zip`), extraherat med regex `_(\d+\.\d+[\.\d]*)\.zip$`.

**Fas 3 — Ladda ner och packa upp:**

```bash
# Metod A (git-arkiv via tagg) — zip_url-mönster:
# https://bitbucket.org/rivta-domains/{slug}/get/{tag}.zip
curl -L -o /tmp/{slug}.zip "https://bitbucket.org/rivta-domains/{slug}/get/{tag}.zip"
unzip /tmp/{slug}.zip -d igs/TKB_{domain_id}/source/
```

**Viktigt om Metod A:** arkivet packar upp till en enda undermapp med commit-hash-suffix i namnet (t.ex. `rivta-domains-riv.{slug}-9bea4906443/`) istället för domänens repo-struktur direkt i roten. Kontrollera detta efter uppackning och justera sökvägar i `domain-metadata.json` (`word_document`, `xsd_files`, `wsdl_files`) därefter — leta efter TKB-dokumentet med `find igs/TKB_{domain_id}/source/ -name "TKB_*.docx"` istället för att anta en fast undermappsstruktur.

`zip_url` i `contracts-registry.json` ska spegla den faktiskt använda nedladdningslänken (Metod A: `.../get/{tag}.zip`, Metod B: den ursprungliga downloads-URL:en).

**Förväntat resultat från agenten:**
```json
{
  "domain_id": "clinicalprocess.healthcond.description",
  "bitbucket_slug": "riv.clinicalprocess.healthcond.description",
  "zip_url": "https://bitbucket.org/rivta-domains/.../downloads/clinicalprocess_healthcond_description_4.0.zip",
  "domain_version": "4.0",
  "word_document": "igs/TKB_clinicalprocess_healthcond_description/source/TKB_clinicalprocess_healthcond_description_4.0.docx",
  "xsd_files": ["source/..."],
  "wsdl_files": ["source/..."],
  "other_files": []
}
```

**Felhantering:**
- 401/403 från Bitbucket API → Bitbucket kräver auth för detta repo, markera `blocked`
- Inga taggar (Metod A) OCH inga zip-filer i downloads (Metod B) → markera `blocked` med notering "Inga publicerade zip-filer eller taggar"
- Flera zip-filer/taggar med oklart versionsläge → välj senaste datum, logga ASSUME

---

## Steg 1.5 — Dokumentkonvertering med docx_to_md.py

**Direkt efter Fetcher-agenten, innan Parser-agenten**, kör konverteringsverktyget på TKB-dokumentet. Detta ger IG Builder-agenten rik, komplett markdown att arbeta med direkt — inklusive tabeller och bilder.

```bash
python3 docx_to_md.py \
  "igs/TKB_{domain_id}/source/{subfolder}/docs/TKB_{domain_id}.docx" \
  "igs/TKB_{domain_id}/docx-converted/"
```

Verktyget producerar:
```
igs/TKB_{domain_id}/docx-converted/
├── full-document.md       ← hela TKB:n som markdown (text + tabeller + bildlänkar)
├── structure.json         ← rubrikhierarki
├── images/                ← extraherade bildfiler (PNG, JPEG, SVG)
│   ├── img_001.png
│   └── img_002.png
└── sections/
    ├── 1-inledning.md
    ├── 2-versionsinformation.md
    ├── 3-tjanstedomanens-arkitektur.md
    ├── 4-tjanstedomanens-krav-och-regler.md
    ├── 5-tjanstedomanens-meddelandemodeller.md
    ├── 6-gemensamma-informationskomponenter.md
    └── 7-tjanstekontrakt.md
```

**Viktigt:** Om TKB-dokumentet heter något annat än `TKB_{domain_id}.docx`, finn det med:
```bash
find "igs/TKB_{domain_id}/source/" -name "TKB_*.docx" | head -1
```

Felhantering:
- `python-docx` ej installerat → `pip install python-docx` och försök igen
- Filen hittas inte → logga BLOCK, gå vidare
- **Legacy `.doc`-fil istället för `.docx`** (förekommer i äldre domäner, t.ex. RIVTA 2.1-domäner från ~2011): `find` ovan hittar bara `.docx`. Sök även efter `.doc`:
  ```bash
  find "igs/TKB_{domain_id}/source/" -iname "*.doc" | head -1
  ```
  `python-docx` kan **inte** läsa gamla binära `.doc`-filer (OLE2 Compound Document, ej OOXML). Försök först konvertera med LibreOffice:
  ```bash
  soffice --headless -env:UserInstallation=file:///tmp/lo_profile --convert-to docx --outdir /tmp/doc_convert "{path-to-.doc}"
  ```
  Om detta lyckas: kör `docx_to_md.py` på den konverterade `.docx`-filen som vanligt.
  Om LibreOffice misslyckas (`Error: source file could not be loaded` — förekommer för vissa äldre Word for Mac-varianter): installera och använd `antiword` + `iconv` som fallback för att extrahera ren text, och skriv `docx-converted/sections/*.md` manuellt utifrån den extraherade texten (kombinerat med XSD-schemat för exakta fälttyper):
  ```bash
  apt-get install -y antiword
  antiword "{path-to-.doc}" > /tmp/raw.txt
  iconv -f ISO-8859-1 -t UTF-8 /tmp/raw.txt > /tmp/utf8.txt   # antiword outputtar Latin-1 som standard
  ```
  Logga alltid en ASSUME-post i QUESTIONS.md om denna fallback används — manuell sektionsindelning är en tolkning, inte en mekanisk konvertering, och avsnitt som saknas i det äldre dokumentets friare struktur ska markeras `// SAKNAS I KÄLLDOKUMENT` snarare än hoppas över tyst.
- **EMF-bilder (`img_NNN.emf`)** i `docx-converted/images/`: webbläsare kan inte visa EMF, och LibreOffice kan inte konvertera dem i sandlådan. Tidigare domäner (t.ex. `crm_carelisting`, `ehr_blocking`) kopierade EMF-filerna utan att länka dem, så figurerna saknas i de IG:erna. Konvertera i stället till SVG med `emf2svg-conv` (apt-paketet `emf2svg`, installeras av SessionStart-hooken), sätt en `viewBox` så att bilden skalar, och länka `.svg`-filen i sidan:
  ```bash
  emf2svg-conv -p -i img_003.emf -o img_003.svg
  python3 - img_003 <<'PY'
  import re,sys
  f=sys.argv[1]+'.svg'; s=open(f).read()
  m=re.search(r'width="([\d.]+)" height="([\d.]+)"',s); w,h=m.group(1),m.group(2)
  open(f,'w').write(s.replace(m.group(0),f'viewBox="0 0 {w} {h}" width="{float(w)/4:.0f}" height="{float(h)/4:.0f}"',1))
  PY
  ```
  Byt `.emf` mot `.svg` i bildlänkarna och kopiera bara `.svg` till `input/images/`. Kontrollera resultatet med en skärmdump (`/opt/pw-browsers/chromium-1194/chrome-linux/chrome --headless --no-sandbox --screenshot=… file://…/img.svg`). Text kan få något ojämna mellanrum, men diagrammet är läsbart (verifierat 2026-09-26 i `clinicalprocess_healthcond_rheuma`).

---

## Steg 2 — Parser-agent

En TKB innehåller alltid en fast rubrikstruktur med numrerade avsnitt. Agenten kombinerar **konverterad markdown** (från docx_to_md.py) med direkt dokumentläsning via python-docx för strukturerad metadata.

**Parser-agenten ska:**

1. Läs `igs/TKB_{domain_id}/docx-converted/structure.json` för rubrikhierarkin
2. Använd sektionsfilerna i `docx-converted/sections/` för textinnehåll (inkl. tabeller och bilder)
3. Identifiera kontrakt i avsnitt 7 via structure.json (rubrik nivå 2 under "Tjänstekontrakt")
4. Per kontrakt: extrahera request-fälttabell och response-fälttabell från `sections/7-tjanstekontrakt.md`
5. Identifiera kontraktsspecifika kodverk (underavsnitt med "Kodsystem" i titeln)
6. Extrahera alla tvetydigheter som `open_questions_from_parsing`
7. Om ett avsnitt saknas: notera det men krascha inte

**Förväntat resultat (domain-metadata.json per TKB):**
```json
{
  "domain_id": "clinicalprocess.healthcond.description",
  "domain_title": "clinicalprocess: healthcond: description",
  "domain_version": "4.0",
  "rivta_namespace_base": "urn:riv:clinicalprocess:healthcond:description",
  "docx_converted_dir": "igs/TKB_clinicalprocess_healthcond_description/docx-converted/",
  "sections": {
    "1_inledning": "igs/.../docx-converted/sections/1-inledning.md",
    "2_versionsinformation": "igs/.../docx-converted/sections/2-versionsinformation.md",
    "3_tjanstedomanens_arkitektur": "igs/.../docx-converted/sections/3-tjanstedomanens-arkitektur.md",
    "4_tjanstedomanens_krav_och_regler": "igs/.../docx-converted/sections/4-tjanstedomanens-krav-och-regler.md",
    "5_tjanstedomanens_meddelandemodeller": "igs/.../docx-converted/sections/5-tjanstedomanens-meddelandemodeller.md",
    "6_gemensamma_informationskomponenter": "igs/.../docx-converted/sections/6-gemensamma-informationskomponenter.md"
  },
  "contracts": [
    {
      "section_number": "7.1",
      "id": "GetCareDocumentation",
      "display_name": "Hämta journalanteckningar",
      "version": "3.0.5",
      "rivta_namespace": "urn:riv:clinicalprocess:healthcond:description:GetCareDocumentation:3",
      "description": "...",
      "request_fields": [
        {
          "name": "patientId",
          "type": "II",
          "cardinality": "1..1",
          "description": "Patientens personnummer eller samordningsnummer",
          "constraints": null,
          "kodverk": null
        }
      ],
      "response_fields": [...],
      "shared_components_refs": ["avsnitt 6"],
      "other_rules": "...",
      "error_codes": [...],
      "contract_specific_codesystems": [
        { "name": "DiagnosisType", "codes": [{"code": "PRIMARY", "display": "Primärdiagnos"}] }
      ],
      "open_questions_from_parsing": []
    },
    {
      "section_number": "7.2",
      "id": "GetDiagnosis"
    }
  ]
}
```

---
