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

