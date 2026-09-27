Samtycke

![img_008.png](images/img_008.png)

![img_024.png](images/img_024.png)
Innehållsförteckning
1	Inledning	7
1.1	Svenskt namn	8
2	Versionsinformation	9
2.1	Version 2.0.4	9
2.1.1	Oförändrade tjänstekontrakt	9
2.1.2	Nya tjänstekontrakt	9
2.1.3	Ingående tjänstekontrakt	9
2.1.4	Utgångna tjänstekontrakt	10
2.2	Version tidigare	10
3	Tjänstedomänens arkitektur	11
3.1	Flöden	12
3.1.1	Flöde 1: Registrera samtycke	12
3.1.2	Flöde 2: Återta registrerat samtycke	15
3.1.3	Flöde 3: Makulering av samtycke.	17
3.1.4	Flöde 4: Hämta patientens/brukarens samtycken	19
3.1.5	Flöde 5: Hämta samtycken för en given vårdgivare	21
3.1.6	Flöde 6: Hämta utökad information kring samtycken för en given patient och vårdgivare	23
3.1.7	Flöde 7: Kontrollera om det finns ett giltigt samtycke  alternativt intyg om nödåtkomst för en given patient och vårdgivare	25
3.1.8	Flöde 8: Patient/brukare tar del av alla sina givna samtycken	26
3.1.9	Flöde 10: Patient/brukare avslutar ett redan givet samtycke i förtid	28
3.1.10	Obligatoriska kontrakt	30
3.2	Adressering	31
3.2.1	Logisk adressering	31
3.3	Aggregering och engagemangsindex	31
4	Tjänstedomänens krav och regler	32
4.1	Informationssäkerhet och juridik	32
4.2	Säkerhet	32
4.2.1	Förlitande parter enligt RIV TA Basic Profile	32
4.2.2	Stark autentisering av slutanvändare	32
4.2.3	Krav på konsumenten	32
4.2.4	Hantering av otillgänglighet	33
4.3	Icke funktionella krav	34
4.3.1	SLA krav	34
4.3.2	Övriga krav	35
4.4	Felhantering	36
4.4.1	Krav på en tjänsteproducent	36
4.4.2	Krav på en tjänstekonsument	36
4.4.3	Konfidentialitet	37
5	Tjänstedomänens meddelandemodeller	37
5.1	Information hanterad i tjänsterna	37
5.2	Formatregler	38
5.2.1	Format för Datum	38
5.2.2	Format för tidpunkter	38
5.2.3	Tidszon för tidpunkter	38
5.3	Termer och begrepp	38
6	Tjänstekontrakt	40
6.1	GetConsentsForPatient	40
6.1.1	Version	40
6.1.2	Meddelandeinformationsmodell	40
6.1.3	Fältregler	40
6.1.4	Övriga regler	41
6.1.5	Icke funktionella krav	41
6.1.6	SLA-krav	41
6.2	GetConsentsForCareProvider	42
6.2.1	Version	42
6.2.2	Meddelandeinformationsmodell	42
6.2.3	Fältregler	43
6.2.4	Övriga regler	43
6.2.5	Icke funktionella krav	43
6.2.6	SLA-krav	44
6.3	GetExtendedConsentsForPatient	45
6.3.1	Version	45
6.3.2	Meddelandeinformationsmodell	45
6.3.3	Fältregler	45
6.3.4	Övriga regler	46
6.3.5	Icke funktionella krav	46
6.3.6	SLA-krav	46
6.4	CheckConsent	46
6.4.1	Version	47
6.4.2	Meddelandeinformationsmodell	47
6.4.3	Fältregler	47
6.4.4	Övriga regler	48
6.4.5	Icke funktionella krav	48
6.4.6	SLA-krav	48
6.5	RegisterExtendedConsent	49
6.5.1	Version	49
6.5.2	Meddelandeinformationsmodell	49
6.5.3	Fältregler	49
6.5.4	Övriga regler	51
6.5.5	Icke funktionella krav	51
6.5.6	SLA-krav	51
6.6	CancelExtendedConsent	52
6.6.1	Version	52
6.6.2	Meddelandeinformationsmodell	52
6.6.3	Fältregler	52
6.6.4	Övriga regler	53
6.6.5	Icke funktionella krav	53
6.6.6	SLA-krav	53
6.7	DeleteExtendedConsent	54
6.7.1	Version	54
6.7.2	Meddelandeinformationsmodell	54
6.7.3	Fältregler	54
6.7.4	Övriga regler	55
6.7.5	Icke funktionella krav	55
6.7.6	SLA-krav	55
6.8	GetAllExtendedConsentsForPatient	56
6.8.1	Version	56
6.8.2	Meddelandeinformationsmodell	56
6.8.3	Fältregler	56
6.8.4	Övriga regler	57
6.8.5	Icke funktionella krav	57
6.8.6	SLA-krav	57
6.9	EndConsentByPatient	57
6.9.1	Version	57
6.9.2	Meddelandeinformationsmodell	58
6.9.3	Fältregler	58
6.9.4	Övriga regler	59
6.9.5	Icke funktionella krav	59
6.9.6	SLA-krav	59
7	Datatyper	60
7.1	Datatyper från namnrymd urn:riv:informationsecurity:authorization:consent:2	60
7.1.1	urn:riv:informationsecurity:authorization:consent:2:AccessingActorType	60
7.1.2	urn:riv:informationsecurity:authorization:consent:2:ActionType	60
7.1.3	urn:riv:informationsecurity:authorization:consent:2:ActorType	61
7.1.4	urn:riv:informationsecurity:authorization:consent:2:AssertionTypeType	61
urn:riv:informationsecurity:authorization:consent:2:AssignmentNameType	61
7.1.5	urn:riv:informationsecurity:authorization:consent:2:CancelledAssertionType	62
7.1.6	urn:riv:informationsecurity:authorization:consent:2:CheckResultType	62
7.1.7	urn:riv:informationsecurity:authorization:consent:2:ExtendedPDLAssertionType	62
7.1.8	urn:riv:informationsecurity:authorization:consent:2:GetAllAssertionsResultType	63
7.1.9	urn:riv:informationsecurity:authorization:consent:2:GetConsentsResultType	64
7.1.10	urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType	65
7.1.11	urn:riv:informationsecurity:authorization:consent:2:HsaId	65
7.1.12	urn:riv:informationsecurity:authorization:consent:2:IIType	65
7.1.13	urn:riv:informationsecurity:authorization:consent:2:Id	66
7.1.14	urn:riv:informationsecurity:authorization:consent:2:OwnerId	66
7.1.15	urn:riv:informationsecurity:authorization:consent:2:PDLAssertionType	66
7.1.16	urn:riv:informationsecurity:authorization:consent:2:ReasonText	67
7.1.17	urn:riv:informationsecurity:authorization:consent:2:ResultType	67
7.1.18	urn:riv:informationsecurity:authorization:consent:2:ResultCodeType	68
7.1.19	urn:riv:informationsecurity:authorization:consent:2:ScopeType	68
7.1.20	Datatyper från namnrymd urn:riv:informationsecurity:authorization:consent:2	69
Revisionshistorik

