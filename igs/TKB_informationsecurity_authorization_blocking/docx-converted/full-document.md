
|  | Spärr / Tjänstekontraktsbeskrivning / Version 4.0.4 / 2024-10-18 |
| :--- | :--- |
Innehåll
1	Inledning	8
1.1	Svenskt namn	8
1.2	Beskrivning	8
2	Versionsinformation	9
2.1	Version 4.0.4	9
2.1.1	Oförändrade tjänstekontrakt	9
2.1.2	Nya tjänstekontrakt	9
2.1.3	Förändrade tjänstekontrakt	9
2.1.4	Utgångna tjänstekontrakt	9
3	Tjänstedomänens arkitektur	10
3.1	Flöden	11
3.1.1	Flöde 1: Hämta (replikera) spärrar	11
3.1.2	Flöde 2: Hämta spärrunderlag	14
3.1.3	Flöde 3: Kontrollera om information är spärrad	15
3.1.4	Flöde 4: Behov av att hämta lista på patienter med spärrar, baserat på vårdgivare	16
3.1.5	Flöde 5: Aktör skapar spärrinformation	17
3.1.6	Flöde 6: Aktör uppdaterar spärrinformation	19
3.1.7	Flöde 7: Replikera upp lokala spärrar (och förändringar) till den nationella instansen	21
3.1.8	Obligatoriska kontrakt	23
3.2	Adressering	24
3.2.1	Logisk adressering	24
3.2.2	Exempel på logisk adressering för operationen CheckBlocks och GetBlocks	25
3.3	Aggregering och engagemangsindex	25
4	Tjänstedomänens krav och regler	26
4.1	Informationssäkerhet och juridik	26
4.2	Stark autentisering av användaren	26
4.3	Krav på konsumenten	26
4.4	Icke funktionella krav	26
4.4.1	SLA krav	26
4.4.2	Övriga krav	26
4.5	Felhantering	28
4.5.1	Krav på en tjänsteproducent	28
4.5.2	Krav på en tjänstekonsument	28
4.5.3	Konfidentialitet	28
5	Tjänstedomänens meddelandemodeller	29
5.1	Formatregler	29
5.1.1	Format för datum	29
5.1.2	Format för tidpunkter	29
5.1.3	Tidszon för tidpunkter	29
6	Tjänstekontrakt	30
6.1	GetBlocks	30
6.1.1	Version	30
6.1.2	Fältregler	30
6.1.3	Övriga regler	31
6.1.4	Annan information om kontraktet	31
6.1.5	Exempel	31
6.2	GetExtendedBlocksForPatient	32
6.2.1	Version	32
6.2.2	Fältregler	32
6.2.3	Övriga regler	32
6.2.4	Exempel	33
6.3	GetPatientIds	34
6.3.1	Version	34
6.3.2	Fältregler	34
6.3.3	Övriga regler	34
6.3.4	Exempel	34
6.4	CheckBlocks	35
6.4.1	Version.	35
6.4.2	Fältregler	35
6.4.3	Övriga regler	36
6.4.4	Exempel	36
6.5	RegisterBlock	37
6.5.1	Version	37
6.5.2	Fältregler	37
6.5.3	Övriga regler	38
6.5.4	Exempel	38
6.6	UnregisterBlock	39
6.6.1	Version	39
6.6.2	Fältregler	39
6.6.3	Övriga regler	39
6.6.4	Exempel	39
6.7	RegisterTemporaryRevoke	41
6.7.1	Version	41
6.7.2	Fältregler	41
6.7.3	Övriga regler	41
6.7.4	Exempel	41
6.8	UnregisterTemporaryRevoke	43
6.8.1	Version	43
6.8.2	Fältregler	43
6.8.3	Övriga regler	43
6.8.4	Exempel	43
6.9	RegisterExtendedBlock	45
6.9.1	Version	45
6.9.2	Fältregler	45
6.9.3	Övriga regler	46
6.9.4	Exempel	47
6.10	RevokeExtendedBlock	48
6.10.1	Version	48
6.10.2	Fältregler	48
6.10.3	Övriga regler	49
6.10.4	Exempel	49
6.11	DeleteExtendedBlock	50
6.11.1	Version	50
6.11.2	Fältregler	50
6.11.3	Övriga regler	51
6.11.4	Exempel	51
6.12	RegisterTemporaryExtendedRevoke	53
6.12.1	Version	53
6.12.2	Fältregler	53
6.12.3	Övriga regler	54
6.12.4	Exempel	55
6.13	CancelTemporaryExtendedRevoke	56
6.13.1	Version	56
6.13.2	Fältregler	56
6.13.3	Övriga regler	57
6.13.4	Exempel	57
7	Datatyper	59
7.1	Datatyper från namnrymd urn:riv:informationsecurity:authorization:blocking:4	59
7.1.1	urn:riv:informationsecurity:authorization:blocking:4:AccessingActorType	59
7.1.2	urn:riv:informationsecurity:authorization:blocking:4:ActionType	59
7.1.3	urn:riv:informationsecurity:authorization:blocking:4:ActorType	60
7.1.4	urn:riv:informationsecurity:authorization:blocking:4:AssignmentNameType	60
7.1.5	urn:riv:informationsecurity:authorization:blocking:4:BlockType	60
7.1.6	urn:riv:informationsecurity:authorization:blocking:4:BlockHeaderType	61
7.1.7	urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType	62
7.1.8	urn:riv:informationsecurity:authorization:blocking:4:CheckBlocksResultType	62
7.1.9	urn:riv:informationsecurity:authorization:blocking:4:CheckResultType	62
7.1.10	urn:riv:informationsecurity:authorization:blocking:4:CheckStatusType	63
7.1.11	urn:riv:informationsecurity:authorization:blocking:4:ExtendedBlockType	63
7.1.12	urn:riv:informationsecurity:authorization:blocking:4:ExtendedTemporaryRevokeType	64
7.1.13	urn:riv:informationsecurity:authorization:blocking:4:GetExtendedBlocksResultType	65
7.1.14	urn:riv:informationsecurity:authorization:blocking:4:GetPatientIdResultType	66
7.1.15	urn:riv:informationsecurity:authorization:blocking:4:HsaId	66
7.1.16	urn:riv:informationsecurity:authorization:blocking:4:IIType	66
7.1.17	urn:riv:informationsecurity:authorization:blocking:4:Id	66
7.1.18	urn:riv:informationsecurity:authorization:blocking:4:InformationEntityType	67
7.1.19	urn:riv:informationsecurity:authorization:blocking:4:InformationTypeType	67
7.1.20	urn:riv:informationsecurity:authorization:blocking:4:InformationTypeDescription	68
7.1.21	urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue	68
7.1.22	urn:riv:informationsecurity:authorization:blocking:4:OwnerId	68
7.1.23	urn:riv:informationsecurity:authorization:blocking:4:ReasonText	69
7.1.24	urn:riv:informationsecurity:authorization:blocking:4:ResultType	70
7.1.25	urn:riv:informationsecurity:authorization:blocking:4:ResultCodeType	70
7.1.26	urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeType	71
7.1.27	urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeReasonType	72
7.1.28	urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType	72
Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av |
| :--- | :--- | :--- | :--- |
| 1.0 | 2011-11-04 | Godkänd av Cehis tekniska expertgrupp |  |
| 2.0 | 2012-11-20 | Version 2 av spärrkontraktet. |  |
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
Referenser

