# 1 Inledning - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* **1 Inledning**

## 1 Inledning

# 1 Inledning

Källa: **Samtycke**, tjänstekontraktsbeskrivning version 2.0.4 (tagg 2.0.4, 2025-12-09), [TKB_informationsecurity_authorization_consent.docx](TKB_informationsecurity_authorization_consent.docx).

### Dokumentinformation

| | |
| :--- | :--- |
| Domän | informationsecurity: authorization: consent (Samtyckestjänst) |
| Version | 2.0.4 |
| Datum | 2025-06-04 (senaste revision); fastställd i tagg 2.0.4 2025-12-09 |

#### Revisionshistorik

| | | | |
| :--- | :--- | :--- | :--- |
| 1.0 | 2012-03-22 | Stefan Eriksson | Prel version 1 för kommande version A |
| 1.0 | 2012-05-25 | Stefan Eriksson | Nytt kapitel om definition av giltighet samt förtydligat tjänstebeskrivningar. |
| 1.0 | 2012-05-30 | Stefan Eriksson | Lagt till vårdgivare i vissa get-metoder. |
| 1.0 | 2012-06-05 | Stefan Eriksson | Tagit bort extra parameter anledning i cancel- och delete-metoder. |
| 1.0 | 2012-06-07 | Stefan Eriksson | Uppdaterad efter granskning i AL-T, samt förtydligat felhanteringen. |
| 1.0 | 2012-06-26 | Stefan Eriksson | Borttagen tjänst GetAllExtendedConsentsForPatient |
| 1.0 | 2012-07-02 | Stefan Eriksson | Ändrat resultatet från CheckConsents. |
| 1.0 | 2012-10-15 | Stefan Eriksson | Exceptionhantering borttagen |
| 1.0 | 2012-10-19 | Stefan Eriksson | Ny mall |
| 1.0 | 2012-10-22 | Stefan Eriksson | Språkändringar |
| 1.0 | 2012-10-23 | Stefan Eriksson | Ref till WS-Addressing borttagen |
| 1.0 | 2014-03-03 | Roger Öberg | Textuell justering av TKB |
| 1.0 | 2012-03-22 | Stefan Eriksson | Prel version 1 för kommande version A |
| 1.0 | 2012-05-25 | Stefan Eriksson | Nytt kapitel om definition av giltighet samt förtydligat tjänstebeskrivningar. |
| 1.0 | 2012-05-30 | Stefan Eriksson | Lagt till vårdgivare i vissa get-metoder. |
| 2.0 | 2017-02-22 | David Komar, Björn Skeppner | Uppdatering enligt ny TKB-mall samt ändrad datatyp patientId till IIType samt ändrat producentens krav på behörighetskontroll |
| 2.0 | 2017-06-21 | Björn Skeppner | Fel kardinalitet på resultText åtgärdat |
| 2.0.1 | 2020-02-12 | Björn Skeppner | Justerat referenser |
| 2.0.2 | 2021-04-09 | Björn Skeppner | Justerat versionsnumret pga uppdaterad domänversion |
| 2.0.3 | 2024-11-06 | Thomas Fafoutis / Emma Fridén | Utökning av tjänstedomänens ändamål för att även stödja patientens/brukarens behov av att se givna samtycken |
| 2.0.4 | 2025-06-04 | Thomas Fafoutis | Två nya tjänstekontrakt tillagda. RegisterConsentByPatient och EndConsentByPatient |
| 2.0.4 | 2025-06-04 | Thomas Fafoutis | Ändrat begäran i EndConsentByPatient (endDate -> endDateTime) |

#### Referenser

