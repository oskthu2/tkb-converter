# followup:processdevelopment:infections - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **followup:processdevelopment:infections**

## followup:processdevelopment:infections

Infektionsuppföljning är ett nationellt enhetligt IT-stöd som ska användas i lokalt förbättringsarbete. Syftet är att förebygga vårdrelaterade infektioner och förbättra kvaliteten i användningen av antibiotika. Infektionsuppföljnings tjänstekontrakt specificerar hur informationsöverföringen om vårdkontakter, antibiotikaanvändning, diagnoser, åtgärder och mikrolaboratoriesvar ska gå till från anslutna vårdgivare. Motsvarande tjänstekontrakt finns för att specificera hur radering av tidigare registrerad information ska gå till.Infektionsuppföljning har också ett tjänstekontrakt för en terminologiurvalstjänst, som specificerar vilka termer och begrepp som är aktuella för de informationsmängder som ingår i Infektionsverktyget.

* Svenskt kortnamn: Svenskt namn
  * infektionsuppföljning: uppföljning kärnprocess:hantera utfall för individer:infektioner
* Svenskt kortnamn: Typ
  * infektionsuppföljning: Nationell tjänstedomän
* Svenskt kortnamn: Anmärkning
  * infektionsuppföljning: dold på rivta.se
* Svenskt kortnamn: FHIR IG
  * infektionsuppföljning: [TKB_followup_processdevelopment_infections](https://oskthu2.github.io/tkb-converter/TKB_followup_processdevelopment_infections/index.html)
* Svenskt kortnamn: Källkod
  * infektionsuppföljning: [Bitbucket](https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/src)
* Svenskt kortnamn: Ärenden
  * infektionsuppföljning: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/issues)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| DeleteLaboratoryReport | 1.0 | rivtabp21 | `urn:riv:followup:processdevelopment:infections:DeleteLaboratoryReport:1:rivtabp21` |
| DeletePrescription | 1.0 | rivtabp21 | `urn:riv:followup:processdevelopment:infections:DeletePrescription:1:rivtabp21` |
| DeletePrescriptionReason | 1.0 | rivtabp21 | `urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1:rivtabp21` |
| ProcessLaboratoryReport | 1.0 | rivtabp21 | `urn:riv:followup:processdevelopment:infections:ProcessLaboratoryReport:1:rivtabp21` |
| ProcessPrescriptionReason | 1.0 | rivtabp21 | `urn:riv:followup:processdevelopment:infections:ProcessPrescriptionReason:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0.2_RC1 | TKB, AB | [Arkitektur & Regelverk: Säkerhet: Godkänd](http://rivta.se/downloads/followup_processdevelopment_infections/1.0.2_RC1/VIS_granskningsmall_infektionsverktyget_inera.docx)[Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads/followup_processdevelopment_infections/1.0.2_RC1/AL-T Granskning av followup_processdevelopment_infections_1.02_RC1_PA_1.docx)[Arkitektur & Regelverk: Informatik: Delvis Godkänd](http://rivta.se/downloads/followup_processdevelopment_infections/1.0.2_RC1/VIS_granskningsmall_infektionsverktyget_inera.docx) | [zip](http://rivta.se/downloads/followup_processdevelopment_infections/1.0.2_RC1/ServiceContracts_followup_processdevelopment_infections_1.0.2_RC1.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/src/followup_processdevelopment_infections_1.0.2_RC1) |
| trunk | TKB, AB |  | [källkod](https://bitbucket.org/rivta-domains/riv.followup.processdevelopment.infections/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

