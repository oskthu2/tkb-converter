---
name: tkb-ci-feedback
description: Steg 4.6–4.7 i TKB-migreringen: hur CI (GitHub Actions + IG Publisher + check_links.py) bygger och publicerar, hur qa-errors.json och jobbloggar läses, och hur kända fel ([LINK-CHECK], reserverade namn, special-url m.fl.) åtgärdas. Använd när en PR-körning eller main-körning har fallerat eller ska verifieras.
---

# CI, IG Publisher och felåterkoppling

_Flyttat från CLAUDE.md 2026-09-25, i huvudsak ordagrant (del av omläggningen till en session per domän + PR per domän). Se `.claude/skills/tkb-next-domain/SKILL.md` för hur stegen hänger ihop. Stegnumren hänvisar till den ursprungliga CLAUDE.md-indelningen: Steg 1–2 = `tkb-fetch-convert`, Steg 3 = `tkb-ig-builder`, Steg 4–4.5 ("FSH-konventioner") = `tkb-fsh-model`, Steg 4.6–4.7 = `tkb-ci-feedback`, Steg 5 (QUESTIONS.md-format) = `tkb-next-domain`._

## Steg 4.6 — IG Publisher & publicering (GitHub Actions + GitHub Pages)

IG Publisher omvandlar SUSHI-genererade FHIR-resurser + pagecontent till en komplett publicerad HTML-IG. **Agenten kör inte detta steg direkt och det finns inget lokalt eller Docker-baserat sätt att göra det längre** — det sker i CI via `.github/workflows/build-and-publish.yml`:

- **Push till `main`** (ändringar under `igs/**`) → bygger **alla** domäner som har en `sushi-config.yaml` (fullständig ombyggnad, så Pages-sajten alltid är konsekvent), publicerar hela sajten till GitHub Pages, och skriver tillbaka QA-resultat + `contracts-registry.json` till repot.
- **Pull request** → bygger bara de domäner vars filer ändrats, som en snabb kvalitetscheck (SUSHI + IG Publisher + QA). Ingen publicering, inga commits.
- **Manuell körning** (fliken *Actions* → *Bygg och publicera FHIR IG:ar* → *Run workflow*) → ange `domains` som `all` eller en kommaseparerad lista med katalognamn, t.ex. `TKB_itintegration_engagementindex`.
- **Schemalagt** varje måndag 03:00 UTC → full ombyggnad, som skydd mot att sajten driftar iväg.

Byggskripten ligger i `scripts/` (`build_ig.sh`, `build_all.sh`, `discover_domains.sh`, `fetch_ig_publisher.sh`, `parse_qa.py`, `generate_index.py`, `check_quality_gate.sh`, `commit_qa_results.py`). CI-jobbet i GitHub Actions har riktig internetåtkomst, så SUSHI och IG Publisher hämtar `hl7.fhir.r4.core` och `fhir.base.template` direkt från de officiella paketregistren — ingen offline-stub behövs där (till skillnad från i den sandboxade utvecklingsmiljön, se `gen_fhir_stubs.py` och Steg 4.5).

Den publicerade sajten nås via GitHub Pages, som publiceras från `gh-pages`-branchen (repots *Settings → Pages* ska ha källa "Deploy from a branch", branch `gh-pages`, mapp `/ (root)`). `deploy`-jobbet skriver hela sajten dit med `force_orphan: true` (en enda commit per publicering — branchen behåller ingen historik). Root-sidan (`index.html`) listar alla byggda domäner med status, varningsantal och länk till varje IG samt dess `qa.html`.

### Feedbackloop — agenten läser qa-errors.json

Varje CI-körning producerar per byggd domän en `qa-errors.json` (strukturerat JSON med fel/varningar, se nedan). **Var den hamnar beror på händelsetypen:**

- **Pull request (normalfallet sedan 2026-09-25 — en PR per domän):** `commit-results` körs **inte** för PR:er, så ingenting committas tillbaka. Läs istället resultatet ur jobbloggen för `build`-jobbet (`get_job_logs`, sök efter raderna `[parse_qa] TKB_x:`, `[check_links] TKB_x:`, `  [LINK-CHECK] ...` och `[check_quality_gate] ✗ ...`) eller ladda ner artefakten `qa-results` (innehåller `qa-results/TKB_x/qa-errors.json`). Jobbloggen är lång (hundratals KB på en rad) — spara den till fil och filtrera med Python/grep istället för att läsa den i sin helhet.
- **Push till `main` / schema / manuell körning:** `commit-results`-jobbet committar `igs/TKB_{domain_id}/ig-publisher-logs/qa-errors.json` och uppdaterar `contracts-registry.json` (`ig_publisher_result`). `build.log` checkas aldrig in.

Vill agenten trigga en ombyggnad av en enskild domän utan ny commit kan den köra workflowen manuellt (`workflow_dispatch` med `domains` satt till katalognamnet) via GitHub MCP-verktygen.

