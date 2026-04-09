Spärr
Utgåva 3.2.2
2017-01-24
Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av | Definitiv revision fastställd av |
| :--- | :--- | :--- | :--- | :--- |
| 1.0 | 2011-11-04 | Godkänd av Cehis tekniska expertgrupp |  | JE/Cehis |
| 2.0 | 2012-11-20 | Version 2 av spärrkontraktet. |  |  |
| 3.0 | 2013-06-17 | Version 3 av spärrkontraktet. | Stefan Eriksson | Inera/Björn Skeppner |
| 3.0.1 | 2014-03-03 | Textuell justering av TKB | Roger Öberg |  |
| 3.1 | 2014-03-19 | Förändring av logisk adressering | Christer Jonsson |  |
| 3.2 | 2014-09-29 | Lagt till att GetAllBlockForPatients kan implementeras lokalt. Uppdaterat kapitel om logisk adressering. | Roger Öberg |  |
| 3.2.1 | 2015-04-09 | Lagt till att GetAllBlocks kan implementeras lokalt. Uppdaterat kapitel om logisk adressering. | Per Larsson & Roger Öberg |  |
| 3.2.2 | 2017-01-24 | Tagit bort implementationsspecifik information i text och i tabellen, kapitel 1.7 | Björn Skeppner |  |
Innehållsförteckning
1	Inledning	4
2	Generella regler	9
3	GetAllBlocks	12
4	GetAllBlocksForPatient	15
5	GetPatientIds	18
6	GetBlocks	20
7	GetBlocksForPatient	22
8	GetExtendedBlocksForPatient	25
9	CheckBlocks	29
10	RegisterBlock	32
11	UnregisterBlock	35
12	RegisterTemporaryRevoke	37
13	UnregisterTemporaryRevoke	39
14	RegisterExtendedBlock	41
15	RevokeExtendedBlock	44
16	DeleteExtendedBlock	47
17	RegisterTemporaryExtendedRevoke	50
18	CancelTemporaryExtendedRevoke	53
19	Datatyper för Version 2	56
20	Datatyper för Version 3	63

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

## Generella regler

### Säkerhet

#### Förlitande parter enligt RIV TA Basic Profile
Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att att konsument och producent ömsesidigt kan verifera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

#### Behörighetsstyrning
Tjänsterna skall också utföra åtkomstkontroll för att kunna regelstyra vilken/vilka vårdgivares spärrar anropande system får operera på. Eftersom en viss tjänsteinstans normalt hanterar flera vårdgivares spärrnformation, behöver det finnas en logisk uppdelning som håller i sär vad respektive organisation kommer åt.
Se respektive tjänst för specifika detaljer kring denna åtkomstkontroll.

#### Stark autentisering av slutanvändare
Vid spärrhantering åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för spärradministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

### Hantering av otillgänglighet
Tjänstekontrakten stödjer en arkitektur där där det är möjligt att integrera mot tjänsterna utan att skapa ett hårt beroende till dessa i run-time.
Ett vårdsystem som endast har behov av spärrar tillhörande lokala/regionala vårdgivare, kan anropa tjänsten på  lokal nivå med angivande av ett begränsat organisationsomfång. Otillgänglighet på nationell spärrtjänst får inte påverka ett sådant svar från tjänsten.
För frågor som ställs med det nationella omfånget finns ett naturligt beroende till tillgång till det samlade underlaget i nationell spärrtjänst.
För att hantera åtkomst till vårdinformation i ett system är det främst tillgång till spärrunderlaget som är kritiskt. Ett vårdsystem kan skydda sig från ett absolut beroende till tjänsterna i run-time genom att mellanlagra senaste spärrunderlaget respektive senaste spärrkontrollsbeslutet. Verksamhetens krav på aktualitet på spärrunderlaget måste här avgöra hur länge spärrinformationen kan mellanlagras.
Tjänsteproducenten, t ex på lokal nivå, kan nyttja mellanlagring för att öka tillgängligheten på tjänsterna. Ett svar kan då returneras även om bakomliggande system för tillfället är otillgängligt. Det måste dock anges i SLA för en viss implemention av tjänsten vilken förväntad aktualitet som gäller.
Lokal spärrtjänst skall ej påverkas av ett scenario där den nationella spärrtjänsten blir otillgänglig. De spärrar som finns tillgängliga i den lokala spärrtjänsten skall alltid returneras till anroparen.

### Felhantering
Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras typen ResultType (resultCode, resultText).
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom "OK" och ”INFO” betyder att åtgärden inte genomfördes. Se ResultType nedan för detaljerad specifikation.
Ett förlåtande tillvägagångssätt när det gäller hantering av fel rekommenderas. T.ex om ett vårdsystem försöker registrera en spärr dubbelt bör resultatet i båda fallen bli ”OK” för att minska ner möjliga felsituationer.

### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss”. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används. Detta möjliggör att en för avsändaren transparent tjänsteväxel kan förmedla anrop vidare till en viss instans av spärrtjänsten och även behörighetsstyra anropet. Logisk adressat skall anges även om spärrtjänsten för stunden inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares HSA-id skall anges som logisk adressat. För de generella/nationella tjänsterna som inte har en specifik organisationstillhörighet skall Ineras nationella HSA-id SE165565594230-1000. De generella tjänsterna representerar en nationell nivå och hanterar alla nationellt kända informationsposter. Se tabellen nedan hur adressat skall anges.

| Operation | Logisk adressat |
| :--- | :--- |
| GetAllBlocks | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| GetAllBlocksForPatient | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| CheckBlocks | Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst). |
| GetBlocks | HSA-id för aktörens vårdgivare |
| GetBlocksForPatient | HSA-id för aktörens vårdgivare |
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

#### Exempel på logisk adressering för operationen GetAllBlocksForPatient
Nedan visas ett exempel på hur logisk adressering kan användas för operationen GetAllBlocksForPatient. Det lokala systemet B1 kan använda den logiska addressen ”S”, som motsvarar källsystemsaddresseringen av den regionala spärrtjänsten, eller organisationstillhörigheten, dvs den logiska adressen ”B” i exemplet nedan. Bägge addresseringarna gör att anropet routas till den regionala spärrtjänsten. Alternativt, ifall det lokala systmetet B1 vill att anropet ska nå den nationella spärrtjänsten ska den logiska adressen sättas till ”Inera”, dvs hsa-id:et SE165565594230-1000.

