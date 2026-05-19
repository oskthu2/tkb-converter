## Inledning

### Svenskt namn
infrastruktur:säkerhetstjänster:spärrhantering
spärrhantering

### WEB beskrivning
Spärrhantering registrerar spärrar och kontrollerar om en patient har spärrat tillgång till patientinformation från IT-system inom och mellan vårdgivare.
Tjänstekontrakten för Spärrhantering gör det möjligt för vårdpersonal att genom sina egna vårdsystem registrera lokala spärrar. Tjänstekontrakten gör det också möjligt att replikera de lokala spärrarna till den nationella spärrtjänsten. Detta är nödvändigt för att lokalt spärrad information även ska vara spärrad i nationella tjänster som har åtkomst till patientinformation, till exempel NPÖ.

### Om dokumentet
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen urn:riv:ehr:blocking (huvuddomän Electronic Health Record underdomän Blocking). Den svenska benämningen är tjänstekontrakt för ”Spärr”.
Tjänstedomänens omfattning är spärrhantering för vårdgivare som har behov av att registrera spärr av uppgifter på patientens begäran enligt Patientdatalagens regleringar samt att utföra kontroll mot spärr i vårdsystemen.
Den kravställande processen är att tillse att vårdgivarna inom svensk hälso- och sjukvård får verktyg att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande patientens rättighet att begära spärr på sina uppgifter.
Tjänstekontrakten för Spärr syftar till att stödja informationshanteringen både inom det inre sekretessområdet (inom vårdgivarens verksamhet) och vid sammanhållen journalföring.
En utgångspunkt för tjänstedomänen Spärr är uppdraget Patientdatalagen i Praktiken (PDLiP) , CeHis, som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av patientdatalagen.
Arbetet har resulterat i rapporter samt RIV-specifikation för PDLiP [RIV PDLiP].
Ett bakomliggande kravarbete specifikt kring spärrhantering har dessutom bedrivits av Inera på uppdrag av CeHis med representanter från SLL, Sörmland, Örebro, VGR, Östergötland. Parterna har representerats av sakkunniga inom områdena juridik, verksamhet och teknik.

### Målgrupp
Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för spärrhantering lokalt såväl som nationellt.
Det typiska behovet är att från e-tjänst/vårdsystem ansluta sig mot befintliga tjänster för spärr för att hantera PDLs krav. Tjänstekontrakten kan även ligga till grund för konstruktion av en implementation av en lokal spärrtjänst.

### Allmänt
Den nationella arkitekturen för spärrhantering är utformad för att vårdgivarnas behov att hantera spärr för lokala/regionala vårdsystem såväl som för motsvarande behov i nationella e-hälsotjänster. Noteras kan att spärrhantering krävs även om vårdsystem enbart hanterar vårdgivarens inre sekretessområde.
Arkitekturen ska medge att vårdgivare, landsting/kommuner och regioner ska på ett flexibelt sätt kunna hantera sina "egna" spärrar och inte göra sig beroende av en enda nationell tjänst, både vad gäller tillgänglighet och vad gäller anpassning till sina lokala förutsättningar i form av befintliga vårdsystem, portaler och motsvarande.
Spärrar hanteras därför på två nivåer:
på lokal nivå för en eller flera vårdgivare hanteras (registreras, hävs etc) spärrar i en s k lokal spärrtjänst.
på nationell nivå samlas kopior med grundläggande data om alla spärrar i nationell spärrtjänst genom replikering från de lokala tjänsterna.
Spärrinformation både på lokalt och nationellt plan utbyts genom tydliga tjänstekontrakt. Bilden nedan illustrerar hur olika vårdsystem integrerar sig med de olika spärrtjänsterna samt hur spärrtjänsterna samverkar med varandra.
Arkitekturen och tjänstekontrakten medger att lokala / regionala vårdsystem kan ansluta till en lokal spärrtjänst. Denna lokala spärrtjänst är master för de spärrar som vårdgivaren registrerar för patientens räkning. Det innnebär att man blir "självförsörjande" på det lokala planet genom den lokala spärrtjänsten för behoven att hantera och kontrollera spärr.
Den nationella spärrtjänsten har till uppgift att tillhandahålla ett spärrunderlag för de e-hälsotjänster som opererar på det nationella planet; det är e-tjänster som t ex Nationell Patientöversikt där information samlas från många olika vårdgivare över landstings- och regiongränser. Dessa tjänster måste göra kontroll mot patientens samlade spärrar oavsett var dessa har registrerats.
Det sker ingen direkt administration av spärrar i den nationella spärrtjänsten, enbart kopior av spärrarna tas emot från den lokala spärrtjänsten.
Av ovan följer att en implementation av Lokal Spärrtjänst även måste ansluta mot det nationella tjänstekontraktet, så att bilden av patientens spärrar blir komplett i nationell nod (undantag från detta skulle vara om vårdgivaren helt står utanför att leverera patientuppgifter till nationella e-tjänster).
Den nationella tjänsten utgörs logiskt sett av en enda, central instans, medan de lokala tjänsterna naturligt kan finnas i flera instanser, hos olika huvudmän. Notera dock att inget hindrar att lokal spärrtjänst driftas som en "tjänst på nätet" och att flera vårdgivare/huvudmän kan dela på gemensamma installationer ("spärrhotell"), så länge deras hantering av spärrar hålls skild åt i tjänsten.
Lokala spärrtjänster hanterar ett utökat format för spärrar där metadata såsom aktörsinformation, registreringsdatum, m.m. lagras. Den nationella spärrtjänsten lagrar endast den grundläggande spärrinformation som behövs för att kunna utföra spärrkontroll, alltså en delmängd av den utökade spärrinformationen.

