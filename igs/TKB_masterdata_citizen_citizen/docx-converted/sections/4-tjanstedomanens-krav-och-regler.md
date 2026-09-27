## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
I informationsspecifikationen [R3] beskrivs de lagar och regler som är tillämpliga för informationen i domänen.
I detta dokument ges här endast en kort sammanfattning.

#### Allmänt om informationen inom domänen
Tjänsterna i domänen tillhandahåller information från bakomliggande datakälla (Folkbokföringsregistret), vilken Skatteverket ansvarar för. Domänen omfattar personuppgifter såsom persons personnummer, samordningsnummer, namn, adress och familjerättsliga förhållanden.
Informationen i domänen används bland annat för att säkerställa att rätt person har valts i IT-system, komplettera med folkbokfört namn, folkbokförd adress osv.
Uppgifterna är i regel offentliga, men sekretess kan gälla i särskilda fall, se sekretessmarkerade personuppgifter nedan.

#### Grundläggande lagstöd och personuppgiftsansvar
Patientdatalagen styr den grundläggande regleringen av personuppgiftsbehandlingen i Personuppgiftstjänsten. Personuppgiftstjänsten ska i huvudsak användas av landstinget/regionen och andra vårdgivare för administration som rör patienter i samband med hälso- och sjukvård vilka bor i länet eller söker vård från ett annat län.
För uppgifter som lagras i Personuppgiftstjänsten (tjänsteproducenten) och inhämtats från Navet (Skatteverket) gäller att det landsting/region (huvudman) som beställt uppgifterna (och har avtalet med Skatteverket) är personuppgiftsansvarig. Landstinget/regionen är normalt personuppgiftsansvarig för ”sin” del av befolkningen. I en lösning där flera huvudmän lagrar sin information i gemensam Personuppgiftstjänst som hanteras av personuppgiftsbiträde, åligger det personuppgiftsbiträdet att logiskt separera respektive huvudmans personuppgifter.
Åtkomst till uppgifter via tjänstekontrakt sker primärt med stöd av ett elektroniskt utlämnande från Personuppgiftstjänst i form av ett s.k. automatiserat ADB-utlämnande. Utlämnandet bygger på att personuppgiftsansvarig har gjort en prövning av varje enskilt fall baserat på ett i förväg fattat schablonmässigt menprövningsbeslut. Menprövningsbeslutet ska inkludera vad som kan lämnas ut för uppgift som är skyddad (sekretessmarkerad).

#### Sekretessmarkerade personuppgifter
Personuppgifter kan bli sekretessmarkerade enligt ett regelverk som Skatteverket ansvarar för, vilket då alltid framgår när uppgiften hämtas via tjänster i denna domän, s.k. sekretessmarkering.
Grundregeln är att i de fall personposten är sekretessmarkerad, utelämnas (”blankas”) alla uppgifter i svaret utom personidentiteten i sig samt personens namn. Det framgår även att posten är sekretessmarkerad.
Notera dock att personuppgifter kan ha inhämtats tidigare för person som får sekretessmarkering. Den organisation som tagit emot uppgifterna måste då ansvara för att skyddet för en persons uppgifter hanteras korrekt.

#### Krav på tjänstekonsumenten
Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad inklusive dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten, samt att slutanvändarens aktiviteter loggas.

#### Krav på tjänsteproducenten
Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare [3].

#### Avtal
För inhämtande av uppgifter från Skatteverket (Navet) för lagring i tjänsteproducent, krävs avtal mellan Skatteverket och respektive landsting/region (huvudman). Dessa avtal reglerar grunduttag, ändringsaviseringar samt direktuppslag i Navet.
För Personuppgiftstjänst där personuppgiftsansvariga överlåter till annan part att tillhandahålla tjänsten, ska det finnas personuppgiftsbiträdesavtal.
För att en tjänstekonsument ska få ansluta till Personuppgiftstjänst krävs att avtal upprättas med ansvarig för respektive tjänsteproducent.

#### Konfidentialitet
All kommunikation med tjänsterna sker via TLS-krypterad förbindelse.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 20 ms per post som ingår i svaret + en grundsvarstid på max 100 ms. | Detta gäller vid anrop på personposter som finns i mellanlager. |
| Tillgänglighet | 24x7, 99,9% |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Ingen information får vara äldre än 80 timmar | Högsta möjliga uppdateringsfrekvens från skatteverkets Navet, 5 gånger i veckan. |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

### Felhantering

#### Krav på en tjänsteproducent
Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### Logiska fel
Logiska fel returneras inte av läsande tjänster i denna domän.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### Krav på en tjänstekonsument

##### Logiska fel
N/A

##### Tekniska fel
Tekniska fel definieras med en text och en kod i ett SOAP-Exception. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

