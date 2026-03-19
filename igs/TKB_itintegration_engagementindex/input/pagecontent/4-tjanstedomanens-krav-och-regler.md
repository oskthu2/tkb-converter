# 4 Tjänstedomänens krav och regler

Dessa krav och regler gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

## Informationssäkerhet och juridik

Lagring av uppgifter i Engagemangsindex är att anses som en vårdgivares behandling av personuppgifter inom hälso- och sjukvården enligt Patientdatalagen [Ref8] 1 kap. §1. Varje vårdgivare är personuppgiftsansvarig för sina egna uppgifter i Engagemangsindex.

Engagemangsindexinformation klassas som patientuppgift. Det betyder att ett engagemangsindex är ett personregister. Engagemangsindexinformation består inte av direkt klinisk information, men kan ändå röja patientens vårdbehov. Om en invånare till exempel har bokad tid hos en psykologmottagning, kommer detta att kunna konstateras genom informationen i engagemangsindex.

Informationen i nationell instans av engagemangsindex får inte spridas till lokala instanser så uppdateringsriktningen är enbart från lokal till nationell instans. Detta på grund av att ägarskapet av informationen i nationell instans är delat mellan många informationsägare och det krävs personuppgiftsavtal mellan parterna om en informationsägare ska ta del av en annan informationsägares information.

## Personuppgiftsansvar

Varje post ska innehålla information om personuppgiftsansvarig organisation. Det anges i fältet Data Controller. Om ett källsystem betjänar flera personuppgiftsansvariga organisationer ska källsystemet säkerställa att Engagemangsindexposterna speglar detta så att antalet Engagemangsindexposter blir det samma som om varje PU-ansvarig organisation hade använt ett eget källsystem.

Grundregeln är att personuppgiftsansvarig organisation anger ett värde i fältet Data Controller som möjliggör för dem att ta sitt ansvar och fullgöra sin roll som personuppgiftsansvarig för information i engagemangsindex.

## Personuppgiftsbehandlingens syfte och ändamål

Informationen i Engagemangsindex får endast använda i syfte att lokalisera informationskällor med avsikt att anropa dessa för att hämta den faktiska information som pekas ut av engagemangsindexposterna. Konsumenter av index får ignorera poster som anses irrelevanta men filtrering ska i första hand ske genom att konsumenten anger kriterier i anropet till indexets söktjänst. Informationen i Engagemangsindex får alltså inte utsökas eller bearbetas i annat syfte, eller lagras undan för framtida bearbetning. Det gäller oavsett om sökning sker med hjälp av FindContent-interaktionen eller indirekt via användning av aggregerande tjänster i en tjänsteplattform.

## Nationella Krav och Regler

Regler kring användning som uttrycks i detta dokument gäller för den av Inera förvaltade nationella instansen som innehåller information från flera huvudmän.

* Användningen av FindContent i den nationella instansen av engagemangsindex är begränsad till aggregerande tjänster i den nationella tjänsteplattformen.
* Användning av ProcessNotification i nationell instans avgränsas till att agera producent för att ta emot information från andra index.

## Lokala Krav och Regler

Eftersom Engagemangsindex som stödtjänst kan finnas i flera olika instanser och dessa kan ha olika omfattning gällande huvudmän så kan varje instans definiera egna regler för hur instansen får användas.

## Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.

Vid ett logiskt fel i de uppdaterande tjänsterna levereras ResultCode och comment.

ResultCode kan vara:

| Kod | Beskrivning |
|-----|-------------|
| OK | Transaktionen har utförts enligt uppdraget i frågemeddelandet. |
| INFO | Transaktionen har utförts enligt uppdraget i frågemeddelandet, men det finns ett meddelande med ytterligare information. |
| ERROR | Transaktionen har INTE kunnat utföras enligt uppdrag i frågemeddelandet p.g.a. logiskt fel. |

De logiska fel som skall returneras finns beskrivna under övriga regler för respektive kontrakt.

## Icke funktionella krav

### SLA krav

SLA anges av respektive systeminstans.
