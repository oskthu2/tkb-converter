# ehr:accesscontrol - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **ehr:accesscontrol**

## ehr:accesscontrol

Tjänstekontraktet för Tillgänglig patient (TGP) används av fristående e-tjänster som erbjuder professionen direktåtkomst till sammanhållen journalföring. Tjänsteproducenter för tjänstekontraktet ger svar på om aktuell användare av en sådan e-tjänst (t.ex. NPÖ-tjänsten) genom sitt medarbetaruppdrag har dokumenterad relation till patienten som styrker att tjänstekonsumenten (e-tjänsten) ska erbjuda användaren åtkomst till sammanhållen journalföring. Vanligen är PAS- eller journalsystemen tjänsteproducenter för kontraktet. Det är alltså den egna verksamhetens IT-system som agerar tjänsteproducent när en medarbetare begär åtkomst till sammanhållen journalföring via en fristående etjänst. *OBSERVERA: I releasepaketet nedan finns testsviter, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i den mall för självdeklaration som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”

* Svenskt kortnamn: Svenskt namn
  * tillgänglig patient (TGP): infrastruktur:säkerhetstjänster:patientrelation
* Svenskt kortnamn: Typ
  * tillgänglig patient (TGP): Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * tillgänglig patient (TGP): [TKB_ehr_accesscontrol](https://oskthu2.github.io/tkb-converter/TKB_ehr_accesscontrol/index.html)
* Svenskt kortnamn: Källkod
  * tillgänglig patient (TGP): [Bitbucket](https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src)
* Svenskt kortnamn: Ärenden
  * tillgänglig patient (TGP): [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| AssertCareEngagement | 1.0 | rivtabp20 | `urn:riv:ehr:accesscontrol:AssertCareEngagement:1:rivtabp20` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0.5 | AB, TKB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//ehr_accesscontrol/1.0.5/T-granskning -  ehr_accesscontrol_1.0.5.docx)[Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//ehr_accesscontrol/1.0.5/VIS_granskning - ehr_accesscontrol_1.0.5.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//ehr_accesscontrol/1.0.5/VIS_granskning - ehr_accesscontrol_1.0.5.docx) | [zip](http://rivta.se/downloads//ehr_accesscontrol/1.0.5/ServiceContracts_ehr_accesscontrol_1.0.5.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src/1.0.5) |
| 1.0.4 | AB, TKB | [Arkitektur & Regelverk: Informatik: Godkänd](http://rivta.se/downloads//ehr_accesscontrol/1.0.4/VIS_granskningsmall_patientrelation (TGP) V1.0.4.docx)[Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads//ehr_accesscontrol/1.0.4/VIS_granskningsmall_patientrelation (TGP) V1.0.4.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//ehr_accesscontrol/1.0.4/AL-T Granskning av ehr_accesscontrol_1.0.4.docx) | [zip](http://rivta.se/downloads//ehr_accesscontrol/1.0.4/ServiceContracts_ehr_accesscontrol_1.0.4.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src/ehr_accesscontrol_1.0.4) |
| trunk | AB, TKB |  | [källkod](https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

