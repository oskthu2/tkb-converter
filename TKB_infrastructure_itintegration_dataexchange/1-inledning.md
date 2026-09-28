# 1 Inledning - infrastructure: itintegration: dataexchange v1.0.0-draft

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Tjänstekontraktsbeskrivning för infrastructure: itintegration: dataexchange**, version 1.0 (preliminär, gren develop 2025-09-11), [TKB_itinfrastructure_itintegration_dataexchange.docx](TKB_itinfrastructure_itintegration_dataexchange.docx).

### Dokumentinformation

| | |
| :--- | :--- |
| Domän | infrastructure: itintegration: dataexchange (infrastruktur: tjänsteförmedlingstjänster: datautbyte) |
| Version | 1.0 (preliminär, ej fastställd) |
| Källa | Bitbucket, gren develop (commit 7fdd1d090b32, 2025-09-11) |

#### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| Preliminär version | 2024-10-30 | Thomas Siltberg | Preliminär version |
| 1 |   |   |   |

#### Referenser

| | | | |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut | Bilaga | AB_infrastructure_ itintegration_dataexchange.docx |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | RIV Tekniska Anvisningar / Översikt | Finns på Webben | Länk |
| R4 | Senaste version av SOSFS 2016:40 Socialstyrelsens föreskrifter och allmänna råd om journalföring och behandling av personuppgifter i hälso- och sjukvården | Finns på Webben | Länk |
| R5 | Journalföring och behandling av personuppgifter i hälso- och sjukvården - Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården. | Finns på Webben | Länk |
| R6 | RIV Tekniska Anvisningar - Binära bilagor | Finns på Webben | Länk |
| R7 | RIV Tekniska Anvisningar - Parallella huvudversioner av ett tjänstekontrakt | Finns på Webben | Länk |
| R8 | Informationsspecifikation | Bilaga | IS_infrastructure_ itintegration_dataexchange.docx |
| R9 | HL7 FHIR | Finns på Webben | Länk |
| R10 | W3C Web Accessibility Initiative (WAI) - alttext | Finns på Webben | Länk |
| R11 | Referens till binär data | Bilaga | Referens till binär data.docx |
| R12 | Anvisning för utformning av nyttolast i tjänstekontrakt | Finns på Webben | Länk |
| R13 | Introduktion till samverkansarkitektur | Finns på Webben | Länk |

#### Begrepp och förkortningar

| | | |
| :--- | :--- | :--- |
| Interoperabilitets- specifikation | Ett samlingsbegrepp för överenskommelser som beskriver förutsättningar och krav för digitala tjänster. / I interoperabilitetsspecifikationen beskrivs de krav som ställs på den part som ska ansluta till en samverkan och som parten förväntas uppfylla. | En interoperabilitetsspecifikation beskriver regler för en specifik interoperabel lösnings användning av tjänstekontrakt och dess innehåll utöver reglerna i tjänstekontraktets tjänstekonstraksbeskrivning (TKB). / Exempel på en interoperabilitetsspecifikation är interaktionsöverenskommelser enligt Anvisning för utformning av nyttolast i tjänstekontrakt [R12]. |
| Interoperabel lösning | En samling digitala tjänster som via API och/eller användargränssnitt realiserar ett verksamhetsbehov [R13]. | Varje interoperabel lösning beskrivs av en interoperabilitetsspecifikation innehållande överenskommelser som beskriver förutsättningar och krav för hur lösningen kan och får användas [R13]. |

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Referens till binär data (referens R11) | [Referens_till_binar_data.docx](Referens_till_binar_data.docx) |

Arkitekturella beslut (R1) och informationsspecifikationen (R8) anges som bilagor i TKB:n men finns inte i källan. Självdeklarationerna och testsvitens schematron-regler finns under kontraktets källfiler i avsnitt 7.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

infrastructure:itintegration:dataexchange

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Denna domän hanterar utbyte av ostrukturerad information. Domänen syftar till att tillmötesgå vårdprofessionens behov av direktåtkomst till patientens vårdinformation (så kallad sammanhållen journalföring). Domänen syftar även till att användas för patientens egen åtkomst till sin vårdinformation.

Tjänstekontrakten i denna domän hanterar specifikt binära data i form av bilagor till annan vårddokumentation eller vårddokumentation vars ursprungsform är binär data. Domänens kontrakt stödjer tjänsteinteraktioner där konsumenten är i behov av att läsa informationen från ett eller flera källsystem.

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska med andra ord följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

infrastruktur:tjänsteförmedlingstjänster:datautbyte

Datautbyte