| RefNr | Beteckning | Dokument / Källa |
| :--- | :--- | :--- |
| #1 | RIV PDLiP | RIV Specifikation Patientdatalagen i Praktiken, http://rivta.se/documents/ARK_0031/PDLiP_RIV_1.0.pdf |
| #2 | PDL | Patientdatalag (2008:355), http://www.regeringen.se/sb/d/6150/a/71234 |
| #3 | HSLF-FS 2016:40 | Socialstyrelsens föreskrifter samt handbok https://www.socialstyrelsen.se/regler-och-riktlinjer/foreskrifter-och-allmanna-rad/konsoliderade-foreskrifter/201640-om-journalforing-och-behandling-av-personuppgifter-i-halso--och-sjukvarden/ |
|  |  |  |
| #4 | RIV TA | RIV Teknisk Anvisning Basic Profile
http://rivta.se/ |
| #5 | RIV Tekniska Anvisningar – Kryptografi | ARK_0036, http://rivta.se/documents/ARK_0036/ |
| #5 | Regel #11, Logiska fel | RIV Tekniska Anvisningar - Tjänsteschema 2.1, http://rivta.se/documents/ARK_0005/ |
| #6 | Arkitekturella beslut | AB_informationsecurity_authorization_blocking |
| #7 | Verksamhetsramverk spärrhantering | https://www.inera.se/sakerhetstjanster |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
informationsecurity: authorization: blocking
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].

### Svenskt namn
infrastruktur:säkerhetstjänster:spärrhantering

### Beskrivning
Tjänstedomänens omfattning är spärrhantering för vårdgivare som har behov av att registrera spärr av uppgifter på patientens begäran enligt Patientdatalagens regleringar samt att utföra kontroll mot spärr i vårdsystemen.
Den kravställande processen är att tillse att vårdgivarna inom svensk hälso- och sjukvård får verktyg att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande patientens rättighet att begära spärr på sina uppgifter.
Tjänstekontrakten för Spärr syftar till att stödja informationshanteringen både inom det inre sekretessområdet (inom vårdgivarens verksamhet) och vid sammanhållen journalföring.
En utgångspunkt för tjänstedomänen Spärr är uppdraget Patientdatalagen i Praktiken (PDLiP), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av patientdatalagen.
Arbetet har resulterat i rapporter samt RIV-specifikation för PDLiP [RIV PDLiP].
Ett bakomliggande kravarbete specifikt kring spärrhantering har dessutom bedrivits av Inera på uppdrag av då tidigare CeHis med representanter från SLL, Sörmland, Örebro, VGR, Östergötland. Parterna har representerats av sakkunniga inom områdena juridik, verksamhet och teknik.

Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för spärrhantering lokalt såväl som nationellt.
Det typiska behovet är att från e-tjänst/vårdsystem ansluta sig mot befintliga tjänster för spärr för att hantera PDLs krav. Tjänstekontrakten kan även ligga till grund för konstruktion av en implementation av en lokal spärrtjänst.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen informationsecurity: authorization: blocking. Den svenska benämningen är tjänstekontrakt för ”Spärr”.
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 4.0.4

#### Oförändrade tjänstekontrakt
Samtliga tjänstekontrakt är oförändrade

#### Nya tjänstekontrakt
N/A

#### Förändrade tjänstekontrakt
N/A
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| Samtliga | 4.0 | 4.0 | OK |
| Samtliga | 3.x | 4.0 | Ej kompatibel |

#### Utgångna tjänstekontrakt
N/A

## Tjänstedomänens arkitektur
Den nationella arkitekturen för spärrhantering är utformad för att tillgodose behoven av att hantera spärr inom hälso- och sjukvården som följer av patientens rätt att spärra åtkomst till sin journalinformation.
Patienten kan begära spärr för att hindra att andra vårdgivare (yttre spärr) eller andra vårdenheter inom samma vårdgivare (inre spärr) ska kunna få elektronisk åtkomst till patientens personuppgifter. Se PDL [R2] 4 kap. och 6 kap.
Vårdgivare har behov av att kunna registrera spärrar på patientens begäran och kontrollera spärrar för lokala/regionala vårdsystem som:
delar information med andra vårdenheter/vårdgivare (observera att spärrhantering krävs även om vårdsystemet enbart hanterar vårdgivarens inre sekretessområde)
Nationella e-hälsotjänster för att dela information mellan vårdenheter och/eller vårdgivare har behov av att kunna kontrollera spärrar innan de ger sina användare åtkomst till informationen.
Arkitekturen ska medge att vårdgivare, landsting/kommuner och regioner på ett flexibelt sätt kan hantera sina "egna" spärrar och inte vara beroende av en enda nationell tjänst, både vad gäller tillgänglighet och vad gäller anpassning till sina lokala förutsättningar i form av befintliga vårdsystem, portaler och motsvarande.
Spärrar hanteras därför på två nivåer:
på lokal nivå för en eller flera vårdgivare hanteras (registreras, hävs etc) spärrar i en s k lokal spärrtjänst.
på nationell nivå samlas kopior med grundläggande data om alla spärrar i nationell spärrtjänst genom replikering från de lokala tjänsterna.
Spärrinformation både på lokalt och nationellt plan utbyts genom tydliga tjänstekontrakt. Bilden nedan illustrerar hur olika vårdsystem integrerar sig med de olika spärrtjänsterna samt hur spärrtjänsterna samverkar med varandra.

### Flöden

#### Flöde 1: Hämta (replikera) spärrar