![img_002.png](images/img_002.png)

## GetAllBlocks
Tjänst som läser alla nationellt kända/lagrade spärrar. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar allt spärrunderlag den behöver, för att sedan vid behov utföra intern kontroll mot spärrunderlaget.
Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten.
Tjänsten realiseras på lokal och nationell nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderIds | blocking:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. Om detta utelämnas hämtas alla spärrar oavsett organisationstillhörighet. | 0..* |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| getAllBlocks | blocking:BlockHeader | Lista över funna spärrar som är aktiva. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetAllBlocks

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetAllBlocksRequest xmlns:ns0="urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2">
<!-- Optional -->
<!-- Array -->
<ns0:CareProviderIds>?</ns0:CareProviderIds>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
</ns0:GetAllBlocksRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetAllBlocksResponse xmlns:ns0="urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetAllBlocks>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:Blocks>
<ns2:BlockId>?</ns2:BlockId>
<ns2:BlockType>?</ns2:BlockType>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:InformationStartDate>?</ns2:InformationStartDate>
<!-- Optional -->
<ns2:InformationEndDate>?</ns2:InformationEndDate>
<!-- Optional -->
<ns2:InformationCareUnitId>?</ns2:InformationCareUnitId>
<ns2:InformationCareProviderId>?</ns2:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns2:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns2:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns2:TemporaryRevokes>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:TemporaryRevokes>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Blocks>
<ns2:NextCreatedOnOrAfter>?</ns2:NextCreatedOnOrAfter>
<ns2:LatestCancellation>?</ns2:LatestCancellation>
</ns0:GetAllBlocks>
</ns0:GetAllBlocksResponse>

## GetAllBlocksForPatient
Tjänst som läser alla nationellt kända/lagrade spärrar för en viss patient, samt för viss organisation eller oavsett organisation. Endast aktiva och giltiga spärrar returneras. Varje spärr innehåller också eventuella tillfälliga hävningar, om aktiva sådana finns. Övrig funktionalitet är densamma som för GetAllBlocks.
Tjänsten realiseras på lokal och nationell nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | blocking:PersonIdValue | Patientens personnummer eller samordningsnummer vars spärrar skall hämtas. | 1..1 |
| careProviderIds | blocking:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. Om detta utelämnas hämtas alla spärrar oavsett organisationstillhörighet. | 0..* |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| getAllBlocksForPatient | blocking:BlockHeader | Lista över funna spärrar som är aktiva för angiven patient. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetAllBlocksForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetAllBlocksForPatientRequest xmlns:ns0="urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2">
<ns0:PatientId>?</ns0:PatientId>
<!-- Optional -->
<!-- Array -->
<ns0:CareProviderIds>?</ns0:CareProviderIds>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
</ns0:GetAllBlocksForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetAllBlocksForPatientResponse xmlns:ns0="urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetAllBlocksForPatient>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:Blocks>
<ns2:BlockId>?</ns2:BlockId>
<ns2:BlockType>?</ns2:BlockType>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:InformationStartDate>?</ns2:InformationStartDate>
<!-- Optional -->
<ns2:InformationEndDate>?</ns2:InformationEndDate>
<!-- Optional -->
<ns2:InformationCareUnitId>?</ns2:InformationCareUnitId>
<ns2:InformationCareProviderId>?</ns2:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns2:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns2:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns2:TemporaryRevokes>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:TemporaryRevokes>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Blocks>
<ns2:NextCreatedOnOrAfter>?</ns2:NextCreatedOnOrAfter>
<ns2:LatestCancellation>?</ns2:LatestCancellation>
</ns0:GetAllBlocksForPatient>
</ns0:GetAllBlocksForPatientResponse>

## GetPatientIds
Tjänst som läser alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras.
Konsumerande system anger vilken vårdgivare som ska omfattas av sökningen.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras, på den lokala respektive nationella nivån. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| Svar |  |  |  |
| getPatientIds | administration:GetPatientIdResult | Lista över unika patienter som har aktiva spärrar. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetPatientIds

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetPatientIdsRequest xmlns:ns0="urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2">
<ns0:CareProviderId>?</ns0:CareProviderId>
</ns0:GetPatientIdsRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetPatientIdsResponse xmlns:ns0="urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetPatientIds>
<ns1:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns1:Result>
<!-- Optional -->
<!-- Array -->
<ns1:PatientIds>?</ns1:PatientIds>
</ns0:GetPatientIds>
</ns0:GetPatientIdsResponse>

## GetBlocks
Tjänst som läser alla registrerade spärrar för en viss organisation. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns.
Konsumerande system anger vilken vårdgivare som skall omfattas av sökningen.
Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | blocking:HsaId | HSA-id på de vårdgivare vars spärrar skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| getBlocks | blocking:BlockHeader | Lista över funna spärrar som är aktiva. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetBlocks

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetBlocksRequest xmlns:ns0="urn:riv:ehr:blocking:querying:GetBlocksResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2">
<ns0:CareProviderId>?</ns0:CareProviderId>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
</ns0:GetBlocksRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetBlocksResponse xmlns:ns0="urn:riv:ehr:blocking:querying:GetBlocksResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetBlocks>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:Blocks>
<ns2:BlockId>?</ns2:BlockId>
<ns2:BlockType>?</ns2:BlockType>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:InformationStartDate>?</ns2:InformationStartDate>
<!-- Optional -->
<ns2:InformationEndDate>?</ns2:InformationEndDate>
<!-- Optional -->
<ns2:InformationCareUnitId>?</ns2:InformationCareUnitId>
<ns2:InformationCareProviderId>?</ns2:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns2:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns2:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns2:TemporaryRevokes>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:TemporaryRevokes>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Blocks>
<ns2:NextCreatedOnOrAfter>?</ns2:NextCreatedOnOrAfter>
<ns2:LatestCancellation>?</ns2:LatestCancellation>
</ns0:GetBlocks>
</ns0:GetBlocksResponse>

