# Sammanfattning av TKB-migreringen

Status 2026-09-27, när `scripts/registry_update.py --next-pending` inte längre gav någon domän.

## Resultat

| | Antal |
|---|---|
| Domäner i registret | 70 |
| Klara (`done`), med publicerad IG | 70 |
| Blockerade (`blocked`) | 0 |
| Väntar på beslut | 0 |
| Tjänstekontrakt i de klara domänerna | 335 |
| Öppna frågor i QUESTIONS.md | 37 BLOCK, 296 ASSUME, 136 TODO |

Inga domäner har markerats `blocked`. Varje domän har en IG under `igs/TKB_*/` som byggs och publiceras av `build-and-publish.yml`.

## Öppna blockerare

20 domäner har öppna BLOCK-poster. Alla fanns redan i repots första commit (2026-09-25), innan pipelinen med en PR per domän och regeln att en domän med öppen BLOCK inte slås ihop infördes. Deras IG:er är publicerade, men frågorna väntar fortfarande på svar från domänexpert. Ingen domän som migrerats sedan dess har fått någon BLOCK.

| Domän | Öppna BLOCK |
|---|---|
| `itintegration.engagementindex` | 1 |
| `clinicalprocess.logistics.logistics` | 2 |
| `clinicalprocess.healthcond.actoutcome` | 2 |
| `clinicalprocess.activityprescription.prescribe` | 2 |
| `clinicalprocess.activityprescription.actoutcome` | 2 |
| `crm.requeststatus` | 1 |
| `crm.carelisting` | 2 |
| `crm.scheduling` | 1 |
| `ehr.commission` | 2 |
| `ehr.log` | 2 |
| `ehr.blocking` | 2 |
| `clinicalprocess.activity.actions` | 3 |
| `clinicalprocess.healthcond.basic` | 1 |
| `ehr.patientconsent` | 1 |
| `informatics.terminology` | 2 |
| `followup.processdevelopment.infections` | 3 |
| `eservicesupply.eoffering` | 1 |
| `processmanagement.decisionsupport.insurancemedicinedecisio` | 1 |
| `clinicalprocess.healthcond.certificate` | 4 |
| `insuranceprocess.healthreporting` | 2 |

## Domäner byggda från release candidates eller otaggade commits

Dessa IG:er bygger inte på en fastställd version och bör byggas om när domänen taggas (se respektive ASSUME-post):

| Domän | Källa (tagg eller commit) |
|---|---|
| `clinicalprocess.activityprescription.prescribe` | `clinicalprocess_activityprescription_prescribe_2.0_RC1` |
| `clinicalprocess.activityprescription.logistics` | `69b4fefff3e9` |
| `clinicalprocess.healthcond.rheuma` | `fd5d50cd8a84` |
| `supportprocess.personalresources.interpretation` | `010d6f367f37` |
| `se.apotekensservice.expo` | `9aabc1797ea7` |
| `se.apotekensservice.lf` | `7.0_RC1` |
| `se.apotekensservice.pris` | `2.0_RC1` |
| `ehr.patientsummary` | `4714d3acbda3` |
| `healthcertificate.lifeline` | `6281e725997f` |
| `infrastructure.informationstructureservice.terminology` | `23f2de6a6b95` |
| `orgmaster.hsa` | `f84df986cac4` |
| `supportprocess.logistics.scheduling` | `2.0_RC1` |
| `masterdata.citizen.patient` | `efa4099dabb2` |
| `strategicresourcemanagement.persons.employee` | `2.0_RC1` |
| `strategicresourcemanagement.organizational.organization` | `b349285d18c2` |
| `informationsecurity.authorization.pip` | `729301865b83` |
| `financial.patientfees.exemption` | `fbd046e11e50` |
| `infrastructure.directory.synchronization` | `1.0_RC3` |
| `clinicalprocess.logistics.cervixscreening` | `1.0_RC4` |
| `infrastructure.itintegration.dataexchange` | `7fdd1d090b32` |
| `coreprocess.residentparticipation.residentparticipation` | `1.0_RC2` |

## Uppföljning

