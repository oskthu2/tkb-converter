# 1 Inledning - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

## Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen clinicalprocess: activity: request Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1] Domänen innehåller tjänster för att hantera remissprocessen mellan och inom vårdgivare. Syftet med domänen är att hantera remissprocessen nationellt och lokalt, mellan och inom vårdgivare, från remiss till svar. Domänen innehåller kontrakt för att ta emot remisser, bekräftelser och svar. I denna domänversion av tjänsten avser remiss en så kallad allmänremiss. Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer). Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn

Vård- och omsorg kärnprocess:hantera aktiviteter:remisshantering Remisshantering

### Referenser

| | | | |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – AB_clinicalprocess_activity_request | Obligatoriskt | https://rivta.se/tkview/#/domain/clinicalprocess:activity:request |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | RIV Tekniska anvisningar - Bilaga 1 övergång till ny majorversion inom en tillämpning | Allmän information parallella huvudversioner | https://inera.atlassian.net/wiki/spaces/RTA/pages/2907603096/Bilaga+1+verg+ng+till+ny+majorversion+inom+en+till+mpning |
| R4 | Teknisk realisering | Tjänstespecifik information parallella huvudversioner | https://inera.atlassian.net/wiki/spaces/OIER/pages/2354384923/Teknisk+realisering |
| R5 | IS_clinicalprocess_activity_request | Informationsspecifikation | Distribueras med detta dokument i releaspaketet |
| R6 | RIV Tekniska Anvisningar Tjänsteschema | Regel 11 Felhantering och återrapportering | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632903/RIV+Tekniska+Anvisningar+Tj+nsteschema |
| R7 | RIV Tekniska anvisningar Binära bilagor | Regler | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632854/RIV+Tekniska+Anvisningar+Bin+ra+bilagor#RIVTekniskaAnvisningarBin%C3%A4rabilagor-4.Regler |

### Förkortningar

| | | |
| :--- | :--- | :--- |
| HSA | Hälso- och Sjukvårdens Adressregister | Elektronisk nationell katalog som innehåller kvalitetssäkrade uppgifter om bland annat person och organisationsstruktur. |
| HSP | Hälso- och Sjukvårdspersonal | Person eller personer som i sitt yrke utför hälso- och sjukvård. |
| IS | Informationssystem | System som innehåller journalhandlingar för patienter. |
| TAK | Tjänsteadresseringskatalog | En stödtjänst som erbjuder administration och åtkomst av information som ligger till grund för adressering och kontroll av anropsbehörighet som utförs i en tjänsteplattform. |

