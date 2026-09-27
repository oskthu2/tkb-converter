## Tjänstedomänens meddelandemodeller

### V-MIM
Se informationsspecifikationen för informationsmodell och klasser [R3].
Meddelandeinformationsmodellen följer i grunden Skatteverkets Navets informationsstruktur, förutom de tillägg som finns i domänen, ex kring personens kontaktuppgifter och tillägg för att hantera reservidentiteter. Mappning till Skatteverkets attribut/termer återfinns i Informationsspecifikationen.

### Formatregler

#### Personidentitet
Personidentitet anges på formatet ÅÅÅÅMMDDXXXX. Samma format gäller för olika typer av personidentiteter(Personnummer och samordningsnummer), dvs 12 tecken. Den nationella reservidentiteten anges enligt formatbeskrivningen [R13].

#### Datum
Domänen använder sig av en datumtyp som är ett ofullständigt datum (PartialDate) där man inte alltid vet det exakta datumet utan bara vet månaden eller året för händelsen. Tillåtna format är "YYYY-MM-DD", "YYYY-MM" och "YYYY".

#### Datum och Tid
Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss” enligt RFC 3339 [R5]. Exempel: 2010-11-26T09:12:33. W3C-datatypen dateTime används i tjänstekontrakten för att realisera detta.
Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYY-MM-DD”. W3C-datatypen date används i tjänstekontrakten för att realisera detta.

#### Tidszon
Om inte tidszon anges i kommunikation med tjänsterna ska man förutsätta att det är tidszon i Sverige vid den tidpunkt som respektive datum eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid) om inte tidszon anges, se W3C-dataypen dateTime.

#### Landskod
Kod för land anges om inget annat specificeras enligt ISO 3166-1 alpha-2.

### Profiler
Alla tillämpningar har inte samma behov av personinformation. Det är önskvärt att tillåta begäran av olika delmängder av informationen för olika ändamål, bl.a. av prestandaskäl.
Vissa kontrakt använder sig därför av profiler för att inte skicka tillbaka onödigt mycket data till tjänstekonsumenten. Tjänstekonsumenten anger önskad profil i anropet. Se vidare i kapitel 8 för aktuella