![img_001.png](images/img_001.png)
Arkitekturen och tjänstekontrakten medger att lokala/regionala vårdsystem kan ansluta till en lokal spärrtjänst. Denna lokala spärrtjänst är master för de spärrar som vårdgivaren registrerar för patientens räkning. Det innebär att man blir "självförsörjande" på det lokala planet genom den lokala spärrtjänsten för behoven att hantera och kontrollera spärr.
Den nationella spärrtjänsten har till uppgift att tillhandahålla ett spärrunderlag med spärrar som gäller mot andra vårdgivare eller vårdenheter. De som har behov av detta spärrunderlag är de e-hälsotjänster som opererar på det nationella planet, t.ex. Nationell Patientöversikt där information samlas från många olika vårdgivare över landstings- och regiongränser. Dessa tjänster måste göra kontroll mot patientens samlade spärrar oavsett var dessa har registrerats.
Av ovan följer att en implementation av Lokal Spärrtjänst även måste ansluta mot det nationella spärrtjänsten, så att bilden av patientens spärrar blir komplett i nationell nod. Undantag från detta skulle vara om vårdgivaren helt står utanför att leverera patientuppgifter till nationella e-tjänster.
Den nationella tjänsten utgörs logiskt sett av en enda, central instans, medan de lokala tjänsterna naturligt kan finnas i flera instanser, hos olika huvudmän. Notera dock att inget hindrar att lokal spärrtjänst driftas som en "tjänst på nätet" och att flera vårdgivare/huvudmän kan dela på gemensamma installationer ("spärrhotell"), så länge deras hantering av spärrar hålls skild åt i tjänsten.
Lokala spärrtjänster hanterar ett utökat format för spärrar där metadata såsom aktörsinformation, registreringsdatum, m.m. lagras. Den nationella spärrtjänsten lagrar endast den grundläggande spärrinformation som behövs för att kunna utföra spärrkontroll, alltså en delmängd av den utökade spärrinformationen.

##### Arbetsflöde

![img_015.jpg](images/img_015.jpg)

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | System som begär hämtning av spärrar. Kan antingen vara ett lokalt journalsystem eller en lokal spärrtjänst. Spärrarna ska sedan kunna användas som beslutsunderlag för att avgöra om en informationsmängd är spärrad eller ej. |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Kan antingen vara en lokal spärrtjänst eller den Nationella instansen för spärrar. |

##### Sekvensdiagram
Sekvensdiagram för att hämta lagrade spärrar.

![img_012.jpg](images/img_012.jpg)

#### Flöde 2: Hämta spärrunderlag
Detta flöde beskriver behovet av att hämta spärrunderlag utifrån en patientidentitet. Behovet kan t.ex vara att en konsument har behovet av att använda denna information såsom beslutsunderlag för vilken information som får visas för en aktör eller ej, beroende på om informationen har en spärr kopplad eller ej.

##### Arbetsflöde

![img_007.jpg](images/img_007.jpg)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Tjänstekonsument | System som begär hämtning av spärrar baserat på en patientidentitet. Kan t.ex  vara ett lokalt journalsystem. Spärrarna ska användas som beslutsunderlag för att avgöra om en informationsmängd är spärrad eller ej. |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Kan antingen vara en lokal spärrtjänst eller den Nationella instansen för spärrar. |

##### Sekvensdiagram

![img_006.jpg](images/img_006.jpg)

#### Flöde 3: Kontrollera om information är spärrad
Beskriver behovet av att få kontrollera om given information är spärrad eller inte. Dvs få underlag vilken information som ej får visas för en given aktör inom en vårdenhet.

##### Arbetsflöde

![img_002.jpg](images/img_002.jpg)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Aktör | En användare i ett patientsystem som vill se journalinformation som kan finnas utanför sin vårdenhet |
| Tjänstekonsument | System som samverkar i sammanhållen journalföring och har behov av att stödja Patientdatalagen genom att ej visa information som är spärrad, inre eller yttre spärr. |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Kan antingen vara en lokal spärrtjänst eller den Nationella instansen för spärrar |

##### Sekvensdiagram

![img_014.jpg](images/img_014.jpg)

#### Flöde 4: Behov av att hämta lista på patienter med spärrar, baserat på vårdgivare
Tjänst som returnerar alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras. Observera att konsumerande system anger vilken vårdgivare som ska omfattas av sökningen.

##### Arbetsflöde

![img_008.jpg](images/img_008.jpg)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Aktör | En användare i ett system som vill se information om vilka patienter det finns inom aktuell vårdgivare som har spärrar. |
| Tjänstekonsument | System som aktören använder för ändamålet |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Kan antingen vara en lokal spärrtjänst eller den Nationella instansen för spärrar |

##### Sekvensdiagram

#### Flöde 5: Aktör skapar spärrinformation
Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten.
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.

##### Arbetsflöde

![img_013.png](images/img_013.png)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Aktör | En användare i ett system som vill skapa en spärr |
| Tjänstekonsument | System som aktören använder för ändamålet |
| Tjänsteproducent | System som tillhandahåller information om spärrar. Är normalt en lokal spärrtjänst. |

##### Sekvensdiagram
Användaren (spärradministratören) utgår från ett system med vilket användaren kan administrera spärrar. Det kan antingen vara ett vårdsystem som har implementerat kontrakten, eller t.ex den WEB-tjänst som finns med i Säkerhetstjänsternas leverans av Spärrtjänst (Lokal/Nationell).

#### Flöde 6: Aktör uppdaterar spärrinformation
Gemensam flödesbeskrivning för användningsfallen ”administration av spärr”, förändra en befintlig spärr. Ändringarna kan vara hävning (temporär/permanent), återställning av tidigare hävning samt makulering av spärr. Följande tjänstekontrakt stödjer administrationen av spärrar:

| Användningsfall | Tjänstekontrakt |
| :--- | :--- |
| Läs spärrar för patient | GetExtendedBlocksForPatient |
| Häv spärr permanent, med utökad information | RevokeExtendedBlock |
| Häv spärr tillfälligt, med utökad information | RegisterTemporaryExtendedRevoke |
| Återkalla tillfällig hävning, med utökad information | CancelTemporaryExtendedRevoke |
| Makulera spärr, med utökad information | DeleteExtendedBlock |

##### Arbetsflöde

![img_003.png](images/img_003.png)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Aktör | En användare i ett system som vill administrera en befintlig spärr (uppdatera/ändra/häva/ta bort en spärr) |
| Tjänstekonsument | System som aktören använder för ändamålet |
| Tjänsteproducent | System som tillhandahåller information om spärrar. |

