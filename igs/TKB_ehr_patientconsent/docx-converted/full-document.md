Samtycke
till direktåtkomst till patientuppgifter mellan vårdgivare inom sammanhållen journalföring
Utgåva PA12
2014-03-03
Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av | Definitiv revision fastställd av |
| :--- | :--- | :--- | :--- | :--- |
| PA1 | 2012-03-22 | Prel version 1 för kommande version A | Stefan Eriksson |  |
| PA2 | 2012-05-25 | Nytt kapitel om definition av giltighet samt förtydligat tjänstebeskrivningar. | Stefan Eriksson |  |
| PA3 | 2012-05-30 | Lagt till vårdgivare i vissa get-metoder. | Stefan Eriksson |  |
| PA4 | 2012-06-05 | Tagit bort extra parameter anledning i cancel- och delete-metoder. | Stefan Eriksson |  |
| PA5 | 2012-06-07 | Uppdaterad efter granskning i AL-T, samt förtydligat felhanteringen. | Stefan Eriksson |  |
| PA6 | 2012-06-26 | Borttagen tjänst GetAllExtendedConsentsForPatient | Stefan Eriksson |  |
| PA7 | 2012-07-02 | Ändrat resultatet från CheckConsents. | Stefan Eriksson |  |
| PA8 | 2012-10-15 | Exceptionhantering borttagen | Stefan Eriksson |  |
| PA9 | 2012-10-19 | Ny mall | Stefan Eriksson |  |
| PA10 | 2012-10-22 | Språkändringar | Stefan Eriksson |  |
| PA11 | 2012-10-23 | Ref till WS-Addressing borttagen | Stefan Eriksson |  |
| PA12 | 2014-03-03 | Textuell justering av TKB | Roger Öberg |  |
Innehållsförteckning
1	Inledning	4
2	Generella regler	8
3	GetConsentsForPatient	12
4	GetConsentsForCareProvider	14
5	GetExtendedConsentsForPatient	17
6	CheckConsent	20
7	RegisterExtendedConsent	22
8	CancelExtendedConsent	25
9	DeleteExtendedConsent	27
10	Datatyper	29

## Inledning

### Svenskt namn
infrastruktur:säkerhetstjänster:samtyckeshantering
samtyckeshantering

### WEB beskrivning
För att vårdpersonalen ska få åtkomst till patientens information hos andra vårdgivare krävs patientens samtycke.
Samtyckeshantering registrerar och lagrar information om patientens samtycke, och innehåller uppgifter om vilken tidsperiod samtycket ska gälla, och för vilken vårdpersonal/vårdenhet som samtycket ska gälla.

Tjänstekontrakten för Samtyckeshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina "egna" samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Inga dubbelregistreringar ska behöva göras. Tjänstekontrakten gör det också möjligt att åberopa nödsituation, så att inte ett oregistrerat samtycke kan äventyra patientens liv och hälsa.

### Om dokumentet
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen urn:riv:ehr:patientconsent (huvuddomän Electronic Health Record underdomän PatientConsent). Den svenska benämningen är Samtyckestjänst.
Tjänsterna syftar till att vårdgivarna inom svensk hälso- och sjukvård får verktyg att uppfylla Patientdatalagen och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok) gällande krav på samtycke för direktåtkomst till patientuppgifter från andra vårdgivare.
Genom att nationellt standardisera tjänstekontrakt för samverkan mellan vårdsystem och samtyckestjänst skapas kompatibilitet mellan alla journalsystem och alla samtyckestjänster. Därigenom undviks huvudmanna-specifika anpassningar av vårdsystem som behöver integration med samtyckestjänst.
Tjänstedomänen omfattar tjänster för
att registrera patientens eller dennes företrädares samtycke till att personal i vård och omsorg får direktåtkomst till uppgifter från andra vårdgivare (sammanhållen journalföring enligt Patientdatalagen)
att registrera nödsituationer där samtycke inte kan inhämtas och uppgifterna behövs för nödvändig vård av patienten
att hämta ut samtyckesunderlag för intern kontroll av samtycke i vårdsystemet
att via anrop från vårdsystem kontrollera om samtycke finns
att ge patienten en sammanställd lista av dennes alla samtycken som finns registrerade hos vårdgivarna
En utgångspunkt för tjänstedomänen är Cehis uppdrag Patientdatalagen i Praktiken (PDLiP), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av Patientdatalagen för informationssamverkan inom och mellan vårdgivare.
Arbetet baseras på RIV-specifikation för PDLiP [RIV PDLiP] som bland annat omfattar hanteringen av direktåkomst inom sammanhållen journalföring.

### Målgrupp
Dokumentet vänder sig till arkitekter och systemintegratörer/utvecklare i behov av att ta fram lösningar för samtyckeshantering lokalt såväl som nationellt.
Det typiska behovet är att ansluta en tillämpning som erbjuder direktåtkomst till sammanhållen journalföring som tjänstekonsument till en samtyckestjänst. Tjänstekontrakten ligger även till grund för konstruktion av samtyckestjänster.

