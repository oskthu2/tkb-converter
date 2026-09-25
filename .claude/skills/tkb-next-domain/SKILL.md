---
name: tkb-next-domain
description: Orkestrerar TKB-migreringen en domän i taget — en session per domän, en PR per domän. Hanterar först pipelinens egna öppna PR:er (slå ihop gröna, ta över övergivna) och en röd main-körning, tar sedan nästa pending-domän från contracts-registry.json genom hela pipelinen och driver PR:en till grön och ihopslagen. Använd när en Routine-körning startar ("kör nästa TKB-domän") eller när användaren ber om att migrera fler domäner.
---

# Nästa TKB-domän (orkestrering)

Varje session gör **en** domän från början till slut, eller tar hand om en pågående PR. Tillståndet ligger helt i repot och på GitHub: `contracts-registry.json` på `main` och öppna PR:er med titeln `TKB: …`. En session som dör lämnar därför inget som går förlorat. Nästa timmes Routine-körning tar över.

Repo: `oskthu2/tkb-converter`. Workflow: `build-and-publish.yml`. Detaljkunskap för varje steg finns i de andra skillsen:

| Steg | Skill |
|---|---|
| Hämta zip, konvertera dokument, domain-metadata.json | `tkb-fetch-convert` |
| IG-struktur, sidor 1–7, källfilsindex | `tkb-ig-builder` |
| FSH, lint, SUSHI | `tkb-fsh-model` |
| Läsa CI-resultat och åtgärda fel | `tkb-ci-feedback` |

Ladda respektive skill när du kommer till steget, inte i förväg.

## 0. Lägesbild (alltid först)

1. `git fetch origin && git checkout main && git pull origin main`
2. **Är senaste `main`-körningen röd?** Använd `actions_list` → `list_workflow_runs`, resource `build-and-publish.yml`, `workflow_runs_filter.branch=main`, och ta den senaste med `status=completed`. En röd `main` blockerar publiceringen av *alla* domäner, eftersom `deploy` och `commit-results` hoppas över när kvalitetsgrinden fallerar. Det har högsta prioritet. Diagnostisera med `tkb-ci-feedback`, rätta i en PR med titeln `TKB-fix: <kort beskrivning>` och driv den enligt steg 5–6. Påbörja ingen ny domän i samma session.
3. **Pipelinens öppna PR:er:** `list_pull_requests` (state open). Pipeline-PR:er har en titel som börjar med `TKB:` eller `TKB-fix:`.
   - Titel som börjar med `[Väntar på beslut]` väntar på användaren och räknas inte. Om användaren har kommenterat efter pipelinens BLOCK-kommentar, eller tagit bort prefixet: ta över PR:en, läs beslutet och fortsätt från steg 5.
   - **Högst en aktiv pipeline-PR åt gången.** Om det finns en aktiv PR:
     - Grön CI på senaste commit, ingen konflikt och inga öppna BLOCK för domänen → slå ihop den (steg 6) och avsluta sessionen.
     - CI körs fortfarande, eller senaste push är yngre än 3 timmar → en annan session äger den. **Avsluta utan att göra något.**
     - Röd CI, konflikt, eller ingen CI alls (draft-PR där bygget aldrig blev klart), och senaste push är minst 3 timmar gammal → sessionen som ägde den har troligen dött. Ta över: checka ut branchen och se efter hur långt arbetet kom, med hjälp av kryssrutorna i PR-beskrivningen och innehållet i `igs/TKB_{domain_dir}/`. Fortsätt därifrån: steg 2–4 om bygget är ofullständigt, annars fix-loopen i steg 5 med `Fix-försök: N/3` från PR-beskrivningen.
4. Om ingen aktiv PR finns: `scripts/registry_update.py --next-pending --exclude <domän-id från öppna TKB-PR:er>`. Exit-kod 3 betyder att inga pending-domäner finns kvar, se steg 8.

## 1. Gör anspråk på domänen (innan något tungt arbete)

1. Branch: om sessionen har en tilldelad utvecklingsbranch, använd den. Annars `tkb/{domain_id}` från `origin/main`.
2. `scripts/registry_update.py {domain_id} --status in-progress --started`. Committa och pusha.
3. Öppna en **draft-PR** med titeln `TKB: {domain_id}` och beskrivningen nedan. Den öppna PR:en är anspråket: andra sessioner hoppar över domänen.

