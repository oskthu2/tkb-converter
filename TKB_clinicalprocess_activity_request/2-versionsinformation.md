# 2 Versionsinformation - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* **2 Versionsinformation**

## 2 Versionsinformation

## Versionsinformation

Denna revision av tjänstekontraktsbeskrivningen handlar om domänen clinicalprocess: activity: request. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.1

#### Oförändrade tjänstekontrakt

Samtliga tjänstekontrakt inom domänen är förändrade.

#### Nya tjänstekontrakt

Inga nya tjänstekontrakt i denna version.

##### Förändrade tjänstekontrakt

Följande tjänstekontrakt är förändrade i denna version: ProcessRequest, version 2.1 ProcessRequestConfirmation, version 2.1 ProcessRequestOutcome, version 2.1 Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| | | | |
| :--- | :--- | :--- | :--- |
| ProcessRequest | 1.0.3 | 2.1 | EJ kompatibel |
|   | 2.1 | 1.0.3 | EJ kompatibel |
| ProcessRequestConfirmation | 1.0.3 | 2.1 | EJ kompatibel |
|   | 2.1 | 1.0.3 | EJ kompatibel |
| ProcessRequestOutcome | 1.0.3 | 2.1 | EJ kompatibel |
| ProcessRequestOutcome | 2.1 | 1.0.3 | EJ kompatibel |

#### Utgångna tjänstekontrakt

Samtliga tjänstekontrakt av version 2.0 har utgått.

### Version tidigare

Föregående huvudversion är 1.0.3. Version 2.1 ersätter version 2.0.

### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0 RC1 | 2014-10-13 | Torbjörn Dahlin, Inera / Thomas Siltberg, Inera | Flyttat till ny mall (1.3.6) |
| 1.0 RC2 | 2014-11-07 | Thomas Siltberg, Inera / Malin Lundgren, Inera | Ändrat namn i beskrivningen för requestOutcome.outcome.accomplishedActivity.id / Ändrat namn i beskrivningen för requestOutcome.outcome.condition.code / Ändrat namn i beskrivningen för requestOutcome.outcome.condition.text / Uppdaterat sekvensdiagram under Tjänstedomänens arkitektur |
| 1.0 RC3 | 2014-11-12 | Thomas Siltberg, Inera / Malin Lundgren, Inera | Uppdaterat arbetsflöde och sekvensdiagram för Hantera remisstatus. |
| 1.0 RC4 | 2016-02-17 | Thomas Siltberg, Inera | Ändringar i GetRequestStatus: / requestId (ändrat kardinalitet i schemafil). / timePeriod (ändrad från TimePeriodType till DatePeriodType). / requestStatus.requestOrganisation (ändrat kardinalitet). / requestStatus.requestAuthor (ändrat namn på typen från SimpleAuthorType till RequestStatusAuthorType). / requestStatus.statusSetter (ändrat namn på typen från SimpleAuthorType till RequestStatusAuthorType). / requestStatus.statusSetter.healthcareProfessionalCareGiverHSAId (tillägg av information om PDL enhet enligt healthCareProfessionalType). / requestStatus.statusSetter.healthcareProfessionalCareUnitHSAId (tillägg av information om PDL enhet enligt healthCareProfessionalType). / Ändrat diagnosisGroup i RequestInstruction så att ICD-10-SE koden med upp till 5 tecken stöds. |
| 1.0 RC5 | 2016-04-28 | Thomas Siltberg, Inera / Malin Lundgren, Inera | Borttag av mappning mot V-TIM 2.2 / Korrigerat beskrivning under requestOutcome.outcome.condition.code / Korrigerat beskrivning under requestOutcome.outcome.accomplishedActivity.text och requestOutcome.outcome.accomplishedActivity.code / Korrigerat beskrivning av result.resultCode och result.errorCode under 4.4 Felhantering / Uppdatering av kommentar för requestOutcome.outcome.condition.text / Har ändrat kardinalitet för healthcareProfessionalCareUnitHSAId och healthcareProfessionalCareGiverHSAId i typen RequestStatusAuthorType i clinicalprocess_activity_request_1.0.xsd / Tog bort kontraktet GetRequestInstruction / Ändrat requestStatus.requestMedium till ej obligatorisk i schema. / Tagit bort hantering av bilagor. / Uppdaterat MIM:ar. / Bytt namn på klassen Statusansvar till Statusansvarig. / Lagt till attributen VårdgivarHSAId och VårdenhetHSAId i klassen Statusansvarig. / Uppdaterat MIM för ProcessRequest: tagit bort kliniskt innehåll som ej skall finnas där. |
| 1.0 RC6 | 2016-05-20 | Thomas Siltberg, Inera | Borttag av kontraktet GetRequestStatus |
| 1.0.2 | 2019-05-14 | Anette Eriksson | Uppdaterad självdeklaration |
| 1.0.2 | 2020-02-10 | Jiri Uosukainen, Inera | Korrigeringar, justeringar och förtydliganden. Tagit bort nyttjande av EI och Remisstatus. Justering av kapitel 3.2 gällande Adressering. |
| 1.0.2 | 2021-01-11 | Jiri Uosukainen, Inera | Förtydliganden gällande komplettering av remiss som ej påkallats kompletteringsbegäran, Kap 3.1.3 och tillägg av av regel 6. |
| 1.0.2 | 2021-03-25 | Jiri Uosukainen, Inera | Justering av kodverksreferenser hävisar istället till Informationsspecifikation [R5] (Kv e-remiss versionsorsak, Kv yrkeskod) / Tagit bort oanvända referenser (DocBook, Apache Commons Lang StringEscpeUtils). |
| 1.0.3 | 2022-11-01 | Bente Sjöberg-Silfverling och Tom Lundholm, Inera | Mindre textuella ändringar och förtydliganden (ex. i 3.1.1 användning av Utbudstjänsten, ändring till ÅÅÅÅMMDD från SSÅÅMMDD, ändring landsting till region och tillägg beskrivning för rödmarkerade element i tabellerna Fältregler). / Tillägg av SVF-information i beskrivningen av elementet request.additionalInformation.administrativeInformation |
| 1.0.3 | 2023-09-07 | Bente Sjöberg-Silfverling, Inera | Överfört till ny dokumentmall |
| 2.0 RC1 | 2024-02-23 | Bente Sjöberg-Silfverling och Tom Lundholm, Inera | Ny huvudversion 2.0 för domänen och för tjänstekontrakten ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome / Funktionalitet som har lagts till: / Nya meddelandetyper såsom Avvisa remiss och Avbryta remiss har lagts till i ProcessRequestConfirmation, och Delsvar, Preliminärt svar och Slutsvar har lagts till i ProcessRequestOutcome / Möjlighet att skicka med inbäddade bilagor har lagts till i ProcessRequest och i ProcessRequestOutcome / Nytt fält i ProcessRequest för information om att vårdansvar kvarstår eller begäran om övertagande av vårdansvar / Felkoder för felmeddelanden har lagts till för alla tre kontrakten / Ändringar från tidigare version: / Tillåtna yrkeskoder har utökats / Antalet tecken i remissvaret i ProcessRequestOutcome har utökats / Ändringar kardinalitet för fälten Hälso- och sjukvårdspersonal (blir obligatoriskt) och Tilläggsinformation (blir frivilligt) / Borttag av fältet Kliniskt tillstånds id från ProcessRequest och i ProcessRequestOutcome / Förtydligande för funktionen vidareskickning har gjorts i TKB / Förtydligande för meddelandetyp AB har gjorts i TKB / Ändring datatyp till CVType för fälten Betalningsförbindelse avtal, Betalningsförbindelse kapitel, Ersättningstyp betalningsförbindelse, Betalningsansvarig region, Ägare av åberopat kontrakt och Kliniskt tillståndskod. / Textuella förtydliganden och ändringar och uppdateringar av modeller och diagram i TKB |
| 2.0 | 2024-03-12 | Bente Sjöberg-Silfverling, Inera | Version 2.0 fastställd, se ändringar ovan |
| RC1 2.1 | 2025-02-24 | Bente Sjöberg-Silfverling, / Inera | Ny version 2.1 för domänen och för tjänstekontrakten ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome / Funktionalitet som har lagts till: / Tillåtet att även skicka nationellt reservId och lokalt reservnummer utöver personnummer och samordningsnummer. Borttag av formatregler för personId i schemafil och schematronregel. Tillägg av felmeddelande och verksamhetsregel. |
| 2.1 | 2025-03-24 | Bente Sjöberg-Silfverling, Inera | Version 2.1 fastställd, se ändringar ovan |
| RC1 2.2 | 2026-03-12 | Bente Sjöberg-Silfverling, Inera | Ny version 2.2 för domänen och för tjänstekontrakten ProcessRequest, ProcessRequestConfirmation och ProcessRequestOutcome / Uppdateringar som har gjorts: / Byte av urval för yrkeskoder för fältet typeOfHealthcareProfessional. / Borttag av schematronregel ’Verify typeOfHealthcareProfessional’ |
| 2.2 | 2026-04-22 | Bente Sjöberg-Silfverling, Inera | Version 2.2 fastställd, se ändringar ovan |

