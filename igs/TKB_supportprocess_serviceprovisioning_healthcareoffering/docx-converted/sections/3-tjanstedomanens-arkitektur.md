## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden

#### Hämta utbudsinformation
Detta flöde beskriver behovet av att hämta en lista på tillgängliga utbud som finns som en katalogansvarig organisation tillhandahåller. Med katalogansvarig organisation menas den organisation som är ansvarig för innehållet i utbudskatalogen. Detta behöver göras innan man hämtar vård- och omsorgstjänster från en viss utbudskatalog (se flöde Hämta Vård- och omsorgstjänster).

##### Arbetsflöde

![img_004.png](images/img_004.png)

###### Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Tjänstekonsument | System som begär information om katalogansvariga organisationer |
| Tjänsteproducent | System som svarar på förfrågan |

##### Sekvensdiagram

![img_002.png](images/img_002.png)

#### Sök vård- och omsorgstjänster
Denna flödesbeskrivning visar processen för en användare (hälso- och sjukvårdspersonal, invånare etc.) som har behov av att hitta enheter som erbjuder en viss typ av vård- och omsorgstjänst. Exempel på vård- och omsorgstjänst kan vara ”Tonsillektomi” på Sophiahemmet eller ”Psykoterapi” på Capio Citykliniken Malmö Centrum. Innan vård- och omsorgstjänster hämtas behöver flödet för att hitta utbudsinformation tillämpas (se flöde Hitta utbudsinformation).

##### Arbetsflöde

![img_001.png](images/img_001.png)

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| 1. Behov av att hitta vård- och omsorgstjänst | Det finns behov av att hitta utförare inom hälso- och sjukvården eller inom socialtjänsten som kan erbjuda en typ av vård- och omsorgstjänst. / Det kan exempelvis vara en remittent som ska remittera en patient och som därmed har behov av att hitta en remissmottagare som erbjuder en viss typ av vård- och omsorgstjänst. / Det kan även vara en invånare som är i behov av att ta prover och behöver hitta en vårdenhet som utför denna provtagning eller att hitta närmaste akutsjukvård. / Enligt patientlagen (2014:821) ska patienten ha möjlighet att välja var i landet denne ska få vård. / 9 kap. Val av Utförare - 1 § En patient som omfattas av en regions ansvar för hälso- och sjukvård ska inom eller utom denna region få möjlighet att välja utförare av offentligt finansierad öppen vård.

Exempel på information som det kan finnas behov av att hitta för en hälso- och sjukvårdspersonal: / vilka tider en viss aktivitet utförs på / vilka specialistmottagningar i landet som erbjuder en specifik typ av vård- och omsorgstjänst / vilka väntetider som finns för en viss vård- och omsorgstjänst / vilka kompetenser som finns att tillgå där en vård-och omsorgstjänst erbjuds, exempelvis psykolog, arbetsterapeut / vilken (medicinteknisk) utrustning som en vård- och omsorgstjänst kan erbjuda, exempelvis bassäng / om det finns en vård- och omsorgstjänst som kan erbjudas digitalt / om det finns några störningar som gör att en vård- och omsorgstjänst inte är tillgänglig under en viss period / vilken postadress en remiss ska skickas till om det ej går att skicka elektroniskt / Exempel på information som det kan finnas behov av att hitta för en invånare: / när, var och hur det går att få kontakt med primärvård som erbjuder vaccination mot säsongsinfluensa / om ett barn kan tas emot av en specialistmottagning som utför hörselkontroll / vilka tider en aktivitet utförs på / om en tjänst kan erbjudas digitalt och i så fall hur den nås / vilka specialistmottagningar i landet som erbjuder en specifik typ av vård- och omsorgstjänst / vilka väntetider som finns för en viss vård- och omsorgstjänst / hur bra bedömningar en mottagning har fått av andra invånare |
| 2. Sök vård- och omsorgstjänst | Personen som är i behov av att hitta en lämplig utförare av en viss typ av vård- och omsorgstjänst, gör en sökning. Information att filtrera på: / typ av vård- och omsorgstjänst / om vård- och omsorgstjänsten erbjuds virtuellt eller fysiskt / vilken organisatorisk enhet som erbjuder vård- och omsorgstjänsten / vilken verksamhet som bedrivs / vilket kön invånaren har / vilken ålder invånaren har / om invånaren har några andra egenskaper (exempelvis i graviditetsvecka 32) / önskat län och/eller kommun / geografiska koordinater + en viss radie från koordinaterna / vilken roll personen har som gör sökningen / vilket språk personen som söker önskar få svar på / om den katalogansvariga organisationen är offentlig huvudman eller ej |
| 3. Visa sökresultat | Baserat på den gjorda sökningen, ges ett svar tillbaka som matchar sökkriterierna. / En sökning som inte motsvarar förväntningarna korrigeras och en ny sökning görs. / Mer detaljerad information läses för att vidare kunna avgöra om den valda enheten och den vård- och omsorgstjänst som erbjuds motsvarar det behov som finns. Om inte, görs en ny sökning. |
| 5.Val av utförare och typ av vård- och omsorgstjänst | Då personen som letar efter utförare av en typ av vård- och omsorgstjänst hittar någon som motsvarar det efterfrågade fortsätter den aktuella processen. 

För en remittent kan detta innebära att skicka en remiss till den som erbjuder en vårdtjänst. / För en invånare kan det innebära att besöka akutmottagningen som bäst matchar den gjorda sökningen, eller att brukaren väljer en utförare av beviljade insatser inom socialtjänsten. / Flöde för att skicka remisser finns beskrivet i informationsspecifikationen till remissdomänen [R8]: clinicalprocess:activity:request |

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Användare | Användare som önskar hitta en enhet som erbjuder efterfrågad vård- och omsorgstjänst. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekonsumenten skickar en fråga med tjänstekontraktet GetCareServiceOfferings till tjänsteproducenter av utbudsinformation. Vid behov görs ytterligare frågor med tjänstekontraktet GetCareServiceOfferings för att möjliggöra urval av vård- och omsorgstjänster med olika filtreringar. Information om väntetider och kvalitetsindikatorer [R12] kan vid behov inhämtas från tjänsteproducent av indikatorer (domän: followup:groupoutcomes:qualityreporting).

![img_006.tiff](images/img_006.tiff)

### Adressering
Domänen är systemadresserad där varje adress motsvarar ett system som tillhandahåller utbudsinformation för en eller flera katalogansvariga organisationer. Anledningen till att systemadressering används istället för verksamhetsbaserad adressering är att det medger att en katalogansvarig organisation kan ha utbud i flera system. Tjänsten GetOfferingCatalogues ger information om vilka system som hanterar utbudsinformation för vilka katalogansvariga organisationer.

#### Sammanfattning adressering

| Åtkomst till utbud av vårdtjänster | Logisk adress |
| :--- | :--- |
| GetOfferingCatalogues | Ineras HSA-id: SE165565594230-1000 |
| För en specifik katalogansvarig organisation | Den logiska adress som ges vid slagning mot GetOfferingCatalogues |

### Aggregering och engagemangsindex
Ej tillämpbart för denna tjänstedomän.
I de fall tjänstekonsument söker aggregerad information av utbud som erbjuds från olika katalogansvariga organisationer, används tjänsten GetOfferingCatalogues enligt ovan. Tjänstekonsumenten använder sedan tjänsten GetCareServiceOfferings för att hämta utbudsinformation hos de katalogansvariga organisationerna och svaren aggregeras av konsumenten själv på ett för ändamålet meningsfullt sätt.