##### Sekvensdiagram
Sekvensdiagrammet är förenklat. Varje sekvens som inleds med texten: ”AdministreraSpärr” ersätt med namnet på motsvarande tjänstekontrakt enligt tabellen nedan.
Så varje användningsfall har anrop mot sitt specifika tjänstekontrakt. Varje administrativa åtgärd ska föregås av en läsning.
Användaren (spärradministratören) utgår från ett system med vilket användaren kan administrera spärrar. Det kan antingen vara ett vårdsystem som har implementerat kontrakten, eller t.ex den WEB-tjänst som finns med i Säkerhetstjänsternas leverans av Spärrtjänst (Lokal/Nationell).

| Användningsfall | Tjänstekontrakt |
| :--- | :--- |
| Läs spärrar för patient | GetExtendedBlocks |
| Häv spärr permanent, med utökad information | RevokeExtendedBlock |
| Häv spärr tillfälligt, med utökad information | RegisterTemporaryExtendedRevoke |
| Återkalla tillfällig hävning, med utökad information | CancelTemporaryExtendedRevoke |
| Makulera spärr, med utökad information | DeleteExtendedBlock |

#### Flöde 7: Replikera upp lokala spärrar (och förändringar) till den nationella instansen
Flöde för att replikera upp förändringar utförda på lokal nivå till den nationella instansen av Spärrtjänsten.
Förändringarna sker normalt i ”bakgrunden” när en förändring sker på den lokala tjänsten.

| Användningsfall | Tjänstekontrakt |
| :--- | :--- |
| Registrera spärr nationellt | RegisterBlock |
| Avregistrera spärr nationellt | UnregisterBlock |
| Registrera tillfällig hävning | RegisterTemporaryRevoke |
| Avregistrera tillfällig hävning | UnregisterTemporaryRevoke |

##### Arbetsflöde

![img_009.png](images/img_009.png)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Tjänstekonsument | System som genomför replikeringen, normalt en lokal spärrtjänst |
| Tjänsteproducent | System som tar emot replikeringen (nationell spärrtjänst) |

##### Sekvensdiagram
Skapande och förändringar av spärr ska replikeras upp till den nationella instansen av spärrtjänsten.
Den lokala spärrtjänsten kan även vara ett journalsystem som har implementerat spärrkontrakten.
Replikeringen ska normalt automatiskt initieras utifrån en förändring som skett på en lokal spärrtjänst.
T.ex om en spärr skapas lokalt m.h.a RegisterExtendedBlock så ska den lokala tjänsten synkront utföra ett anrop till den nationella spärrtjänsten med hjälp av kontraktet RegisterBlock (se exempel sekvensdiagram nedan).
Ett anrop lokalt till tjänsten RegisterTemporaryExtendedRevoke ska initiera ett anrop till den nationella spärrtjänsten med hjälp av kontraktet RegisterTemporaryRevoke osv.
Sekvensdiagram replikering ”Skapa spärr”

#### Obligatoriska kontrakt

| Tjänstekontrakt | Flöde 1 | Flöde 2 | Flöde 3 | Flöde 4 | Flöde 5 | Flöde 6 | Flöde 7 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| GetBlocks | X | X |  |  |  | X |  |
| GetPatientIds |  |  |  | X |  |  |  |
| CheckBlocks |  |  | X |  |  |  |  |
| GetExtendedBlocksForPatient |  |  |  |  |  |  |  |
| RegisterExtendedBlock |  |  |  |  | X |  |  |
| RevokeExtendedBlock |  |  |  |  |  |  |  |
| RegisterTemporaryExtendedRevoke |  |  |  |  |  |  |  |
| CancelTemporaryExtendedRevoke |  |  |  |  |  |  |  |
| DeleteExtendedBlock |  |  |  |  |  |  |  |
| RegisterBlock |  |  |  |  |  |  | X |
| UnregisterBlock |  |  |  |  |  |  | X |
| RegisterTemporaryRevoke |  |  |  |  |  |  | X |
| UnregisterTemporaryRevoke |  |  |  |  |  |  | X |

### Adressering

#### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används. Detta möjliggör att en för avsändaren transparent tjänsteväxel kan förmedla anrop vidare till en viss instans av spärrtjänsten och även behörighetsstyra anropet. Logisk adressat skall anges även om spärrtjänsten för stunden inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares HSA-id skall anges som logisk adressat. För de generella/nationella tjänsterna som inte har en specifik organisationstillhörighet skall Ineras nationella HSA-id SE165565594230-1000. De generella tjänsterna representerar en nationell nivå och hanterar alla nationellt kända informationsposter. Se tabellen nedan hur adressat skall anges.

| Operation | Logisk adressat |
| :--- | :--- |
| GetBlocks | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| CheckBlocks | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| GetPatientIds | HSA-id för aktörens vårdgivare |
| GetExtendedBlocksForPatient | HSA-id för aktörens vårdgivare |
| RegisterBlock | SE165565594230-1000 |
| UnregisterBlock | SE165565594230-1000 |
| RegisterTemporaryRevoke | SE165565594230-1000 |
| UnregisterTemporaryRevoke | SE165565594230-1000 |
| RegisterExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |
| RevokeExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |
| RegisterTemporaryExtendedRevoke | HSA-id för vårdgivaren som spärren gäller för |
| CancelTemporaryExtendedRevoke | HSA-id för vårdgivaren som spärren gäller för |
| DeleteExtendedBlock | HSA-id för vårdgivaren som spärren gäller för |

#### Exempel på logisk adressering för operationen CheckBlocks och GetBlocks
Nedan visas ett exempel på hur logisk adressering kan användas för operationen CheckBlocks och GetBlocks.
Det lokala systemet B kan för tjänsten GetBlocks använda den logiska addressen ”X”, som motsvarar källsystemsadresseringen av den regionala spärrtjänsten, eller den logiska adressen för Inera (SE165565594230-1000), vilket innebär routing till den nationella spärrtjänsten via NTjP.
System B kan genom val av adressering välja att antingen anropa CheckBlocks med Ineras adress och för de fall då man samverkar med sammanhållen journalföring, eller med adressen för VG A för kontroll av spärrar inom VG.

![img_005.png](images/img_005.png)

### Aggregering och engagemangsindex
Ej tillämpbart för denna tjänstedomän.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Tjänstedomänens juridiska krav baseras bl.a på RIV PDLiP [R1], Patientdatalagen [R2] samt HSLF-FS 2016:40 [R3]

### Stark autentisering av användaren
Vid spärrhantering åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för spärradministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

