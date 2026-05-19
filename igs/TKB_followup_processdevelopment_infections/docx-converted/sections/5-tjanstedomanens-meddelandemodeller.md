## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM – Ordinationer
Nedan illustreras modellen för ”Hantera ordinationer”. Klassnamn och klassattributen är på svenska baserat på RIV specifikationen (R1). För att koppla de svenska namnen till XSD attributen har mappning även gjorts mot schema (XSD) för tjänstekontrakt.

![img_002.jpeg](images/img_002.jpeg)

| Klass.attribut | Mappning mot V-TIM 2.2 | Mappning mot XSD |
| :--- | :--- | :--- |
| Aktivitet.aktivitets-id | Aktivitet.aktivitet_id | activityId |
| Aktivitetsmoment.aktivitetsmomentkod | Aktivitet.aktivitetskod | activityCode |
| Bedömt hälsorelaterat tillstånd.tillstånd-id | Hälsorelaterat tillstånd.hälsorelaterat tillstånd_id | conditionId |
| Bedömt hälsorelaterat tillstånd.tillståndskod | Bedömt tillstånd.bedömning | conditionCode |
| Bedömt hälsorelaterat tillstånd.smittväg | Saknar motsvarighet i V-TIM 2.2 | source |
| Patient.person-id | Patient.person_id | patient |
| Patient.födelsetidpunkt | Patient.födelsetidpunkt | patient |
| Patient.kön | Patient.kön | patient |
| Ordinationsorsak.registreringstidpunkt | Saknar motsvarighet i V-TIM 2.2 | prescriptionReasonTime |
| Enhet.enhets-id | Vård och omsorgsutövare.enhet id | prescriptionCareUnitId / prescriptionLocationId / prescriptionReasonCareUnitId / prescriptionReasonLocationId |
| Ordination.ordinations-id | Aktivitet.aktivitet_id | prescriptionId |
| Ordinationsmoment.ordinationsmomenttid | Aktivitet.aktivitet tid | prescriptionTime |
| Läkemedelssubstans.ATC-kod | Resursspecifikation.resurs typ | substanceCode |

### V-MIM –Labdata

![img_007.jpeg](images/img_007.jpeg)

| Klass.attribut | Mappning mot V-TIM 2.2 | Mappning mot XSD |
| :--- | :--- | :--- |
| Enhet.enhets-id | Vård och omsorgsutövare.enhet id | orgUnitId |
| Patient.person-id | Patient.person_id | Patient |
| Patient.födelsetidpunkt | Patient.födelsetidpunkt | Patient |
| Patient.kön | Patient.kön | Patient |
| Laboratoriesvar.laboratoriesvars-id | Framställan resultat.framställan resultat_id | reportId / laboratoryReportId |
| Mikrobiologiskt fynd.agenskod | Saknas | findingCode |
| Mikrobiologiskt fynd.observationstidpunkt | Saknas | observationTime |
| Provtagning.provtagningstidpunkt | Aktivitet.aktivitet tid | testTime |

### V-MIM –Vårdkontakter

| Klass.attribut | Mappning mot V-TIM 2.2 |
| :--- | :--- |
| CareEncounter.id | Kontakt.kontakt_id |
| CareEncounter.type | Kontakt.kontakttyp |
| CareEncounter.time | Kontakt.kontakttid |
| CareEncounter.status | Kontakt.sammanhang identifierare |
| CareEncounter.reason | Kontaktorsak.kontaktorsak kod |
| PerformerRole.id | Arbetsmoment.utförare |
| PerformerRole.code | Saknar motsvarighet i V-TIM 2.2 |
| CareUnit.id | Informationsresurs.vårdenhet id |
| CareUnit.name | Informationsresurs.vårdenhet namn |
| CareGiver.id | Informationsresurs.vårdgivare id |
| CareGiver.name | Informationsresurs.vårdgivare namn |
| Location.id | Arbetsmoment.arbetsmomentplats id |
| Location.name | Arbetsmoment.arbetsmomentplats typ |
| Location.address | Saknar motsvarighet i V-TIM 2.2 |
| Location.telecom | Arbetsmoment.arbetsmomentplats id |
| Patient.id | Patient.person_id |
| Patient.dateOfBirth | Patient.födelsetidpunkt |
| Patient.gender | Patient.kön |
| SourceSystem.id | Saknar motsvarighet i V-TIM 2.2 |