## GetBlocksForPatient
Tjänst som läser alla spärrar för en viss patient, samt för viss organisation. Endast aktiva och giltiga spärrar returneras. Varje spärr innehåller också eventuella tillfälliga hävningar, om aktiva sådana finns. Övrig funktionalitet är densamma som för GetAllBlocks.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. / Det skall i så fall kunna konfigureras i tjänsten hur länge underlag får sparas, vilket då anges i SLA. Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag kan returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | blocking:PersonIdValue | Patientens personnummer eller samordningsnummer vars spärrar skall hämtas. | 1..1 |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |  |  |  |
| getBlocksForPatient | blocking:BlockHeader | Lista över funna spärrar som är aktiva för angiven patient. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som hämtningen avser. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetBlocksForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetBlocksForPatientRequest xmlns:ns0="urn:riv:ehr:blocking:querying:GetBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2">
<ns0:PatientId>?</ns0:PatientId>
<ns0:CareProviderId>?</ns0:CareProviderId>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
</ns0:GetBlocksForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetBlocksForPatientResponse xmlns:ns0="urn:riv:ehr:blocking:querying:GetBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:querying:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetBlocksForPatient>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:Blocks>
<ns2:BlockId>?</ns2:BlockId>
<ns2:BlockType>?</ns2:BlockType>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:InformationStartDate>?</ns2:InformationStartDate>
<!-- Optional -->
<ns2:InformationEndDate>?</ns2:InformationEndDate>
<!-- Optional -->
<ns2:InformationCareUnitId>?</ns2:InformationCareUnitId>
<ns2:InformationCareProviderId>?</ns2:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns2:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns2:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns2:TemporaryRevokes>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:TemporaryRevokes>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Blocks>
<ns2:NextCreatedOnOrAfter>?</ns2:NextCreatedOnOrAfter>
<ns2:LatestCancellation>?</ns2:LatestCancellation>
</ns0:GetBlocksForPatient>
</ns0:GetBlocksForPatientResponse>

## GetExtendedBlocksForPatient
Tjänst som läser alla spärrar för en viss patient och organisation. Varje spärr innehåller också tillfälliga hävningar om sådana finns.
Tjänsten returnerar även makulerade och permanent hävda spärrar, samt tidigare gjorda tillfälliga hävningar, för att ge ett historikunderlag (vad som har hänt med patientens spärrar tidigare).
Tjänsten används för att på lokal nivå kunna söka fram och administrera patientens spärrar och dess eventuella tillfälliga hävningar för en viss vårdgivare.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senast registrerade spärruppgifterna i spärrtjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | blocking:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| patientId | blocking:PersonIdValue | Personnummer på patienten vars spärrar skall hämtas. | 1..1 |
| Svar |  |  |  |
| getExtendedBlocksForPatient | administration:GetExtendedBlocksResult | Svaret består av en spärrlista enligt det utökade, lokala spärrformatet. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
GetExtendedBlocksForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetExtendedBlocksForPatientRequest xmlns:ns0="urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
</ns0:GetExtendedBlocksForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetExtendedBlocksForPatientResponse xmlns:ns0="urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:GetExtendedBlocksForPatient>
<ns1:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns1:Result>
<!-- Optional -->
<!-- Array -->
<ns1:Blocks>
<ns1:BlockId>?</ns1:BlockId>
<ns1:BlockType>?</ns1:BlockType>
<ns1:PatientId>?</ns1:PatientId>
<!-- Optional -->
<ns1:InformationStartDate>?</ns1:InformationStartDate>
<!-- Optional -->
<ns1:InformationEndDate>?</ns1:InformationEndDate>
<!-- Optional -->
<ns1:InformationCareUnitId>?</ns1:InformationCareUnitId>
<ns1:InformationCareProviderId>?</ns1:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns1:ExcludedInformationTypes>
<ns2:InfoTypeId>?</ns2:InfoTypeId>
<ns2:InfoTypeDescription>?</ns2:InfoTypeDescription>
</ns1:ExcludedInformationTypes>
<ns1:RegistrationInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:RegistrationInfo>
<!-- Optional -->
<ns1:PermanentRevokedInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:PermanentRevokedInfo>
<!-- Optional -->
<ns1:DeletionInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:DeletionInfo>
<!-- Optional -->
<!-- Array -->
<ns1:TemporaryRevokes>
<ns1:TemporaryRevokeId>?</ns1:TemporaryRevokeId>
<ns1:EndDate>?</ns1:EndDate>
<ns1:RevokedForCareUnitId>?</ns1:RevokedForCareUnitId>
<!-- Optional -->
<ns1:RevokedForEmployeeId>?</ns1:RevokedForEmployeeId>
<!-- Optional -->
<ns1:RevocationReason>?</ns1:RevocationReason>
<!-- Optional -->
<ns1:RevocationReasonText>?</ns1:RevocationReasonText>
<ns1:RegistrationInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:RegistrationInfo>
<!-- Optional -->
<ns1:CancellationInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns1:CancellationInfo>
<!-- Optional -->
<ns1:OwnerId>?</ns1:OwnerId>
</ns1:TemporaryRevokes>
<!-- Optional -->
<ns1:OwnerId>?</ns1:OwnerId>
<ns1:LocallyCreated>?</ns1:LocallyCreated>
</ns1:Blocks>
</ns0:GetExtendedBlocksForPatient>
</ns0:GetExtendedBlocksForPatientResponse>

