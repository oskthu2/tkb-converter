Patientrelation
mellan vårdpersonal och patient
Tjänstekontraktsbeskrivning
Utgåva PA12
2014-03-03
Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av | Definitiv revision fastställd av |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2012-04-05 | Prel version 1 för kommande version A | Stefan Eriksson |  |
| PA2 | 2012-04-27 | Lagt till start datum i PatientRelation | Stefan Eriksson |  |
| PA3 | 2012-05-25 | Nytt kapitel om definition av giltighet samt förtydligat tjänstebeskrivningar. Ändrat datatypen PatientRelation. | Stefan Eriksson |  |
| PA4 | 2012-05-30 | Lagt till vårdgivare i några get-metoder. | Stefan Eriksson |  |
| PA5 | 2012-06-05 | Tagit bort extra parameter anledning i cancel- och delete-metoder. | Stefan Eriksson |  |
| PA6 | 2012-06-07 | Uppdaterad efter granskning i AL-T, samt förtydligat felhanteringen. | Stefan Eriksson |  |
| PA7 | 2012-06-26 | Uppdaterad beskrivande text | Stefan Eriksson |  |
| PA8 | 2012-10-11 | Exceptionhantering borttagen | Stefan Eriksson |  |
| PA9 | 2012-10-19 | Ny mall | Stefan Eriksson |  |
| PA10 | 2012-10-22 | Språkändringar | Stefan Eriksson |  |
| PA11 | 2012-10-23 | Ref till WS-Addressing borttagen | Stefan Eriksson |  |
| PA12 | 2014-03-03 | Textuell justering av TKB | Roger Öberg |  |
Innehållsförteckning
1	Inledning	4
2	Generella regler	8
3	GetPatientRelationsForPatient	13
4	GetPatientRelationsForCareProvider	15
5	GetExtendedPatientRelationsForPatient	18
6	CheckPatientRelation	21
7	RegisterExtendedPatientRelation	23
8	CancelExtendedPatientRelation	26
9	DeleteExtendedPatientRelation	28
10	Datatyper	30

## Inledning

### Svenskt namn
infrastruktur:säkerhetstjänster:patientrelationshantering
patientrelationshantering

### WEB beskrivning
Patientrelationshantering registrerar och lagrar information om relationer mellan personal och patient.
Tjänstekontrakten för Patientrelationshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina "egna" patientrelationer, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Tjänstekontrakten specificerar bland annat hur patientrelationsunderlag ska hämtas ut för intern kontroll av patientrelation i vårdsystemet, hur anrop från ett vårdsystem ska göras för att kontrollera om patientrelation finns eller inte, och för att kunna ge patienten en sammanställd lista av dennes alla patientrelationer som finns registrerade hos vårdgivaren.

### Om dokumentet
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen urn:riv:ehr:patientrelationship (huvuddomän Electronic Health Record underdomän PatientRelationship). Den svenska benämningen är Patientrelationstjänst.
Tjänsterna syftar till att vårdgivarna inom svensk hälso- och sjukvård får verktyg att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande krav på patientrelation mellan vårdpersonal och patient.
Genom att nationellt standardisera tjänstekontrakt för samverkan mellan vårdsystem och patientrelationstjänst skapas kompatibilitet mellan alla journalsystem och alla patientrelationstjänster. Därigenom undviks huvudmanna-specifika anpassningar av vårdsystem som behöver integration med patientrelationstjänst.
Tjänstedomänen omfattar tjänster för
att registrera patientrelation mellan personal i vård och omsorg och patient för att få tillgång till patient uppgifter enligt Patientlagens regleringar
att hämta ut patientrelationsunderlag för intern kontroll av patientrelation i vårdsystemet
att via anrop från vårdsystem kontrollera om patientrelation finns
att ge patienten en sammanställd lista av dennes alla patientrelationer som finns registrerade hos vårdgivarna
Tjänstekontrakten för patientrelation syftar till att stödja informationshanteringen både inom det inre sekretessområdet (inom vårdgivarens verksamhet) och vid sammanhållen journalföring.
En utgångspunkt för tjänstedomänen är Cehis uppdrag Patientdatalagen i Praktiken (PDLiP) , som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av Patientdatalagen för informationssamverkan inom och mellan vårdgivare.
Arbetet baseras på RIV-specifikation för PDLiP [RIV PDLiP] som bland annat omfattar hanteringen av patientrelationer för vårdgivare.

### Målgrupp
Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för hantering av patientrelationer lokalt såväl som nationellt.
Det typiska behovet är att ansluta en tillämpning som erbjuder patientrelation som tjänstekonsument till en patientrelationstjänst för att hantera PDLs krav. Tjänstekontrakten ligger även till grund för konstruktion av patientrelationstjänster.

