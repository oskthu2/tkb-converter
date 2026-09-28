# 1 Inledning

Källa: *Tjänstekontraktsbeskrivning för katalogtjänstsynkronisering*, version 1.0_RC3 (2018-09-21), [TKB_infrastructure_directory_synchronization.docx](TKB_infrastructure_directory_synchronization.docx).

### Dokumentinformation

| Dokument | Tjänstekontraktsbeskrivning för katalogtjänstsynkronisering |
| :--- | :--- |
| Domän | infrastructure: directory: synchronization (infrastrukturtjänster: katalogtjänster: synkronisering) |
| Version | 1.0_RC3 |
| Datum | 2018-09-21 |

#### Revisionshistorik

| Version | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 | 2017-12-07 | Första versionen | Göran Oettinger |  |
| 1.0_RC2 | 2018-04-11 | Uppdaterad efter T-granskning | Göran Oettinger |  |
| 1.0_RC3 | 2018-09-21 | Uppdaterad efter T-granskning | Göran Oettinger |  |

#### Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – operativt processtöd:tillgängliggöra tjänst: vårdochomsorgsutbud | Dokument som tillhör domänen och där signifikanta arkitetkurella beslut som påverkar innehållet i tjänstekontraktsbeskrivningen finns angivna. |  |
| R2 | RIVTA flera dokument | Mall och bakgrundsdokument som tjänstekontraktsbeskrivningen baseras på och förhåller sig till. | http://rivta.se/ |
| R3 | RIV Tekniska Anvisningar Översikt, avsnitt 8.3 | Beskrivning av adresseringsmodeller | http://rivta.se/documents/ARK_0001/ |

#### Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| NTjP | Nationella tjänsteplattformen |  |
| TP | Tjänsteproducent |  |
| TK | Tjänstekonsument |  |
| RIV TA | Regler för interoperabilitet i vården tekniska anvisningar. |  |

#### Kompletterande dokument i källan

| Dokument | Fil |
|---|---|
| Arkitekturella beslut (referens R1) | [AB_infrastructure_directory_synchronization.docx](AB_infrastructure_directory_synchronization.docx) |

Källan innehåller inga självdeklarationer, XML-exempel eller testsviter, bara kodgenereringsfiler, som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

infrastructure: directory:synchronization

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Denna tjänstedomän specificerar generella tjänstekontrakt för aktualisering av lokala kopior av masterdata. Tjänstekontrakten är generella i förhållande till respektive masterdatakällas semantik. Syftet är att alla masterdatakällor ska vara tjänsteproducenter av dessa kontrakt. Med hjälp av Tjänstekontrakten kan en kopiehållande tjänstekonsument periodiskt efterfråga ändringshistorik från en kompatibel masterdatakälla. Ändringshistoriken innehåller bara metadata om ändringarna – inte det specifika masterdatainnehållet. Därför behöver en kopiehållande tjänstekonsument använda dessa kontrakt i kombination med masterdatakällans primära tjänstekontrakt (ex. tjänstekontrakt för organisationsuppgifter) för att nå målet med synkroniseringen.

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter (TP) och tjänstekonsumenter (TK) ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

infrastrukturtjänster:katalogtjänster:synkronisering

katalogsynkronisering