## CheckBlocks
Tjänst som kontrollerar om given information är spärrad eller inte. Den utvärderar alla spärrar som finns i tjänsten och om någon spärr är helt applicerbar för given information och tillfälle kommer tjänsten att markera den informationen som spärrad.
Om det finns minst en tillfällig hävning för spärren som applicerar på den angivna aktören blir informationen ospärrad.
Denna tjänst kan användas då tjänstekonsumenten inte själv kan avgöra/kontrollera om information är spärrad eller inte. Tjänsten stödjer kontroll av flertal informationsmängder i ett och samma anrop.
Evalueringen av huruvida informationen är spärrad eller ej görs enligt följande:
- Om spärr föreligger (inre eller yttre) blir informationen spärrad.
- Om undantag av spärr för 'lak' och/eller 'upp' har angivets blir denna informationen EJ spärrad.
- Om spärren inte innehåller någon giltighetstid blir informationen spärrad.
- Om tidsspannet för informationen ligger inom spärrens giltighetstid blir informationen spärrad.
- Om spärrens giltighetstid delvis överlappar tidsspannet (start- eller sluttid) för informationen blir informationen spärrad.
- Om tidsspannet för informationen ligger helt utanför spärrens giltighetstid blir informationen EJ spärrad.
Tjänsten realiseras både på lokal och nationell nivå.
Tjänster på nationell nivå kräver ett komplett spärrunderlag.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
3.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll om spärr föreligger på de senast registrerade spärruppgifterna i spärrtjänsten på lokal respektive nationell nivå. / Tjänsten skall returnera felkod om inte tillräckligt aktuellt underlag finns tillgängligt. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | blocking.accesscontrol:AccessingActor | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | blocking.accesscontrol:PersonIdValue | Personnummer på patienten vars information aktören önskar åtkomst till. | 1..1 |
| informationEntities | blocking.accesscontrol:InformationEntity | Lista över de informationsentiteter som aktören önskar åtkomst till. | 1..* |
| Svar |  |  |  |
| checkBlocks | blocking.accesscontrol:CheckBlocksResult | Lista med resultat motsvarande den informationslista som angavs som inparameter. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera att tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).
Parametrar till tjänsten skall valideras och resultera i resultkoden VALIDATIONERROR om dessa är felaktiga. Informationsresurser och dess fält skall valideras och hanteras separat. Ogiltiga eller felaktiga fält i informationsresursen skall resultera i VALIDATIONERROR på resursnivå, dvs felkoden ges per informationsresurs i CheckBlocksResult med CheckStatus.
Om någon informationsresurs får valideringsfel skall tjänsten returnera koden INFO med meddelandet "Informationsresurs(er) innehåller valideringsfel".
Tjänsten skall hantera valfria informationstyper samt tomma/icke existerande värden.
Alla andra värden än de definierade i kontraktet hanteras som en uppgift av ospecificerad typ i den kontroll som tjänsten utför.

### Tjänsteinteraktion
CheckBlocks

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:CheckBlocksRequest xmlns:ns0="urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3" xmlns:ns1="urn:riv:ehr:blocking:accesscontrol:3">
<ns0:AccessingActor>
<ns1:EmployeeId>?</ns1:EmployeeId>
<ns1:CareProviderId>?</ns1:CareProviderId>
<ns1:CareUnitId>?</ns1:CareUnitId>
</ns0:AccessingActor>
<ns0:PatientId>?</ns0:PatientId>
<!-- Array -->
<ns0:InformationEntities>
<ns1:InformationStartDate>?</ns1:InformationStartDate>
<ns1:InformationEndDate>?</ns1:InformationEndDate>
<ns1:InformationCareUnitId>?</ns1:InformationCareUnitId>
<ns1:InformationCareProviderId>?</ns1:InformationCareProviderId>
<!-- Optional -->
<ns1:InformationType>?</ns1:InformationType>
<ns1:RowNumber>?</ns1:RowNumber>
</ns0:InformationEntities>
</ns0:CheckBlocksRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:CheckBlocksResponse xmlns:ns0="urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3" xmlns:ns1="urn:riv:ehr:blocking:accesscontrol:3">
<ns0:CheckBlocks>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
</ns1:Result>
<!-- Optional -->
<!-- Array -->
<ns1:CheckResults>
<ns1:Status>?</ns1:Status>
<ns1:RowNumber>?</ns1:RowNumber>
</ns1:CheckResults>
</ns0:CheckBlocks>
</ns0:CheckBlocksResponse>

## RegisterBlock
Tjänst som registrerar en ny spärr i den nationella spärrtjänsten.
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.
Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.
Tjänsten används för att synkronisera en lokal spärr till den nationella spärrtjänsten.
Tjänsten realiseras på nationell nivå.

### Frivillighet
Obligatorisk för både tjänsteproducent och tjänstekonsument (lokal spärrtjänst).

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et. | 1..1 |
| blockType | blocking:BlockType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | blocking:PersonIdValue | Patientens personnummer, 12 tecken. | 1..1 |
| informationStartDate | xs:dateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:dateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | blocking:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | blocking:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | blocking:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| temporaryRevokeRegistration | blocking:TemporaryRevokeRegistration | Ej obligatorisk lista med tillfälliga hävningar. Detta möjliggör registrering/överföring av en spärr och tillhörande hävningar på en och samma gång. Denna lista lämnas tom i normalfallet. | 0..* |
| Svar |  |  |  |
| registerBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion
RegisterBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterBlockRequest xmlns:ns0="urn:riv:ehr:blocking:synchronization:RegisterBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:BlockId>?</ns0:BlockId>
<ns0:BlockType>?</ns0:BlockType>
<ns0:PatientId>?</ns0:PatientId>
<!-- Optional -->
<ns0:InformationStartDate>?</ns0:InformationStartDate>
<!-- Optional -->
<ns0:InformationEndDate>?</ns0:InformationEndDate>
<!-- Optional -->
<ns0:InformationCareUnitId>?</ns0:InformationCareUnitId>
<ns0:InformationCareProviderId>?</ns0:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns0:ExcludedInformationTypes>?</ns0:ExcludedInformationTypes>
<!-- Optional -->
<!-- Array -->
<ns0:TemporaryRevokeRegistration>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:BlockId>?</ns2:BlockId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
</ns0:TemporaryRevokeRegistration>
</ns0:RegisterBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterBlockResponse xmlns:ns0="urn:riv:ehr:blocking:synchronization:RegisterBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RegisterBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterBlock>
</ns0:RegisterBlockResponse>