### Allmänt
Den nationella arkitekturen är utformad
dels för att stödja vårdgivarnas behov att hantera patientrelationer för lokala/regionala vårdsystem
dels för motsvarande behov i nationella e-hälsotjänster
Arkitekturen ska medge att vårdgivare, landsting/kommuner och regioner på ett flexibelt sätt kan hantera sina "egna" patientrelationer, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Patientrelationsinformation utbyts därför genom tydliga tjänstekontrakt.
Tjänsterna syftar till att ge följande verksamhetsmässiga effekter
Hälso- och sjukvårdpersonalen ska få stöd att på ett enkelt sätt registrera patientrelationer, dess varaktighet och för vem/vilka registreringen gäller.
Patientrelationen ska kunna få genomslag i anslutna tillämpningar, såväl lokala som nationella, t ex både i det egna vårdsystemet och i nationell patientöversikt, så att dubbelregistreringar undviks.

![img_001.png](images/img_001.png)
Figur 1: Principer för samverkande tjänster för hantering av patientrelation
Notera att en viss instans av patientrelationstjänsten typiskt hanterar flera vårdgivares information. För att visa på principerna ges exempel utifrån två fiktiva vårdgivare A och B.
Nationellt anpassade tjänstekontrakt gör att vårdsystem kan ansluta till ett och samma gränssnitt för patientrelation oavsett hur huvudmannen ordnar med sin hantering och lokala infrastruktur.
Tjänstekontrakten kan realiseras oberoende av var delsystemen realiseras. Man kan således välja att nyttja en mellan huvudmän delad molntjänst ("hotelltjänst"), alternativt en egen lokal installation.
Det är vidare valfritt var användargränssnittet för att registrera patientrelation realiseras, i ett separat gränssnitt mot patientrelationstjänsten (som i fallet NPÖ) eller i respektive vårdsystem/e-tjänst eller i en gemensam portal. Oavsett var sparas patientrelation i patientrelationstjänsten för aktuell vårdgivare.
Nationella e-tjänster, t ex NPÖ, får genom tjänstekontrakten ett gränssnitt till de samtycken och patientrelationer som behövs för dess hantering av direktåtkomst inom den sammanhållna journalföringen. Eftersom informationen kommer från många olika vårdgivare över landstings- och regiongränser, behöver tjänsteanropen routas till den instans av patientrelationstjänst som är aktuell. Routingen bygger på verksamhetsmässig adressering av anropen enligt RIV TA och T-boken och är huvudsakligen baserad på vårdgivarens identitet.

### Information hanterad i tjänsterna
Tjänsterna inom domänen hanterar intyg gällande viss patient för direktåtkomst till patientens information från andra vårdgivare enligt Patientdatalagen.
Patientrelationen avser primärt att patienten har en relation till enskild hälso- och sjukvårdspersonal på en vårdenhet.
Patientrelaionen har en giltighetstid och det finns även tjänster för att återkalla respektive makulera (vid felregistrering) intygen.
Tjänstekontrakten hanterar
dels grundläggande patientrelationsinformation. 
Denna information är nödvändig för samverkan mellan system och nyttjas för patientrelationskontroll.
dels utökad patientrelationsinformation (extended).
Utökningarna är kringinformation som t ex när och vem som registrerade patientrelationen. Denna är inte nödvändig för patientrelationskontrollen, men kan användas när patientrelationsinformation hanteras och visas upp.

### Tjänsteöversikt
Nedanstående tabell visar vilka tjänster som finns definierade.
Den extra underdomänen beskriver vilket tjänsteområde/ namnrymd tjänsten tillhör. Följande underdomäner är definierade:
querying 	- tjänstekontrakt för att hämta patientrelationer för patientrelationskontroll
accesscontrol 	- tjänstekontrakt för patientrelationskontroll
administration 	- tjänstekontrakt för att registrera, återkalla och lista patientrelationer med utökad information