- `druglogistics.dosedispensing`: XSD-generatorn rättades i PR #41 (domänscheman med samma namnrymd). IG:n bör genereras om så att HamtaLokaltProduktsortiment 1.1 får fältet `landsting` (TODO-SLC-001).
- `coreprocess.residentparticipation.residentparticipation`: main har en otaggad commit efter 1.0_RC2 som troligen rättar avvikelserna mellan TKB och schema (ASSUME-CRP-001, ASSUME-CRP-006).
- `interoperability.headers`: domänen saknar publicerad TKB. IG:n är byggd enbart från `interoperability_headers_1.1.xsd`, vilket godkändes 2026-09-28 (BLOCK-IH-001, PR #7).

## Återkommande felmönster

Mönstren är dokumenterade i skills under `.claude/skills/` och kontrolleras, där det går, av `scripts/preflight_lint.py`:

- **Bitbuckets Downloads är tomma** för hela workspacet. Arkiv hämtas via git-taggar, eller låst commit när taggar saknas (`tkb-fetch-convert`).
- **Äldre `.doc`-TKB:er**: LibreOffice fungerar inte i sandlådan; `wvHtml` + `wv2md.py` används, och EMF-figurer konverteras till SVG (`tkb-fetch-convert`).
- **Domäner utan TKB eller med ofullständig TKB**: sidorna genereras ur WSDL/XSD med `scripts/xsd_to_ig.py` och `scripts/xsd_ig_pages.py` (`tkb-fetch-convert`).
- **Flera domänscheman med samma namnrymd**: typerna slås upp via tjänsteschemats egna importer (`tkb-fetch-convert`).
- **Statiska filer publiceras bara ur `input/images/`**, platt; länkar utan katalogprefix och filnamn utan mellanslag (`tkb-ig-builder`, lint).
- **Ankare och rå `<tagg>`-text i tabeller** förstör rubriker och länkar; kontraktsrubriker skrivs `### Kontrakt` och taggtext i backticks (`tkb-ig-builder`, lint).
- **Rader som börjar med `#`** (t.ex. regelnummer) blir rubriker i kramdown och escapas (lint).
- **Reserverade elementnamn** (`id`, `extension` m.fl.) och `^obeys` i FSH ger SUSHI-fel (`tkb-fsh-model`, lint).
- **CodeSystem-URL:er saknas under `special-url`** ger RESOURCE_CANONICAL_MISMATCH (`tkb-ig-builder`, lint).
- **Beroendet `se.inera.rivta.core`** finns inte publicerat och får inte stå i `sushi-config.yaml` (lint).
- **Grönt bygge men röd kvalitetsgrind** (`failed-link-check`): läs alltid vilket steg som fallerade (`tkb-ci-feedback`).
- **Konflikter mellan domän-PR:er** i `contracts-registry.json` löses genom att ta mains version och köra PR:ens registerkommandon igen; en PR med konflikt får ingen CI-körning alls (`tkb-next-domain`).

## Öppna frågor per domän

| Domän | Version | BLOCK | ASSUME | TODO |
|---|---|---|---|---|
| `followup.qualityregistry.nkrr` | 1.2.2 | 0 | 2 | 1 |
| `itintegration.engagementindex` | 1.0.9 | 1 | 5 | 5 |
| `clinicalprocess.logistics.logistics` | 3.0.13 | 2 | 3 | 3 |
| `clinicalprocess.healthcond.actoutcome` | 4.2.2 | 2 | 8 | 6 |
| `clinicalprocess.healthcond.description` | 3.0.5 | 0 | 7 | 7 |
| `clinicalprocess.activityprescription.prescribe` | 2.0 | 2 | 7 | 7 |
| `clinicalprocess.activityprescription.actoutcome` | 2.2.1 | 2 | 6 | 7 |
| `IG` | Publisher-byggen | 0 | 0 | 3 |
| `ehr.accesscontrol` | 1.0.6 | 0 | 3 | 2 |
| `crm.requeststatus` | 2.0.1 | 1 | 2 | 2 |
| `crm.carelisting` | 1.0 | 2 | 3 | 4 |
| `crm.scheduling` | 1.1 | 1 | 3 | 4 |
| `ehr.commission` | 1.0 | 2 | 2 | 4 |
| `ehr.log` | 1.2.3 | 2 | 3 | 3 |
| `ehr.blocking` | 3.2.2 | 2 | 3 | 5 |
| `clinicalprocess.activity.actions` | 1.3 | 3 | 4 | 3 |
| `clinicalprocess.healthcond.basic` | 2.0 | 1 | 3 | 2 |
| `ehr.patientconsent` | 1.0.1 | 1 | 2 | 1 |
| `informatics.terminology` | 1.4 | 2 | 3 | 2 |
| `infrastructure.directory.employee` | 4.0 | 0 | 3 | 2 |
| `followup.processdevelopment.infections` | 1.0.2 | 3 | 5 | 5 |
| `infrastructure.directory.authorizationmanagement` | — | 0 | 2 | 1 |
| `eservicesupply.eoffering` | 1.0.0 | 1 | 3 | 1 |
| `infrastructure.eservicesupply.forminteraction` | 2.1 | 0 | 5 | 1 |
| `infrastructure.directory.organization` | 5.0 | 0 | 3 | 1 |
| `processmanagement.decisionsupport.insurancemedicinedecisio` | 1.0 | 1 | 3 | 2 |
| `masterdata.organisationalresources.licensetopractice` | 2.0 | 0 | 3 | 2 |
| `clinicalprocess.healthcond.certificate` | 4.1-RC1 | 4 | 4 | 5 |
| `insuranceprocess.healthreporting` | 3.1.0 | 2 | 5 | 4 |
| `infrastructure.itintegration.registry` | 2.0 | 0 | 1 | 1 |
| `itintegration.monitoring` | 1.0 | 0 | 3 | 1 |
| `processdevelopment.infections` | 1.0.2 | 0 | 3 | 1 |
| `population.residentmaster` | 1.2 | 0 | 4 | 1 |
| `clinicalprocess.activityprescription.logistics` | 1.0.2 | 0 | 5 | 2 |
| `clinicalprocess.activity.request` | 2.2 | 0 | 6 | 1 |
| `clinicalprocess.healthcond.rheuma` | 1.0 | 0 | 5 | 1 |
| `supportprocess.personalresources.interpretation` | 1.0 | 0 | 5 | 1 |
| `se.apotekensservice.axs` | 7.0 | 0 | 4 | 1 |
| `se.apotekensservice.expo` | 2.0 | 0 | 4 | 1 |
| `se.apotekensservice.lf` | 7.0 | 0 | 5 | 1 |
| `se.apotekensservice.or` | 7.0 | 0 | 5 | 1 |
| `se.apotekensservice.pris` | 2.0 | 0 | 5 | 1 |
| `druglogistics.dosedispensing` | 1.1.0 | 0 | 6 | 1 |
| `ehr.patientsummary` | 1.0 | 0 | 6 | 1 |
| `healthcertificate.lifeline` | 1.0 | 0 | 5 | 1 |
| `infrastructure.itintegration.messagebox` | 1.0.0 | 0 | 7 | 1 |
| `infrastructure.informationstructureservice.terminology` | 1.0.0 | 0 | 5 | 1 |
| `orgmaster.hsa` | 1.0.0 | 0 | 6 | 1 |
| `itintegration.registry` | 1.0.0 | 0 | 3 | 2 |
| `supportprocess.logistics.scheduling` | 2.0 | 0 | 7 | 2 |
| `supportprocess.serviceprovisioning.healthcareoffering` | 3.0 | 0 | 4 | 1 |
| `ihe.pcd.dec` | 1.0.1 | 0 | 3 | 1 |
| `masterdata.citizen.patient` | 1.0 | 0 | 5 | 1 |
| `masterdata.citizen.citizen` | 2.0 | 0 | 4 | 1 |
| `financial.billing.claim` | 1.1 | 0 | 4 | 1 |
| `strategicresourcemanagement.persons.employee` | 2.0 | 0 | 5 | 1 |
| `strategicresourcemanagement.organizational.organization` | 2.0 | 0 | 5 | 1 |
| `informationsecurity.authorization.pip` | 1.0 | 0 | 3 | 1 |
| `strategicresourcemanagement.persons.person` | 5.1 | 0 | 5 | 1 |
| `informationsecurity.auditing.log` | 2.0.8 | 0 | 5 | 1 |
| `informationsecurity.authorization.consent` | 2.0.4 | 0 | 5 | 1 |
| `informationsecurity.authorization.blocking` | 4.0.4 | 0 | 4 | 1 |
| `financial.patientfees.exemption` | 1.0 | 0 | 5 | 1 |
| `infrastructure.directory.synchronization` | 1.0_RC3 | 0 | 4 | 1 |
| `clinicalprocess.logistics.cervixscreening` | 1.0_RC4 | 0 | 6 | 1 |
| `supportprocess.logistics.carelisting` | 2.1 | 0 | 7 | 1 |
| `infrastructure.itintegration.dataexchange` | 1.0 | 0 | 6 | 0 |
| `coreprocess.residentparticipation.residentparticipation` | 1.0_RC2 | 0 | 7 | 0 |
| `interoperability.headers` | 1.1 | 0 | 4 | 1 |
