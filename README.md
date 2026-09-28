# tkb-converter

Konverterar Ineras tjänstekontraktsbeskrivningar (TKB, RIV-TA) till FHIR Implementation Guides. En TKB blir en IG, med all text, alla tabeller och alla illustrationer från Word-dokumentet, plus en logisk modell i FSH per tjänstekontrakt. Målet är att en läsare ska kunna använda IG:n i stället för Word-dokumentet.

- **Källor:** zip-filerna i Bitbuckets `rivta-domains`-workspace.
- **Utdata:** en IG per domän under `igs/TKB_<domän>/`.
- **Status:** `contracts-registry.json` (just nu 34 av 70 domäner klara, 182 tjänstekontrakt).
- **Bygge och publicering:** GitHub Actions (`.github/workflows/build-and-publish.yml`) kör SUSHI, IG Publisher och en kvalitetsgrind på varje PR, och publicerar alla IG:ar till GitHub Pages från `main`.

## Byggt och drivet av Claude 🤖

Hela migreringen körs av Claude, organiserat som ett **Claude-projekt**. Ingen människa behöver sitta och trycka på knappar. Oskar ställer frågor och fattar beslut, och Claude gör resten: hämtar, konverterar, modellerar, bygger, läser CI-loggar, rättar och öppnar PR:er.

### Kunskapen ligger i repot, inte i någons huvud

Varje ny Claude-session börjar kall. Det fungerar ändå, eftersom allt den behöver veta är incheckat:

| Del | Vad den gör |
|---|---|
| [`CLAUDE.md`](CLAUDE.md) | Uppdraget, ambitionsnivån, domänkunskap (RIV-TA, NTjP, HSA-ID, PDL) och var resten finns. |
| [`.claude/skills/tkb-next-domain`](.claude/skills/tkb-next-domain/SKILL.md) | Orkestreringen: lägesbild, anspråk på nästa domän, PR-flöde, blockerat och QUESTIONS.md-formatet. |
| [`.claude/skills/tkb-fetch-convert`](.claude/skills/tkb-fetch-convert/SKILL.md) | Hämtning från Bitbucket, `docx_to_md.py` och fallback för gamla `.doc`-filer. |
| [`.claude/skills/tkb-ig-builder`](.claude/skills/tkb-ig-builder/SKILL.md) | IG-katalogen: sushi-config, sidor 1–7, bilder, filnamn och ankare. |
| [`.claude/skills/tkb-fsh-model`](.claude/skills/tkb-fsh-model/SKILL.md) | FSH-konventioner, reserverade namn, datatypmappning RIV-TA → FHIR och kända SUSHI-fel. |
| [`.claude/skills/tkb-ci-feedback`](.claude/skills/tkb-ci-feedback/SKILL.md) | Hur CI-resultat, `qa-errors.json` och jobbloggar läses, och hur kända fel åtgärdas. |

Skills laddas först när steget blir aktuellt, så varje session har bara det i huvudet som den behöver just då.

### Verktyg som gör sessionerna säkra

- **SessionStart-hook** ([`.claude/hooks/session-start.sh`](.claude/hooks/session-start.sh)): installerar SUSHI, python-docx, antiword och ett offline-stubpaket för FHIR-basen i varje ny molnsession, så att den kan bygga direkt.
- **[`scripts/preflight_lint.py`](scripts/preflight_lint.py)**: fångar alla kända, mekaniskt upptäckbara felmönster lokalt innan push. Det sparar en CI-runda på 10–25 minuter per fel.
- **[`scripts/registry_update.py`](scripts/registry_update.py)**: all ändring av `contracts-registry.json` går genom skriptet, så att en konflikt mot CI-botens commits alltid kan lösas mekaniskt.

### Systemet lär sig

När en session hittar ett nytt återkommande fel skrivs det in i rätt skill med felsignatur och åtgärd, och blir en ny kontroll i `preflight_lint.py` om det går. Nästa domän gör alltså inte om samma misstag. Frågor som bara en människa kan besvara samlas i [`QUESTIONS.md`](QUESTIONS.md).

### Rutiner som går av sig själva

Claude-projektet har två schemalagda rutiner:

| Rutin | När | Vad |
|---|---|---|
| **Nästa TKB-domän** | Varje timme, lördag och söndag | Följer `tkb-next-domain`: tar nästa `pending`-domän genom hela kedjan (hämtning, konvertering, IG, FSH, lint) och öppnar ett draft-PR. |
| **Kontroll av IG-publicering** | Vardagar på morgonen | Kollar de senaste Actions-körningarna och Pages-publiceringen, och föreslår en åtgärd om något är rött. |

Varje session gör en domän och en PR. Allt tillstånd ligger i repot och i öppna `TKB:`-PR:er, så en session som dör tar inget med sig: nästa körning ser var den förra slutade och tar över.

Setupen har hittills levererat [#7 (interoperability.headers)](https://github.com/oskthu2/tkb-converter/pull/7), som väntar på ett beslut från Oskar, och [#8 (clinicalprocess.activityprescription.logistics)](https://github.com/oskthu2/tkb-converter/pull/8).

## Köra lokalt

```bash
make sushi-one D=TKB_itintegration_engagementindex   # SUSHI för en domän
scripts/preflight_lint.py igs/TKB_itintegration_engagementindex
make help                                            # alla kommandon
```

Det fullständiga bygget med IG Publisher körs bara i GitHub Actions.