| Tjänst | Beskrivning | Underdomän |
| :--- | :--- | :--- |
| GetPatientRelationsForCareProvider | Läs patientrelationer  inom vårdgivare. | querying |
| GetPatientRelationsForPatient | Läs patientrelationer för patient inom vårdgivare | querying |
| CheckPatientRelation | Kontrollera om patientrelation finns relativ viss personal/vårdenhet | accesscontrol |
| GetExtendedPatientRelationsForPatient | Läs patientrelationer för patient inom vårdgivare, med utökad information | administration |
| RegisterExtendedPatientRelation | Registrera patientrelation, med utökad information | administration |
| CancelExtendedPatientRelation | Återkalla patientrelation, med utökad information | administration |
| DeleteExtendedPatientRelation | Makulera patientrelation, med utökad information | administration |

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
Tjänsterna skall också utföra åtkomstkontroll för att kunna regelstyra vilken/vilka vårdgivares patientrelationer anropande system får operera på. Eftersom en viss tjänsteinstans normalt hanterar flera vårdgivares patientrelationsinformation, behöver det finnas en logisk uppdelning som håller i sär vad respektive organisation kommer åt.
Åtkomstkontrollen består av två delar:
Kontroll av att anropande system har rätt att anropa aktuell tjänst, samt har rätt att använda angiven logiska adress i anropet. Här kan alltså styras att visst vårdsystem får anropa tjänsten "läs patientrelationer för patient", men enbart med vissa logiska adresser motsvarande de vårdgivare som systemet har rätt att hantera uppgifter för.
Ex: "SYSTEM S får använda TJÄNST T med logisk adresserna VG1, VG2, VG3"
Kontroll av att använd logisk adress (typiskt vårdgivarens HSA-ID) matchar det efterfrågade informationsurvalet (ge mig all information tillhörande vårdgivare med HSA-ID). Denna del försäkrar att systemet inte går utanför sin behörighet.
Den första kontrollen delegeras med fördel av en tjänsteplattform/integrationsplattform. Kontrollen stöds av nationella tjänsteplattformens behörighetssystem. Den andra kontrollen kräver kännedom om tjänstens innehåll och läggs med fördel i själva tjänstens fasad. Om inte en integrationsplattform nyttjas behöver förstås tjänsten realisera hela åtkomstkontrollen.
Se respektive tjänst för specifika detaljer kring denna åtkomstkontroll.

#### Stark autentisering av slutanvändare
Vid patientrelationshantering åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för patientrelationsadministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

### Hantering av otillgänglighet
Tjänstekontrakten stödjer en arkitektur där där det är möjligt att integrera mot tjänsterna utan att skapa ett hårt beroende till dessa i run-time.
Tjänsteproducenten kan nyttja mellanlagring för att öka tillgängligheten på tjänsterna. Ett svar kan då returneras även om bakomliggande system för tillfället är otillgängligt. Det måste dock anges i SLA för en viss implemention av tjänsten vilken förväntad aktualitet som gäller.
Ett vårdsystem som endast har behov av patientrelationer tillhörande lokala/regionala vårdgivare, blir bara beroende av den patienrelationsinstans som hanterar de aktuella vårdgivarna. Om t ex en region väljer att implementera en egen lokal tjänst för alla vårdgivare i regionen, blir deras vårdsystem enbart beroende av deras egen lokala tjänst.

![img_003.png](images/img_003.png)
Figur 2: Lokalt vårdsystem kommunicerar enbart med en lokal tjänst
Nationella tillämpningar behöver kunna hantera patientrelationen oavsett vilken vårdgivare som använder tjänsten. Här routas anropen till den tjänst som behövs beroende på vilken vårdgivare som använder tillämpningen just för tillfället.

![img_002.png](images/img_002.png)
Figur 3: Nationell e-tjänst kommunicerar med en lokal tjänst via tjänsteplattform
Ovan routas anropen till rätt tjänsteproducent genom den logiska adresseringen som bygger på vilken huvudman/vårdgivare som användaren är inloggad på via dennes medarbetaruppdrag.
Det finns en viktig tillgänglighetsaspekt att tänka på här. Den nationella e-tjänsten blir beroende av en lokal tjänst hos den huvudman vars användare nyttjar den nationella e-tjänsten. Om den lokala tjänsten är nere, får det dock bara påverkan på användare som har uppdrag hos huvudmannen/vårdgivaren. Patientrelationen som lagras i vårdgivarens tjänst berör endast personal hos vårdgivare, eller mer korrekt: har uppdrag hos vårdgivaren, och det är endast för dem som anropet routas till den lokala tjänsten.
Detta är en viktig princip  i arkitekturen. Tillgängligheten för den nationella etjänsten bör inte påverkas generellt (för alla) av en huvudmans beslut att hantera en lokal installation för t ex sin patientrelationshantering.
Ett vårdsystem kan skydda sig från ett absolut beroende till tjänsterna i run-time genom att mellanlagra senaste patientrelationsunderlaget. Verksamhetens krav på aktualitet på patientrelationsunderlaget måste här avgöra hur länge patientrelationsinformationen kan mellanlagras.

