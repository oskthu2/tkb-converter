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

**Repo utan taggar och utan downloads** (t.ex. `clinicalprocess.activityprescription.logistics`, 2026-09-26): hämta arkivet för senaste commit på `master` och lås det till commit-hashen, så att `zip_url` är reproducerbar: `https://bitbucket.org/rivta-domains/{slug}/get/{kort-hash}.zip` (hashen från `.../refs/branches` eller `.../src/master/`). Logga en ASSUME om att versionen tas från dokumentets revisionshistorik.

**Felhantering:**
- 401/403 från Bitbucket API → Bitbucket kräver auth för detta repo, markera `blocked`
- Inga taggar (Metod A) OCH inga zip-filer i downloads (Metod B) → markera `blocked` med notering "Inga publicerade zip-filer eller taggar"
- **Taggar finns men ingen TKB i någon av dem** (t.ex. `se.apotekensservice.axs`, 2026-09-26: eHälsomyndighetens domäner har bara scheman och ett AB-dokument). Kontrollera äldre taggar också innan du drar slutsatsen. Markera inte `blocked`: bygg IG:n från WSDL/XSD-annoteringarna och eventuella övriga dokument (AB), märk sidorna 1–7 med *SAKNAS I KÄLLDOKUMENT*, sammanställ versionsinformationen ur taggar och commit-meddelanden, och logga en ASSUME (inte BLOCK, eftersom ingen kan svara på frågan) om att IG:n är en rekonstruktion. Sätt `word_document` till `null` i `domain-metadata.json`.
  **Verktyg (sedan 2026-09-26, `se.apotekensservice.expo`):** `scripts/xsd_to_ig.py <schemas> <ig> --domain … --version …` skriver begärans- och svarsmodeller (FSH, inklusive SOAP-huvuden ur WSDL) och fälttabeller till `<ig>/xsd-generated/`. `scripts/xsd_ig_pages.py <ig> <ig>/xsd-generated/pages-config.json` skriver index och sidor 1–7 från dem. Konfigurationen innehåller titel, källa, versionsrader, förkortningar och eventuellt AB-avsnitt (se `igs/TKB_se_apotekensservice_expo/xsd-generated/pages-config.json`). Kör båda igen om scheman ändras; redigera inte de genererade filerna för hand. Kopiera WSDL, tjänsteschema och de domänscheman som används till `input/images/` innan sidorna skrivs, eftersom källfilstabellerna byggs från den katalogen.

  **Flera domänscheman med samma namnrymd (sedan 2026-09-27, `supportprocess.logistics.carelisting`):** en minor-version lägger ofta ett nytt domänschema bredvid det gamla med samma `targetNamespace` (t.ex. `…_2.0.xsd` och `…_2.1.xsd`), där bara kontrakten i den nya versionen importerar den nya filen. Tidigare läste `xsd_to_ig.py` typerna per namnrymd, så den först inlästa filen (2.0) gällde för alla kontrakt, och 2.1-fälten (`queueLength`, `remainingChanges`) saknades tyst i modellerna. Verktyget följer nu varje tjänsteschemas `xs:import` och använder bara de domänscheman det faktiskt importerar (`Schemas.scoped`). Felsignatur: fält som TKB:ns tabell beskriver som "nytt fr o m version X" saknas i den genererade tabellen. `types.md` får då en rubrik per fil, t.ex. `CVType (supportprocess_logistics_carelisting_2.1)`. Rättelsen påverkar också `druglogistics.dosedispensing` (HamtaLokaltProduktsortiment 1.1 får fältet `landsting`), vars IG genererades före rättelsen.
  **Uppräkningar och restriktioner (sedan 2026-09-26, `supportprocess.logistics.scheduling`):** `xsd_to_ig.py` tar bort dubbletter i en uppräkning (schemat kan räkna upp samma resultatkod en gång per kontrakt; dubbletter i ett CodeSystem ger SUSHI-fel). Anonyma uppräkningar direkt i ett element, typiskt en fast OID för `codeSystem` eller `root`, blir `string` med de tillåtna värdena i beskrivningen i stället för ett eget kodverk. En `complexContent/restriction` med egen sekvens ersätter basens element i stället för att lägga till dem; utan det blir fälten dubblerade. En `xs:union` av uppräkningar (sedan 2026-09-27, `masterdata.citizen.patient`) ger ett kodverk per medlemstyp, och fältet blir `string` med medlemmarna i beskrivningen. **Visningstexter:** annoteringar på enskilda `xs:enumeration` kan läsas ut till `--code-displays`-JSON med ett kort skript (se `igs/TKB_masterdata_citizen_patient/domain-metadata.json`, `conversion`).
  **XSD-verktygen för domäner med TKB (sedan 2026-09-26, `ehr.patientsummary`):** `xsd_to_ig.py` fungerar också när TKB:n finns men fälttabellerna är ofullständiga, till exempel när meddelandet bär ett helt EN13606-extrakt. Använd då `--iso-datatypes`. Flaggan mappar ISO 21090-datatyper (`ISO_dt.xsd`: II, CD, TS, IVL_TS, ED …) till FHIR-typer, följer `complexContent/extension`-arv, gör element i `xs:choice` valfria, tar med XML-attribut och lägger abstrakta typers subtyper (xsi:type) som valfria grupper. Uppdrag-Resultat-interaktioner, där en WSDL har både en Responder- och en Initiator-portType, blir ett kontrakt per operation (t.ex. ReceiveEhrExtract och ReceiveEhrExtractStatus). Anonyma typer direkt i ett element (inline `xs:simpleType`/`xs:complexType`, t.ex. uppräkningar i Skatteverkets scheman i `healthcertificate.lifeline`) får elementets namn som typ- och kodverksnamn. `--source-note` ersätter texten "ingen TKB finns i källan" i FSH-huvudet. Sidorna skrivs då ur dokumentkonverteringen, och de schemagenererade tabellerna (`xsd-generated/{Kontrakt}.md`, `types.md`) läggs in bredvid TKB:ns egna.
  **PDF-specifikationer i stället för TKB (sedan 2026-09-26, `druglogistics.dosedispensing`):** domänen har en PDF per tjänst (`*Interaction.pdf`) och ett gemensamt objektdokument. Konvertera dem med `scripts/pdf_spec_to_md.py <pdf> <ut.md> [--heading-level N] [--images <ig>/input/images --image-prefix <Kontrakt>]`. Skriptet tar bort försättsblad, innehållsförteckning, sidhuvud och sidfot, gör innehållsförteckningens poster till rubriker, bygger tabeller över sidbrytningar och sparar rasterbilder samt vektordiagram (renderade med pymupdf) som `<prefix>-N.png`. Kontrollera tabellerna stickprovsvis mot PDF:en. Lägg in resultatet via `contract_docs` (`{id: {markdown, pdf}}`) och `p4_markdown`/`p6_markdown` i `pages-config.json`. Byt ut mellanslag i PDF-filnamn innan de kopieras. Uppräkningar i XSD:n blir riktiga kodverk med `xsd_to_ig.py --codesystems <prefix> --code-displays <json>`, där JSON-filen är `{Enum: {kod: visningstext | [visningstext, definition]}}` hämtad ur objektdokumentet. Lägg till kodverkens URL:er under `special-url` i `sushi-config.yaml`. pypdf kraschar på systemets trasiga `cryptography`-modul, så skriptet sätter `sys.modules['cryptography'] = None` före importen. Textfiler som `releasenotes.txt` kan vara latin-1.
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
- **Domänen saknar TKB helt och innehåller bara ett delat schema** (upptäckt 2026-09-26 i `interoperability.headers`: varken `.docx` eller `.doc` i någon tagg eller på `master`, README-länken "Senaste TKB" tom, ingen WSDL). Kontrollera alla taggar och `master` via `src`-API:t innan du drar slutsatsen. Bygg sedan IG:n direkt från XSD:n: en `Logical:` per toppnivåelement, ett CodeSystem per enum, sidorna 1, 2 och 6 sammanställda från schemats `xs:documentation` och repots git-historik med notisen `SAKNAS I KÄLLDOKUMENT`, och sida 7 som anger att kontrakt saknas och listar källfilerna. Logga en BLOCK-post med förslaget "godkänn XSD-baserad IG" så att användaren avgör om domänen ska slås ihop eller markeras `blocked`.
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
  **Inbäddade Visio-objekt (OLE, `word/embeddings/*.vsdx`)** har en EMF-förhandsbild (`<w:object>` med `v:imagedata r:id=…`) som `docx_to_md.py` extraherar men **inte länkar** i markdownen. Figuren saknas då tyst på sidan (upptäckt 2026-09-27 i `informationsecurity_authorization_blocking`, fem sekvensdiagram). Leta efter `.emf` i `docx-converted/images/` som inte nämns i `full-document.md`, hitta platsen via `<w:object>`-elementen i `word/document.xml` (text före och efter objektet), para ihop `word/media/imageN.emf` med `img_NNN.emf` via md5, konvertera som ovan och infoga bildlänken i sidgeneratorn. Skala hellre till `width=min(w,900)` än `w/4`, som blir för litet för sekvensdiagram.
  Byt `.emf` mot `.svg` i bildlänkarna och kopiera bara `.svg` till `input/images/`. Kontrollera resultatet med en skärmdump (`/opt/pw-browsers/chromium-1194/chrome-linux/chrome --headless --no-sandbox --screenshot=… file://…/img.svg`). Text kan få något ojämna mellanrum, men diagrammet är läsbart (verifierat 2026-09-26 i `clinicalprocess_healthcond_rheuma`).