## UnregisterBlock
Tjänst som avregistrerar/raderar en befintlig spärr i den nationella spärrtjänsten, om spärren finns.
Tjänsten används för att synkronisera borttag av en lokal spärr till den nationella spärrtjänsten.
Tjänsten realiseras på nationell nivå.

### Frivillighet
Obligatorisk för både tjänsteproducent och tjänstekonsument (lokal spärrtjänst).

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att borttag av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Unik, global identifierare för spärren. | 1..1 |
| Svar |  |  |  |
| unregisterBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion
UnregisterBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:UnregisterBlockRequest xmlns:ns0="urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2">
<ns0:BlockId>?</ns0:BlockId>
</ns0:UnregisterBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:UnregisterBlockResponse xmlns:ns0="urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:UnregisterBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:UnregisterBlock>
</ns0:UnregisterBlockResponse>

## RegisterTemporaryRevoke
Tjänst som registrerar en tillfällig hävning för en given spärr i den nationella spärrtjänsten, om spärren finns.
Tjänsten används för att synkronisera en lokal tillfällig hävning till den nationella spärrtjänsten.
Tjänsten realiseras på nationell nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeRegistration | blocking:TemporaryRevokeRegistration | Registreringsuppgifter för tillfällig hävning. | 1..1 |
| Svar |  |  |  |
| registerTemporaryRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion
RegisterTemporaryRevoke

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterTemporaryRevokeRequest xmlns:ns0="urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:TemporaryRevokeRegistration>
<ns2:TemporaryRevokeId>?</ns2:TemporaryRevokeId>
<ns2:BlockId>?</ns2:BlockId>
<ns2:EndDate>?</ns2:EndDate>
<ns2:RevokedForCareUnitId>?</ns2:RevokedForCareUnitId>
<!-- Optional -->
<ns2:RevokedForEmployeeId>?</ns2:RevokedForEmployeeId>
</ns0:TemporaryRevokeRegistration>
</ns0:RegisterTemporaryRevokeRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterTemporaryRevokeResponse xmlns:ns0="urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RegisterTemporaryRevoke>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterTemporaryRevoke>
</ns0:RegisterTemporaryRevokeResponse>

## UnregisterTemporaryRevoke
Tjänst som avregistrerar/raderar en tillfällig hävning i den nationella spärrtjänsten, om hävningen finns.
Tjänsten används för att synkronisera borttag av en lokal tillfällig hävning till den nationella spärrtjänsten.
Tjänsten realiseras på nationell nivå.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att borttag av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex getallblocks). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | blocking:Id | Identifierare för den tillfälliga hävning som skall raderas. | 1..1 |
| Svar |  |  |  |
| unregisterTemporaryRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om åtkomst saknas till angiven spärrs vårdgivare skall ett fel returneras och flödet avbryts.

### Tjänsteinteraktion
UnregisterTemporaryRevoke

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:UnregisterTemporaryRevokeRequest xmlns:ns0="urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2">
<ns0:TemporaryRevokeId>?</ns0:TemporaryRevokeId>
</ns0:UnregisterTemporaryRevokeRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:UnregisterTemporaryRevokeResponse xmlns:ns0="urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:synchronization:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:UnregisterTemporaryRevoke>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:UnregisterTemporaryRevoke>
</ns0:UnregisterTemporaryRevokeResponse>

## RegisterExtendedBlock
Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten.
En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.
Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.
Kräver utökad spärrinformation med metainformation kring skapande av spärren.
Tjänsten registrerar även grunddata om spärren på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av spärren skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Unik, global identifierare för spärren. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockType | blocking:BlockType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | blocking:PersonIdValue | Patientens personnummer, 12 tecken. | 1..1 |
| informationStartDate | xs:dateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:dateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | blocking:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | blocking:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | blocking:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| registerAction | blocking:Action | Identifierar de personer som begärt och registrerat spärren samt tidpunkter för dessa. | 1..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| registerExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
RegisterExtendedBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterExtendedBlockRequest xmlns:ns0="urn:riv:ehr:blocking:administration:RegisterExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:BlockId>?</ns0:BlockId>
<ns0:BlockType>?</ns0:BlockType>
<ns0:PatientId>?</ns0:PatientId>
<!-- Optional -->
<ns0:InformationStartDate>?</ns0:InformationStartDate>
<!-- Optional -->
<ns0:InformationEndDate>?</ns0:InformationEndDate>
<!-- Optional -->
<ns0:InformationCareUnitId>?</ns0:InformationCareUnitId>
<ns0:InformationCareProviderId>?</ns0:InformationCareProviderId>
<!-- Optional -->
<!-- Array -->
<ns0:ExcludedInformationTypes>?</ns0:ExcludedInformationTypes>
<ns0:RegisterAction>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:RegisterAction>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:RegisterExtendedBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterExtendedBlockResponse xmlns:ns0="urn:riv:ehr:blocking:administration:RegisterExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RegisterExtendedBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterExtendedBlock>
</ns0:RegisterExtendedBlockResponse>

## RevokeExtendedBlock
Tjänst som häver en spärr permanent i den lokala spärrtjänsten, om spärren finns. Denna hävning kan inte återtas.
Tjänsten avregistrerar även spärren på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Unik, global identifierare för spärren. | 1..1 |
| revokeAction | blocking:Action | Identifierar de personer som begärt och permanent hävt spärren samt tidpunkter för dessa. | 1..1 |
| revokeReasonText | blocking:ReasonText | Orsaken till den permanenta hävningen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| revokeExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
RevokeExtendedBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RevokeExtendedBlockRequest xmlns:ns0="urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:BlockId>?</ns0:BlockId>
<ns0:RevokeAction>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:RevokeAction>
<!-- Optional -->
<ns0:RevokeReasonText>?</ns0:RevokeReasonText>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:RevokeExtendedBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RevokeExtendedBlockResponse xmlns:ns0="urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RevokeExtendedBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RevokeExtendedBlock>
</ns0:RevokeExtendedBlockResponse>