| | | | |
| :--- | :--- | :--- | :--- |
| R1 | RIV PDLiP | Obligatoriskt | RIV Specifikation Patientdatalagen i Praktiken, http://rivta.se/documents/ARK_0031/PDLiP_RIV_1.0.pdf |
| R2 | SVOD | Finns på Webben | Lag om sammanhållen vård- och omsorgsdokumentation (2022:913), https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/lag-2022913-om-sammanhallen-vard-och_sfs-2022-913 |
| R3 | HSLF-FS 2016:40 |   | https://www.socialstyrelsen.se/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso–och-sjukvarden/ |
| R4 | RIV TA |   | RIV Teknisk Anvisning Basic Profile / http://rivta.se/ |
| R5 | RIV Tekniska Anvisningar – Kryptografi |   | ARK_0036 / http://rivta.se/documents/ARK_0036/ |
| R6 | Arkitekturella beslut |   | AB_informationsecurity_authorization_consent |
| R7 | Regel #11, Logiska fel |   | RIV Tekniska Anvisningar - Tjänsteschema 2.1, http://rivta.se/documents/ARK_0005/ |

#### Förkortningar

Förkortningstabellen är tom i källdokumentet.

#### Kompletterande dokument i källan

| | |
| :--- | :--- |
| Arkitekturella beslut (referens R6) | [AB_informationsecurity_authorization_consent.docx](AB_informationsecurity_authorization_consent.docx) |
| Informationsspecifikation | [IS_informationsecurity_authorization_consent.docx](IS_informationsecurity_authorization_consent.docx) |

Självdeklarationer finns under respektive kontrakt i avsnitt 7. Källan innehåller inga XML-exempel. Den innehåller även Visual Paradigm-modeller, en PowerPoint med flödesdiagram och en kopia av informationsmodellen för EndConsentByPatient (`docs/work_material/`), SoapUI-testsviter och kodgenereringsfiler, som inte publiceras här.

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen

informationsecurity: authorization : consent

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

Tjänsterna syftar till att vårdgivare eller omsorgsutförare inom svensk vård- och omsorg får verktyg att uppfylla Lagen om sammanhållen vård- och omsorgsdokumentation [R2] och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok [R3]) gällande krav på samtycke för direktåtkomst till patientuppgifter från andra vårdgivare eller omsorgsutförare.

Genom att nationellt standardisera tjänstekontrakt för samverkan mellan vård- och omsorgsinformationsystem och samtyckestjänst skapas kompatibilitet mellan alla journalsystem och alla samtyckestjänster. Därigenom undviks huvudmanna-specifika anpassningar av journalsystem som behöver integration med samtyckestjänst.

Tjänstedomänen omfattar interaktioner för

att registrera patientens/brukarens eller dennes företrädares samtycke till att personal inom vård och omsorg får direktåtkomst till uppgifter från andra vårdgivare/omsorgsutförare (sammanhållen journalföring enligt Lagen om sammanhållen vård- och omsorgsdokumentation)

att registrera nödsituationer där samtycke inte kan inhämtas och uppgifterna behövs för nödvändig vård av patienten/brukaren

att hämta ut samtyckesunderlag för intern kontroll av samtycke i journalsystem

att via anrop från journalsystem kontrollera om samtycke finns

att ge medarbetare en sammanställd lista av patients/brukares alla samtycken som finns registrerade hos vårdgivare/utförare

att ge patienten/brukaren en sammanställd lista av dennes alla samtycken som finns registrerade oavsett vårdgivare

att ge patienten/brukaren möjlighet att, från en begäran av vården/omsorgen, kunna ge sitt samtycke

att ge patienten/brukaren möjlighet att avsluta ett tidigare givet samtycke

En utgångspunkt för tjänstedomänen är CeHis uppdrag Patientdatalagen i Praktiken (PDLiP [R1]), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av Patientdatalagen för informationssamverkan inom och mellan vårdgivare.

Arbetet baseras på RIV-specifikation för PDLiP [RIV PDLiP] som bland annat omfattar hanteringen av direktåtkomst inom sammanhållen journalföring.

Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### 1.1 Svenskt namn

Samtyckestjänst

Kortnamn Informationssäkerhet:Säkerhetstjänster:Samtyckestjänst