### Krav på konsumenten
Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad (enligt kap 4.2) inklusive dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten, samt att slutanvändarens aktiviteter loggas. Tjänstekonsumenten ansvarar för att det endast är möjligt för en aktör att skapa och hantera spärrar för den vårdgivare som aktören har uppdrag för.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 10 transaktion per sekund |  |
| Aktualitet | Se respektive tjänstekontrakt |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### Övriga krav

##### Hantering av otillgänglighet
Tjänstekontrakten stödjer en arkitektur där det är möjligt att integrera mot tjänsterna utan att skapa ett hårt beroende till dessa i run-time.
Ett vårdsystem som endast har behov av spärrar tillhörande lokala/regionala vårdgivare, kan anropa tjänsten på  lokal nivå med angivande av ett begränsat organisationsomfång. Otillgänglighet på nationell spärrtjänst får inte påverka ett sådant svar från tjänsten.
För frågor som ställs med det nationella omfånget finns ett naturligt beroende till tillgång till det samlade underlaget i nationell spärrtjänst.
För att hantera åtkomst till vårdinformation i ett system är det främst tillgång till spärrunderlaget som är kritiskt. Ett vårdsystem kan skydda sig från ett absolut beroende till tjänsterna i run-time genom att mellanlagra senaste spärrunderlaget respektive senaste spärrkontrollsbeslutet. Verksamhetens krav på aktualitet på spärrunderlaget måste här avgöra hur länge spärrinformationen kan mellanlagras.
Tjänsteproducenten, t ex på lokal nivå, kan nyttja mellanlagring för att öka tillgängligheten på tjänsterna. Ett svar kan då returneras även om bakomliggande system för tillfället är otillgängligt. Det måste dock anges i SLA för en viss implementering av tjänsten vilken förväntad aktualitet som gäller.
Lokal spärrtjänst skall ej påverkas av ett scenario där den nationella spärrtjänsten blir otillgänglig. De spärrar som finns tillgängliga i den lokala spärrtjänsten skall alltid returneras till det konsumerande systemet.
Se även Ref #7 för hantering av otillgänglighet.

### Felhantering

#### Krav på en tjänsteproducent
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.
Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare [R1-R3].

##### Logiska fel
För uppdaterande tjänster skall resultCode sättas till någon av de giltiga koderna enligt [R6].
Om resultText innehåller ett meddelande så skall det vara sådant att det kan visas för en användare.
Respektive kontrakt beskriver närmare vilka logiska fel som skall returneras.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### Krav på en tjänstekonsument
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiskt fel
För konsumenter av uppdaterande tjänster så skall felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

#### Konfidentialitet
All kommunikation med tjänsterna sker via TLS-krypterad förbindelse, se ref [R5].

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot Nationell Informationsstruktur 2016:1 samt mot schema (XSD) för tjänstekontrakt.
Se AB.

### Formatregler

#### Format för datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

#### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss”. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

#### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Tjänstekontrakt

### GetBlocks
Tjänst som hämtar registrerade spärrar för en patient och/eller vårdgivare. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns.
Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Ej obligatorisk patientidentitet såsom personnummer, samordningsnummer eller reservnummer vars spärrar skall hämtas. | 0..1 |
| careProviderIds | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. | 0..* |
| createdOnOrAfter | xs:DateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| blockHeader | urn:riv:informationsecurity:authorization:blocking:4:BlockHeaderType | Lista över funna spärrar som är aktiva. | 1..1 |

#### Övriga regler
N/A

##### Icke funktionella krav
N/A

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 10 sekund för 95% av alla anrop | För de fall då man anropar tjänsten med varken vårdgivarId eller patientId. I övrigt enligt kap 4.4.1 |

#### Annan information om kontraktet
N/A

#### Exempel

##### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
Se GetBlocksRequest.xml

##### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
Se GetBlocksRespons.xml

### GetExtendedBlocksForPatient
Tjänst som läser alla spärrar för en viss patient och organisation. Varje spärr innehåller också tillfälliga hävningar om sådana finns.
Tjänsten returnerar även makulerade och permanent hävda spärrar, samt tidigare gjorda tillfälliga hävningar, för att ge ett historikunderlag (vad som har hänt med patientens spärrar tidigare).
Tjänsten används för att på lokal nivå kunna söka fram och administrera patientens spärrar och dess eventuella tillfälliga hävningar för en viss vårdgivare.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i avsnittet Övriga regler.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer vars spärrar skall hämtas. | 1..1 |
| Svar |  |  |  |
| getExtendedBlocksResult | urn:riv:informationsecurity:authorization:blocking:4:GetExtendedBlocksResultType | Svaret består av en spärrlista enligt det utökade, lokala spärrformatet. | 1..1 |

#### Övriga regler
N/A

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se GetExtendedBlocksForPatientRequest.xml

##### Exempel på svar
Se GetExtendedBlocksForPatientRespons.xml

### GetPatientIds
Tjänst som läser alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras.
Konsumerande system anger vilken vårdgivare som ska omfattas av sökningen.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| Svar |  |  |  |
| getPatientIdResult | urn:riv:informationsecurity:authorization:blocking:4:GetPatientIdResultType | Lista över unika patienter som har aktiva spärrar. | 1..1 |

#### Övriga regler
N/A

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se GetPatientIdsRequest.xml

##### Exempel på svar
Se GetPatientIdsRespons.xml

### CheckBlocks
Tjänst som kontrollerar om given information är spärrad eller inte. Den utvärderar alla spärrar som gäller mot andra vårdgivare/vårdenheter som finns i tjänsten och om någon spärr är helt applicerbar för given information och tillfälle kommer tjänsten att markera den informationen som spärrad. Om det finns minst en tillfällig hävning för spärren som applicerar på den angivna aktören blir informationen ospärrad.
Denna tjänst kan användas då tjänstekonsumenten inte själv kan avgöra/kontrollera om information är spärrad eller inte. Tjänsten stödjer kontroll av flertal informationsmängder i ett och samma anrop.
Evalueringen av huruvida informationen är spärrad eller ej görs enligt följande:
- Om spärr föreligger (inre eller yttre) blir informationen spärrad.
- Om undantag av spärr för 'lak' och/eller 'upp' har angivets blir denna information EJ spärrad.
- Om spärren inte innehåller någon giltighetstid blir informationen spärrad.
- Om tidsspannet för informationen ligger inom spärrens giltighetstid blir informationen spärrad.
- Om spärrens giltighetstid delvis överlappar tidsspannet (start- eller sluttid) för informationen blir informationen spärrad.
- Om tidsspannet för informationen ligger helt utanför spärrens giltighetstid blir informationen EJ spärrad.
e-Tjänster på nationell nivå kräver ett komplett spärrunderlag.

