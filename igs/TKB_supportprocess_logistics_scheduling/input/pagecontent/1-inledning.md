# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning Tidbokning*, version 2.0 RC2 (2023-11-01), [TKB_supportprocess_logistics_scheduling.docx](TKB_supportprocess_logistics_scheduling.docx).

### Dokumentinformation

| Dokument | Tidbokning / Tjänstekontraktsbeskrivning |
| :--- | :--- |
| Version | 2.0 RC2 |
| Dokument-id | ARK_0015 |
| Datum | 2023-11-01 |

#### Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.1.3 |  | - | Revisionshistorik saknas i tidigare TKB:er. Ny revisionslista skapad härmed | Thomas Fafoutis |  |
| 1.1.4 | RC1 | 2021-06-07 | Uppdaterat tjänstekontraktsbeskrivning med den senaste mallen. | Thomas Fafoutis |  |
| 1.1.5 |  | 2021-09-10 | Diverse förtydliganden i TKB | Thomas Fafoutis |  |
| 2.0 RC1 | RC1 | 2022-09-25 | Utkast version 2.0 | Thomas Fafoutis |  |
| 2.0 RC2 | RC2 | 2022-12-29 | Div rättelser inför RC2 | Thomas Fafoutis |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Tidbokning | Obligatoriskt | Distribueras med detta dokument. |
| R2 | Tjänstedomän - Engagemangsindex | Obligatoriskt | https://rivta.se/tkview/#/domain/itintegration:engagementindex |
| R3 | Tjänstedomän - Tjänsteadressering | Frivillig | https://rivta.se/tkview/#/domain/itintegration:registry |
| R4 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut – Tidbokning (referens R1) | [AB_supportprocess_logistics_scheduling.docx](AB_supportprocess_logistics_scheduling.docx) |
| Informationsspecifikation – Tidbokning | [IS_supportprocess_logistics_scheduling.docx](IS_supportprocess_logistics_scheduling.docx) |
| Sammanställning behov nya tjänstekontrakt (2022-10-13) | [Sammanstallning_behov_nya_TK_2022-10-13.pdf](Sammanstallning_behov_nya_TK_2022-10-13.pdf) |
| Mall för icke-funktionella krav 1.0.1 | [Icke_funktionella_krav_mall_1.0.1.docx](Icke_funktionella_krav_mall_1.0.1.docx) |

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

supportprocess:logistics:scheduling

Tjänstekontrakten är baserade på RIVTA 2.1 [R4] och reglerade genom arkitekturella beslut [R1].

Tjänstedomänens omfattning är invånarperspektivet på tidbokning hos en vårdenhet. Den kravställande processen är invånarens behov av e-tjänster för tidbokning – direkt som användare (ex. 1177 Vårdguidens e-tjänster), eller indirekt via vårdpersonal (ex. Rådgivningsstödet, RGS).

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

individens processtöd: tillgängliggör kontaktväg: tidbokning

tidbokning