### Felhantering
Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras typen ResultType (resultCode, resultText).
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom "OK" och ”INFO” betyder att åtgärden inte genomfördes. Se ResultType nedan för detaljerad specifikation.
Ett förlåtande tillvägagångssätt när det gäller hantering av fel rekommenderas. T.ex om ett vårdsystem försöker registrera en patientrelation dubbelt bör resultatet i båda fallen bli ”OK” för att minska ner möjliga felsituationer.

### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss”. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används. Detta möjliggör att en för avsändaren transparent tjänsteväxel kan förmedla anrop vidare till en viss instans av patientrelationstjänsten och även behörighetsstyra anropet.
Logisk adressat skall anges även om patientrelationstjänsten för stunden inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares Id (t.ex. HSA-id) skall anges som logisk adressat. För de generella tjänsterna som inte har en specifik organisationstillhörighet skall Ineras nationella HSA-id SE165565594230-1000 anges. Dessa tjänster representerar en nationell nivå och hanterar alla nationellt kända informationsposter. Se tabellen nedan hur adressat skall anges.

| Tjänst | Logisk adressat |
| :--- | :--- |
| GetPatientRelationsForCareProvider | Id (HSA-id) för aktörens vårdgivare. |
| GetPatientRelationsForPatient | Id (HSA-id) för aktörens vårdgivare |
| CheckPatientRelation | Id (HSA-id) för aktörens vårdgivare |
| GetExtendedPatientRelationsForPatient | Id (HSA-id) för aktörens vårdgivare |
| RegisterExtendedPatientRelation | HSA-id för vårdgivaren som patientrelationen gäller för |
| CancelExtendedPatientRelation | HSA-id för vårdgivaren som patientrelationen gäller för |
| DeleteExtendedPatientRelation | HSA-id för vårdgivaren som patientrelationen gäller för |

### Termer och begrepp

| Term/begrepp | Förklaring |
| :--- | :--- |
| Giltig patientrelation | Med en giltig patientrelation avses en patientrelation som används som underlag vid en kontroll gällande åtkomst (CheckPatientRelation) |
| Ogiltig patientrelation | Med en ogiltig patientrelation avses en patientrelation som är makulerat, återkallat eller utgånget. |
| Makulerad patientrelation | Med en makulerad patientrelation avses en patientrelation som har blivit återkallat p g a felaktig registrering. |
| Återkallad patientrelation | Med en återkallad patientrelation avses en patientrelation som på patientens begäran har blivit återkallat. |
| Utgången patientrelation | Med en utgången patientrelation avses en patientrelation där giltigt t o m har passerats. |

## GetPatientRelationsForPatient
Tjänst som läser giltiga patientrelationer för en viss patient och en viss vårdgivare med grundinformation.
Med giltiga patientrelationer avses de patientrelationer som används som underlag vid en kontroll gällande åtkomst (CheckPatientRelation).
Ogiltiga patientrelationer (giltigt t o m har passerats, makulerade eller återkallade) returneras ej.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar alla patientrelationer det behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget för patientrelationer.

### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för hantering av patientrelationer och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade patientrelationsuppgifterna i patientrelationstjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientrelationship:HsaId | HSA-id på den vårdgivare vars patientrelationer skall hämtas. | 1..1 |
| patientId | patientrelationship:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars patientrelationer skall hämtas. | 1..1 |
| Svar |  |  |  |
| getPatientRelationsForPatient | patientrelationship:GetPatientRelationsResult | Lista med giltiga patientrelationer för patient. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationsinformationen gäller för.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
GetPatientRelationsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetPatientRelationsForPatientRequest xmlns:ns0="urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
</ns0:GetPatientRelationsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetPatientRelationsForPatientResponse xmlns:ns0="urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:querying:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:GetPatientRelationsForPatient>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:PatientRelations>
<ns2:PatientRelationId>?</ns2:PatientRelationId>
<ns2:PatientId>?</ns2:PatientId>
<ns2:CareProviderId>?</ns2:CareProviderId>
<ns2:CareUnitId>?</ns2:CareUnitId>
<ns2:EmployeeId>?</ns2:EmployeeId>
<ns2:StartDate>?</ns2:StartDate>
<ns2:EndDate>?</ns2:EndDate>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:PatientRelations>
</ns0:GetPatientRelationsForPatient>
</ns0:GetPatientRelationsForPatientResponse>