#### Version.
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | urn:riv:informationsecurity:authorization:blocking:4:AccessingActorType | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten vars information aktören önskar åtkomst till. | 1..1 |
| informationEntities | urn:riv:informationsecurity:authorization:blocking:4:InformationEntityType | Lista över de informationsentiteter som aktören önskar åtkomst till. | 1..* |
| Svar |  |  |  |
| checkBlocksResult | urn:riv:informationsecurity:authorization:blocking:4:CheckBlocksResultType | Lista med resultat motsvarande den informationslista som angavs som inparameter. | 1..1 |

#### Övriga regler
Parametrar till tjänsten skall valideras och resultera i resultkoden VALIDATIONERROR om dessa är felaktiga. Informationsresurser och dess fält skall valideras och hanteras separat. Ogiltiga eller felaktiga fält i informationsresursen skall resultera i VALIDATIONERROR på resursnivå, dvs felkoden ges per informationsresurs i CheckBlocksResult med CheckStatus.
Om någon informationsresurs får valideringsfel skall tjänsten returnera felkoden INFO med meddelandet "Informationsresurs(er) innehåller valideringsfel".
Tjänsten skall hantera valfria informationstyper samt tomma/icke existerande värden.
Alla andra värden än de definierade i kontraktet hanteras som en uppgift av ospecificerad typ i den kontroll som tjänsten utför.

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se CheckBlocksRequest.xml

##### Exempel på svar
Se CheckBlocksRespons.xml

### RegisterBlock
Tjänst som registrerar en ny spärr i den nationella spärrtjänsten (den aggregerade/replikerade spärrinformationen).
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen. Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.
Tjänsten används för att synkronisera en lokal spärr till den nationella spärrtjänsten.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et. | 1..1 |
| blockType | urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer. | 1..1 |
| informationStartDate | xs:DateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| temporaryRevokeRegistration | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType | Ej obligatorisk lista med tillfälliga hävningar. Detta möjliggör registrering/överföring av en spärr och tillhörande hävningar på en och samma gång. Denna lista lämnas tom i normalfallet. | 0..* |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se RegisterBlockRequest.xml

##### Exempel på svar
Se RegisterBlockRespons.xml

### UnregisterBlock
Tjänst som avregistrerar/raderar en befintlig spärr i den nationella spärrtjänsten, om spärren finns.
Tjänsten används för att synkronisera borttag av en lokal spärr till den nationella spärrtjänsten.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att borttag av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se UnregisterBlockRequest.xml

##### Exempel på svar
Se UnregisterBlockRespons.xml

### RegisterTemporaryRevoke
Tjänst som registrerar en tillfällig hävning för en given spärr i den nationella spärrtjänsten, om spärren finns.
Tjänsten används för att synkronisera en lokal tillfällig hävning till den nationella spärrtjänsten.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeRegistration | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType | Registreringsuppgifter för tillfällig hävning. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se RegisterTemporaryRevokeRequest.xml

##### Exempel på svar
Se RegisterTemporaryRevokeResponder.xml

### UnregisterTemporaryRevoke
Tjänst som avregistrerar/raderar en tillfällig hävning i den nationella spärrtjänsten, om hävningen finns.
Tjänsten används för att synkronisera borttag av en lokal tillfällig hävning till den nationella spärrtjänsten.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den tillfälliga hävning som skall raderas. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att borttag av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se UnregisterTemporaryRevokeRequest.xml

##### Exempel på svar
Se UnregisterTemporaryRevokeRequest.xml

### RegisterExtendedBlock
Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten.
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.
Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.
Kräver utökad spärrinformation med metainformation kring skapande av spärren.
Tjänsten registrerar även grunddata om spärren på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockType | urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer. | 1..1 |
| informationStartDate | xs:DateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| registerAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och registrerat spärren samt tidpunkter för dessa. | 1..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registreringen av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |  |

#### Exempel

##### Exempel på anrop
Se RegisterExtendedBlockRequest.xml

##### Exempel på svar
Se RegisterExtendedBlockRespons.xml

### RevokeExtendedBlock
Tjänst som häver en spärr permanent i den lokala spärrtjänsten, om spärren finns. Denna hävning kan inte återtas.
Tjänsten avregistrerar även spärren på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. | 1..1 |
| revokeAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och permanent hävt spärren samt tidpunkter för dessa. | 1..1 |
| revokeReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Orsaken till den permanenta hävningen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se RevokeExtendedBlockRequest.xml

##### Exempel på svar
Se RevokeExtendedBlockRequest.xml

### DeleteExtendedBlock
Tjänst som makulerar en befintlig spärr i den lokala spärrtjänsten, om spärren finns. Spärren raderas inte från lokal spärrtjänst utan markeras som makulerad (ej längre giltig) för historikens skull. Denna makulering kan inte återtas.
Tjänsten avregistrerar även spärren på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den spärr som skall makuleras. | 1..1 |
| deleteAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och makulerat spärren samt tidpunkter för dessa. | 1..1 |
| deleteReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att makulering skett då anropet genomförts utan fel. / Tjänsten garanterar även att makulering skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

#### Exempel

##### Exempel på anrop
Se DeleteExtendedBlockRequest.xml

##### Exempel på svar
Se DeleteExtendedBlockRespons.xml

### RegisterTemporaryExtendedRevoke
Tjänst som häver en spärr tillfälligt i den lokala spärrtjänsten, om spärren finns. En spärr kan ha flera tillfälliga hävningar (gällande olika personal).
Tjänsten registrerar även den tillfälliga hävningen på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den spärr som skall tillfälligt hävas. | 1..1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1..1 |
| revokedForCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1..1 |
| revokedForEmployeeId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| registerAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och registrerat den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| revokeReason | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeReasonType | Enumerationsvärde för orsak till tillfällig hävning. | 1..1 |
| revokeReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till tillfällig hävning. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av den tillfälliga hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av den tillfälliga hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

#### Exempel

##### Exempel på anrop
Se RegisterTemporaryExtendedRevokeRequest.xml

##### Exempel på svar
Se RegisterTemporaryExtendedRevokeResponse.xml

### CancelTemporaryExtendedRevoke
Tjänst som återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas.
Tjänsten avregistrerar även den tillfälliga hävningen på nationell nivå.