## DeleteExtendedBlock
Tjänst som makulerar en befintlig spärr i den lokala spärrtjänsten, om spärren finns. Spärren raderas inte från lokal spärrtjänst utan markeras som makulerad (ej längre giltig) för historikens skull. Denna makulering kan inte återtas.
Tjänsten avregistrerar även spärren på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att makulering skett då anropet genomförts utan fel. / Tjänsten garanterar även att makulering skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| blockId | blocking:Id | Identifierare för den spärr som skall makuleras. | 1..1 |
| deleteAction | blocking:Action | Identifierar de personer som begärt och makulerat spärren samt tidpunkter för dessa. | 1..1 |
| deleteReasonText | blocking:ReasonText | Ej obligatorisk, kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| deleteExtendedBlock | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
DeleteExtendedBlock

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:DeleteExtendedBlockRequest xmlns:ns0="urn:riv:ehr:blocking:administration:DeleteExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:BlockId>?</ns0:BlockId>
<ns0:DeleteAction>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:DeleteAction>
<!-- Optional -->
<ns0:DeleteReasonText>?</ns0:DeleteReasonText>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:DeleteExtendedBlockRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:DeleteExtendedBlockResponse xmlns:ns0="urn:riv:ehr:blocking:administration:DeleteExtendedBlockResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:DeleteExtendedBlock>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:DeleteExtendedBlock>
</ns0:DeleteExtendedBlockResponse>

## RegisterTemporaryExtendedRevoke
Tjänst som häver en spärr tillfälligt i den lokala spärrtjänsten, om spärren finns. En spärr kan ha flera tillfälliga hävningar (gällande olika personal).
Tjänsten registrerar även den tillfälliga hävningen på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av den tillfälliga hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av den tillfälliga hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | blocking:Id | Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockId | blocking:Id | Identifierare för den spärr som skall tillfälligt hävas. | 1..1 |
| endDate | xs:dateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1..1 |
| revokedForCareUnitId | blocking:HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1..1 |
| revokedForEmployeeId | blocking:HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| registerAction | blocking:Action | Identifierar de personer som begärt och registrerat den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| revokeReason | blocking:TemporaryRevokeReason | Enumerationsvärde för orsak till tillfällig hävning. | 1..1 |
| revokeReasonText | blocking:ReasonText | Obligatorisk, kompletterande text för orsak till tillfällig hävning. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| registerTemporaryExtendedRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
RegisterTemporaryExtendedRevoke

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterTemporaryExtendedRevokeRequest xmlns:ns0="urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:TemporaryRevokeId>?</ns0:TemporaryRevokeId>
<ns0:BlockId>?</ns0:BlockId>
<ns0:EndDate>?</ns0:EndDate>
<ns0:RevokedForCareUnitId>?</ns0:RevokedForCareUnitId>
<!-- Optional -->
<ns0:RevokedForEmployeeId>?</ns0:RevokedForEmployeeId>
<ns0:RegisterAction>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:RegisterAction>
<ns0:RevokeReason>?</ns0:RevokeReason>
<!-- Optional -->
<ns0:RevokeReasonText>?</ns0:RevokeReasonText>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:RegisterTemporaryExtendedRevokeRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterTemporaryExtendedRevokeResponse xmlns:ns0="urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:RegisterTemporaryExtendedRevoke>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterTemporaryExtendedRevoke>
</ns0:RegisterTemporaryExtendedRevokeResponse>

## CancelTemporaryExtendedRevoke
Tjänst som återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas.
Tjänsten avregistrerar även den tillfälliga hävningen på nationell nivå.
Tjänsten realiseras på lokal nivå.

### Frivillighet
Frivillig.

### Version
2.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av återkallan skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av återkallan skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| temporaryRevokeId | blocking:Id | Identifierare för den tillfälliga hävning som skall återkallas. | 1..1 |
| cancellationInfo | blocking:Action | Identifierar de personer som begärt och hävt den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| cancelReasonText | blocking:ReasonText | Ej obligatorisk, kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:int | Anger hur replikering till nationell spärrtjänst ska ske. / -   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / -   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / -   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |  |  |  |
| cancelTemporaryExtendedRevoke | blocking:Result | Status för om operationen lyckades eller inte. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som spärren gäller för. Om behörighet saknas till vårdgivarens spärrar, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
CancelTemporaryExtendedRevoke

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:CancelTemporaryExtendedRevokeRequest xmlns:ns0="urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:TemporaryRevokeId>?</ns0:TemporaryRevokeId>
<ns0:CancellationInfo>
<ns2:RequestDate>?</ns2:RequestDate>
<ns2:RequestedBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RequestedBy>
<ns2:RegistrationDate>?</ns2:RegistrationDate>
<ns2:RegisteredBy>
<ns2:EmployeeId>?</ns2:EmployeeId>
<!-- Optional -->
<ns2:AssignmentId>?</ns2:AssignmentId>
<!-- Optional -->
<ns2:AssignmentName>?</ns2:AssignmentName>
</ns2:RegisteredBy>
<!-- Optional -->
<ns2:ReasonText>?</ns2:ReasonText>
</ns0:CancellationInfo>
<!-- Optional -->
<ns0:CancelReasonText>?</ns0:CancelReasonText>
<ns0:ReplicationTimeout>?</ns0:ReplicationTimeout>
</ns0:CancelTemporaryExtendedRevokeRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:CancelTemporaryExtendedRevokeResponse xmlns:ns0="urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevokeResponder:2" xmlns:ns1="urn:riv:ehr:blocking:administration:2" xmlns:ns2="urn:riv:ehr:blocking:2">
<ns0:CancelTemporaryExtendedRevoke>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:CancelTemporaryExtendedRevoke>
</ns0:CancelTemporaryExtendedRevokeResponse>

## Datatyper för Version 2
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 2.0.

