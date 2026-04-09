# 1 Inledning

## Svenskt namn

infrastruktur:säkerhetstjänster:samtyckeshantering
samtyckeshantering

## WEB beskrivning

För att vårdpersonalen ska få åtkomst till patientens information hos andra vårdgivare krävs patientens samtycke.
Samtyckeshantering registrerar och lagrar information om patientens samtycke, och innehåller uppgifter om vilken tidsperiod samtycket ska gälla, och för vilken vårdpersonal/vårdenhet som samtycket ska gälla.

Tjänstekontrakten för Samtyckeshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina "egna" samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Inga dubbelregistreringar ska behöva göras. Tjänstekontrakten gör det också möjligt att åberopa nödsituation, så att inte ett oregistrerat samtycke kan äventyra patientens liv och hälsa.

## Om dokumentet

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen urn:riv:ehr:patientconsent (huvuddomän Electronic Health Record underdomän PatientConsent). Den svenska benämningen är Samtyckestjänst.
Tjänsterna syftar till att vårdgivarna inom svensk hälso- och sjukvård får verktyg att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande krav på samtycke för direktåtkomst till patientuppgifter från andra vårdgivare.
Genom att nationellt standardisera tjänstekontrakt för samverkan mellan vårdsystem och samtyckestjänst skapas kompatibilitet mellan alla journalsystem och alla samtyckestjänster. Därigenom undviks huvudmanna-specifika anpassningar av vårdsystem som behöver integration med samtyckestjänst.

Tjänstedomänen omfattar tjänster för:
- att registrera patientens eller dennes företrädares samtycke till att personal i vård och omsorg får direktåtkomst till uppgifter från andra vårdgivare (sammanhållen journalföring enligt Patientdatalagen)
- att registrera nödsituationer där samtycke inte kan inhämtas och uppgifterna behövs för nödvändig vård av patienten
- att hämta ut samtyckesunderlag för intern kontroll av samtycke i vårdsystemet
- att via anrop från vårdsystem kontrollera om samtycke finns
- att ge patienten en sammanställd lista av dennes alla samtycken som finns registrerade hos vårdgivarna

En utgångspunkt för tjänstedomänen är Cehis uppdrag Patientdatalagen i Praktiken (PDLiP), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av Patientdatalagen för informationssamverkan inom och mellan vårdgivare.
Arbetet baseras på RIV-specifikation för PDLiP [RIV PDLiP] som bland annat omfattar hanteringen av direktåkomst inom sammanhållen journalföring.

## Målgrupp

Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för samtyckeshantering lokalt såväl som nationellt.
Det typiska behovet är att ansluta en tillämpning som erbjuder direktåtkomst till sammanhållen journalföring som tjänstekonsument till en samtyckestjänst. Tjänstekontrakten ligger även till grund för konstruktion av samtyckestjänster.

## Allmänt

Den nationella arkitekturen för samtyckeshantering är utformad:
- dels för att stödja vårdgivarnas behov att hantera samtycken för lokala/regionala vårdsystem
- dels för motsvarande behov i nationella e-hälsotjänster

Arkitekturen ska medge att vårdgivare, landsting/kommuner och regioner på ett flexibelt sätt kan hantera sina "egna" samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientupgifter. Samtyckesinformation utbyts därför genom tydliga tjänstekontrakt.

Tjänsterna syftar till att ge följande verksamhetsmässiga effekter:
- Hälso- och sjukvårdpersonalen ska få stöd att på ett enkelt sätt registrera patientens samtycke, dess varaktighet och för vem/vilka registreringen gäller.
- Hälso- och sjukvårdpersonalen ska kunna åberopa nödsituation när inte samtycke är möjligt att få från patienten och det råder fara för patientens liv och hälsa.
- Samtycken ska kunna få genomslag i anslutna tillämpningar, såväl lokala som nationella, t ex både i det egna vårdsystemet och i nationell patientöversikt, så att dubbelregistreringar undviks.

![Principer för samverkande tjänster för hantering av samtycke](images/img_001.png)

*Figur 1: Principer för samverkande tjänster för hantering av samtycke*

Notera att en viss instans av samtyckestjänsten typiskt hanterar flera vårdgivares information. För att visa på principerna ges exempel utifrån två fiktiva vårdgivare A och B.
Nationellt anpassade tjänstekontrakt gör att vårdsystem kan ansluta till ett och samma gränssnitt för samtycke oavsett hur huvudmannen ordnar med sin hantering och lokala infrastruktur.
Tjänstekontrakten kan realiseras oberoende av var delsystemen realiseras. Man kan således välja att nyttja en mellan huvudmän delad molntjänst ("hotelltjänst"), alternativt en egen lokal installation.
Det är vidare valfritt var användargränssnittet för att registrera samtycket realiseras, i ett separat gränssnitt mot samtyckestjänsten (som i fallet NPÖ) eller i respektive vårdsystem/e-tjänst eller i en gemensam portal. Oavsett var sparas samtycket i samtyckestjänsten för aktuell vårdgivare.
Nationella e-tjänster, t ex NPÖ, får genom tjänstekontrakten ett gränssnitt till de samtycken och patientrelationer som behövs för dess hantering av direktåtkomst inom den sammanhållna journalföringen. Eftersom informationen kommer från många olika vårdgivare över landstings- och regiongränser, behöver tjänsteanropen routas till den instans av samtyckestjänst som är aktuell. Routingen bygger på verksamhetsmässig adressering av anropen enligt RIV TA och T-boken och är huvudsakligen baserad på vårdgivarens identitet.