**qa-errors.json-format:**
```json
{
  "domain_id": "itintegration.engagementindex",
  "parsed_at": "2026-03-20T10:00:00Z",
  "passed": false,
  "summary": { "fatal": 0, "errors": 3, "warnings": 12, "hints": 5 },
  "top_issues": [
    "[ERROR] igs/TKB_itintegration_engagementindex/input/pagecontent/7-tjanstekontrakt.md: Unknown reference ...",
    "[ERROR] StructureDefinition/findcontent: Element 'engagementId' type 'string' does not match ..."
  ],
  "issues": { "fatal": [], "errors": [...], "warnings": [...], "hints": [...] }
}
```

### Vad agenten gör när den ser qa-errors.json

**Detta är standardbeteende, inte något som kräver att användaren ber om det.** En domän är inte klar förrän dess PR-körning är grön (då slås PR:en ihop) eller domänen är `blocked` — se `tkb-next-domain`. Efter varje push till domänens PR-branch:

0. **Vänta in det faktiska CI-resultatet** innan något räknas som klart — anta aldrig att en push lyckades bara för att `git push` returnerade utan fel. Sessionen prenumererar på PR:ens aktivitet (`subscribe_pr_activity`), så CI-utfallet kommer normalt som en händelse. Som reserv: `send_later` ~45 min fram, och kontrollera med `actions_list` (`list_workflow_runs`, `workflow_runs_filter.branch` = PR-branchen). En PR-körning bygger bara den ändrade domänen och tar ~5–10 min; en körning på `main` bygger alla domäner och tar ~25 min.
1. **Läs resultatet** — för en PR-körning ur jobbloggen eller `qa-results`-artefakten (se "Feedbackloop" ovan); för en `main`-körning ur `igs/TKB_{domain_id}/ig-publisher-logs/qa-errors.json` efter `git pull`.
2. **Titta alltid på vilket steg som faktiskt fallerade.** `Bygg IG:ar`-steget kan vara grönt medan `Kvalitetsgrind`-steget är rött (t.ex. `status=failed-link-check` från `check_links.py` trots `parse_qa ... PASS`) — detta hände 2026-09-17 med `population_residentmaster`. Om jobbet kraschade innan någon QA-parsning: läs den faktiska stacktracen i jobbloggen — `qa-errors.json`:s `passed`-fält bygger på mönstermatchning och kan missa fel som syns som en rå exception istället för en `ERROR:`/`FATAL:`-rad. Lita aldrig blint på att "inga poster i `top_issues`" betyder att allt är bra.
3. För varje fel i `top_issues` (eller i jobbloggen om steg 2 krävdes):
   - Identifiera berörd fil (FSH-modell, pagecontent-sida, sushi-config)
   - Matcha mot de kända, dokumenterade felmönstren i "FSH-konventioner" (skillen `tkb-fsh-model`) och i `scripts/preflight_lint.py` (reserverat elementnamn, fel datatyp på ett inbyggt subelement, `se.inera.rivta.core`-dependency, trasig `special-url`) — dessa fixas alltid direkt, aldrig som BLOCK, eftersom lösningen redan är entydigt dokumenterad
   - För övriga fel: bestäm om felet är en **BLOCK** (kräver beslut), **ASSUME** (antagande gjordes), eller **TODO** (kan fixas autonomt men inte prioriterat)
   - Fält/sidor som kan fixas direkt: fixa i FSH-filen eller pagecontent-sidan
   - Fält/sidor med semantisk tvetydighet: lägg till BLOCK i QUESTIONS.md
4. **Uppdatera QUESTIONS.md** med nya poster — alltid med relativ sökväg:
   ```markdown
   - [ ] **[BLOCK-EI-005]** `igs/TKB_itintegration_engagementindex/input/fsh/logical-models/FindContent.fsh` · fält `engagementId`
     IG Publisher-fel: "Type mismatch: expected Identifier but got string". Ska fältet vara Identifier istället för string?
     Källa: ig-publisher-logs/qa-errors.json rad 12
   ```
5. **Fixa** syntaktiska/tekniska fel direkt (t.ex. felaktiga FSH-typer, brutna bildlänkar, `url`-fel i CodeSystem)
6. **Verifiera lokalt innan push:** `scripts/preflight_lint.sh igs/TKB_{domain_id}` och `make sushi-one D=TKB_{domain_id}` (0 errors). Pusha fixen till PR-branchen, räkna upp `Fix-försök: N/3` i PR-beskrivningen, och gå tillbaka till steg 0.
7. **Om samma domän fortfarande inte är grön efter 3 fix-försök** (push → CI-körning → fortfarande fel): sluta iterera. Hantera domänen som `blocked` enligt `tkb-next-domain` (stäng PR:en utan merge, landa registeruppdatering + BLOCK-post via en separat liten PR) och avsluta sessionen — nästa Routine-körning tar nästa domän.

