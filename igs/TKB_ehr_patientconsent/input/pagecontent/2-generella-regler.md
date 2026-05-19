# 2 Generella regler

## Säkerhet

### Förlitande parter enligt RIV TA Basic Profile

Tjänsterna följer RIV Tekniska Anvisningar Basic Profile 2.1, vilket innebär att ett tekniskt trust-förhållande krävs mellan tjänstekonsumenten och tjänsteproducenten, baserat på att konsument och producent ömsesidigt kan verifiera det andra systemet via dess funktionscertifikat. Se vidare [RIV TA 2].

### Behörighetsstyrning

Tjänsterna skall också utföra åtkomstkontroll för att kunna regelstyra vilken/vilka vårdgivares samtycken anropande system får operera på. Eftersom en viss tjänsteinstans normalt hanterar flera vårdgivares samtyckesinformation, behöver det finnas en logisk uppdelning som håller i sär vad respektive organisation kommer åt.

Åtkomstkontrollen består av två delar:
1. Kontroll av att anropande system har rätt att anropa aktuell tjänst, samt har rätt att använda angiven logiska adress i anropet. Här kan alltså styras att visst vårdsystem får anropa tjänsten "läs samtycken för patient", men enbart med vissa logiska adresser motsvarande de vårdgivare som systemet har rätt att hantera uppgifter för.
   - Ex: "SYSTEM S får använda TJÄNST T med logisk adresserna VG1, VG2, VG3"
2. Kontroll av att använd logisk adress (typiskt vårdgivarens HSA-ID) matchar det efterfrågade informationsurvalet (ge mig all information tillhörande vårdgivare med HSA-ID). Denna del försäkrar att systemet inte går utanför sin behörighet.

Den första kontrollen delegeras med fördel av en tjänsteplattform/integrationsplattform. Kontrollen stöds av nationella tjänsteplattformens behörighetssystem. Den andra kontrollen kräver kännedom om tjänstens innehåll och läggs med fördel i själva tjänstens fasad. Om inte en integrationsplattform nyttjas behöver förstås tjänsten realisera hela åtkomstkontrollen.

Se respektive tjänst för specifika detaljer kring denna åtkomstkontroll.

### Stark autentisering av slutanvändare

Vid samtyckeshantering åligger krav på vårdgivaren att tillse att all åtkomst sker genom att användarna är starkt autentiserade och inte får åtkomst till mer uppgifter än nödvändigt i enlighet socialstyrelsens föreskrifter (SOSFS 2008:14). Dessa krav måste hanteras av det system som konsumerar tjänsterna enligt kontraktet. Om man som exempel bygger ett webbgränssnitt för samtyckesadministration baserat på tjänstekontraktet för administration, behöver webbgränssnittet realisera dessa säkerhetskrav.

## Hantering av otillgänglighet

Tjänstekontrakten stödjer en arkitektur där det är möjligt att integrera mot tjänsterna utan att skapa ett hårt beroende till dessa i run-time.
Tjänsteproducenten kan nyttja mellanlagring för att öka tillgängligheten på tjänsterna. Ett svar kan då returneras även om bakomliggande system för tillfället är otillgängligt. Det måste dock anges i SLA för en viss implementation av tjänsten vilken förväntad aktualitet som gäller.
Ett vårdsystem som endast har behov av samtycken tillhörande vissa lokala/regionala vårdgivare, blir bara beroende av den samtyckesinstans som hanterar de aktuella vårdgivarna. Om t ex en region väljer att implementera en egen lokal tjänst för alla vårdgivare i regionen, blir deras vårdsystem enbart beroende av deras egen lokala tjänst.

![Lokalt vårdsystem kommunicerar enbart med en lokal tjänst](images/img_003.png)

*Figur 2: Lokalt vårdsystem kommunicerar enbart med en lokal tjänst*

Nationella tillämpningar behöver kunna hantera samtycket oavsett vilken vårdgivare som använder tjänsten. Här routas anropen till den tjänst som behövs beroende på vilken vårdgivare som använder tillämpningen just för tillfället.

![Nationell e-tjänst kommunicerar med en lokal tjänst via tjänsteplattform](images/img_002.png)

*Figur 3: Nationell e-tjänst kommunicerar med en lokal tjänst via tjänsteplattform*

Ovan routas anropen till rätt tjänsteproducent genom den logiska adresseringen som bygger på vilken huvudman/vårdgivare som användaren är inloggad på via dennes medarbetaruppdrag.

Det finns en viktig tillgänglighetsaspekt att tänka på här. Den nationella e-tjänsten blir beroende av en lokal tjänst hos den huvudman vars användare nyttjar den nationella e-tjänsten. Om den lokala tjänsten är nere, får det dock bara påverkan på användare som har uppdrag hos huvudmannen/vårdgivaren. Samtycken som lagras i vårdgivarens tjänst berör endast personal hos vårdgivare, eller mer korrekt: har uppdrag hos vårdgivaren, och det är endast för dem som anropet routas till den lokala tjänsten.

Detta är en viktig princip i arkitekturen. Tillgängligheten för den nationella etjänsten bör inte påverkas generellt (för alla) av en huvudmans beslut att hantera en lokal installation för t ex sin samtyckeshantering.

Ett vårdsystem kan skydda sig från ett absolut beroende till tjänsterna i run-time genom att mellanlagra senaste samtyckesunderlaget. Verksamhetens krav på aktualitet på samtyckesunderlaget måste här avgöra hur länge samtyckesinformationen kan mellanlagras.

## Felhantering

Vid ett tekniskt fel levereras ett undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av konsumenten. Informationen är inte riktad till användaren.

Vid ett logiskt fel i de uppdaterande tjänsterna levereras typen ResultType (resultCode, resultText).

En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom "OK" och "INFO" betyder att åtgärden inte genomfördes. Se ResultType nedan för detaljerad specifikation.

Ett förlåtande tillvägagångssätt när det gäller hantering av fel rekommenderas. T.ex om ett vårdsystem försöker registrera ett samtycke dubbelt bör resultatet i båda fallen bli "OK" för att minska ner möjliga felsituationer.

## Format för Datum

Datum anges alltid på formatet "ÅÅÅÅ-MM-DD", vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYY-MM-DD". W3C-datatypen date används i tjänstekontrakten för att realisera detta.

## Format för tidpunkter

Flera av tjänsterna handlar om att utbyta information om tidpunkter.
Tidpunkter anges alltid på formatet "ÅÅÅÅ-MM-DDTtt:mm:ss", vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYY-MM-DDThh:mm:ss". W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.

## Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Logisk adressering

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

## Termer och begrepp

| Term/begrepp | Förklaring |
| :--- | :--- |
| Giltigt samtyckesintyg | Med ett giltigt samtyckesintyg avses ett samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents) |
| Ogiltigt samtyckesintyg | Med ett ogiltigt samtyckesintyg avses ett samtyckesintyg som är makulerat, återkallat eller utgånget. |
| Makulerat samtyckesintyg | Med ett makulerat samtyckesintyg avses ett samtyckesintyg som har blivit återkallat p g a felaktig registrering. |
| Återkallat samtyckesintyg | Med ett återkallat samtyckesintyg avses ett samtyckesintyg som på patientens begäran har blivit återkallat. |
| Utgånget samtyckesintyg | Med ett utgånget samtyckesintyg avses ett samtyckesintyg där giltigt t o m har passerats. |