## GetPatientRelationsForCareProvider
Tjänst som läser alla giltiga patientrelationer för en viss vårdgivare med grundinformation.
Det är valbart om makulerade och återkallade patientrelationer som ej är utgångna (giltigt t o m har passerats) skall returneras.
Utgångna patientrelationer (giltigt t o m har passerats) returneras ej oavsett makulering eller återkallning.
Det går även att ange en tidpunkt (CreatedOnOrAfter) från när man önskar inhämta uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Här avses tidpunkten då patientrealtioner lagrades i tjänsten.
Tjänsten tillåts att dela upp listan av patientrelationer i mindre delar för att minska på belastningen på systemet. Om detta sker kommer flaggan HasMore att vara satt om det finns fler patientrelationer att hämta. De resterande patientrelationerna skall i så fall hämtas med ytterligare anrop till tjänsten ända tills flaggan HasMore ej längre är satt (false).
Tjänsten returnerar en ny tidpunkt (CreatedOnOrAfter) som anger från och med nästa tidpunkt som patientrelationer ej har hämtats. Detta värde kan användas som inparameter i ytterligare anrop till tjänsten för att hämta nästa sekvens av patientrelationer.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar allt patientrelationsunderlag den behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget för patientrelationer.
Viktigt att kontrollera att alla patientrelationer är hämtade genom att kontrollera värdet på HasMore.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade patientrelationsuppgifterna i patientrelationstjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientrelationship:HsaId | HSA-id på den vårdgivare vars patientrelationer skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla patientrelationer som skall hämtas. Om angivet så returneras endast patientrelationer skapade/förändrade  på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| getCancelledFlag | xs:boolean | Flagga som avgör om makulerade och återkallade patientrelationer som ej är utgångna (giltigt t o m har passerats) skall returneras. | 1..1 |
| Svar |  |  |  |
| getPatientRelationsForCareProvider | patientrelationship:GetAllPatientRelationsResult | Alla funna patientrelationer som är aktiva eller som är avregistrerade. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationsinformationen gäller för.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
GetPatientRelationsForCareProvider

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetPatientRelationsForCareProviderRequest xmlns:ns0="urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
<ns0:GetCancelledFlag>?</ns0:GetCancelledFlag>
</ns0:GetPatientRelationsForCareProviderRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetPatientRelationsForCareProviderResponse xmlns:ns0="urn:riv:ehr:patientrelationship:querying:GetPatientRelationsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:querying:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:GetPatientRelationsForCareProvider>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<ns2:MoreOnOrAfter>?</ns2:MoreOnOrAfter>
<ns2:HasMore>?</ns2:HasMore>
<!-- Optional -->
<!-- Array -->
<ns2:PatientRelations>
<ns2:PatientRelationId>?</ns2:PatientRelationId>
<ns2:PatientId>?</ns2:PatientId>
<ns2:CareProviderId>?</ns2:CareProviderId>
<ns2:CareUnitId>?</ns2:CareUnitId>
<ns2:EmployeeId>?</ns2:EmployeeId>
<ns2:StartDate>?</ns2:StartDate>
<ns2:EndDate>?</ns2:EndDate>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:PatientRelations>
<!-- Optional -->
<!-- Array -->
<ns2:CancelledPatientRelations>
<ns2:PatientRelationId>?</ns2:PatientRelationId>
<ns2:CancellationDate>?</ns2:CancellationDate>
</ns2:CancelledPatientRelations>
</ns0:GetPatientRelationsForCareProvider>
</ns0:GetPatientRelationsForCareProviderResponse>

## GetExtendedPatientRelationsForPatient
Tjänst som läser registrerade patientrelationer med all information för en viss patient och viss vårdgivare.
Det är valbart om ogiltiga (makulerade, återkallade och utgångna) patientrelationer skall returneras.
Tjänsten används för att söka fram och administrera patientens patientrelationer för en viss vårdgivare.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade patientrelationsuppgifterna i patientrelationstjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientrelationship:HsaId | HSA-id på den vårdgivare vars patientrelationer skall hämtas. | 1..1 |
| patientId | patientrelationship:PersonIdValue | Patientens personnummer alternativt samordningsnummer. | 1..1 |
| getCancelledFlag | xs:boolean | Flagga som avgör om ogiltiga patientrelationer skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedPatientRelationsForPatient | patientrelationship:GetExtendedPatientRelationResult | Utökad information för patientrelation. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till patientrelationsinformationen genom att kontrollera att det efterfrågade informationsurvalet matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
GetExtendedPatientRelationsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetExtendedPatientRelationsForPatientRequest xmlns:ns0="urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:administration:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
<ns0:GetCancelledFlag>?</ns0:GetCancelledFlag>
</ns0:GetExtendedPatientRelationsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetExtendedPatientRelationsForPatientResponse xmlns:ns0="urn:riv:ehr:patientrelationship:administration:GetExtendedPatientRelationsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:administration:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:GetExtendedPatientRelationsForPatient>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:ExtendedPatientRelations>
<ns2:PatientRelation>
<ns2:PatientRelationId>?</ns2:PatientRelationId>
<ns2:PatientId>?</ns2:PatientId>
<ns2:CareProviderId>?</ns2:CareProviderId>
<ns2:CareUnitId>?</ns2:CareUnitId>
<ns2:EmployeeId>?</ns2:EmployeeId>
<ns2:StartDate>?</ns2:StartDate>
<ns2:EndDate>?</ns2:EndDate>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:PatientRelation>
<ns2:RegistrationInfo>
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
</ns2:RegistrationInfo>
<!-- Optional -->
<ns2:CancellationInfo>
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
</ns2:CancellationInfo>
<!-- Optional -->
<ns2:DeletionInfo>
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
</ns2:DeletionInfo>
</ns2:ExtendedPatientRelations>
</ns0:GetExtendedPatientRelationsForPatient>
</ns0:GetExtendedPatientRelationsForPatientResponse>