## Information hanterad i tjänsterna

Tjänsterna inom domänen hanterar intyg gällande viss patient för direktåtkomst till patientens information från andra vårdgivare enligt Patientdatalagen.
Intyget avser primärt patientens aktiva medgivande - patientens samtycke - vilket ges till enskild hälso- och sjukvårdspersonal på en vårdenhet, alternativt till all personal som har uppdrag för vårdenheten.
I en nödsituation där patienten av någon anledning inte kan ge ett aktivt samtycke, men hälso- och sjukvårdspersonal bedömer att behov av uppgifterna finns för nödvändig vård av patienten, kan istället registreras intyg om nödsituation.
Intyget har en giltighetstid och det finns även tjänster för att återkalla respektive makulera (vid felregistrering) intygen.
Det går även att registrera patientens företrädare som en informativ uppgift i intyget.
Nedan används termen "samtyckesintyg" vilket ska ses i det bredare perspektivet enligt ovan.

Tjänstekontrakten hanterar:
- dels grundläggande samtyckesinformation. Denna information är nödvändig för samverkan mellan system och nyttjas för samtyckeskontroll.
- dels utökad samtyckesinformation (extended). Utökningarna är kringinformation som tex när och vem som registrerade samtycket. Denna är inte nödvändig för samtyckeskontrollen, men kan användas när samtyckesinformation hanteras och visas upp.

## Tjänsteöversikt

Nedanstående tabell visar vilka tjänster som finns definierade.
Den extra underdomänen beskriver vilket tjänsteområde/namnrymd tjänsten tillhör. Följande underdomäner är definierade:
- **querying** — tjänstekontrakt för att hämta samtycken för intern samtyckeskontroll
- **accesscontrol** — tjänstekontrakt för samtyckekontroll
- **administration** — tjänstekontrakt för att registrera, återkalla och lista samtycken med utökad information

| Tjänst | Beskrivning | Underdomän |
| :--- | :--- | :--- |
| GetConsentsForCareProvider | Läs samtycken inom vårdgivare | querying |
| GetConsentsForPatient | Läs samtycken för patient inom vårdgivare | querying |
| CheckConsent | Kontrollera om samtycke finns relativ viss personal/vårdenhet | accesscontrol |
| GetExtendedConsentsForPatient | Läs samtycken för patient inom vårdgivare, med utökad information | administration |
| RegisterExtendedConsent | Registrera samtycke, med utökad information | administration |
| CancelExtendedConsent | Återkalla samtycke, med utökad information | administration |
| DeleteExtendedConsent | Makulera samtycke, med utökad information | administration |

## Versionsinformation

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av |
| :--- | :--- | :--- | :--- |
| PA1 | 2012-03-22 | Prel version 1 för kommande version A | Stefan Eriksson |
| PA2 | 2012-05-25 | Nytt kapitel om definition av giltighet samt förtydligat tjänstebeskrivningar. | Stefan Eriksson |
| PA3 | 2012-05-30 | Lagt till vårdgivare i vissa get-metoder. | Stefan Eriksson |
| PA4 | 2012-06-05 | Tagit bort extra parameter anledning i cancel- och delete-metoder. | Stefan Eriksson |
| PA5 | 2012-06-07 | Uppdaterad efter granskning i AL-T, samt förtydligat felhanteringen. | Stefan Eriksson |
| PA6 | 2012-06-26 | Borttagen tjänst GetAllExtendedConsentsForPatient | Stefan Eriksson |
| PA7 | 2012-07-02 | Ändrat resultatet från CheckConsents. | Stefan Eriksson |
| PA8 | 2012-10-15 | Exceptionhantering borttagen | Stefan Eriksson |
| PA9 | 2012-10-19 | Ny mall | Stefan Eriksson |
| PA10 | 2012-10-22 | Språkändringar | Stefan Eriksson |
| PA11 | 2012-10-23 | Ref till WS-Addressing borttagen | Stefan Eriksson |
| PA12 | 2014-03-03 | Textuell justering av TKB | Roger Öberg |

## Referenser

| Beteckning | Dokument / Källa |
| :--- | :--- |
| RIV PDLiP | RIV Specifikation Patientdatalagen i Praktiken, 1.0, CeHis, www.cehis.se |
| PDL | Patientdatalag (2008:355), http://www.regeringen.se/sb/d/6150/a/71234 |
| SOS2008:14 | SOSFS 2008:14 föreskrifter samt handbok http://www.sos.se/sosfs |
| RIVAnvisning Tjänstebeskrivning | RIV_21_Anvisning_Bilaga_51_Tjanstekontraktbeskrivning_Regelverk_110220 |
| RIV TA 2 | RIV Teknisk Anvisning Basic Profile 2.1 — http://rivta.googlecode.com/svn/wiki/specs/RIV_Tekniska_Anvisningar_Basic_profile_2.1.pdf |