### Datatyper från namnrymd urn:riv:ehr:blocking:2
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:blocking:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### blocking:Action
Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med
en möjlig orsak/anledning angivet som fritext.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | xs:dateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | blocking:Actor | Anger vem som begärt åtgärden. | 1 |
| registrationDate | xs:dateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | blocking:Actor | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | blocking:ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### blocking:Actor
Datatyp som identifierar en medarbetare/person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | blocking:HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | blocking:HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | blocking:AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### blocking:AssignmentNameType
Datatyp som representerar namn på medarbetaruppdrag.
Maxlängd: 256

#### blocking:Block
Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| blockId | blocking:Id | Unik, global identifierare för spärren. | 1 |
| blockType | blocking:BlockType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare) spärr. | 1 |
| patientId | blocking:PersonIdValue | Identifierar den patient spärren avser. | 1 |
| informationStartDate | xs:dateTime | Startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:dateTime | Slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | blocking:HsaId | Anger HSA-id för den vårdenhet som informationen tillhör. Anges enbart för inre spärrar. | 0..1 |
| informationCareProviderId | blocking:HsaId | Anger HSA-id för den vårdgivare som informationen tillhör. | 1 |
| excludedInformationTypes | blocking:InformationType | Lista med de informationstyper som är undantagna från spärren. Spärren gäller för all sorts information om inget anges. | 0..* |
| temporaryRevokes | blocking:TemporaryRevoke | Lista med tillfälliga hävningar för denna spärr. | 0..* |
| ownerId | blocking:OwnerId | Optionell identifierare för det system som skapade spärren. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### blocking:BlockHeader
Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| blocks | blocking:Block | Lista av spärrdata. | 0..* |
| nextCreatedOnOrAfter | xs:dateTime | Tidpunkt som anger sluttidpunkten för det returnerade spärrdatat. Detta datum används lämpligen i nästa anrop för att få nytt spärrdata från den tidpunkt då föregående anrop gjordes. / Tidpunkt representerar den aktuella tidpunkten i tjänsten då anropet gjordes. | 1 |
| latestCancellation | xs:dateTime | Tidpunkt som anger när en spärr blev återkallad eller makulerad. / Detta datum kan användas för att avgöra om en full synkronisering av spärrdata behöver göras får att få en aktuell bild över aktiva spärrar, då anropet i sig inte returnerar data om återkallade eller makulerade spärrar. / Tidpunkten representerar den tidpunkt då den senaste återkallan eller makulering av en spärr utfördes. En temporär hävning som återkallas ändrar ej detta datum då tillfälliga hävningar anses vara temporära ändringar. / På nationell nivå avses den senaste utförda avregistreringen av en spärr. | 1 |

#### blocking:BlockType
Enumerationsvärde som anger typ av spärr.

| Värde | Beskrivning |
| :--- | :--- |
| "Inner" | Representerar en inre spärr (inom vårdenhet). |
| "Outer" | Representerar en yttre spärr (inom vårdgivare). |

#### blocking:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Maxlängd: 32

#### blocking:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Maxlängd: 36

#### blocking:InformationType
Datatyp som representerar de Informationstyper som kan undantas från att spärras.
En spärr gäller normalt alla informationstyper.
Denna lista utgör de informationstyper som kan undantas från att spärras.
Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta.
lak     Läkemedel - Ordination/förskrivning
upp     Uppmärksamhetsinformation

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| infoTypeId | blocking:InformationTypeIdValue | Förkortning av informationstyp enligt ovan tabell. | 1 |
| infoTypeDescription | blocking:InformationTypeDescription | Beskrivning av informationstyp enligt ovan tabell. | 1 |

#### blocking:InformationTypeDescription
Datatyp som används för att ange en beskrivning på en informationstyp.
Maxlängd: 64

#### blocking:InformationTypeIdValue
Datatyp som används för att ange informationstyper.
Maxlängd: 6

#### blocking:OwnerId
Datatyp som identifierar systemet som registrerade/skapade artifakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.
Maxlängd: 512

#### blocking:PersonIdValue
Datatyp som representerar ett personnummer eller samordningsnummer.
Maxlängd: 12

#### blocking:ReasonText
Datatyp som representerar en orsak eller anledning till en viss åtgärd.
Maxlängd: 1024

#### blocking:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | blocking:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |

#### blocking:ResultCode
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

#### blocking:TemporaryRevoke
Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr.
Datatypen beskriver grundformatet för en tillfällig hävning.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | blocking:Id | Unik, global identifierare för den tillfälliga hävningen. Följer formatet för UUID. | 1 |
| endDate | xs:dateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1 |
| revokedForCareUnitId | blocking:HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1 |
| revokedForEmployeeId | blocking:HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en person, annars gäller hävningen för all personal på angiven vårdenhet. | 0..1 |
| ownerId | blocking:OwnerId | Optionell identifierare för det system som skapade hävningen. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### blocking:TemporaryRevokeReason
Enumerationsvärde som anger orsaken/anledningen till en tillfällig hävning.

| Värde | Beskrivning |
| :--- | :--- |
| "PatientsConsent" | Patienten har givit sitt samtycke till en tillfällig hävning. |
| "Emergency" | Nödsituation föreligger. Patientens samtycke för en tillfällig hävning kunde ej inhämtas. |

### Datatyper från namnrymd urn:riv:ehr:blocking.administration:2
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:blocking.administration:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### blocking.administration:ExtendedBlock
Datatyp som representerar en spärr enligt det utökade formatet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| blockId | blocking:Id | Unik, global identifierare för spärren. | 1 |
| blockType | blocking:BlockType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1 |
| patientId | blocking:PersonIdValue | Identifierare den patient som spärren avser. | 1 |
| informationStartDate | xs:dateTime | Startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:dateTime | Slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | blocking:HsaId | Anger HSA-id för den vårdenhet som informationen tillhör. Anges ej för yttre spärrar. | 0..1 |
| informationCareProviderId | blocking:HsaId | Anger HSA-id för den vårdgivare som informationen tillhör. | 1 |
| excludedInformationTypes | blocking:InformationType | Lista med de informationstyper som är undantagna från spärren. Spärren gäller för all sorts information om inget anges. | 0..* |
| registrationInfo | blocking:Action | Identifierar den eller de aktörer som har begärt och registrerat denna spärr. | 1 |
| permanentRevokedInfo | blocking:Action | Identifierar den eller de aktörer som har begärt och registrerat en permanent hävning av denna spärr, tillsammans med en orsak/anledning till permanent hävningen. | 0..1 |
| deletionInfo | blocking:Action | Identifierar den eller de aktörer som har begärt och registrerat makuleringen av denna spärr, tillsammans med en orsak/anledning till makulering. | 0..1 |
| temporaryRevokes | blocking.administration:ExtendedTemporaryRevoke | Lista med tillfälliga hävningar enligt det utökade formatet för denna spärr. | 0..* |
| ownerId | blocking:OwnerId | Optionell identifierare för det system som skapade spärren. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |
| locallyCreated | xs:boolean | Anger om spärren är registrerad på lokal nivå eller hämtat från nationell nivå. | 1 |