### Allmänt
Den nationella arkitekturen för samtyckeshantering är utformad
dels för att stödja vårdgivarnas behov att hantera samtycken för lokala/regionala vårdsystem
dels för motsvarande behov i nationella e-hälsotjänster
Arkitekturen ska medge att vårdgivare, landsting/kommuner och regioner på ett flexibelt sätt kan hantera sina "egna" samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientupgifter. Samtyckesinformation utbyts därför genom tydliga tjänstekontrakt.
Tjänsterna syftar till att ge följande verksamhetsmässiga effekter
Hälso- och sjukvårdpersonalen ska få stöd att på ett enkelt sätt registrera patientens samtycke, dess varaktighet och för vem/vilka registreringen gäller.
Hälso- och sjukvårdpersonalen ska kunna åberopa nödsituation när inte samtycke är möjligt att få från patienten och det råder fara för patientens liv och hälsa.
Samtycken ska kunna få genomslag i anslutna tillämpningar, såväl lokala som nationella, t ex både i det egna vårdsystemet och i nationell patientöversikt, så att dubbelregistreringar undviks.

![img_001.png](images/img_001.png)
Figur 1: Principer för samverkande tjänster för hantering av samtycke
Notera att en viss instans av samtyckestjänsten typiskt hanterar flera vårdgivares information. För att visa på principerna ges exempel utifrån två fiktiva vårdgivare A och B.
Nationellt anpassade tjänstekontrakt gör att vårdsystem kan ansluta till ett och samma gränssnitt för samtycke oavsett hur huvudmannen ordnar med sin hantering och lokala infrastruktur.
Tjänstekontrakten kan realiseras oberoende av var delsystemen realiseras. Man kan således välja att nyttja en mellan huvudmän delad molntjänst ("hotelltjänst"), alternativt en egen lokal installation.
Det är vidare valfritt var användargränssnittet för att registrera samtycket realiseras, i ett separat gränssnitt mot samtyckestjänsten (som i fallet NPÖ) eller i respektive vårdsystem/e-tjänst eller i en gemensam portal. Oavsett var sparas samtycket i samtyckestjänsten för aktuell vårdgivare.
Nationella e-tjänster, t ex NPÖ, får genom tjänstekontrakten ett gränssnitt till de samtycken och patientrelationer som behövs för dess hantering av direktåtkomst inom den sammanhållna journalföringen. Eftersom informationen kommer från många olika vårdgivare över landstings- och regiongränser, behöver tjänsteanropen routas till den instans av samtyckestjänst som är aktuell. Routingen bygger på verksamhetsmässig adressering av anropen enligt RIV TA och T-boken och är huvudsakligen baserad på vårdgivarens identitet.

### Information hanterad i tjänsterna
Tjänsterna inom domänen hanterar intyg gällande viss patient för direktåtkomst till patientens information från andra vårdgivare enligt Patientdatalagen.
Intyget avser primärt patientens aktiva medgivande - patientens samtycke - vilket ges till enskild hälso- och sjukvårdspersonal på en vårdenhet, alternativt till all personal som har uppdrag för vårdenheten.
I en nödsituation där patienten av någon anledning inte kan ge ett aktivt samtycke, men hälso- och sjukvårdspersonal bedömer att behov av uppgifterna finns för nödvändig vård av patienten, kan istället registreras intyg om nödsituation.
Intyget har en giltighetstid och det finns även tjänster för att återkalla respektive makulera (vid felregistrering) intygen.
Det går även att registrera patientens företrädare som en informativ uppgift i intyget.
Nedan används termen "samtyckesintyg" vilket ska ses i det bredare perspektivet enligt ovan.
Tjänstekontrakten hanterar
dels grundläggande samtyckesinformation. 
Denna information är nödvändig för samverkan mellan system och nyttjas för samtyckeskontroll.
dels utökad samtyckesinformation (extended).
Utökningarna är kringinformation som tex när och vem som registrerade samtycket. Denna är inte nödvändig för samtyckeskontrollen, men kan användas när samtyckesinformation hanteras och visas upp.

### Tjänsteöversikt
Nedanstående tabell visar vilka tjänster som finns definierade.
Den extra underdomänen beskriver vilket tjänsteområde/ namnrymd tjänsten tillhör. Följande underdomäner är definierade:
querying 	- tjänstekontrakt för att hämta samtycken för intern samtyckeskontroll
accesscontrol 	- tjänstekontrakt för samtyckekontroll
administration 	- tjänstekontrakt för att registrera, återkalla och lista samtycken med utökad information

