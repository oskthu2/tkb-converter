# 1 Inledning - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Spärr**, tjänstekontraktsbeskrivning version 4.0.4 (2024-10-18), [TKB_informationsecurity_authorization_blocking.docx](TKB_informationsecurity_authorization_blocking.docx).

### Dokumentinformation

| | |
| :--- | :--- |
| Domän | informationsecurity: authorization: blocking (Spärrtjänst) |
| Version | 4.0.4 |
| Datum | 2024-10-18 |

#### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0 | 2011-11-04 | Godkänd av Cehis tekniska expertgrupp |   |
| 2.0 | 2012-11-20 | Version 2 av spärrkontraktet. |   |
| 3.0 | 2013-06-17 | Version 3 av spärrkontraktet. | Stefan Eriksson |
| 3.0.1 | 2014-03-03 | Textuell justering av TKB | Roger Öberg |
| 3.1 | 2014-03-19 | Förändring av logisk adressering | Christer Jonsson |
| 3.2 | 2014-09-29 | Lagt till att GetAllBlockForPatients kan implementeras lokalt. Uppdaterat kapitel om logisk adressering. | Roger Öberg |
| 3.2.1 | 2015-04-09 | Lagt till att GetAllBlocks kan implementeras lokalt. Uppdaterat kapitel om logisk adressering. | Per Larsson & Roger Öberg |
| 4.0 | 2017-02-16 | Uppdaterat mot ny mall, bytt domän från ehr:blocking till informationsecurity:authorization:blocking samt infört stöd för reservidentitet (ny datatyp patientId). | David Komar, Björn Skeppner. |
| 4.0_RC1 | 2017-02-17 | Justerad efter intern granskning | Björn Skeppner |
| 4.0_RC2 | 2017-02-17 | resultText hade fel kardinalitet | Björn Skeppner |
| 4.0.1 | 2019-03-04 | Tagit bort implementationstexter, lagt till referens #7 samt förtydligat hantering av replikeringskontrakten till nationell spärrtjänst genom ny regel (Regel #1). | Björn Skeppner |
| 4.0.2 | 2020-02-12 | Justerat referenser | Björn Skeppner |
| 4.0.3 | 2021-04-09 | Justerat versionsnumret pga uppdaterad domänversion | Björn Skeppner |
| 4.0.4 | 2024-10-18 | Justerat versionsnumret pga uppdaterad domänversion | Emma Fridén |

#### Referenser

| | | |
| :--- | :--- | :--- |
| #1 | RIV PDLiP | RIV Specifikation Patientdatalagen i Praktiken, http://rivta.se/documents/ARK_0031/PDLiP_RIV_1.0.pdf |
| #2 | PDL | Patientdatalag (2008:355), http://www.regeringen.se/sb/d/6150/a/71234 |
| #3 | HSLF-FS 2016:40 | Socialstyrelsens föreskrifter samt handbok https://www.socialstyrelsen.se/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso–och-sjukvarden/ |
| #4 | RIV TA | RIV Teknisk Anvisning Basic Profile / http://rivta.se/ |
| #5 | RIV Tekniska Anvisningar – Kryptografi | ARK_0036, http://rivta.se/documents/ARK_0036/ |
| #5 | Regel #11, Logiska fel | RIV Tekniska Anvisningar - Tjänsteschema 2.1, http://rivta.se/documents/ARK_0005/ |
| #6 | Arkitekturella beslut | AB_informationsecurity_authorization_blocking |
| #7 | Verksamhetsramverk spärrhantering | https://www.inera.se/sakerhetstjanster |

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Arkitekturella beslut (referens #6) | [AB_informationsecurity_authorization_blocking.docx](AB_informationsecurity_authorization_blocking.docx) |
| Informationsspecifikation | [IS_informationsecurity_authorization_blocking.docx](IS_informationsecurity_authorization_blocking.docx) |

Självdeklarationer finns under respektive kontrakt i avsnitt 7. TKB:n hänvisar till XML-exempel, men de finns inte i källan. Den innehåller även Visio- och Visual Paradigm-modeller för informationsspecifikationen (`docs/work_material/Infospec/`), SoapUI-testsviter, kodgenereringsfiler och ett oanvänt schema för kvalitetsregister (`informationsecurity_authorization_blocking_QR_1.0.xsd`), som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

informationsecurity: authorization: blocking

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

### 1.1 Svenskt namn

infrastruktur:säkerhetstjänster:spärrhantering

### 1.2 Beskrivning

Tjänstedomänens omfattning är spärrhantering för vårdgivare som har behov av att registrera spärr av uppgifter på patientens begäran enligt Patientdatalagens regleringar samt att utföra kontroll mot spärr i vårdsystemen.

Den kravställande processen är att tillse att vårdgivarna inom svensk hälso- och sjukvård får verktyg att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande patientens rättighet att begära spärr på sina uppgifter.

Tjänstekontrakten för Spärr syftar till att stödja informationshanteringen både inom det inre sekretessområdet (inom vårdgivarens verksamhet) och vid sammanhållen journalföring.

En utgångspunkt för tjänstedomänen Spärr är uppdraget Patientdatalagen i Praktiken (PDLiP), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av patientdatalagen.

Arbetet har resulterat i rapporter samt RIV-specifikation för PDLiP [RIV PDLiP].

Ett bakomliggande kravarbete specifikt kring spärrhantering har dessutom bedrivits av Inera på uppdrag av då tidigare CeHis med representanter från SLL, Sörmland, Örebro, VGR, Östergötland. Parterna har representerats av sakkunniga inom områdena juridik, verksamhet och teknik.

Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för spärrhantering lokalt såväl som nationellt.

Det typiska behovet är att från e-tjänst/vårdsystem ansluta sig mot befintliga tjänster för spärr för att hantera PDLs krav. Tjänstekontrakten kan även ligga till grund för konstruktion av en implementation av en lokal spärrtjänst.