- **TIFF-bilder (`img_NNN.tiff`)** i `docx-converted/images/` (upptäckt 2026-09-26 i `supportprocess.serviceprovisioning.healthcareoffering`): webbläsare visar inte TIFF. Konvertera till PNG med Pillow och byt ändelse i bildlänkarna; kopiera bara `.png` till `input/images/`:
  ```bash
  python3 -c "from PIL import Image; import glob; [Image.open(f).save(f[:-5]+'.png') for f in glob.glob('igs/TKB_x/docx-converted/images/*.tiff')]"
  sed -i -E 's/(img_[0-9]+)\.tiff/\1.png/g' igs/TKB_x/docx-converted/full-document.md
  ```
  `preflight_lint.py` stoppar bildlänkar till `.tif`, `.tiff`, `.emf` och `.wmf`.

  **Uppdatering 2026-09-26 (`clinicalprocess.activityprescription.logistics`):** LibreOffice (24.2) i sandlådan ger `Error: source file could not be loaded` för **alla** filer, även en vanlig `.txt`. Felet beror alltså på miljön, inte på dokumentet. Lägg ingen tid på LibreOffice här. Använd i stället `wvHtml` (paketet `wv`, installeras av SessionStart-hooken) som primär väg för `.doc`:
  ```bash
  cp "{path-to-.doc}" /tmp/tkb.doc
  wvHtml --charset=utf-8 /tmp/tkb.doc /tmp/tkb.html
  python3 .claude/skills/tkb-fetch-convert/wv2md.py /tmp/tkb.html /tmp/tkb.md
  sed -i -E 's/\[Author ID[0-9]+: at [^]]*\]//g' /tmp/tkb.md   # revisionsmarkeringar
  ```
  `wv2md.py` ger rubriker från formatmallarna (`Rubrik 1`–`4`, numrerar nivå 1–2), riktiga Markdown-tabeller och listor, och **hoppar över överstruken text (`<s>`)**. Det är viktigt, för äldre TKB:er har ofta kvarlämnad överstruken text som `antiword` skriver ut som vanlig text (t.ex. "Apotekens ServiceeHälsomyndigheten", både "Ej applicerbart" och "Inga." under samma rubrik). Bildernas plats markeras `![Figur N](IMGnn)`. `wvHtml` kan inte själv exportera bilderna, så skär ut inbäddade PNG-strömmar ur `.doc`-filen (sök efter `\x89PNG\r\n\x1a\n` fram till `IEND`+4 byte) och para ihop dem med platsmarkeringarna genom att titta på bilderna. Sidhuvudets logotyp kommer också med och ska inte användas. Bilder som lagrats som Word-ritobjekt går inte att få ut. Markera dem med `SAKNAS I KÄLLDOKUMENT` och en ASSUME-post. Klipp bort sidhuvud- och sidfotstabellerna som hamnar sist i utdata.

- **Inbäddade Excel-dokument (OLE-objekt)** (upptäckt 2026-09-27 i `strategicresourcemanagement.persons.employee`): fältregler kan bestå av "nedan inklippta Exceldokument" som Word bara visar som en liten ikon. `docx_to_md.py` får då med ikonen som en liten EMF (ca 100×60) och inget av innehållet, så avsnittet ser tomt ut. Leta efter `word/embeddings/*.xls*` i docx-filen (`unzip -l`). Para ihop varje `<o:OLEObject r:id=…>` i `word/document.xml` med `word/_rels/document.xml.rels` för att se vilket avsnitt arbetsboken hör till. Kopiera arbetsböckerna till `input/images/` med beskrivande namn utan mellanslag. Återge alla flikar som Markdown-tabeller på en bilagesida (`8-bilaga-…`) med `xlrd` (`.xls`) eller `openpyxl` (`.xlsx`): ta bort tomma rader, ersätt radbrytningar i celler med " / ", escapa `|` och slå in `<…>` i backticks. Länka bilagan från avsnittet där objektet satt. Ikonbilderna används inte. Sidtitlar i `sushi-config.yaml` får inte innehålla kolon ("8 Bilaga: X" ger `Nested mappings are not allowed in compact mappings`).

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