| Tjänst | Beskrivning | Underdomän |
| :--- | :--- | :--- |
| GetConsentsForCareProvider | Läs samtycken inom vårdgivare | querying |
| GetConsentsForPatient | Läs samtycken för patient inom vårdgivare | querying |
| CheckConsent | Kontrollera om samtycke finns relativ viss personal/vårdenhet | accesscontrol |
| GetExtendedConsentsForPatient | Läs samtycken för patient inom vårdgivare, med utökad information | administration |
| RegisterExtendedConsent | Registrera samtycke, med utökad information | administration |
| CancelExtendedConsent | Återkalla samtycke, med utökad information | administration |
| DeleteExtendedConsent | Makulera samtycke, med utökad information | administration |

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
Tjänsterna skall också utföra åtkomstkontroll för att kunna regelstyra vilken/vilka vårdgivares samtycken anropande system får operera på. Eftersom en viss tjänsteinstans normalt hanterar flera vårdgivares samtyckesinformation, behöver det finnas en logisk uppdelning som håller i sär vad respektive organisation kommer åt.
Åtkomstkontrollen består av två delar:
Kontroll av att anropande system har rätt att anropa aktuell tjänst, samt har rätt att använda angiven logiska adress i anropet. Här kan alltså styras att visst vårdsystem får anropa tjänsten "läs samtycken för patient", men enbart med vissa logiska adresser motsvarande de vårdgivare som systemet har rätt att hantera uppgifter för.
Ex: "SYSTEM S får använda TJÄNST T med logisk adresserna VG1, VG2, VG3"
Kontroll av att använd logisk adress (typiskt vårdgivarens HSA-ID) matchar det efterfrågade informationsurvalet (ge mig all information tillhörande vårdgivare med HSA-ID). Denna del försäkrar att systemet inte går utanför sin behörighet.
Den första kontrollen delegeras med fördel av en tjänsteplattform/integrationsplattform. Kontrollen stöds av nationella tjänsteplattformens behörighetssystem. Den andra kontrollen kräver kännedom om tjänstens innehåll och läggs med fördel i själva tjänstens fasad. Om inte en integrationsplattform nyttjas behöver förstås tjänsten realisera hela åtkomstkontrollen.
Se respektive tjänst för specifika detaljer kring denna åtkomstkontroll.

#### Stark autentisering av slutanvändare
Vid samtyckeshantering åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för samtyckesadministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

### Hantering av otillgänglighet
Tjänstekontrakten stödjer en arkitektur där där det är möjligt att integrera mot tjänsterna utan att skapa ett hårt beroende till dessa i run-time.
Tjänsteproducenten kan nyttja mellanlagring för att öka tillgängligheten på tjänsterna. Ett svar kan då returneras även om bakomliggande system för tillfället är otillgängligt. Det måste dock anges i SLA för en viss implemention av tjänsten vilken förväntad aktualitet som gäller.
Ett vårdsystem som endast har behov av samtycken tillhörande vissa lokala/regionala vårdgivare, blir bara beroende av den samtyckesinstans som hanterar de aktuella vårdgivarna. Om t ex en region väljer att implementera en egen lokal tjänst för alla vårdgivare i regionen, blir deras vårdsystem enbart beroende av deras egen lokala tjänst.

![img_003.png](images/img_003.png)
*Figur 2: Lokalt vårdsystem kommunicerar enbart med en lokal tjänst*
Nationella tillämpningar behöver kunna hantera samtycket oavsett vilken vårdgivare som använder tjänsten. Här routas anropen till den tjänst som behövs beroende på vilken vårdgivare som använder tillämpningen just för tillfället.

![img_002.png](images/img_002.png)
*Figur 3: Nationell e-tjänst kommunicerar med en lokal tjänst via tjänsteplattform*
Ovan routas anropen till rätt tjänsteproducent genom den logiska adresseringen som bygger på vilken huvudman/vårdgivare som användaren är inloggad på via dennes medarbetaruppdrag.
Det finns en viktig tillgänglighetsaspekt att tänka på här. Den nationella e-tjänsten blir beroende av en lokal tjänst hos den huvudman vars användare nyttjar den nationella e-tjänsten. Om den lokala tjänsten är nere, får det dock bara påverkan på användare som har uppdrag hos huvudmannen/vårdgivaren. Samtycken som lagras i vårdgivarens tjänst berör endast personal hos vårdgivare, eller mer korrekt: har uppdrag hos vårdgivaren, och det är endast för dem som anropet routas till den lokala tjänsten.
Detta är en viktig princip  i arkitekturen. Tillgängligheten för den nationella etjänsten bör inte påverkas generellt (för alla) av en huvudmans beslut att hantera en lokal installation för t ex sin samtyckeshantering.
Ett vårdsystem kan skydda sig från ett absolut beroende till tjänsterna i run-time genom att mellanlagra senaste samtyckesunderlaget. Verksamhetens krav på aktualitet på samtyckesunderlaget måste här avgöra hur länge samtyckesinformationen kan mellanlagras.

### Felhantering
Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren.
Vid ett logiskt fel i de uppdaterande tjänsterna levereras typen ResultType (resultCode, resultText).
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom "OK" och ”INFO” betyder att åtgärden inte genomfördes. Se ResultType nedan för detaljerad specifikation.
Ett förlåtande tilvägagångssätt när det gäller hantering av fel rekommenderas. T.ex om ett vårdsystem försöker registrera ett samtycke dubbelt bör resultatet i båda fallen bli ”OK” för att minska ner möjliga felsituationer.

### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

### Format för tidpunkter
Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet ”ÅÅÅÅ-MM-DDTtt:mm:ss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DDThh:mm:ss”. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

