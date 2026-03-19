# 5 Tjänstedomänens meddelandemodeller

Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom
tjänstedomänen. Varje tjänstekontrakt har en informationsmodell (MIM) som en UML-representation
av XSD-schemat.

## 5.1 MIM Journalanteckning

Modellen är en UML-representation av XSD-schemat. Någon mappning mellan XSD och MIM är
därmed inte inkluderad.

Nedan beskrivs mappning mellan MIM/XSD och informationsmodellen i informationsspecifikationen.

**CareDocumentationType** innehåller:
- `header` (HeaderType) — JoL-header med metainformation
- `body` (CareDocumentationBodyType) — Journalanteckningens innehåll

**CareDocumentationBodyType** innehåller:
- `clinicalDocumentNoteCode` (CVType) — Typ av anteckning (KV Anteckningstyp OID: 1.2.752.129.2.2.2.11)
- `clinicalDocumentNoteTitle` (string) — Titel
- `clinicalDocumentNoteText` (string) — Fritext, eventuellt i DocBook-format
- `multimediaEntry` (MultimediaType) — Binär bilaga (ömsesidigt uteslutande med clinicalDocumentNoteText)
- `dissentingOpinion` (DissentingOpinionType) — Avvikande mening

## 5.2 MIM Diagnos

**DiagnosisType** innehåller:
- `diagnosisHeader` (PatientSummaryHeaderType) — Basinformation om dokumentet
- `diagnosisBody` (DiagnosisBodyType) — Diagnosens innehåll

**DiagnosisBodyType** innehåller:
- `typeOfDiagnosis` (TypeOfDiagnosisEnum) — Huvuddiagnos eller Bidiagnos
- `chronicDiagnosis` (boolean) — Kronisk diagnos
- `diagnosisTime` (TimeStampType) — Tidpunkt för bedömning
- `diagnosisCode` (CVType) — Diagnoskod (t.ex. ICD-10-SE)
- `relatedDiagnosis` (RelatedDiagnosisType) — Relaterad diagnos

## 5.3 MIM Uppmärksamhetsinformation

**AlertInformationType** innehåller:
- `alertInformationHeader` (PatientSummaryHeaderType) — Basinformation om dokumentet
- `alertInformationBody` (AlertInformationBodyType) — Uppmärksamhetsinformationens innehåll

**AlertInformationBodyType** innehåller:
- `typeOfAlertInformation` (CVType) — Typ av uppmärksamhetssignal
- Ytterligare fält för allergier, överkänsligheter, vårdbegränsningar m.m.

## 5.4 MIM Funktionsstatus

**FunctionalStatusAssessmentType** innehåller:
- `functionalStatusAssessmentHeader` (PatientSummaryHeaderType) — Basinformation
- `functionalStatusAssessmentBody` (FunctionalStatusAssessmentBodyType) — Bedömningens innehåll

**FunctionalStatusAssessmentBodyType** innehåller:
- `assessmentCategory` (AssessmentCategoryEnum) — "pad-pad" (PADL) eller "fun-fun" (funktionsnedsättning)
- `comment` (string) — Kommentar
- `padl` (PADLType) — PADL-bedömningar (0..*)
- `disability` (DisabilityType) — Funktionsnedsättningsbedömning (0..1, med ICF-kod OID: 1.2.752.116.1.1.3)