#### Version
4.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den tillfälliga hävning som skall återkallas. | 1..1 |
| cancellationInfo | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och hävt den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| cancelReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### Övriga regler
Regel # 1
Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).
Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):
Lagrat lokalt -ej nationellt
Ej lagrat lokalt -ej lagrat nationellt
En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.
OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av återkallandet skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av återkallandet skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

#### Exempel

##### Exempel på anrop
Se CancelTemporaryExtendedRevokeRequest.xml

##### Exempel på svar
Se CancelTemporaryExtendedRevokeRespons.xml

## Datatyper
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 4.0.

### Datatyper från namnrymd urn:riv:informationsecurity:authorization:blocking:4
Nedan beskrivs komplexa och simpla datatyper som är deklarerade i aktuell namnrymd urn:riv:informationsecurity:authorization:blocking:4, version 4.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### urn:riv:informationsecurity:authorization:blocking:4:AccessingActorType
Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### urn:riv:informationsecurity:authorization:blocking:4:ActionType
Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med
en möjlig orsak/anledning angivet som fritext.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | xs:DateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | ActorType | Anger vem som begärt åtgärden. | 1 |
| registrationDate | xs:DateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | ActorType | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### urn:riv:informationsecurity:authorization:blocking:4:ActorType
Datatyp som identifierar en medarbetare/person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### urn:riv:informationsecurity:authorization:blocking:4:AssignmentNameType
Datatyp som representerar namn på medarbetaruppdrag.
Restriktionstyp: xs:string
Maxlängd: 256

#### urn:riv:informationsecurity:authorization:blocking:4:BlockType
Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| blockId | Id | Unik, global identifierare för spärren. | 1 |
| blockType | BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare) spärr. | 1 |
| informationStartDate | xs:DateTime | Startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | HsaId | Anger HSA-id för den vårdenhet som informationen tillhör. Anges enbart för inre spärrar. | 0..1 |
| informationCareProviderId | HsaId | Anger HSA-id för den vårdgivare som informationen tillhör. | 1 |
| patientId | IIType | Identifierar den patient spärren avser. | 1 |
| excludedInformationTypes | InformationTypeType | Lista med de informationstyper som är undantagna från spärren. Spärren gäller för all sorts information om inget anges. | 0..* |
| temporaryRevokes | TemporaryRevokeType | Lista med tillfälliga hävningar för denna spärr. | 0..* |
| ownerId | OwnerId | Optionell identifierare för det system som skapade spärren. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### urn:riv:informationsecurity:authorization:blocking:4:BlockHeaderType
Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| blocks | BlockType | Lista av spärrdata. | 0..* |
| nextCreatedOnOrAfter | xs:DateTime | Tidpunkt som anger sluttidpunkten för det returnerade spärrdatat. Detta datum används lämpligen i nästa anrop för att få nytt spärrdata från den tidpunkt då föregående anrop gjordes. / Tidpunkt representerar den aktuella tidpunkten i tjänsten då anropet gjordes. | 1 |
| latestCancellation | xs:DateTime | Tidpunkt som anger när en spärr blev återkallad eller makulerad. / Detta datum kan användas för att avgöra om en full synkronisering av spärrdata behöver göras får att få en aktuell bild över aktiva spärrar, då anropet i sig inte returnerar data om återkallade eller makulerade spärrar. / Tidpunkten representerar den tidpunkt då den senaste återkallan eller makulering av en spärr utfördes. En temporär hävning som återkallas ändrar ej detta datum då tillfälliga hävningar anses vara temporära ändringar. / På nationell nivå avses den senaste utförda avregistreringen av en spärr. | 1 |

#### urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType
Enumerationsvärde som anger typ av spärr.

| Värde | Beskrivning |
| :--- | :--- |
| "Inner" | Representerar en inre spärr (inom vårdenhet). |
| "Outer" | Representerar en yttre spärr (inom vårdgivare). |

#### urn:riv:informationsecurity:authorization:blocking:4:CheckBlocksResultType
Datatyp som innehåller resultatet från tjänsten CheckBlocks.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| checkResults | CheckResultType | Information om information är spärrad | 0..* |

#### urn:riv:informationsecurity:authorization:blocking:4:CheckResultType
Datatyp som representerar ett svar från kontrollen av åtkomst till information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| status | CheckStatusType | Status för om informationen är spärrad. | 1 |
| rowNumber | xs:Int | Detta nummer motsvarar samma element i den inskickade listan av informationsentiteter. Används för att klienten skall kunna mappa svarslistan med den inskickade informationslistan. | 1 |

#### urn:riv:informationsecurity:authorization:blocking:4:CheckStatusType
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Information är ej spärrad. |
| "BLOCKED" | Informationen är spärrad. |
| "VALIDATIONERROR" | En eller flera inparametrar innehåller felaktiga värden. Kontroll av spärr utfördes ej för denna informationsresurs. |

#### urn:riv:informationsecurity:authorization:blocking:4:ExtendedBlockType
Datatyp som representerar en spärr enligt det utökade formatet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| blockId | Id | Unik, global identifierare för spärren. | 1 |
| blockType | BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1 |
| informationStartDate | xs:DateTime | Startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | HsaId | Anger HSA-id för den vårdenhet som informationen tillhör. Anges ej för yttre spärrar. | 0..1 |
| informationCareProviderId | HsaId | Anger HSA-id för den vårdgivare som informationen tillhör. | 1 |
| patientId | IIType | Identifierar den patient som spärren avser. | 1 |
| excludedInformationTypes | InformationTypeType | Lista med de informationstyper som är undantagna från spärren. Spärren gäller för all sorts information om inget anges. | 0..* |
| registrationInfo | ActionType | Identifierar den eller de aktörer som har begärt och registrerat denna spärr. | 1 |
| permanentRevokedInfo | ActionType | Identifierar den eller de aktörer som har begärt och registrerat en permanent hävning av denna spärr, tillsammans med en orsak/anledning till permanent hävningen. | 0..1 |
| deletionInfo | ActionType | Identifierar den eller de aktörer som har begärt och registrerat makuleringen av denna spärr, tillsammans med en orsak/anledning till makulering. | 0..1 |
| temporaryRevokes | ExtendedTemporaryRevokeType | Lista med tillfälliga hävningar enligt det utökade formatet för denna spärr. | 0..* |
| ownerId | OwnerId | Optionell identifierare för det system som skapade spärren. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |
| locallyCreated | xs:Boolean | Anger om spärren är registrerad på lokal nivå eller hämtat från nationell nivå. | 1 |