### Tidszon för tidpunkter
Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Logisk adressering
Alla tjänster i tjänstegränssnitten följer RIV-TA-profilens standard för logisk adressering. Med logisk adressering ges möjligheten att kunna ange en logisk adress/mottagare i det fall en tjänsteväxel (tjänsteplattform) används. Detta möjliggör att en för avsändaren transparent tjänsteväxel kan förmedla anrop vidare till en viss instans av samtyckestjänsten och även behörighetsstyra anropet.
Logisk adressat skall anges även om samtyckestjänsten för stunden inte går via en tjänsteväxel.
Alla tjänster har ett obligatoriskt meddelandefält där mottagande vårdgivares Id (t.ex. HSA-id) skall anges som logisk adressat. För de generella tjänsterna som inte har en specifik organisationstillhörighet skall Ineras nationella HSA-id SE165565594230-1000 anges. Dessa tjänster representerar en nationell nivå och hanterar alla nationellt kända informationsposter. Se tabellen nedan hur adressat skall anges.

| Tjänst | Logisk adressat |
| :--- | :--- |
| GetConsentsForPatient | Id (HSA-id) för aktörens vårdgivare |
| GetConsentsForCareProvider | Id (HSA-id) för aktörens vårdgivare |
| CheckConsent | Id (HSA-id) för aktörens vårdgivare |
| GetExtendedConsentsForPatient | Id (HSA-id) för aktörens vårdgivare |
| RegisterExtendedConsent | Id (HSA-id) för vårdgivaren som samtycket gäller för |
| CancelExtendedConsent | Id (HSA-id) för vårdgivaren som samtycket gäller för |
| DeleteExtendedConsent | Id (HSA-id) för vårdgivaren som samtycket gäller för |

### Termer och begrepp

| Term/begrepp | Förklaring |
| :--- | :--- |
| Giltigt samtyckesintyg | Med ett giltigt samtyckesintyg avses ett samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents) |
| Ogiltigt samtyckesintyg | Med ett ogiltigt samtyckesintyg avses ett samtyckesintyg som är makulerat, återkallat eller utgånget. |
| Makulerat samtyckesintyg | Med ett makulerat samtyckesintyg avses ett samtyckesintyg som har blivit återkallat p g a felaktig registrering. |
| Återkallat samtyckesintyg | Med ett återkallat samtyckesintyg avses ett samtyckesintyg som på patientens begäran har blivit återkallat. |
| Utgånget samtyckesintyg | Med ett utgånget samtyckesintyg avses ett samtyckesintyg där giltigt t o m har passerats. |

## GetConsentsForPatient
Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents).
Ogiltiga intyg (giltigt t o m har passerats, makulerade eller återkallade) returneras ej.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet läser in de giltiga samtycken som finns för patienten per vårdgivare, för att sedan utföra intern kontroll av samtycke.

### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för samtyckeshantering och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientconsent:HsaId | Obligatoriskt id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| patientId | patientconsent:PersonIdValue | Patientens personnummer alternativt  samordningsnummer vars samtycken skall hämtas. | 1..1 |
| Svar |  |  |  |
| getConsentsForPatient | patientconsent:GetConsentsResult | Lista med giltiga samtycken för patient. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till samtyckesinformationen genom att kontrollera att det efterfrågade informationsurvalet matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
GetConsentsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetConsentsForPatientRequest xmlns:ns0="urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
</ns0:GetConsentsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetConsentsForPatientResponse xmlns:ns0="urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:querying:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:GetConsentsForPatient>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:PdlAssertions>
<ns2:AssertionId>?</ns2:AssertionId>
<ns2:AssertionType>?</ns2:AssertionType>
<ns2:Scope>?</ns2:Scope>
<ns2:PatientId>?</ns2:PatientId>
<ns2:CareProviderId>?</ns2:CareProviderId>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:EmployeeId>?</ns2:EmployeeId>
<ns2:StartDate>?</ns2:StartDate>
<!-- Optional -->
<ns2:EndDate>?</ns2:EndDate>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:PdlAssertions>
</ns0:GetConsentsForPatient>
</ns0:GetConsentsForPatientResponse>

