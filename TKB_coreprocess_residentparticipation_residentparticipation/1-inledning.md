# 1 Inledning - coreprocess: residentparticipation: residentparticipation v1.0.0-rc2

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Tjänstekontraktsbeskrivning för coreprocess: residentparticipation: residentparticipation**, version 1.0 RC2 (tagg 1.0_RC2, 2026-06-29), [TKB_coreprocess_residentparticipation_residentparticipation.docx](TKB_coreprocess_residentparticipation_residentparticipation.docx).

### Dokumentinformation

| | |
| :--- | :--- |
| Domän | coreprocess: residentparticipation: residentparticipation (Fasta kontakter) |
| Version | 1.0 RC2 (release candidate, ej fastställd) |
| Källa | Bitbucket, tagg 1.0_RC2 (commit 27438ffd1813, 2026-06-29) |

#### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| 0.1 | 2025-05-20 | Thomas Fafoutis | Första utkastet |
| 0.2 | 2026-03-04 | Thomas Fafoutis | Korrigeringar ContactType |
| 1.0 RC2 | 2026-06-29 | Thomas Fafoutis | Ändrat PractitionerType.id för att tillåta andra identifierare än HsaId:n |

#### Referenser

| | | | |
| :--- | :--- | :--- | :--- |
| R1 | RIV PDLiP | Obligatoriskt | RIV Specifikation Patientdatalagen i Praktiken, http://rivta.se/documents/ARK_0031/PDLiP_RIV_1.0.pdf |
| R2 | SVOD | Finns på Webben | Lag om sammanhållen vård- och omsorgsdokumentation (2022:913), https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/lag-2022913-om-sammanhallen-vard-och_sfs-2022-913 |
| R3 | HSLF-FS 2016:40 |   | https://www.socialstyrelsen.se/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso–och-sjukvarden/ |
| R4 | RIV TA |   | RIV Teknisk Anvisning Basic Profile / http://rivta.se/ |
| R5 | Arkitekturella beslut – | Obligatoriskt | Plats där dokumentet finns |
| R6 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R7 | Kodverk för typ av fast kontakt | Inera kodverksförvaltning | https://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20typ%20av%20fast%20kontakt.xlsx?api=v2 |
| R8 | Tjänstedomän för samtyckeshantering | - | https://rivta.se/tkview/#/domain/informationsecurity:authorization:consent |
| R9 | T-Bokens styrande principer | - | https://inera.atlassian.net/wiki/spaces/RTA/pages/3632866/Referensarkitektur+f+r+v+rd+och+omsorg+-+T-boken+REV+D |
| R10 | KV_Befattning | HSA | Befattningskoder enligt HSA-kodverk (OID: 1.2.752.129.2.2.1.4) / https://inera.atlassian.net/wiki/download/attachments/397444985/hsa_innehall_befattning_version_3.8_2025-08-26.pdf |

#### Förkortningar

Tabellen över förkortningar är tom i källdokumentet.

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Arkitekturella beslut | [AB_coreprocess_residentparticipation_residentparticipation.docx](AB_coreprocess_residentparticipation_residentparticipation.docx) |
| Informationsspecifikation | [IS_coreprocess_residentparticipation_residentparticipation.docx](IS_coreprocess_residentparticipation_residentparticipation.docx) |

Självdeklarationen och testsvitens schematron-regler finns under kontraktets källfiler i avsnitt 7.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

coreprocess: residentparticipation: residentparticipation

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

Fasta kontakter