#### urn:riv:informationsecurity:authorization:blocking:4:ExtendedTemporaryRevokeType
Datatyp som representerar en tillfällig hävning enligt det utökade formatet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id | Unik, global identifierare för den tillfälliga hävningen. | 1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1 |
| revokedForCareUnitId | HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1 |
| revokedForEmployeeId | HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| revocationReason | TemporaryRevokeReasonType | Enumerationsvärde som anger orsaken/anledningen till den tillfälliga hävningen. | 0..1 |
| revocationReasonText | ReasonText | Optionellt fritext fält som anger orsaken/anledningen till den tillfälliga hävningen. | 0..1 |
| registrationInfo | ActionType | Identifierare den eller de aktörer som har begärt och registrerat den tillfälliga hävningen. | 1 |
| cancellationInfo | ActionType | Identifierare den eller de aktörer som har begärt och makulerat den tillfälliga hävningen. | 0..1 |
| ownerId | OwnerId | Optionell identifierare för det system som skapade hävningen. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### urn:riv:informationsecurity:authorization:blocking:4:GetExtendedBlocksResultType
Datatyp som innehåller resultatet från tjänsten GetExtendedBlocksForPatient.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| blocks | ExtendedBlockType |  | 0..* |

#### urn:riv:informationsecurity:authorization:blocking:4:GetPatientIdResultType
Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| result | ResultType |  | 1 |
| patientIds | IIType | Lista med unika personnummer. | 0..* |

#### urn:riv:informationsecurity:authorization:blocking:4:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Restriktionstyp: xs:string
Maxlängd: 32

#### urn:riv:informationsecurity:authorization:blocking:4:IIType
En universellt unik identifierare.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | xs:String | Fältet root sätts till OID för kodverket för identifieraren (extension) / Som exempel för svenskt personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. | 1 |
| extension | xs:String | Ett id som tillsammans med värdet i root är unikt. Som exempel för svensk personidentitet så är extension lika med personnummer. | 0..1 |

#### urn:riv:informationsecurity:authorization:blocking:4:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Restriktionstyp: xs:string
Maxlängd: 36

#### urn:riv:informationsecurity:authorization:blocking:4:InformationEntityType
Datatyp som representerar den information som behövs vid en kontroll om spärr föreligger.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| informationStartDate | xs:DateTime | Startdatum för vilken information i tiden som avses, dvs. när information som skall kontrolleras har registrerats. | 1 |
| informationEndDate | xs:DateTime | Slutdatum för vilken information i tiden som avses, dvs. när information som skall kontrolleras har registrerats. | 1 |
| informationCareUnitId | HsaId | Anger HSA-id för den vårdenhet som informationen tillhör. | 1 |
| informationCareProviderId | HsaId | Anger HSA-id för den vårdgivare som informationen tillhör. | 1 |
| informationType | InformationTypeIdValue | Anger informationtypen för den entitet som skall kontrolleras. / Giltiga värden är endast 'lak' och 'upp'. Övriga informationtyper anges med att inte ange något värde. / Se även InformationTypeIdValue. | 0..1 |
| rowNumber | xs:Int | Detta nummer motsvarar ett element i den inskickade listan av informationsentiteter. Används för att klienten skall kunna mappa svarslistan med den inskickade informationslistan. | 1 |

#### urn:riv:informationsecurity:authorization:blocking:4:InformationTypeType
Datatyp som representerar de Informationstyper som kan undantas från att spärras.
En spärr gäller normalt alla informationstyper.
Denna lista utgör de informationstyper som kan undantas från att spärras.
Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta.
lak     Läkemedel - Ordination/förskrivning
upp     Uppmärksamhetsinformation

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| infoTypeId | InformationTypeIdValue | Förkortning av informationstyp enligt ovan tabell. | 1 |
| infoTypeDescription | InformationTypeDescription | Beskrivning av informationstyp enligt ovan tabell. | 1 |

#### urn:riv:informationsecurity:authorization:blocking:4:InformationTypeDescription
Datatyp som används för att ange en beskrivning på en informationstyp.
Restriktionstyp: xs:string
Maxlängd: 64

#### urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue
Datatyp som används för att ange informationstyper.
Giltiga värden är endast:
Typ     Beskrivning
lak     Läkemedel - Ordination/förskrivning
upp     Uppmärksamhetsinformation
Restriktionstyp: xs:string
Maxlängd: 6

#### urn:riv:informationsecurity:authorization:blocking:4:OwnerId
Datatyp som identifierar systemet som registrerade/skapade artifakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.
Restriktionstyp: xs:string
Maxlängd: 512

#### urn:riv:informationsecurity:authorization:blocking:4:ReasonText
Datatyp som representerar en orsak eller anledning till en viss åtgärd.
Restriktionstyp: xs:string
Maxlängd: 1024

#### urn:riv:informationsecurity:authorization:blocking:4:ResultType
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType | Anger svarskod för åtgärden. | 1 |
| resultText | xs:String | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 0..1 |

#### urn:riv:informationsecurity:authorization:blocking:4:ResultCodeType
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATIONERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "NOTFOUND" | Angiven artifakt finns ej. Angiven tjänst utfördes ej. |
| "ALREADYEXISTS" | Angiven artifakt finns redan. Angiven tjänst utfördes ej. |
| "INVALIDSTATE" | Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd. |

#### urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeType
Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr.
Datatypen beskriver grundformatet för en tillfällig hävning.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id | Unik, global identifierare för den tillfälliga hävningen. Följer formatet för UUID. | 1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1 |
| revokedForCareUnitId | HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1 |
| revokedForEmployeeId | HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en person, annars gäller hävningen för all personal på angiven vårdenhet. | 0..1 |
| ownerId | OwnerId | Optionell identifierare för det system som skapade hävningen. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeReasonType
Enumerationsvärde som anger orsaken/anledningen till en tillfällig hävning.

| Värde | Beskrivning |
| :--- | :--- |
| "PatientsConsent" | Patienten har givit sitt samtycke till en tillfällig hävning. |
| "Emergency" | Nödsituation föreligger. Patientens samtycke för en tillfällig hävning kunde ej inhämtas. |

#### urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType
Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | Id | Unik, global identifierare för den tillfälliga hävningen. Följer formatet för UUID. | 1 |
| blockId | Id | Unik, global identifierare som anger den spärr som den tillfälliga hävningen avser. Följer formatet för UUID. | 1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1 |
| revokedForCareUnitId | HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1 |
| revokedForEmployeeId | HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en person, annars gäller hävningen för all behörig personal på angiven vårdenhet. | 0..1 |