## GetConsentsForCareProvider
Tjänst som läser alla giltiga samtyckesintyg för en viss vårdgivare med grundinformation.
Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll av åtkomst (CheckConsents).
Det är valbart om makulerade och återkallade samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras.
Utgångna samtyckesintyg (giltigt t o m har passerats) returneras ej oavsett makulering eller återkallning.
Det går även att ange en tidpunkt (CreatedOnOrAfter) från när man önskar inhämta uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Här avses tidpunkten då samtycket lagrades i tjänsten.
Tjänsten tillåts att dela upp listan av samtyckesintyg i mindre delar för att minska på belastningen på systemet. Om detta sker kommer flaggan HasMore att vara satt om det finns fler samtyckesintyg att hämta. De resterande samtyckesintygen skall i så fall hämtas med ytterligare anrop till tjänsten tills flaggan HashMore ej längre är satt (false).
Tjänsten returnerar en ny tidpunkt (CreatedOnOrAfter) som anger från och med nästa tidpunkt som samtyckesintygen ej har hämtats. Detta värde kan användas som inparameter i ytterligare anrop till tjänsten för att hämta nästa sekvens av samtyckesintyg.
Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar alla samtycken det behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget av samtycken och nödsituationsintyg.
Viktigt att kontrollera att alla samtycken är hämtade genom att kontrollera värdet på flaggan HasMore.

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
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientconsent:HsaId | HSA-id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| createdOnOrAfter | xs:dateTime | Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas. Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| getCancelledFlag | xs:boolean | Flagga som avgör om makulerade och återkallade samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras. | 1..1 |
| Svar |  |  |  |
| getConsentsForCareProvider | patientconsent:GetAllAssertionsResult | Lista med giltiga samtyckesintyg och eventuellt en lista med ogiltiga samtyckesintyg. Information om det finns fler samtyckesintyg att hämta samt ny starttidpunkt ingår även i svaret. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till samtyckesinformationen genom att kontrollera att det efterfrågade informationsurvalet matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
GetConsentsForCareProvider

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetConsentsForCareProviderRequest xmlns:ns0="urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<!-- Optional -->
<ns0:CreatedOnOrAfter>?</ns0:CreatedOnOrAfter>
<ns0:GetCancelledFlag>?</ns0:GetCancelledFlag>
</ns0:GetConsentsForCareProviderRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetConsentsForCareProviderResponse xmlns:ns0="urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:querying:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:GetConsentsForCareProvider>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<ns2:MoreOnOrAfter>?</ns2:MoreOnOrAfter>
<ns2:HasMore>?</ns2:HasMore>
<!-- Optional -->
<!-- Array -->
<ns2:Assertions>
<ns2:AssertionId>?</ns2:AssertionId>
<ns2:AssertionType>?</ns2:AssertionType>
<ns2:Scope>?</ns2:Scope>
<ns2:PatientId>?</ns2:PatientId>
<ns2:CareProviderId>?</ns2:CareProviderId>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:EmployeeId>?</ns2:EmployeeId>
<ns2:StartDate>?</ns2:StartDate>
<!-- Optional -->
<ns2:EndDate>?</ns2:EndDate>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:Assertions>
<!-- Optional -->
<!-- Array -->
<ns2:CancelledAssertions>
<ns2:AssertionId>?</ns2:AssertionId>
<ns2:CancellationDate>?</ns2:CancellationDate>
</ns2:CancelledAssertions>
</ns0:GetConsentsForCareProvider>
</ns0:GetConsentsForCareProviderResponse>

## GetExtendedConsentsForPatient
Tjänst som läser registrerade samtyckesintyg för en viss patient med utökad information.
Det är valbart om ogiltiga (makulerade, återkallade och utgångna) samtyckesintyg skall returneras.
Tjänsten kan användas för att söka fram och administrera patientens samtycken för en viss vårdgivare.

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
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | patientconsent:HsaId | HSA-id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| patientId | patientconsent:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars samtycken skall hämtas. | 1..1 |
| getCancelledFlag | xs:boolean | Flagga som avgör om ogiltiga samtyckesintyg skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedConsentsForPatient | patientconsent:GetExtendedConsentsResult | Utökad information för samtycke. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till samtyckesinformationen genom att kontrollera att det efterfrågade informationsurvalet matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
GetExtendedConsentsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetExtendedConsentsForPatientRequest xmlns:ns0="urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:administration:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
<ns0:GetCancelledFlag>?</ns0:GetCancelledFlag>
</ns0:GetExtendedConsentsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetExtendedConsentsForPatientResponse xmlns:ns0="urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:administration:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:GetExtendedConsentsForPatient>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<!-- Optional -->
<!-- Array -->
<ns2:PdlAssertions>
<ns2:PDLAssertion>
<ns2:AssertionId>?</ns2:AssertionId>
<ns2:AssertionType>?</ns2:AssertionType>
<ns2:Scope>?</ns2:Scope>
<ns2:PatientId>?</ns2:PatientId>
<ns2:CareProviderId>?</ns2:CareProviderId>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:EmployeeId>?</ns2:EmployeeId>
<ns2:StartDate>?</ns2:StartDate>
<!-- Optional -->
<ns2:EndDate>?</ns2:EndDate>
<!-- Optional -->
<ns2:OwnerId>?</ns2:OwnerId>
</ns2:PDLAssertion>
<!-- Optional -->
<ns2:RepresentedBy>?</ns2:RepresentedBy>
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
</ns2:PdlAssertions>
</ns0:GetExtendedConsentsForPatient>
</ns0:GetExtendedConsentsForPatientResponse>

## CheckConsent
Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vårdenhet eller medarbetare).
Med giltigt samtycke avses ett samtycke som fortfarande är giltigt (giltigt t o m har ej passerats), ej makulerat eller återkallat.
Om ett giltigt intyg gällande åtkomst för angiven aktör hittas, kommer tjänsten att svara OK.

### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för samtyckeshantering och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | Beror på ingående samtyckestjänsters tillgänglighet. Önskas högre tillgänglighet kan konsumerande system mellanlagra data i cache som anpassas till krav på aktualitet. |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll på de senaste registrerade intygsuppgifterna i samtyckestjänsten. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | patientconsent:AccessingActor | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | patientconsent:PersonIdValue | Patientens personnummer alternativt samordningsnummer vars information aktören önskar åtkomst till. | 1..1 |
| Svar |  |  |  |
| checkConsent | patientconsent:CheckResult | Status för om ett giltigt intyg gällande åtkomst för angiven aktör hittades. | 1..1 |

### Regler
Tjänsten skall åtkomstkontrollera om tjänstekonsumenten har behörighet till tjänsten. Om behörighet saknas, nekas anropet (med tillhörande felkod ACCESSDENIED).

### Tjänsteinteraktion
CheckConsent

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:CheckConsentRequest xmlns:ns0="urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:accesscontrol:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:AccessingActor>
<ns2:EmployeeId>?</ns2:EmployeeId>
<ns2:CareProviderId>?</ns2:CareProviderId>
<ns2:CareUnitId>?</ns2:CareUnitId>
</ns0:AccessingActor>
<ns0:PatientId>?</ns0:PatientId>
</ns0:CheckConsentRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:CheckConsentResponse xmlns:ns0="urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:accesscontrol:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:CheckConsent>
<ns2:Result>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns2:Result>
<ns2:HasConsent>?</ns2:HasConsent>
<!-- Optional -->
<ns2:AssertionType>?</ns2:AssertionType>
</ns0:CheckConsent>
</ns0:CheckConsentResponse>

## RegisterExtendedConsent
Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens information från andra vårdgivare enligt PDL.
Intyget avser patientens aktiva medgivande (samtycke), alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård av patient som inte kan ge aktivt medgivande.
Det går även att registrera patientens företrädare.
Tjänsten kräver utökad information (metainformation) kring skapande av intyget.

### Frivillighet
Obligatorisk för tjänsteproducent.
Om tjänsten förväntas ingå i den nationella arkitekturen för samtyckeshantering och därmed vara nåbar för e-tjänster på nationell nivå, såsom t ex Nationell patientöversikt, krävs det att tjänsten registreras i den nationella tjänsteplattformen (NTP).

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av samtycke skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor till samtyckestjänsten. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | patientconsent:Id | Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| assertionType | patientconsent:AssertionType | Typ av intyg som ger direktåtkomst till information från andra vådgivare enligt PDL. Kan vara patientens samtycke eller nödsituation. | 1..1 |
| scope | patientconsent:Scope | Omfånget/tillämpningsområde på intyget. | 1..1 |
| patientId | patientconsent:PersonIdValue | Patientens personnummer alternativt samordningsnummer. | 1..1 |
| careProviderId | patientconsent:HsaId | Id på den vårdgivare som intyget gäller för/kopplas till. | 1..1 |
| careUnitId | patientconsent:HsaId | Id på den vårdenhet som intyget gäller för/kopplas till. | 1..1 |
| employeeId | patientconsent:HsaId | Medarbetar id. Om samtycket är personligt anges id för den medarbetare som samtycket skall gälla för. Om samtycket gäller all behörig personal på angiven vårdenhet, skall inget medarbetarid anges. | 0..1 |
| startDate | xs:dateTime | Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller samtycket fr.o.m aktuell tidpunkt (registreringstidpunkt). | 0..1 |
| endDate | xs:dateTime | Ej obligatoriskt slutdatum för intygets giltighetstid. Om ett slutdatum är angivet gäller intyget t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir återkallat eller makulerat. | 0..1 |
| representedBy | patientconsent:PersonIdValue | Ej obligatorisk företrädare/vårdnadshavare som företräder patienten. | 0..1 |
| registrationAction | patientconsent:Action | Identifierar de personer som begärt och registrerat intyget samt tidpunkter för dessa. | 1..1 |
| Svar |  |  |  |
| registerExtendedConsent | patientconsent:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som samtycket avser genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till angiven vårdgivare skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
RegisterExtendedConsent

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:RegisterExtendedConsentRequest xmlns:ns0="urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:administration:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:AssertionId>?</ns0:AssertionId>
<ns0:AssertionType>?</ns0:AssertionType>
<ns0:Scope>?</ns0:Scope>
<ns0:PatientId>?</ns0:PatientId>
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:CareUnitId>?</ns0:CareUnitId>
<!-- Optional -->
<ns0:EmployeeId>?</ns0:EmployeeId>
<!-- Optional -->
<ns0:StartDate>?</ns0:StartDate>
<!-- Optional -->
<ns0:EndDate>?</ns0:EndDate>
<!-- Optional -->
<ns0:RepresentedBy>?</ns0:RepresentedBy>
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
</ns0:RegisterExtendedConsentRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:RegisterExtendedConsentResponse xmlns:ns0="urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:administration:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:RegisterExtendedConsent>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:RegisterExtendedConsent>
</ns0:RegisterExtendedConsentResponse>