## CheckPatientRelation
Tjänst som kontrollerar om patientrelation mellan patienten och aktör föreligger.
Tjänsten utvärderar om patientrelation finns mellan patient och aktör (medarbetare).
Om en giltig patientrelation gällande åtkomst för angiven aktör hittas, kommer tjänsten att svara OK.
Med giltig patientrelation avses en patientrelation som fortfarande är giltigt (giltigt t o m har ej passerats), ej makulerat eller återkallat.

### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för hantering av patientrelationer och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll om patientrelation föreligger på de senaste registrerade patientrelationsuppgifterna i patientrelationstjänsten. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | patientrelationship:AccessingActor | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | patientrelationship:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars information aktören önskar åtkomst till. | 1..1 |
| Svar |  |  |  |
| checkPatientRelation | patientrelationship:CheckResult | Status för om patientrelation gällande åtkomst för angiven aktör hittades. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
CheckPatientRelation

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:CheckPatientRelationRequest xmlns:ns0="urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:accesscontrol:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:AccessingActor>
<ns2:EmployeeId>?</ns2:EmployeeId>
<ns2:CareProviderId>?</ns2:CareProviderId>
<ns2:CareUnitId>?</ns2:CareUnitId>
</ns0:AccessingActor>
<ns0:PatientId>?</ns0:PatientId>
</ns0:CheckPatientRelationRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:CheckPatientRelationResponse xmlns:ns0="urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:accesscontrol:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:CheckPatientRelation>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<ns2:HasPatientrelation>?</ns2:HasPatientrelation>
</ns0:CheckPatientRelation>
</ns0:CheckPatientRelationResponse>

## RegisterExtendedPatientRelation
Tjänst som registrerar en patientrelation mellan en patient och en medarbetare.
Tjänsten kräver utökad information (metainformation) kring skapande av intyget.

### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för hantering av patientrelationer och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av patientrelation skett då anropet genomförts utan fel. / Registreringen speglas omedelbart i svar från frågor till patientrelationstjänsten. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientRelationId | patientrelationship:Id | Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| patientId | patientrelationship:PersonIdValue | Patientens personnummer alternativt samordningsnummer. | 1..1 |
| careProviderId | patientrelationship:HsaId | Id på den vårdgivare som intyget gäller för/kopplas till. | 1..1 |
| careUnitId | patientrelationship:HsaId | Id på den vårdenhet som intyget gäller för/kopplas till. | 1..1 |
| employeeId | patientrelationship:HsaId | Medarbetar id för den medarbetare som patientrelationen gäller för. | 1..1 |
| startDate | xs:dateTime | Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller patientrelationen fr.o.m aktuell tidpunkt (registreringstidpunkt). | 0..1 |
| endDate | xs:dateTime | Tidpunkts då giltigheten går ut för patientrelationen. | 1..1 |
| registrationAction | patientrelationship:Action | Identifierar de personer som begärt och registrerat patientrelationen samt tidpunkter för dessa. | 1..1 |
| Svar |  |  |  |
| registerExtendedPatientRelation | patientrelationship:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationen avser genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
RegisterExtendedPatientRelation

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterExtendedPatientRelationRequest xmlns:ns0="urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:administration:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:PatientRelationId>?</ns0:PatientRelationId>
<ns0:PatientId>?</ns0:PatientId>
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:CareUnitId>?</ns0:CareUnitId>
<ns0:EmployeeId>?</ns0:EmployeeId>
<!-- Optional -->
<ns0:StartDate>?</ns0:StartDate>
<ns0:EndDate>?</ns0:EndDate>
<ns0:RegistrationAction>
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
</ns0:RegistrationAction>
</ns0:RegisterExtendedPatientRelationRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterExtendedPatientRelationResponse xmlns:ns0="urn:riv:ehr:patientrelationship:administration:RegisterExtendedPatientRelationResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:administration:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:RegisterExtendedPatientRelation>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterExtendedPatientRelation>
</ns0:RegisterExtendedPatientRelationResponse>