### Skillnader mellan versioner
Version 3.2.2 (2017-01-24)
Tagit bort implementationsspecifik information kring vilka tjänstekontrakt som kan installeras lokalt respektive nationellt.
Version 3.2.1 (2015-04-09)
Uppdaterat att operationen GetAllBlocks kan implementeras lokalt. Uppdaterat kapitel om Logisk adressering.
Version 3.2 (2014-09-29)
Uppdaterat att operationen GetAllBlocksForPatient kan implementeras lokalt. Uppdaterat kapitel om Logisk adressering.
Version 3.1 (2014-03-19)
Ändrad logisk adressat för operationerna RegisterBlock, UnregisterBlock, RegisterTemporaryRevoke och UnregisterTemporaryRevoke till Ineras nationella HSA-id.
Version 3.0.1 (2014-03-03)
Dokumentets namn ändrat enligt nya riktlinjer.
Version 3.0 (2013-06-17)
Tjänsten CheckBlocks är uppdaterad i denna version av tjänstekontraktet till version 3. I tidigare versioner kunde en felaktig informationsresurs inte urskiljas från de övriga vilket gjorde att tjänsten returnerade felkoden VALIDATIONERROR för hela anropet. I denna version av tjänstekontraktet valideras informationsresurserna separat från varandra och kan var och en ge VALIDATIONERROR om de på något sätt är felaktiga.
Bättre förklaring av informationstyper. Tjänsten CheckBlocks kan nu anropas med valfri informationstyp, inklusive inget/tomt värde.
Vissa datatyper är dubblerade för att åtskilja dessa mellan version 2 och 3 av tjänstekontraktet.
Version 2.0 (2012-11-20)
Nya webbtjänstekontrakt enligt RIV TA 2.1
Parameter revokedForEmployeeId i tjänsten RegisterTemporaryExtendedRevoke är ändrad till optionell.
Referenser till WS-Addressing borttaget
Version 1.0 (2011-11-04)
Första utgåva av TKB
Webbtjänstekontrakt enligt RIV TA 2.0
Detta dokument ersätter tidigare versioner av dokumentet.

### Tjänsteöversikt
Nedanstående tabell visar vilka tjänster som finns definierade.
Den extra underdomänen beskriver vilket tjänsteområde/ namnrymd tjänsten tillhör. Följande underdomäner är definierade:
querying 	- tjänstekontrakt för att hämta spärrar för spärrkontroll (lokal och nationell nivå)
accesscontrol 	- tjänstekontrakt för spärrkontroll (lokal och nationell nivå)
synchronization 	- tjänstekontrakt för replikering av spärrar till nationell spärrtjänst (nationell nivå)
administration 	- tjänstekontrakt för spärradministration (lokal nivå)

| Tjänst | Beskrivning | Underdomän |
| :--- | :--- | :--- |
| GetAllBlocks | Läs spärrar för alla | querying |
| GetAllBlocksForPatient | Läs spärrar för patient | querying |
| GetBlocks | Läs alla spärrar för vårdgivare | querying |
| GetBlocksForPatient | Läs spärrar för patient och vårdgivare | querying |
| GetPatientIds | Läs patienter för vårdgivare | querying |
| CheckBlocks | Kontrollera om spärr finns relativ viss personal/vårdenhet och information | accesscontrol |
| RegisterBlock | Registrera spärr | synchronization |
| UnregisterBlock | Avregistrera spärr | synchronization |
| RegisterTemporaryRevoke | Registrera tillfällig hävning | synchronization |
| UnregisterTemporaryRevoke | Avregistrera tillfällig hävning | synchronization |
| GetExtendedBlocksForPatient | Läs spärrar för patient, med utökad information | administration |
| RegisterExtendedBlock | Registrera spärr, med utökad information | administration |
| RevokeExtendedBlock | Häv spärr permanent, med utökad information | administration |
| RegisterTemporaryExtendedRevoke | Häv spärr tillfälligt, med utökad information | administration |
| CancelTemporaryExtendedRevoke | Återkalla tillfällig hävning, med utökad information | administration |
| DeleteExtendedBlock | Makulera spärr, med utökad information | administration |

### Referenser

| Beteckning | Dokument / Källa |
| :--- | :--- |
| RIV PDLiP | RIV Specifikation Patientdatalagen i Praktiken, 1.0, CeHis, www.cehis.se |
| PDL | Patientdatalag (2008:355), http://www.regeringen.se/sb/d/6150/a/71234 |
| SOS2008:14 | SOSFS 2008:14 föreskrifter samt handbok http://www.sos.se/sosfs |
| RIVAnvisning Tjänstebeskrivning | RIV_21_Anvisning_Bilaga_51_Tjanstekontraktbeskrivning_Regelverk_110220 |
| RIV TA 2 | RIV Teknisk Anvisning Basic Profile 2.1
http://rivta.googlecode.com/svn/wiki/specs/RIV_Tekniska_Anvisningar_Basic_profile_2.1.pdf |