#### blocking.administration:ExtendedTemporaryRevoke
Datatyp som representerar en tillfällig hävning enligt det utökade formatet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| temporaryRevokeId | blocking:Id | Unik, global identifierare för den tillfälliga hävningen. | 1 |
| endDate | xs:dateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1 |
| revokedForCareUnitId | blocking:HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1 |
| revokedForEmployeeId | blocking:HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| revocationReason | blocking:TemporaryRevokeReason | Enumerationsvärde som anger orsaken/anledningen till den tillfälliga hävningen. | 0..1 |
| revocationReasonText | blocking:ReasonText | Optionellt fritext fält som anger orsaken/anledningen till den tillfälliga hävningen. | 0..1 |
| registrationInfo | blocking:Action | Identifierare den eller de aktörer som har begärt och registrerat den tillfälliga hävningen. | 1 |
| cancellationInfo | blocking:Action | Identifierare den eller de aktörer som har begärt och makulerat den tillfälliga hävningen. | 0..1 |
| ownerId | blocking:OwnerId | Optionell identifierare för det system som skapade hävningen. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### blocking.administration:GetExtendedBlocksResult
Datatyp som innehåller resultatet från tjänsten GetExtendedBlocksForPatient.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| blocks | blocking.administration:ExtendedBlock |  | 0..* |

#### blocking.administration:GetPatientIdResult
Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientIds | blocking:PersonIdValue | Lista med unika personnummer. | 0..* |

## Datatyper för Version 3
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 3.0.

### Datatyper från namnrymd urn:riv:ehr:blocking.accesscontrol:3
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:blocking.accesscontrol:3, version 3.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### blocking.accesscontrol:AccessingActor
Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | blocking.accesscontrol:HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | blocking.accesscontrol:HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | blocking.accesscontrol:HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### blocking.accesscontrol:CheckBlocksResult
Datatyp som innehåller resultatet från tjänsten CheckBlocks.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| checkResults | blocking.accesscontrol:CheckResult | Information om information är spärrad | 0..* |

#### blocking.accesscontrol:CheckResult
Datatyp som representerar ett svar från kontrollen av åtkomst till information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| status | blocking.accesscontrol:CheckStatus | Status för om informationen är spärrad. | 1 |
| rowNumber | xs:int | Detta nummer motsvarar samma element i den inskickade listan av informationsentiteter. Används för att klienten skall kunna mappa svarslistan med den inskickade informationslistan. | 1 |

#### blocking.accesscontrol:CheckStatus
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Information är ej spärrad. |
| "BLOCKED" | Informationen är spärrad. |
| "VALIDATIONERROR" | En eller flera inparametrar innehåller felaktiga värden. Kontroll av spärr utfördes ej för denna informationsresurs. |

#### blocking.accesscontrol:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Maxlängd: 32

#### blocking.accesscontrol:InformationEntity
Datatypen representerar en patientuppgift som önskas kontrolleras mot patientens spärrar. Om informationstyp anges tar tjänsten hänsyn till om det finns undantag satta i spärren för den informationstypen.
Informationstypen anges i fältet informationType.
En patientuppgift har ett start- och slutdatum (inklusivedatum) som specificerar att händelsen/informationen ägt rum/existerar under en viss period. Detta används för att kunna styra åtkomst till information för en viss tidsperiod.
Start- och slutdatum anges i fälten informationStartDate och informationEndDate.
En patientuppgift ägs/utfördes av en vårdgivare som anges i fältet informationCareProviderId.
En patientuppgift ägs/utfördes av en vårdenhet som anges i fältet informationCareUnitId.
Giltiga värden för informationstyp som kan undantas från spärr är:
Typ		Beskrivning
lak		Läkemedel - Ordination/förskrivning
upp		Uppmärksamhetsinformation (fd. uppmärksamhetssignal)

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| informationStartDate | xs:dateTime | Startdatum för vilken information i tiden som avses, dvs. när information som skall kontrolleras har registrerats. | 1 |
| informationEndDate | xs:dateTime | Slutdatum för vilken information i tiden som avses, dvs. när information som skall kontrolleras har registrerats. | 1 |
| informationCareUnitId | blocking.accesscontrol:HsaId | HSA-id som anger den vårdenhet som informationen tillhör. | 1 |
| informationCareProviderId | blocking.accesscontrol:HsaId | HSA-id som anger den vårdgivare som informationen tillhör. | 1 |
| informationType | blocking.accesscontrol:InformationTypeIdValue | Anger informationtypen för entiteten/vårdhändelsen. | 0..1 |
| rowNumber | xs:int | Detta nummer motsvarar ett element i den inskickade listan av informationsentiteter. Används för att klienten skall kunna mappa svarslistan med den inskickade informationslistan. Inga dubbletter tillåts. | 1 |

#### blocking.accesscontrol:InformationTypeIdValue
Datatyp som används för att ange informationstyper.
Maxlängd: 6

#### blocking.accesscontrol:PersonIdValue
Datatyp som representerar ett personnummer eller samordningsnummer.
Maxlängd: 12

#### blocking.accesscontrol:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | blocking.accesscontrol:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |

#### blocking.accesscontrol:ResultCode
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