## CancelExtendedPatientRelation
Denna tjänst återkallar en patientrelation i patientrelationstjänsten. patientrelationen raderas inte från patientrelationstjänsten utan markeras som återkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att återkallan av patientrelation skett då anropet genomförts utan fel. / Återkallan speglas omedelbart i svar från frågor genom tjänsterna. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientRelationId | patientrelationship:Id | Identifierare för den patientrelation som skall återkallas. | 1..1 |
| cancellationAction | patientrelationship:Action | Identifierar de personer som begärt och registrerat återkallan samt tidpunkter för dessa. En anledning till återkallan i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| cancelExtendedPatientRelation | patientrelationship:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationen gäller genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till vårdgivaren som äger patientrelationsinformationen skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
CancelExtendedPatientRelation

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:CancelExtendedPatientRelationRequest xmlns:ns0="urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:administration:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:PatientRelationId>?</ns0:PatientRelationId>
<ns0:CancellationAction>
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
</ns0:CancellationAction>
</ns0:CancelExtendedPatientRelationRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:CancelExtendedPatientRelationResponse xmlns:ns0="urn:riv:ehr:patientrelationship:administration:CancelExtendedPatientRelationResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:administration:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:CancelExtendedPatientRelation>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:CancelExtendedPatientRelation>
</ns0:CancelExtendedPatientRelationResponse>

## DeleteExtendedPatientRelation
Tjänst som makulerar en patientrelation i patientrelationstjänsten. Makulering av patientrelation används enbart för borttagning av felregistrerade patientrelationer.
Patientrelationen raderas inte från patientrelationstjänsten utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas.

### Frivillighet
Obligatorisk för tjänsteproducent.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att makulering av patientrelation skett då anropet genomförts utan fel. / Makuleringen speglas omedelbart i svar från frågor genom tjänsterna. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientRelationId | patientrelationship:Id | Identifierare för den patientrelation som skall makuleras. | 1..1 |
| deletionAction | patientrelationship:Action | Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| deleteExtendedPatientRelation | patientrelationship:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som patientrelationen gäller genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till vårdgivaren som äger patientrelationsinformationen skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
DeleteExtendedPatientRelation

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:DeleteExtendedPatientRelationRequest xmlns:ns0="urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelationResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:administration:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:PatientRelationId>?</ns0:PatientRelationId>
<ns0:DeletionAction>
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
</ns0:DeletionAction>
</ns0:DeleteExtendedPatientRelationRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:DeleteExtendedPatientRelationResponse xmlns:ns0="urn:riv:ehr:patientrelationship:administration:DeleteExtendedPatientRelationResponder:1" xmlns:ns1="urn:riv:ehr:patientrelationship:administration:1" xmlns:ns2="urn:riv:ehr:patientrelationship:1">
<ns0:DeleteExtendedPatientRelation>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:DeleteExtendedPatientRelation>
</ns0:DeleteExtendedPatientRelationResponse>

## Datatyper
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 1.0.

### Datatyper från namnrymd urn:riv:ehr:patientrelationship:1
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:patientrelationship:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### patientrelationship:AccessingActor
Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | patientrelationship:HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | patientrelationship:HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | patientrelationship:HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### patientrelationship:Action
Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med
en möjlig orsak/anledning angivet som fritext.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | xs:dateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | patientrelationship:Actor | Anger vem som begärt åtgärden. | 1 |
| registrationDate | xs:dateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | patientrelationship:Actor | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | patientrelationship:ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### patientrelationship:Actor
Datatyp som identifierar en medarbetare/person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | patientrelationship:HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | patientrelationship:HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | patientrelationship:AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### patientrelationship:AssignmentNameType
Datatyp som representerar namn på medarbetaruppdrag.
Maxlängd: 256

#### patientrelationship:CancelledPatientRelation
Datatyp som representerar en makulerad eller återkallad patientrelation samt tidpunkten när makuleringen eller återkallan utfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientRelationId | patientrelationship:Id | Id på den makulerade eller återkallade patientrelationen. | 1 |
| cancellationDate | xs:dateTime | Tidpunkt när makulering eller återkallan utfördes. | 1 |

#### patientrelationship:CheckResult
Datatyp som innehåller resultatet från kontrollen huruvida en aktör har en giltig patientrelation med en patient.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hasPatientrelation | xs:boolean |  | 1 |