| Version | Datum | Författare | Kommentar |
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
| 2.0.3 | 2024-11-06 | Thomas Fafoutis
Emma Fridén | Utökning av tjänstedomänens ändamål för att även stödja patientens/brukarens behov av att se givna samtycken |
| 2.0.4 | 2025-06-04 | Thomas Fafoutis | Två nya tjänstekontrakt tillagda. RegisterConsentByPatient och EndConsentByPatient |
| 2.0.4 | 2025-06-04 | Thomas Fafoutis | Ändrat begäran i EndConsentByPatient (endDate -> endDateTime) |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | RIV PDLiP | Obligatoriskt | RIV Specifikation Patientdatalagen i Praktiken, http://rivta.se/documents/ARK_0031/PDLiP_RIV_1.0.pdf |
| R2 | SVOD | Finns på Webben | Lag om sammanhållen vård- och omsorgsdokumentation (2022:913), https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/lag-2022913-om-sammanhallen-vard-och_sfs-2022-913 |
| R3 | HSLF-FS 2016:40 |  | https://www.socialstyrelsen.se/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso--och-sjukvarden/ |
| R4 | RIV TA |  | RIV Teknisk Anvisning Basic Profile
http://rivta.se/ |
| R5 | RIV Tekniska Anvisningar – Kryptografi |  | ARK_0036 / http://rivta.se/documents/ARK_0036/ |
| R6 | Arkitekturella beslut |  | AB_informationsecurity_authorization_consent |
| R7 | Regel #11, Logiska fel |  | RIV Tekniska Anvisningar - Tjänsteschema 2.1, http://rivta.se/documents/ARK_0005/ |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

## Inledning
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

### Svenskt namn
Samtyckestjänst
Kortnamn Informationssäkerhet:Säkerhetstjänster:Samtyckestjänst

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen informationsecurity: authorization: consent.
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0.4

#### Oförändrade tjänstekontrakt
Samtliga kontrakt är förändrade relativt domänversion 1.0

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med minor-version 2.0.4:
RegisterConsentByPatient
EndConsentByPatient
Följande nya tjänstekontrakt finns från och med minor-version 2.0.3:
GetAllExtendedConsentForPatient

##### Förändrade tjänstekontrakt
Samtliga kontrakt är förändrade relativt domänversion 1.0

#### Ingående tjänstekontrakt
Nedanstående tabell visar vilka tjänster som finns definierade.
Kategoriseringen beskriver vilket användningsområde tjänsten tillhör. Följande kategoriseringar är definierade:
querying 	- tjänstekontrakt för att hämta samtycken för intern samtyckeskontroll
accesscontrol 	- tjänstekontrakt för samtyckekontroll
administration 	- tjänstekontrakt för att registrera, avsluta, makulera eller lista samtycken med utökad information

| Tjänstekontrakt | Beskrivning | Kategori |
| :--- | :--- | :--- |
| GetConsentsForCareProvider | Läs samtycken inom vårdgivare | querying |
| GetConsentsForPatient | Läs samtycken för patient inom vårdgivare | querying |
| CheckConsent | Kontrollera om samtycke finns relativ viss personal/vårdenhet | accesscontrol |
| GetExtendedConsentsForPatient | Läs samtycken för patient inom vårdgivare, med utökad information. Tilltänkt aktör är vårdgivare/vårdpersonal | administration |
| RegisterExtendedConsent | Registrera samtycke, med utökad information | administration |
| CancelExtendedConsent | Avsluta samtycke, med utökad information | administration |
| DeleteExtendedConsent | Makulera samtycke, med utökad information | administration |
| GetAllExtendedConsentsForPatient | Nytt tjänstekontrakt fr o m 2.0.3
Läs samtycken för patient/brukare med utökad information. Tilltänkt aktör är patient/brukare eller dess legala ombud. | querying |
| RegisterConsentByPatient | Nytt tjänstekontrakt fr o m 2.0.4
Patients möjlighet att ge ett samtycke. Tilltänkt aktör är patient/brukare eller dess legala ombud. | administration |
| EndConsentByPatient | Nytt tjänstekontrakt fr o m 2.0.4
Patients möjlighet att avsluta ett givet samtycke i förtid. Tilltänkt aktör är patient/brukare eller dess legala ombud. | administration |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Endast en tidigare major-version (1.0).

## Tjänstedomänens arkitektur
Den nationella arkitekturen för samtyckeshantering är utformad
dels för att stödja vård- och omsorgsutförares behov att hantera samtycken för lokala/regionala vårdsystem
Dels för att möjliggöra en överblick över samtycken för en patient/invånare
dels för motsvarande behov i nationella e-hälsotjänster
Arkitekturen ska medge att vårdgivare/omsorgsutförare, kommuner och regioner, på ett flexibelt sätt kan hantera sina "egna" samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patients/brukares journaluppgifter. Samtyckesinformation utbyts därför genom tydliga tjänstekontrakt.
Tjänsterna syftar till att ge följande verksamhetsmässiga effekter
Vård- och omsorgspersonalen ska få stöd att på ett enkelt sätt registrera patientens/brukarens samtycke, dess varaktighet och för vem/vilka registreringen gäller.
Vård- och omsorgspersonalen ska kunna åberopa nödsituation när inte samtycke är möjligt att få från patienten/brukaren och det råder fara för patientens/brukarens liv och hälsa.
Samtycken ska kunna få genomslag i anslutna tillämpningar, såväl lokala som nationella, t. ex. både i det egna journalsystemet och i nationell patientöversikt, så att dubbelregistreringar undviks.