## CancelExtendedConsent
Tjänst som återkallar ett samtycke i samtyckestjänsten. Intyget raderas inte från samtyckestjänsten utan markeras som återkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas.

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
| Aktualitet | Tjänsten garanterar att återkallan av samtycket skett då anropet genomförts utan fel. Återkallan speglas omedelbart i svar från frågor genom tjänsterna. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | patientconsent:Id | Identifierare för det intyg som skall återkallas. | 1..1 |
| cancellationAction | patientconsent:Action | Identifierar de personer som begärt och registrerat återkallan samt tidpunkter för dessa. En anledning till återkallan i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| cancelExtendedConsent | patientconsent:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som samtycket gäller genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till vårdgivaren som äger samtyckesinformationen skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
CancelExtendedConsent

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:CancelExtendedConsentRequest xmlns:ns0="urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:administration:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:AssertionId>?</ns0:AssertionId>
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
</ns0:CancelExtendedConsentRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:CancelExtendedConsentResponse xmlns:ns0="urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:administration:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:CancelExtendedConsent>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:CancelExtendedConsent>
</ns0:CancelExtendedConsentResponse>

## DeleteExtendedConsent
Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart för borttagning av felregistrerade samtycken.
Samtycket raderas inte från samtyckestjänst utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas.

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
| Aktualitet | Tjänsten garanterar att makulering av samtycke skett då anropet genomförts utan fel. Makuleringen speglas omedelbart i svar från frågor genom tjänsterna. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | patientconsent:Id | Identifierar det intyg som skall makuleras. | 1..1 |
| deletionAction | patientconsent:Action | Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| deleteExtendedConsent | patientconsent:Result | Status för om tjänsten utfördes. | 1..1 |

### Regler
Tjänsten skall kontrollera om tjänstekonsumenten har behörighet till den vårdgivare som samtycket gäller genom att kontrollera att vårdgivaren matchar den angivna logiska adressen.
Om behörighet nekas till vårdgivaren som äger samtyckesinformationen skall ett fel returneras (felkod ACCESSDENIED) och flödet avbrytas.

### Tjänsteinteraktion
DeleteExtendedConsent

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:DeleteExtendedConsentRequest xmlns:ns0="urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:administration:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:AssertionId>?</ns0:AssertionId>
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
</ns0:DeleteExtendedConsentRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:DeleteExtendedConsentResponse xmlns:ns0="urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1" xmlns:ns1="urn:riv:ehr:patientconsent:administration:1" xmlns:ns2="urn:riv:ehr:patientconsent:1">
<ns0:DeleteExtendedConsent>
<ns2:ResultCode>?</ns2:ResultCode>
<ns2:ResultText>?</ns2:ResultText>
</ns0:DeleteExtendedConsent>
</ns0:DeleteExtendedConsentResponse>

## Datatyper
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 1.0.

### Datatyper från namnrymd urn:riv:ehr:patientconsent:1
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:patientconsent:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### patientconsent:AccessingActor
Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | patientconsent:HsaId | Id för medarbetaren/personen. | 1 |
| careProviderId | patientconsent:HsaId | Id på medarbetarens vårdgivare enligt aktuellt medarbetaruppdrag. | 1 |
| careUnitId | patientconsent:HsaId | Id på medarbetarens vårdenhet enligt aktuellt medarbetaruppdrag. | 1 |

#### patientconsent:Action
Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med
en möjlig orsak/anledning angivet som fritext.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| requestDate | xs:dateTime | Tidpunkt då åtgärden begärdes. | 1 |
| requestedBy | patientconsent:Actor | Anger vem som begärt åtgärden. | 1 |
| registrationDate | xs:dateTime | Tidpunkt då händelsen registrerades. Kan vara samma tidpunkt som när åtgärden begärdes. | 1 |
| registeredBy | patientconsent:Actor | Anger vem som registrerat åtgärden. Detta värde kan vara samma som den som begärt åtgärden. | 1 |
| reasonText | patientconsent:ReasonText | Optionellt fritext fält som anger orsaken/anledningen till åtgärden. | 0..1 |

#### patientconsent:Actor
Datatyp som identifierar en medarbetare/person.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| employeeId | patientconsent:HsaId | Id för medarbetaren/personen. | 1 |
| assignmentId | patientconsent:HsaId | Optionellt id för medarbetarens aktuella uppdrag. | 0..1 |
| assignmentName | patientconsent:AssignmentNameType | Optionellt namn på medarbetarens aktuella uppdrag. | 0..1 |

#### patientconsent:AssertionType
Enumerationsvärde som anger typ av intyg som ger direktåtkomst till information från andra vådgivare enligt PDL.
Kan vara patientens samtycke eller nödsituation.

| Värde | Beskrivning |
| :--- | :--- |
| "Consent" | Patienten/Företrädaren har givit sitt samtycke. |
| "Emergency" | Nödsituation föreligger. Patientens samtycke kunde ej inhämtas. |

#### patientconsent:AssignmentNameType
Datatyp som representerar namn på medarbetaruppdrag.
Maxlängd: 256

#### patientconsent:CancelledAssertion
Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| assertionId | patientconsent:Id | Id på det makulerade eller återkallade samtycket. | 1 |
| cancellationDate | xs:dateTime | Tidpunkt när makuleringen eller återkallan utfördes. | 1 |