#### patientrelationship:ExtendedPatientRelation
Datatyp som representerar en patientrelation enligt det utökade formatet. Innehåller information vem som har begärt respektive registrerat patientrelationen,
samt om och när patientrelationen är återkallad och/eller makulerat.
Datatypen utökar datatypen PatientRelation.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| registrationInfo | patientrelationship:Action | Innehåller vem som begärt och registrerat patientrelationen samt tid för begäran och registrering. | 1 |
| cancellationInfo | patientrelationship:Action | Ej obligatorisk info om återkallelse, innehåller vem som begärt och registrerat återkallelsen samt tid för begäran och registrering. Samt anledning till återkallelse | 0..1 |
| deletionInfo | patientrelationship:Action | Ej obligatorisk info om makulering, innehåller vem som begärt och registrerat makuleringen samt tid för begäran och registrering. Samt anledning till makulering | 0..1 |

#### patientrelationship:GetAllPatientRelationsResult
Datatyp som representerar en lista med giltiga patientrelationer tillsammans med en lista av makulerade och återkallade patientrelationer. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt.
Det är upp till tjänsten att bestämma om svaret skall delas upp eller levereras som en komplett entitet.
Datatypen innehåller information om det finns ytterligare patientrelationer att hämta samt en ny starttidpunkt för när nästa sekvens av patientrelationer startar.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| moreOnOrAfter | xs:dateTime | Anger fr.o.m. vilken tidpunkt ytterligare patientrelationer finns att hämta. Tidpunkten kan användas iterativt i anrop till tjänsten som ett värde till parametern CreatedOnOrAfter. / Om inga fler patientrelationer finns att tillgå returneras ändå en tidpunkt vilket då får representera nästa möjliga hämtningstidpunkt, dvs nya patientrelationer kommer att bli registrerade efter denna tidpunkt. | 1 |
| hasMore | xs:boolean | Anger om det finns ytterligare patientrelationer att hämta. Om fler patientrelationer finns att hämta bör hämtningen utgå fr.o.m. den tidpunkt som anges i MoreOnOrAfter. | 1 |
| patientRelations | patientrelationship:PatientRelation | Lista med aktiva patientrelationer. | 0..* |
| cancelledPatientRelations | patientrelationship:CancelledPatientRelation | Lista med makulerade och återkallade patientrelationer. | 0..* |

#### patientrelationship:GetExtendedPatientRelationResult
Datatyp som innehåller resultatet från en hämtning av patientrelationer enligt det utökade formatet tillsammans med hämtade patientrelationer.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| extendedPatientRelations | patientrelationship:ExtendedPatientRelation |  | 0..* |

#### patientrelationship:GetPatientRelationsResult
Datatyp som innehåller resultatet från en hämtning av patientrelationer tillsammans med hämtade patientrelationer.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientRelations | patientrelationship:PatientRelation |  | 0..* |

#### patientrelationship:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Maxlängd: 32

#### patientrelationship:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Maxlängd: 36

#### patientrelationship:OwnerId
Datatyp som identifierar systemet som registrerade/skapade artifakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.
Maxlängd: 512

#### patientrelationship:PatientRelation
Representerar en existerande patientrelation enligt grundformatet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientRelationId | patientrelationship:Id | Unik, global identifierare för patientrelationen. | 1 |
| patientId | patientrelationship:PersonIdValue | Patientens id nummer, kan vara personnummer alternativt samordningsnummer. | 1 |
| careProviderId | patientrelationship:HsaId | Vårdgivare id. Intyget kopplas till den vårdgivare som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| careUnitId | patientrelationship:HsaId | Vårdenhets id. Intyget kopplas till den vårdenhet som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| employeeId | patientrelationship:HsaId | Medarbetare id. Den medarbetare som intyget avser. | 1 |
| startDate | xs:dateTime | Startdatum för vilken giltighetstid patientrelationen avser. | 1 |
| endDate | xs:dateTime | Tidpunkts då giltigheten går ut för patientrelationen. | 1 |
| ownerId | patientrelationship:OwnerId | Optionell identifierare för den aktör/system som skapat patientrelationen. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### patientrelationship:PersonIdValue
Datatyp som representerar ett personnummer eller samordningsnummer.
Maxlängd: 12

#### patientrelationship:ReasonText
Datatyp som representerar en orsak eller anledning till en viss åtgärd.
Maxlängd: 1024

#### patientrelationship:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | patientrelationship:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |

#### patientrelationship:ResultCode
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATION_ERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "NOTFOUND" | Angiven artifakt finns ej. Angiven tjänst utfördes ej. |
| "ALREADYEXISTS" | Angiven artifakt finns redan. Angiven tjänst utfördes ej. |
| "INVALIDSTATE" | Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd. |