```markdown
Automatisk migrering av TKB `{domain_id}` till FHIR IG (`igs/TKB_{domain_dir}/`).

- [ ] Hämtat och konverterat
- [ ] IG-struktur och sidor
- [ ] FSH + preflight_lint + sushi (0 errors)
- [ ] QUESTIONS.md och register
- [ ] CI grön

Fix-försök: 0/3

Registerkommandon (körs igen vid konflikt i contracts-registry.json):
    scripts/registry_update.py {domain_id} --status in-progress --started
```

Håll kryssrutorna och `Registerkommandon` aktuella under arbetets gång. Kommandona gör att en registerkonflikt alltid kan lösas mekaniskt (se steg 6).

## 2–4. Bygg domänen

Följ `tkb-fetch-convert`, sedan `tkb-ig-builder` och sist `tkb-fsh-model`. Innan första push, och före varje push därefter:

```bash
scripts/preflight_lint.py igs/TKB_{domain_dir}    # exit 0 krävs
make sushi-one D=TKB_{domain_dir}                 # 0 Errors krävs
```

Skriv sedan domänens avsnitt i `QUESTIONS.md` enligt bilagan nedan, med status `done` (PR:en slås bara ihop om CI är grön). Uppdatera registret:

```bash
scripts/registry_update.py {domain_id} --status done --completed \
  --set zip_url=... --set domain_version=... --contracts '[...]' \
  --set questions_count=N --set 'sushi_result={"ran_at": "...", "errors": 0, "warnings": W, "artifacts_generated": A, "passed": true}'
```

Lägg till kommandot under `Registerkommandon` i PR-beskrivningen. Committa, pusha och markera PR:en som klar för granskning (`update_pull_request`, `draft: false`).

## 5. Driv PR:en till grön

1. `subscribe_pr_activity` för PR:en. Sätt också `send_later` cirka 45 minuter fram som reserv, med instruktionen "kolla CI för PR #N och fortsätt enligt tkb-next-domain steg 5".
2. Vid rött: följ `tkb-ci-feedback`, räkna upp `Fix-försök`, kör lint och sushi, och pusha. **Efter tre misslyckade försök → steg 7.**
3. Vid grönt: steg 6.

Vanligaste fallgropen är att bygget är grönt men `Kvalitetsgrind`-steget rött (`failed-link-check`). Läs alltid vilket steg som fallerade.

## 6. Slå ihop

1. **Öppna BLOCK-poster för domänen i QUESTIONS.md?** Slå då inte ihop. Sätt titeln till `[Väntar på beslut] TKB: {domain_id}`, kommentera på PR:en med varje BLOCK-fråga och ett konkret lösningsförslag, avsluta prenumerationen och avsluta sessionen. Routinens notis når användaren.
2. Ligger branchen efter `main` eller har den konflikt? Slå ihop `origin/main` in i branchen.
   - Konflikt i `contracts-registry.json`: ta `main`s version (`git checkout --theirs contracts-registry.json`) och kör alla `Registerkommandon` från PR-beskrivningen igen.
   - Konflikt i `QUESTIONS.md`: behåll båda sidornas avsnitt, de är fristående.
   - Pusha och vänta in grön CI igen.
3. `merge_pull_request` med metoden `squash`. Användaren har uttryckligen godkänt (2026-09-25) att pipeline-sessioner slår ihop sina egna `TKB:`- och `TKB-fix:`-PR:er när CI är grön och inga BLOCK är öppna. Det motsvarar den tidigare direkt-pushen till `main`. Slå aldrig ihop andra PR:er.
4. Avsluta PR-prenumerationen. Sammanslagningen startar en full ombyggnad av `main` (cirka 25 min). Nästa Routine-körning kontrollerar den i steg 0.2, så den här sessionen kan avslutas.

## 7. Blockerad (tre misslyckade fix-försök, eller fel som kräver åtgärd i miljön)

