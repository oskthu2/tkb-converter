# crm:scheduling - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* [**Tjänstedomäner**](tjanstedomaner.md)
* **crm:scheduling**

## crm:scheduling

Tidbokning gör det möjligt för invånaren att själv hantera sina tider i vården. Tills vidare är det beslutat att endast agentanslutningar behöver inkomma med självdeklarationer.

* Svenskt kortnamn: Svenskt namn
  * tidbokning: individens processtöd:tillgängliggör kontaktväg:tidbokning
* Svenskt kortnamn: Typ
  * tidbokning: Nationell tjänstedomän
* Svenskt kortnamn: FHIR IG
  * tidbokning: [TKB_crm_scheduling](https://oskthu2.github.io/tkb-converter/TKB_crm_scheduling/index.html)
* Svenskt kortnamn: Källkod
  * tidbokning: [Bitbucket](https://bitbucket.org/rivta-domains/riv.crm.scheduling/src)
* Svenskt kortnamn: Ärenden
  * tidbokning: [Bitbucket issues](https://bitbucket.org/rivta-domains/riv.crm.scheduling/issues)
* Svenskt kortnamn: Informationssida
  * tidbokning: [Confluence](https://bitbucket.org/rivta-domains/riv.crm.scheduling/wiki)

### Tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| CancelBooking | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:CancelBooking:1:rivtabp21` |
| GetAllCareTypes | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:GetAllCareTypes:1:rivtabp21` |
| GetAllHealthcareFacilities | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:GetAllHealthcareFacilities:1:rivtabp21` |
| GetAllPerformers | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:GetAllPerformers:1:rivtabp21` |
| GetAllTimeTypes | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:GetAllTimeTypes:1:rivtabp21` |
| GetAvailableDates | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:GetAvailableDates:1:rivtabp21` |
| GetAvailableTimeslots | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:GetAvailableTimeslots:1:rivtabp21` |
| GetBookingDetails | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:GetBookingDetails:1:rivtabp21` |
| GetCancelledAndRebooked | 1.0 | rivtabp20 | `urn:riv:crm:scheduling:GetCancelledAndRebooked:1:rivtabp20` |
| GetSubjectOfCareSchedule | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:GetSubjectOfCareSchedule:1:rivtabp21` |
| MakeBooking | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:MakeBooking:1:rivtabp21` |
| UpdateBooking | 1.1 | rivtabp21 | `urn:riv:crm:scheduling:UpdateBooking:1:rivtabp21` |

### Versioner

| | | | |
| :--- | :--- | :--- | :--- |
| 1.1.3 | AB, TKB | [Arkitektur & Regelverk: Teknik: Godkänd](http://rivta.se/downloads//crm_scheduling/1.1.3/T-granskning - crm_scheduling_1.1.3.docx)[Arkitektur & Regelverk: Säkerhet: Underkänd](http://rivta.se/downloads//crm_scheduling/1.1.3/VIS_gransknings - crm_scheduling_1.1.3.docx)[Arkitektur & Regelverk: Informatik: Underkänd](http://rivta.se/downloads//crm_scheduling/1.1.3/VIS_gransknings - crm_scheduling_1.1.3.docx) | [zip](http://rivta.se/downloads//crm_scheduling/1.1.3/ServiceContracts_crm_scheduling_1.1.3.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/1.1.3) |
| 1.1.1 | TKB | Äldre granskningsprocess: Teknik: Godkänd | [zip](http://rivta.se/downloads/crm_scheduling/1.1.1/TD_SCHEDULING_1_1_1_R.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/TD_SCHEDULING_1_1_1_R) |
| 1.0.4 | TKB | Äldre granskningsprocess: Teknik: Godkänd | [zip](http://rivta.se/downloads/crm_scheduling/1.0.4/ServiceContracts_crm_scheduling_1.0.4.zip)·[källkod](https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/TD_SCHEDULING_1_0_4_R) |
| trunk |  |  | [källkod](https://bitbucket.org/rivta-domains/riv.crm.scheduling/src/master) |

[← Alla tjänstedomäner](tjanstedomaner.md)