#### patientconsent:CheckResult
Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hasConsent | xs:boolean | Anger om aktören har ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst. | 1 |
| assertionType | patientconsent:AssertionType | Anger vilken typ av intyg som hittades. / Om olika typer av samtyckesintyg finns registrerade returneras endast typen för det senaste registrerade intyget. | 0..1 |

#### patientconsent:ExtendedPDLAssertion
Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat.
Datatypen utökar datatypen PDLAssertion.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| representedBy | patientconsent:PersonIdValue | Information om den företrädare/vårdnadshavare som företräder patienten. Värdet är ej obligatoriskt. | 0..1 |
| registrationInfo | patientconsent:Action | Innehåller information om vem som begärt och registrerat samtycket samt tidpunkten för begäran och registreringen. | 1 |
| cancellationInfo | patientconsent:Action | Information om en eventuell utförd återkallan av samtycket. Innehåller vem som begärt och registrerat återkallan, tidpunkten för begäran och registreringen av återkallan, samt anledningen till återkallan. | 0..1 |
| deletionInfo | patientconsent:Action | Information om en eventuell utförd makulering av samtycket. Innehåller vem som begärt och registrerat makuleringen, tidpunkten för begäran och registreringen av makuleringen, samt anledningen till makuleringen. | 0..1 |

#### patientconsent:GetAllAssertionsResult
Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och återkallade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt.
Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| moreOnOrAfter | xs:dateTime | Anger fr.o.m. vilken tidpunkt ytterligare samtyckesintyg finns att hämta. Tidpunkten kan användas iterativt i anrop till tjänsten som ett värde till parametern CreatedOnOrAfter. / Om inga fler samtyckesintyg finns att tillgå returneras ändå en tidpunkt vilket då får representera nästa möjliga hämtningstidpunkt, dvs nya samtyckesintyg kommer att bli registrerade efter denna tidpunkt. | 1 |
| hasMore | xs:boolean | Anger om det finns ytterligare samtycken att hämta. Om fler samtycken finns att hämta bör hämtningen utgå fr.o.m. den tidpunkt som anges i MoreOnOrAfter. | 1 |
| assertions | patientconsent:PDLAssertion | Lista med giltiga intyg. | 0..* |
| cancelledAssertions | patientconsent:CancelledAssertion | Lista med ej utgångna makulerade och återkallade intyg. | 0..* |

#### patientconsent:GetConsentsResult
Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| pdlAssertions | patientconsent:PDLAssertion | Lista med hämtade intyg. | 0..* |

#### patientconsent:GetExtendedConsentsResult
Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg.
Datatypen utökar datatypen Result.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| pdlAssertions | patientconsent:ExtendedPDLAssertion |  | 0..* |

#### patientconsent:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Maxlängd: 32

#### patientconsent:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Maxlängd: 36

#### patientconsent:OwnerId
Datatyp som identifierar systemet som registrerade/skapade artifakten. Används endast för tekniskt bruk för t.ex. uppföljning och spårning.
Maxlängd: 512

#### patientconsent:PDLAssertion
Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| assertionId | patientconsent:Id | Unik, global identifierare för intyget. | 1 |
| assertionType | patientconsent:AssertionType | Typ av intyg som ger direktåtkomst till information från andra vådgivare enligt PDL. Kan vara patientens samtycke eller nödsituation. | 1 |
| scope | patientconsent:Scope | Omfånget/tillämpningsområde på samtycket. | 1 |
| patientId | patientconsent:PersonIdValue | Patientens id nummer, kan vara personnummer alternativt samordningsnummer. | 1 |
| careProviderId | patientconsent:HsaId | Vårdgivare id. Intyget kopplas till den vårdgivare som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| careUnitId | patientconsent:HsaId | Vårdenhets id. Intyget kopplas till den vårdenhet som medarbetaren är kopplad till via dennes aktuella medarbetaruppdrag. | 1 |
| employeeId | patientconsent:HsaId | Medarbetare id. Om samtycket är personligt anges medarbetarens id. Om samtycket gäller all behörig personal på vårdenheten skall inget värde anges. | 0..1 |
| startDate | xs:dateTime | Startdatum för vilken giltighetstid samtycket avser. | 1 |
| endDate | xs:dateTime | Optionellt slutdatum för vilken giltighetstid samtycket avser. Om ett slutdatum är angivet gäller samtycket t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir återkallat eller makulerat. | 0..1 |
| ownerId | patientconsent:OwnerId | Optionell identifierare för det system som skapade samtycket. Används endast för tekniskt bruk för t.ex. uppföljning och spårning. | 0..1 |

#### patientconsent:PersonIdValue
Datatyp som representerar ett personnummer eller samordningsnummer.
Maxlängd: 12

#### patientconsent:ReasonText
Datatyp som representerar en orsak eller anledning till en viss åtgärd.
Maxlängd: 1024

#### patientconsent:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | patientconsent:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |

#### patientconsent:ResultCode
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

#### patientconsent:Scope
Enumerationsvärde som anger omfånget/tillämpningsområde på intyget.

| Värde | Beskrivning |
| :--- | :--- |
| "NationalLevel" | Intyget gäller på nationell nivå. |