**Prioriteringsordning för fel:**
| Feltyp | Åtgärd |
|--------|--------|
| FATAL | Alltid BLOCK — kräver manuellt beslut |
| Matchar ett känt, dokumenterat mönster (reserverat namn, fel datatyp på subelement, `se.inera.rivta.core`, `special-url`, `[LINK-CHECK]`-fynd) | Fixa alltid direkt, aldrig BLOCK |
| ERROR på FSH-typ/kardinalitet (okänt mönster) | Försök fixa direkt om semantiken är klar |
| ERROR på bildlänk / sidreferens (inkl. `[LINK-CHECK]`-prefixade fynd, se Steg 4.7) | Fixa direkt — normalt ett katalogprefix-fel (se "KRITISKT — det finns bara EN publicerad static-filkatalog" i Steg 3) eller ett felstavat ankare |
| ERROR på terminology-binding | BLOCK om kodverk är okänt, fixa om känd URL |
| WARN på snapshot/differential | TODO — kan ignoreras initialt |

**När du hittar ett NYTT återkommande felmönster** (samma typ av fel i flera domäner, eller ett fel vars orsak inte redan finns dokumenterat i "FSH-konventioner"): lägg till det där, med exakt felsignatur och åtgärd, innan du går vidare — inte bara i QUESTIONS.md. QUESTIONS.md är per-domän och läses sällan av nästa domäns körning; "FSH-konventioner" är den enda platsen instruktionerna faktiskt konsulteras proaktivt av alla framtida domäner.

---

## Steg 4.7 — Publicerings-verifiering (länk- och bildkontroll)

**Bakgrund:** IG Publishers egen `qa.json`/`qa.html` validerar FHIR-resurser (StructureDefinitions, CodeSystems, ValueSets etc.) — den validerar **inte** om `<img src>` eller `<a href>` i den faktiskt renderade HTML:n pekar på filer som verkligen finns i utdatan. Två systemiska buggar upptäcktes 2026-09-16 genom att direkt inspektera den publicerade `gh-pages`-branchen (möjligt just för att bygget numera går till en egen branch i repot, inte en flyktig CI-artefakt):
1. Alla bildlänkar (`![](images/img_NNN.ext)`) i `input/pagecontent/*.md` var trasiga — IG Publisher plattar ut `input/images/*` till webbplatsens rot, så `images/`-prefixet i länken pekade på en icke-existerande underkatalog.
2. Alla källfilslänkar (WSDL/XSD/PDF/docx) var trasiga på ett värre sätt — `input/files/` är ingen katalog IG Publisher-templaten känner igen alls, så filerna publicerades aldrig någonstans.

Båda är nu fixade (källfiler flyttade in i `input/images/`, alla `input/pagecontent/*.md`-länkar korrigerade, se git-historik 2026-09-16) och dokumenterade som kända mönster i Steg 3. Men eftersom `qa-errors.json` **inte** fångar denna klass av fel, krävs ett separat, automatiserat kontrollsteg för att förhindra att samma sak händer igen utan att någon märker det.

**`scripts/check_links.py`** körs av `scripts/build_ig.sh` för varje domän, direkt efter IG Publisher och innan output kopieras till sajtstagingen (`$SITE_DIR`). Den:
1. Går igenom alla `.html`-filer i domänens `output/`-katalog
2. Extraherar alla `<img src>` och `<a href>` som pekar på lokala (icke-externa) resurser
3. Verifierar att målfilen faktiskt finns; om den har ett `#ankare`, verifierar även att målsidan innehåller ett element med matchande `id`/`name`
4. Skriver fynd som `[LINK-CHECK] ...`-poster under `issues.errors` i domänens `qa-errors.json`, och räknar om `summary`/`passed`/`top_issues` — trasiga bilder/länkar räknas alltid som **errors**, aldrig warnings, eftersom de är riktiga 404:or i produktion

Detta innebär att `[LINK-CHECK]`-fynd automatiskt gör en domän `passed: false` i `qa-errors.json` precis som ett vanligt SUSHI/IG Publisher-fel, och plockas upp av samma feedbackloop som resten av Steg 4.6 ("Vad agenten gör när den ser qa-errors.json") — ingen separat process behövs. De allra flesta `[LINK-CHECK]`-fynd matchar ett av de två kända mönstren ovan (fel katalogprefix) och ska **alltid fixas direkt**, aldrig loggas som BLOCK.

**Komplement — manuell stickprovskontroll av en publicerad domän:** Efter en full ombyggnad (särskilt efter att ha ändrat `input/pagecontent/*.md` eller `input/images/`-innehåll i stor skala) är det värt att direkt inspektera `gh-pages`-branchen för ett urval domäner, precis som gjordes för att upptäcka buggarna ovan:
```bash
git fetch origin gh-pages
git ls-tree -r origin/gh-pages --name-only | grep "^TKB_{domain}/" | grep -iE '\.(png|svg|jpg|wsdl|xsd|pdf)$'
```
Detta är ett bra sista-linjens sanity-check eftersom `check_links.py` bara ser vad som finns i en enskild domäns egen `output/`-katalog — om `commit-results`-jobbet eller sajtsammanslagningen (`$SITE_DIR`) av någon anledning tappar filer mellan `build`- och `deploy`-jobben skulle det inte upptäckas av `check_links.py` ensamt.

---
