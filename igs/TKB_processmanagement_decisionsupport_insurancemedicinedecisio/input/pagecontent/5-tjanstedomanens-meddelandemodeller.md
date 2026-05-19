# 5 Tjänstedomänens meddelandemodeller

Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning sker mot domäninformationsmodellen som återfinns i Informationsspecifikationen i de fall de skiljer sig åt. Skillnad i form av användning av a istället för å eller ä, samt o istället för ö tas inte med.

## V-MIM GetFMB-Request

![V-MIM GetFMB-Request](images/img_004.png)

## V-MIM GetFMB-Response

![V-MIM GetFMB-Response](images/img_005.png)

## V-MIM DiagnosInformation-Request

![V-MIM DiagnosInformation-Request](images/img_006.png)

## V-MIM DiagnosInformation-Response

![V-MIM DiagnosInformation-Response](images/img_007.png)

## V-MIM GetVersions-response

![V-MIM GetVersions-response](images/img_001.png)

## Mappning av MIM mot RIM

| Klass.attribut MIM | Klass.attribut RIM (NI 2015-2) |
| :--- | :--- |
| beslutsunderlag.underlagsId | Saknar motsvarighet i RIM |
| beslutsunderlag.giltighetstid | Saknar motsvarighet i RIM |
| beslutsunderlag.version | Saknar motsvarighet i RIM |
| beslutsunderlag.textuelltUnderlag | Saknar motsvarighet i RIM |
| beslutsunderlag.sjukskrivningstidTest | Saknar motsvarighet i RIM |
| beslutsunderlag.sjukskrivningstid | Saknar motsvarighet i RIM |
| beslutsunderlag.sjukskrivningsgrad | Saknar motsvarighet i RIM |
| beslutsunderlag.senastAndrad | Saknar motsvarighet i RIM |
| rehabiliteringsInformation.beskrivning | Saknar motsvarighet i RIM |
| huvudDiagnos.värde | Huvuddiagnos.Värde |
| arbetsbelastning.kod | Observation.värde |
| komplicerandeFaktor.kod | Observation.värde |
| planeradAtgard.kod | Åtgärd.kod |
| pagaendeAtgard.kod | Åtgärd.kod |
| samsjuklighet.kod | Observation.värde |
| sjukdomsforlopp.kod | Observation.värde |
| svarighetsgrad.kod | Observation.värde |
| utfordAtgard.kod | Åtgärd.kod |
| diagnosInformation.informationsId | Saknar motsvarighet i RIM |
| diagnosInformation.giltighetsTid | Saknar motsvarighet i RIM |
| diagnosInformation.version | Saknar motsvarighet i RIM |
| diagnosInformation.rubrik | Saknar motsvarighet i RIM |
| diagnosInformation.aktivitetsbegransningBeskrivning | Saknar motsvarighet i RIM |
| diagnosInformation.funktionsnedsattningsBeskrivning | Saknar motsvarighet i RIM |
| diagnosInformation.senastAndrad | Saknar motsvarighet i RIM |
| huvuddiagnos.varde | Saknar motsvarighet i RIM |
| aktivitetsbegransning.kod | Observation.värde |
| funktionsnedsattning.kod | Observation.värde |
| ovrigFmbInformation.symtomPrognosBehandling | Saknar motsvarighet i RIM |
| ovrigFmbInformation.generellInformation | Saknar motsvarighet i RIM |

## Formatregler

### Tidsangivelser

Datum värdet är en sträng på formatet "ÅÅÅÅMMDDhhmmss" som matchar begränsad ISO 8601. Tidszon skall ej vara, alla tider anges i svensk normaltid respektive svensk normalsommartid.