1. Kommentera på PR:en: vilket steg och vilket fel som kvarstår, vad som har prövats, och vad som behövs. Stäng PR:en utan att slå ihop den och låt branchen ligga kvar.
2. Från ny branch från `main`: `scripts/registry_update.py {domain_id} --status blocked --blocked-reason "..."`. Lägg också till en BLOCK-post i QUESTIONS.md. Öppna PR:en `TKB: {domain_id} (blocked)`. Den rör inte `igs/**`, så ingen CI körs. Slå ihop den direkt.
3. Avsluta sessionen. Nästa Routine-körning tar nästa domän.

## 8. Allt klart

När `--next-pending` ger exit-kod 3 och inga pipeline-PR:er är öppna (utom `[Väntar på beslut]`):

1. Skriv `MIGRATION_SUMMARY.md`: antal domäner som är done och blocked, blockeringsorsaker, öppna BLOCK/ASSUME per domän och återkommande felmönster. Landa den via en `TKB:`-PR.
2. Stäng av Routinen: `list_triggers`, leta upp den som heter `TKB-migrering: nästa domän` och kör `update_trigger` med `enabled: false`.

## Regler

- Skriv aldrig direkt till `main`. Allt går via PR.
- En domän per session. Påbörja aldrig en andra domän efter en sammanslagning, eftersom kontexten då är full av den förra.
- Kända, dokumenterade felmönster fixas alltid direkt och loggas aldrig som BLOCK.
- Hittar du ett **nytt** återkommande felmönster: dokumentera det i rätt skill med felsignatur och åtgärd. Om det går att upptäcka mekaniskt, lägg också till en kontroll i `scripts/preflight_lint.py`. Gör det i samma PR.

## Bilaga: QUESTIONS.md-format (tidigare "Steg 5 — QA Tracker-agent" i CLAUDE.md)

**Ge agenten:**
- Lista med `open_questions_from_parsing`
- Alla antaganden Model Builder gjort
- Domän-ID och version

**Agenten ska uppdatera `QUESTIONS.md` med:**

```markdown
## {ContractId} v{version} — `igs/TKB_{domain_id}/`

**Status:** in-progress | blocked | done
**Senast uppdaterad:** {timestamp}

### Blockerare (kräver svar innan IG kan anses komplett)

- [ ] **[BLOCK-001]** `igs/TKB_clinicalprocess_healthcond_description/input/pagecontent/7-tjanstekontrakt.md` · kontrakt `GetCareDocumentation` · fält `careUnitId`
  Kardinaliteten är angiven som "villkorlig" utan att villkoret specificeras. Ska detta modelleras som `0..1` med invariant, eller är det alltid obligatorisk i praktiken?

### Antaganden gjorda (verifiera med domänexpert)

- [ ] **[ASSUME-001]** `igs/TKB_clinicalprocess_healthcond_description/input/fsh/logical-models/GetDiagnosis.fsh` · fält `diagnosCode`
  Mappat till `CodeableConcept` med antagandet att kodverket är ICD-10-SE. Verifiera att detta stämmer och att canonical URL `http://hl7.org/fhir/sid/icd-10` är korrekt för svensk kontext.

### TODO (kan göras utan input men inte prioriterat)

- [ ] **[TODO-001]** `igs/TKB_clinicalprocess_healthcond_description/input/fsh/logical-models/GetCareDocumentation.fsh`
  Lägg till FHIR-invarianter för villkorliga fält när blockerare ovan är lösta.
- [ ] **[TODO-002]** `igs/TKB_clinicalprocess_healthcond_description/input/fsh/codesystems/DiagnosisTypeCS.fsh`
  Komplettera CodeSystem med alla koder från källsystemet — nuvarande fil är fragment.
```

Varje fråga ska ha:
- Unik ID (BLOCK/ASSUME/TODO + sekventiellt nummer per kontrakt)
- **Relativ sökväg** till berörd fil (FSH-fil, pagecontent-sida eller sushi-config) — format: `igs/TKB_{domain_id}/input/...` — följt av kontraktnamn och fältnamn om tillämpligt. Utan denna information är det omöjligt att veta vilken tjänst i vilken IG/TKB posten rör.
- Tydlig beskrivning av vad som är oklart
- Kontext (vilket fält, vilken sektion i TKB-dokumentet, t.ex. "TKB avsnitt 7.2 rad 45")
- Förslag på lösning om möjligt

---