![img_029.png](images/img_029.png)
Figur 1: Principer för samverkande tjänster för hantering av samtycke
Notera att en viss instans av samtyckestjänsten typiskt hanterar flera vårdgivares/omsorgsutförares information. För att visa på principerna ges exempel utifrån två fiktiva vårdgivare A och B.
Nationellt anpassade tjänstekontrakt gör att journalsystem kan ansluta till ett och samma gränssnitt för samtycke oavsett hur huvudmannen ordnar med sin hantering och lokala infrastruktur.
Tjänstekontrakten kan realiseras oberoende av var delsystemen realiseras. Man kan således välja att nyttja en mellan huvudmän delad molntjänst ("hotelltjänst"), alternativt en egen lokal installation.
Det är vidare valfritt var användargränssnittet för att registrera samtycket realiseras, i ett separat gränssnitt mot samtyckestjänsten (som i fallet NPÖ) eller i respektive journalsystem/e-tjänst eller i en gemensam portal. Oavsett var sparas samtycket i samtyckestjänsten för aktuell vårdgivare/omsorgsutförare.
Nationella e-tjänster, t ex NPÖ, får genom tjänstekontrakten ett gränssnitt till de samtycken och patientrelationer som behövs för dess hantering av direktåtkomst inom den sammanhållna journalföringen. Eftersom informationen kommer från många olika vårdgivare/omsorgsutförare över regiongränser, behöver tjänsteanropen förmedlas till den instans av samtyckestjänst som är aktuell. Förmedlingen bygger på verksamhetsmässig adressering av anropen enligt RIV TA och T-boken och är huvudsakligen baserad på vård- eller omsorgsgivarens identitet.

### Flöden

#### Flöde 1: Registrera samtycke
Nedanstående flöde och sekvens visualiserar och beskriver användningsfallet att registrera ett samtycke.
Dvs att patienten/brukaren samtycker till att vård- eller omsorgsgivaren kan få åtkomst till information hos andra vård- eller omsorgsgivare.

##### Arbetsflöde

![img_004.jpg](images/img_004.jpg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En vård- eller omsorgsgivare som har behov av att ta del av journalinformation hos en annan vård- eller omsorgsgivare och därmed behöver patientens/brukarens samtycke till denna åtkomst. Samtycket behöver registreras så att journalsystemet sedan kan se att åtkomsten sker med patientens/brukarens samtycke. |
| Tjänstekonsument | System som registrerar patientens/brukarens samtycke. Kan antingen vara ett lokalt journalsystem eller en samtyckestjänst. |
| Tjänsteproducent | System som lagrar patientens/brukarens samtycke. |

##### Sekvensdiagram
Sekvensdiagram för att registrera patientens/brukarens samtyckesåtkomst i sammanhållen journalföring.

![img_019.png](images/img_019.png)

#### Flöde 2: Återta registrerat samtycke
Flöde för att återkalla ett samtycke (avsluta i förtid) i samtyckestjänsten. Intyget raderas inte från samtyckestjänsten utan markeras som avslutat (ej längre giltig) för historikens skull. Ett avslutat samtycke kan ej återtas.

##### Arbetsflöde

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En vård- eller omsorgsgivare som har behov av att avsluta ett tidigare givet samtycke. Normalt sker detta på begäran av patienten/brukaren. |
| Tjänstekonsument | System som administrerar patientens/brukarens samtycken. Kan antingen vara ett lokalt journalsystem eller en samtyckestjänst. |
| Tjänsteproducent | System som lagrar patientens/brukarens samtycken. |

##### Sekvensdiagram
Sekvensdiagram för att avsluta ett tidigare av patienten/brukaren givet samtycke för åtkomst i sammanhållen journalföring.
Flödet inleds med en läsning av samtycken, för att aktören ska få underlag för vilket samtycke som ska administreras.

![img_014.png](images/img_014.png)

#### Flöde 3: Makulering av samtycke.
Makulering av samtycke används enbart för borttagning av felregistrerade samtycken från vård- eller omsorgen.
Samtycket raderas inte från samtyckestjänst utan markeras som makulerat (ej längre giltig) för historikens skull. En makulering kan ej återtas. Notera att fram till att samtycket makuleras så är samtycket giltigt och skulle teoretiskt kunna ha nyttjats. En makulering är egentligen ett återtagande av samtycket, så som i flöde 2 men där återtagandets undantagsfall (felregistreringen) dokumenteras särskilt.

##### Arbetsflöde

![img_009.jpg](images/img_009.jpg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En vård- eller omsorgsgivare som har behov av att makulera ett (felaktigt) tidigare registrerat samtycke. |
| Tjänstekonsument | System som begär makulering av patientens/brukarens samtycke. Kan antingen vara ett lokalt journalsystem eller en samtyckestjänst. |
| Tjänsteproducent | System som makulerar patientens/brukarens samtycke. |

##### Sekvensdiagram
Sekvensdiagram för att makulera ett tidigare registrerat samtycke. Orsaken kan t.ex vara en felaktig registrering.
Flödet inleds med en läsning av samtycken, för att aktören ska få underlag för vilket samtycke som ska administreras.

![img_025.png](images/img_025.png)

#### Flöde 4: Hämta patientens/brukarens samtycken
Flöde för att läsa giltiga samtyckesintyg för en viss patient och en viss vård- eller omsorgsgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents).
Flödet är tänkt att användas i ett integrationsmönster där journalsystemet läser in de giltiga samtycken som finns för patienten/brukaren per vårdgivare, för att sedan utföra intern kontroll av samtycke.

##### Arbetsflöde

![img_002.jpg](images/img_002.jpg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | System som begär hämtning av patientens/brukarens samtycken för en angiven vårdgivare. |
| Tjänsteproducent | System som tillhandahåller samtycken. |

##### Sekvensdiagram
Sekvensdiagram för att hämta patientens/brukarens samtycken från en producent av samtycken.

![img_020.png](images/img_020.png)

#### Flöde 5: Hämta samtycken för en given vårdgivare
Tjänst som läser alla giltiga samtyckesintyg för en viss vård- eller omsorgsgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll av åtkomst (CheckConsents).
Flödet användas i ett integrationsmönster där journalsystemet med visst intervall inhämtar alla samtycken det behöver utifrån de vård- eller omsorgsgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget av samtycken och nödsituationsintyg.

##### Arbetsflöde

![img_015.jpg](images/img_015.jpg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Tjänstekonsument | System som begär hämtning av samtycken för en angiven vård- eller omsorgsgivare. |
| Tjänsteproducent | System som tillhandahåller samtycken. |

##### Sekvensdiagram
Sekvensdiagram för att hämta patientens/brukarens samtycken från en producent av samtycken.

![img_007.png](images/img_007.png)

#### Flöde 6: Hämta utökad information kring samtycken för en given patient och vårdgivare
Flöde för att läsa registrerade samtyckesintyg för en viss patient och vård- eller omsorgsgivare med utökad information.
Det är valbart om ogiltiga (makulerade, avslutade och utgångna) samtyckesintyg skall returneras.
Flödet används normalt för att söka fram och administrera patientens/brukarens samtycken för en viss vård- eller omsorgsgivare.

##### Arbetsflöde

![img_021.jpg](images/img_021.jpg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En aktör som har behov av att administrera ett samtycke och därmed behöver fullständiga uppgifter kring samtycket. Syftet kan t.ex vara att avsluta ett tidigare registrerat samtycke. |
| Tjänstekonsument | System som begär hämtning av samtycken för en angiven vård- eller omsorgsgivare. |
| Tjänsteproducent | System som tillhandahåller samtycken. |

##### Sekvensdiagram
Sekvensdiagram för att hämta utökad information kring en patientens/brukarens samtycke från en producent av samtycken.

![img_017.png](images/img_017.png)

#### Flöde 7: Kontrollera om det finns ett giltigt samtycke 
alternativt intyg om nödåtkomst för en given patient och vårdgivare
Flöde för att kontrollera om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vård-/omsorgsenhet eller medarbetare). Med giltigt samtycke avses ett samtycke som fortfarande är giltigt (giltigt t o m har ej passerats), ej makulerat eller avslutat.
Om ett giltigt intyg gällande åtkomst för angiven aktör hittas, kommer tjänsten att svara OK

##### Arbetsflöde

![img_010.jpg](images/img_010.jpg)

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En vård- eller omsorgsgivare som har behov av att se journalinformation hos andra vårdgivare |
| Tjänstekonsument | System som ansvarar för att endast visa information som det finns ett samtycke registrerat för hos den aktuella vård- eller omsorgsgivaren. Konsumenten begär kontroll av detta hos en producent av registrerade samtycken. |
| Tjänsteproducent | System som tillhandahåller kontroll av samtycken. |

##### Sekvensdiagram
Sekvensdiagram för att kontrollera om samtycken finns för en given aktör för åtkomst till journalinformation inom sammanhållen journalföring.

![img_026.png](images/img_026.png)

#### Flöde 8: Patient/brukare tar del av alla sina givna samtycken
Flöde för att patient/brukare, via en e-tjänst, kunna ta del av alla sina givna samtyckesintyg. Patient/brukare kan se till vilken vård- eller omsorgsutförare som patient/brukare givit samtycke samt samtyckets giltighetstid.

##### Arbetsflöde

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En patient/brukare som har behov av att se vilka samtycken patienten/brukaren givit och som registrerats av vård- eller omsorgsutförare. |
| Tjänstekonsument | System som ansvarar för att endast visa information om patientens/brukarens registrerade samtycken hos olika vårdenheter/vårdaktörer. |
| Tjänsteproducent | System som tillhandahåller lagring av samtyckesintyg. |

##### Sekvensdiagram
Sekvensdiagram för att kontrollera om samtycken finns för en given aktör för åtkomst till journalinformation inom sammanhållen journalföring.

![img_005.png](images/img_005.png)

#### Flöde 10: Patient/brukare avslutar ett redan givet samtycke i förtid
Flöde för att patient/brukare, via en e-tjänst, ska kunna avsluta ett givet samtycke som patient/brukare tidigare har givit.

##### Arbetsflöde

##### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Användare | En patient/brukare som har behov av att se vilka samtycken patienten/brukaren givit och som registrerats av vård- eller omsorgsutförare. |
| Tjänstekonsument | System som ansvarar för att visa information om patientens/brukarens registrerade samtycken hos olika vårdenheter/vårdaktörer samt ger patient/brukare möjlighet att avsluta ett samtycke i förtid. |
| Tjänsteproducent | System som tillhandahåller lagring av samtyckesintyg. |

##### Sekvensdiagram
Sekvensdiagram för att kontrollera om samtycken finns för en given aktör för åtkomst till journalinformation inom sammanhållen journalföring.

#### Obligatoriska kontrakt

| Tjänstekontrakt | Flöde 1 | Flöde 2 | Flöde 3 | Flöde 4 | Flöde 5 | Flöde 6 | Flöde 7 | Flöde 8 | Flöde 9 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| RegisterExtendedConsent | X |  |  |  |  |  |  |  |  |
| CancelExtendedConsent |  | X |  |  |  |  |  |  |  |
| DeleteExtendedConsent |  |  | X |  |  |  |  |  |  |
| GetConsentsForPatient |  |  |  | X |  |  |  |  |  |
| GetConsentsForCareProvider |  |  |  |  | X |  |  |  |  |
| GetExtendedConsentsForPatient |  | X | X |  |  | X |  |  |  |
| CheckConsent |  |  |  |  |  |  | X |  |  |
| GetAllExtendedConsentsForPatient |  |  |  |  |  |  |  | X |  |
| EndConsentByPatient |  |  |  |  |  |  |  | X | X |

### Adressering

#### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används. Detta möjliggör att en för avsändaren transparent tjänsteväxel kan förmedla anrop vidare till en viss instans av samtyckestjänsten och även behörighetsstyra anropet.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vård- eller omsorgsgivares Id (t.ex. HSA-id) skall anges som logisk adressat. För den nationella samtyckestjänsten skall Ineras nationella HSA-id SE165565594230-1000 anges. Denna tjänst representerar en nationell nivå och hanterar alla nationellt kända informationsposter.
Om en regional eller lokal samtyckestjänst etableras ska denna adresseras via logisk adress enligt nedan:

| Tjänst | Logisk adressat |
| :--- | :--- |
| Regional samtyckestjänst | Regionens HsaId eller organisationsnummer |
| Lokal samtyckestjänst | Systemets HsaId |

### Aggregering och engagemangsindex
Ej tillämpbart för denna tjänstedomän.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Tjänstedomänens juridiska krav baseras bl.a på RIV PDLiP [R1], Patientdatalagen [R2] samt SOS2008:14 [R3]

### Säkerhet

#### Förlitande parter enligt RIV TA Basic Profile
Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att konsument och producent ömsesidigt kan verifera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

#### Stark autentisering av slutanvändare
Vid samtyckeshantering åligger krav på vårdgivaren/omsorgsutföraren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet Socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för samtyckesadministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.
Kravet på stark autentisering gäller även e-tjänster för invånare, där invånare (patienter/brukare) ges tillgång till egna samtyckesintyg.

#### Krav på konsumenten
Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad (enligt kap 4.2.2) inklusive dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten, samt att slutanvändarens aktiviteter loggas. Tjänstekonsumenten ansvarar för att det endast är möjligt för en aktör att skapa och hantera samtycken för den vårdgivare som aktören har uppdrag för.

#### Hantering av otillgänglighet
Tjänstekontrakten stödjer en arkitektur där det är möjligt att integrera mot tjänsterna utan att skapa ett hårt beroende till dessa i run-time.
Tjänsteproducenten kan nyttja mellanlagring för att öka tillgängligheten på tjänsterna. Ett svar kan då returneras även om bakomliggande system för tillfället är otillgängligt. Det måste dock anges i SLA för en viss implementation av tjänsten vilken förväntad aktualitet som gäller.

![Ett journalsystem som endast har behov av samtycken tillhörande vissa lokala/regionala vård-/omsorgsgivare, blir bara beroende av den samtyckesinstans som hanterar de aktuella vård-/omsorgsgivarna. Om t ex en region väljer att implementera en egen lokal tjänst för alla vård-/omsorgsgivare i regionen, blir deras journalsystem enbart beroende av deras egen lokala tjänst.


Figur 2: Lokalt vårdsystem kommunicerar enbart med en lokal tjänst.


Nationella tillämpningar behöver kunna hantera samtycket oavsett vilken vårdgivare som använder tjänsten. Här förmedlas anropen till den tjänst som behövs beroende på vilken vård-/omsorgsgivare som använder tillämpningen just för tillfället.](images/img_016.png)
Ett journalsystem som endast har behov av samtycken tillhörande vissa lokala/regionala vård-/omsorgsgivare, blir bara beroende av den samtyckesinstans som hanterar de aktuella vård-/omsorgsgivarna. Om t ex en region väljer att implementera en egen lokal tjänst för alla vård-/omsorgsgivare i regionen, blir deras journalsystem enbart beroende av deras egen lokala tjänst.


Figur 2: Lokalt vårdsystem kommunicerar enbart med en lokal tjänst.


Nationella tillämpningar behöver kunna hantera samtycket oavsett vilken vårdgivare som använder tjänsten. Här förmedlas anropen till den tjänst som behövs beroende på vilken vård-/omsorgsgivare som använder tillämpningen just för tillfället.

![Figur 3: Nationell e-tjänst kommunicerar med en lokal tjänst via tjänsteplattform.

Ovan förmedlas anropen till rätt tjänsteproducent genom den logiska adresseringen som bygger på vilken huvudman eller vård-/omsorgsgivare som användaren är inloggad på via dennes medarbetaruppdrag.](images/img_011.png)
Det finns en viktig tillgänglighetsaspekt att tänka på här. Den nationella e-tjänsten blir beroende av en lokal tjänst hos den huvudman vars användare nyttjar den nationella e-tjänsten. Om den lokala tjänsten är nere, får det dock bara påverkan på användare som har uppdrag hos huvudmannen/vårdgivaren. Samtycken som lagras i vårdgivarens tjänst berör endast personal hos vårdgivare, eller mer korrekt: har uppdrag hos vårdgivaren, och det är endast för dem som anropet förmedlas till den lokala tjänsten.
Detta är en viktig princip i arkitekturen. Tillgängligheten för den nationella e-tjänsten bör inte påverkas generellt (för alla) av en huvudmans beslut att hantera en lokal installation för t ex sin samtyckeshantering.
Ett journalsystem kan skydda sig från ett absolut beroende till tjänsterna i run-time genom att mellanlagra senaste samtyckesunderlaget. Verksamhetens krav på aktualitet på samtyckesunderlaget måste här avgöra hur länge samtyckesinformationen kan mellanlagras.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Se respektive tjänstekontrakt |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
| … |  |  |

#### Övriga krav
N/A

### Felhantering

#### Krav på en tjänsteproducent
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.
Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare [R1-R3].

##### Logiska fel
Vid ett logiskt fel i de uppdaterande tjänsterna levereras typen ResultType (resultCode, resultText).
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom "OK" och ”INFO” betyder att åtgärden inte genomfördes.
Ett förlåtande tillvägagångssätt när det gäller hantering av fel rekommenderas. T.ex. om ett vårdsystem försöker registrera ett samtycke dubbelt bör resultatet i båda fallen bli ”OK” för att minska ner möjliga felsituationer.

##### Tekniska fel
Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren.

#### Krav på en tjänstekonsument
Alla fel hos konsumenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiskt fel
För konsumenter av uppdaterande tjänster så skall felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

#### Konfidentialitet
All kommunikation med tjänsterna sker via TLS-krypterad förbindelse, se ref [R5].

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot Nationell Informationsstruktur 2016:1 samt mot schema (XSD) för tjänstekontrakt.

### Information hanterad i tjänsterna
Tjänsterna inom domänen hanterar intyg gällande viss patient/brukare för direktåtkomst till patientens/brukarens information från andra vård-/omsorgsgivare enligt Lagen om sammanhållen vård- och omsorgsdokumentation.
Intyget avser primärt patientens/brukarens aktiva medgivande - patientens/brukarens samtycke - vilket ges till enskild vård- och omsorgspersonal på en enhet, alternativt till all personal som har uppdrag för enheten.
I en nödsituation där patienten/brukaren av någon anledning inte kan ge ett aktivt samtycke, men vård- och omsorgspersonal bedömer att behov av uppgifterna finns för nödvändig vård av patienten/brukaren, kan istället registreras intyg om nödsituation.
Intyget har en giltighetstid och det finns även tjänster för att avsluta respektive makulera (vid felregistrering) intygen.
Det går även att registrera patientens/brukarens företrädare som en informativ uppgift i intyget.
Nedan används termen "samtyckesintyg" vilket ska ses i det bredare perspektivet enligt ovan.
Tjänstekontrakten hanterar
dels grundläggande samtyckesinformation. 
Denna information är nödvändig för samverkan mellan system och nyttjas för samtyckeskontroll.
dels utökad samtyckesinformation (extended).
Utökningarna är kringinformation som tex när och vem som registrerade samtycket. Denna är inte nödvändig för samtyckeskontrollen, men kan användas när samtyckesinformation hanteras och visas upp.

### Formatregler

#### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

#### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss”. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Termer och begrepp

| Term/begrepp | Förklaring |
| :--- | :--- |
| Giltigt samtyckesintyg | Med ett giltigt samtyckesintyg avses ett samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents) |
| Ogiltigt samtyckesintyg | Med ett ogiltigt samtyckesintyg avses ett samtyckesintyg som är makulerat eller utgånget. |
| Makulerat samtyckesintyg | Med ett makulerat samtyckesintyg avses ett samtyckesintyg som har blivit återkallat p g a felaktig registrering. |
| Avslutat samtyckesintyg | Med ett avslutat samtyckesintyg avses ett samtyckesintyg som på patientens/brukarens begäran har blivit avslutat. |
| Utgånget samtyckesintyg | Med ett utgånget samtyckesintyg avses ett samtyckesintyg där giltigt t o m har passerats. |

## Tjänstekontrakt

### GetConsentsForPatient
Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents).
Ogiltiga intyg (giltigt t o m har passerats, makulerade eller avslutade) returneras ej.
Tjänsten kan användas i ett integrationsmönster där journalsystemet läser in giltiga samtycken som finns för patienten/brukaren per vård- eller omsorgsgivare, för att sedan utföra intern kontroll av samtycke.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_027.jpeg](images/img_027.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Obligatoriskt id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| Svar |  |  |  |
| getConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetConsentsResultType | Lista med giltiga samtycken för patient/brukare. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### GetConsentsForCareProvider
Tjänst som läser alla giltiga samtyckesintyg för en viss vård-/omsorgsgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll av åtkomst (CheckConsents).
Det är valbart om makulerade, avslutade samtyckesintyg eller samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras. Utgångna samtyckesintyg (giltigt t o m har passerats) returneras ej oavsett makulering.
Det går även att ange en tidpunkt (CreatedOnOrAfter) från när man önskar inhämta uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Här avses tidpunkten då samtycket lagrades i tjänsten.
Tjänsten tillåts att dela upp listan av samtyckesintyg i mindre delar för att minska på belastningen på systemet. Om detta sker kommer flaggan HasMore att vara satt om det finns fler samtyckesintyg att hämta. De resterande samtyckesintygen skall i så fall hämtas med ytterligare anrop till tjänsten tills flaggan HashMore ej längre är satt (false).
Tjänsten returnerar en ny tidpunkt (CreatedOnOrAfter) som anger från och med nästa tidpunkt som samtyckesintygen ej har hämtats. Detta värde kan användas som inparameter i ytterligare anrop till tjänsten för att hämta nästa sekvens av samtyckesintyg.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar alla samtycken det behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget av samtycken och nödsituationsintyg.
Viktigt att kontrollera att alla samtycken är hämtade genom att kontrollera värdet på flaggan HasMore.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_003.jpeg](images/img_003.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | HSA-id på den vård-/omsorgsgivare vars samtycken skall hämtas. | 1..1 |
| createdOnOrAfter | xs:DateTime | Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas. Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om makulerade samtyckesintyg eller samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras. | 1..1 |
| Svar |  |  |  |
| getAllAssertionsResult | urn:riv:informationsecurity:authorization:consent:2:GetAllAssertionsResultType | Lista med giltiga samtyckesintyg och eventuellt en lista med ogiltiga samtyckesintyg. Information om det finns fler samtyckesintyg att hämta samt ny starttidpunkt ingår även i svaret. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### GetExtendedConsentsForPatient
Tjänst som läser registrerade samtyckesintyg för en viss patient/brukare med utökad information.
Det är valbart om ogiltiga (makulerade och utgångna) samtyckesintyg skall returneras.
Tjänsten kan användas för att söka fram och administrera patientens/brukarens samtycken för en viss vård-/omsorgsgivare.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_012.jpeg](images/img_012.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | HSA-id på den vård-/omsorgsgivare vars samtycken skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om ogiltiga samtyckesintyg skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType | Utökad information för samtycke. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### CheckConsent
Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vårdenhet eller medarbetare).
Med giltigt samtycke avses ett samtycke som fortfarande är giltigt (giltigt t o m har ej passerats), ej makulerat.
Om ett giltigt intyg gällande åtkomst för angiven aktör hittas, kommer tjänsten att svara OK.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_030.jpeg](images/img_030.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | urn:riv:informationsecurity:authorization:consent:2:AccessingActorType | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycke skall kontrolleras. | 1..1 |
| Svar |  |  |  |
| checkResult | urn:riv:informationsecurity:authorization:consent:2:CheckResultType | Status för om ett giltigt intyg gällande åtkomst för angiven aktör hittades. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | Beror på ingående samtyckestjänsters tillgänglighet. Önskas högre tillgänglighet kan konsumerande system mellanlagra data i cache som anpassas till krav på aktualitet. |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll på de senaste registrerade intygsuppgifterna i samtyckestjänsten. |  |

### RegisterExtendedConsent
Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens/brukarens information från andra vårdgivare enligt PDL.
Intyget avser patientens/brukarens aktiva medgivande (samtycke), alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård av patient som inte kan ge aktivt medgivande.
Det går även att registrera patientens/brukarens företrädare.
Tjänsten kräver utökad information (metainformation) kring skapande av intyget.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_006.jpeg](images/img_006.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| assertionType | urn:riv:informationsecurity:authorization:consent:2:AssertionTypeType | Typ av intyg som ger direktåtkomst till information från andra vård-/omsorgsgivare enligt SVOD. Kan vara patientens/brukarens samtycke eller nödsituation. | 1..1 |
| scope | urn:riv:informationsecurity:authorization:consent:2:ScopeType | Omfånget/tillämpningsområde på intyget. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren på vilket samtycket ska registreras. | 1..1 |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Id på den vård-/omsorgsgivare som intyget gäller för/kopplas till. | 1..1 |
| careUnitId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Id på den enhet som intyget gäller för/kopplas till. | 1..1 |
| employeeId | urn:riv:informationsecurity:authorization:consent:2:HsaId | MedarbetarId. Om samtycket är personligt anges id för den medarbetare som samtycket skall gälla för. Om samtycket gäller all behörig personal på angiven vårdenhet, skall inget medarbetarid anges. | 0..1 |
| startDate | xs:DateTime | Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller samtycket fr.o.m aktuell tidpunkt (registreringstidpunkt). | 0..1 |
| endDate | xs:DateTime | Ej obligatoriskt slutdatum för intygets giltighetstid. Om ett slutdatum är angivet gäller intyget t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir avslutat eller makulerat. | 0..1 |
| representedBy | urn:riv:informationsecurity:authorization:consent:2:IIType | Ej obligatorisk personidentitet på företrädare/vårdnadshavare som företräder patienten/brukaren. Värdet ska anges om samtycket är inhämtat från företrädare/vårdnadshavare. | 0..1 |
| registrationAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och registrerat intyget samt tidpunkter för dessa. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av samtycke skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor till samtyckestjänsten. |  |

### CancelExtendedConsent
Tjänst som avslutar ett samtycke i samtyckestjänsten. Intyget raderas inte från samtyckestjänsten utan markeras som avslutat (ej längre giltig) för historikens skull. Ett avslutat samtycke kan ej återtas.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_023.jpeg](images/img_023.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Identifierare för det intyg som skall avslutas. | 1..1 |
| cancellationAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och registrerat avslutandet samt tidpunkter för dessa. En anledning till avslutande i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att avslutande av samtycket skett då anropet genomförts utan fel. Avslutande speglas omedelbart i svar från frågor genom tjänsterna. |  |

### DeleteExtendedConsent
Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart för borttagning av felregistrerade samtycken.
Samtycket raderas inte från samtyckestjänst utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas.

#### Version
2.0

#### Meddelandeinformationsmodell

![img_018.jpeg](images/img_018.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Identifierar det intyg som skall makuleras. | 1..1 |
| deletionAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att makulering av samtycke skett då anropet genomförts utan fel. Makuleringen speglas omedelbart i svar från frågor genom tjänsterna. |  |

### GetAllExtendedConsentsForPatient
Tjänst som läser registrerade samtyckesintyg för en viss patient/brukare med utökad information.
Det är valbart om ogiltiga (makulerade och utgångna) samtyckesintyg skall returneras.
Tjänsten kan användas för att söka patients/brukares samtliga samtycken. Aktören är patienten/brukaren själv eller patients legala ombud.

#### Version
1.0

#### Meddelandeinformationsmodell

![img_013.jpeg](images/img_013.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om ogiltiga samtyckesintyg skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType | Utökad information för samtycke. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### EndConsentByPatient
Tjänst som ger patient/brukare möjlighet att avsluta ett tidigare givet samtycke i förtid.
Tjänsten förutsätter att giltiga samtycken först har inhämtats via tjänstekontraktet GetAllExtendedConsentsForPatient, varifrån det unika id för samtycket som ska avslutas också hämtas.
Aktören är patienten/brukaren själv eller patients legala ombud.

#### Version
1.0

#### Meddelandeinformationsmodell

![img_028.jpeg](images/img_028.jpeg)

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Unikt id som identifierar det intyg som skall avslutas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| representedById | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet för den företrädare/vårdnadshavare som företräder patienten/brukaren.
Ska anges om samtycket avslutas av företrädare/vårdnadshavare. | 0..1 |
| endDateTime | xs:dateTime | Frivillig tidpunkt/tidsstämpel för när samtycket ska avslutas. Tidstämpeln ska som tidigast vara nuvarande tidpunkt, alternativt före en tidigare given sista giltighetstidpunkt som är i framtiden. Om ingen tidpunkt anges ska producenten tolka samtyckets nya giltighetstidpunkt t o m nuvarande tidpunkt. | 0..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### Övriga regler
N/A

#### Icke funktionella krav
N/A

#### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

## Datatyper
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 2.0.

### Datatyper från namnrymd urn:riv:informationsecurity:authorization:consent:2
Nedan beskrivs komplexa och simpla datatyper som är deklarerade i den beroende namnrymden urn:riv:informationsecurity:authorization:consent:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### urn:riv:informationsecurity:authorization:consent:2:AccessingActorType
Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### urn:riv:informationsecurity:authorization:consent:2:ActionType
Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | xs:DateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | ActorType | Anger vem som begärt åtgärden. Om samtycket är givet för specifik vårdpersonal ska requestedBy vara lika med employeeId i samtycket. | 1 |
| registrationDate | xs:DateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | ActorType | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### urn:riv:informationsecurity:authorization:consent:2:ActorType
Datatyp som identifierar en medarbetare/person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### urn:riv:informationsecurity:authorization:consent:2:AssertionTypeType
Enumerationsvärde som anger typ av intyg som ger direktåtkomst till information från andra vård-/omsorgsgivare enligt SVOD.
Kan vara patientens/brukarens samtycke eller nödsituation.

| Värde | Beskrivning |
| :--- | :--- |
| "Consent" | Patienten/Företrädaren har givit sitt samtycke. |
| "Emergency" | Nödsituation föreligger. Patientens samtycke kunde ej inhämtas. |

#### urn:riv:informationsecurity:authorization:consent:2:AssignmentNameType
Datatyp som representerar namn på medarbetaruppdrag.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:authorization:consent:2:CancelledAssertionType
Datatyp som representerar ett makulerat eller avslutat samtycke samt tidpunkten när makuleringen eller avslutandet utfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| assertionId | Id | Id på det makulerade eller avslutade samtycket. | 1 |
| cancellationDate | xs:DateTime | Tidpunkt när makuleringen eller avslutandet utfördes. | 1 |

#### urn:riv:informationsecurity:authorization:consent:2:CheckResultType
Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| hasConsent | xs:Boolean | Anger om aktören har ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst. | 1 |
| assertionType | AssertionTypeType | Anger vilken typ av intyg som hittades. / Om olika typer av samtyckesintyg finns registrerade returneras endast typen för det senaste registrerade intyget. | 0..1 |

#### urn:riv:informationsecurity:authorization:consent:2:ExtendedPDLAssertionType
Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är avslutat eller makulerat.
Datatypen utökar datatypen PDLAssertion.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| pDLAssertion | PDLAssertionType |  | 1 |
| representedBy | IIType | Personidentitet på den företrädare/vårdnadshavare som företräder patienten/brukaren. / Värdet är ej obligatoriskt men ska finnas om samtycket gavs av företrädare/vårdnadshavare. | 0..1 |
| registrationInfo | ActionType | Innehåller information om vem som begärt och registrerat samtycket samt tidpunkten för begäran och registreringen. | 1 |
| cancellationInfo | ActionType | Information om en eventuell utfört avslutande av samtycket, när avslutandet registrerats från vård- och omsorgen. Innehåller vem som begärt och registrerat avslutandet, tidpunkten för begäran och registreringen av avslutandet, samt anledningen till avslutandet. | 0..1 |
| deletionInfo | ActionType | Information om en eventuell utförd makulering av samtycket. Innehåller vem som begärt och registrerat makuleringen, tidpunkten för begäran och registreringen av makuleringen, samt anledningen till makuleringen. | 0..1 |

#### urn:riv:informationsecurity:authorization:consent:2:GetAllAssertionsResultType
Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och avslutade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt.
Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| moreOnOrAfter | xs:DateTime | Anger fr.o.m. vilken tidpunkt ytterligare samtyckesintyg finns att hämta. Tidpunkten kan användas iterativt i anrop till tjänsten som ett värde till parametern CreatedOnOrAfter. / Om inga fler samtyckesintyg finns att tillgå returneras ändå en tidpunkt vilket då får representera nästa möjliga hämtningstidpunkt, dvs nya samtyckesintyg kommer att bli registrerade efter denna tidpunkt. | 1 |
| hasMore | xs:Boolean | Anger om det finns ytterligare samtycken att hämta. Om fler samtycken finns att hämta bör hämtningen utgå fr.o.m. den tidpunkt som anges i MoreOnOrAfter. | 1 |
| assertions | PDLAssertionType | Lista med giltiga intyg. | 0..* |
| cancelledAssertions | CancelledAssertionType | Lista med ej utgångna och makulerade intyg. | 0..* |

#### urn:riv:informationsecurity:authorization:consent:2:GetConsentsResultType
Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| pdlAssertions | PDLAssertionType | Lista med hämtade intyg. | 0..* |

#### urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType
Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| pdlAssertions | ExtendedPDLAssertionType |  | 0..* |

#### urn:riv:informationsecurity:authorization:consent:2:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Restriktionstyp: xs:string
Maxlängd: 32

#### urn:riv:informationsecurity:authorization:consent:2:IIType
En universellt unik identifierare.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | xs:String | Fältet root sätts till OID för kodverket för identifieraren (extension) / Som exempel för svenskt personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. | 1 |
| extension | xs:String | Ett id som tillsammans med värdet i root är unikt. Som exempel för svensk personidentitet så är extension lika med personnummer. | 0..1 |

#### urn:riv:informationsecurity:authorization:consent:2:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Restriktionstyp: xs:string
Maxlängd: 36

#### urn:riv:informationsecurity:authorization:consent:2:OwnerId
Datatyp som identifierar systemet som registrerade/skapade artefakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.
Restriktionstyp: xs:string
Maxlängd: 512

#### urn:riv:informationsecurity:authorization:consent:2:PDLAssertionType
Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| assertionId | Id | Unik, global identifierare för intyget. | 1 |
| assertionType | AssertionTypeType | Typ av intyg som ger direktåtkomst till information från andra vådgivare enligt PDL. Kan vara patientens/brukarens samtycke eller nödsituation. | 1 |
| scope | ScopeType | Omfånget/tillämpningsområde på samtycket. | 1 |
| careProviderId | HsaId | Vårdgivare id. Intyget kopplas till den vårdgivare som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| careUnitId | HsaId | Vårdenhets id. Intyget kopplas till den vårdenhet som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| employeeId | HsaId | Medarbetare id. Om samtycket är personligt anges medarbetarens id. Om samtycket gäller all behörig personal på vårdenheten skall inget värde anges. | 0..1 |
| startDate | xs:DateTime | Startdatum för vilken giltighetstid samtycket avser. | 1 |
| endDate | xs:DateTime | Optionellt slutdatum för vilken giltighetstid samtycket avser. Om ett slutdatum är angivet gäller samtycket t.o.m denna tidpunkt. Slutdatum kan ha angivits i samband med att samtycket inhämtades och registrerades eller om patient i efterhand valt att avsluta samtycket. 
Om inget slutdatum anges, gäller samtycket tills det blir avslutat eller makulerat. | 0..1 |
| ownerId | OwnerId | Optionell identifierare för det system som skapade samtycket. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |
| patientId | IIType | Personidentitet på patienten/brukaren som intyget avser. | 1 |

#### urn:riv:informationsecurity:authorization:consent:2:ReasonText
Datatyp som representerar en orsak eller anledning till en viss åtgärd.
Restriktionstyp: xs:string
Maxlängd: 1024

#### urn:riv:informationsecurity:authorization:consent:2:ResultType
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType | Anger svarskod för åtgärden. | 1 |
| resultText | xs:String | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 0..1 |

#### urn:riv:informationsecurity:authorization:consent:2:ResultCodeType
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a. ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATION_ERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "NOTFOUND" | Angiven artefakt finns ej. Angiven tjänst utfördes ej. |
| "ALREADYEXISTS" | Angiven artefakt finns redan. Angiven tjänst utfördes ej. |
| "INVALIDSTATE" | Angiven tjänst utfördes ej då tjänsten eller artefakten var i ett felaktigt tillstånd. |

#### urn:riv:informationsecurity:authorization:consent:2:ScopeType
Enumerationsvärde som anger omfånget/tillämpningsområde på intyget.

| Värde | Beskrivning |
| :--- | :--- |
| "NationalLevel" | Intyget gäller på nationell nivå. |

#### Datatyper från namnrymd urn:riv:informationsecurity:authorization:consent:2
Nedan beskrivs komplexa och simpla datatyper som är deklarerade i aktuell namnrymd urn:riv:informationsecurity:authorization:consent:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.
