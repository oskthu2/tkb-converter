# 3 Tjänstedomänens arkitektur

Källa: *Tjänstekontraktsbeskrivning Vård- och omsorgsutbud*, version 3.0 (2023-04-25), [TKB_supportprocess_serviceprovisioning_healthcareoffering.docx](TKB_supportprocess_serviceprovisioning_healthcareoffering.docx).

Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### 3.1 Flöden

#### 3.1.1 Hämta utbudsinformation

Detta flöde beskriver behovet av att hämta en lista på tillgängliga utbud som finns som en katalogansvarig organisation tillhandahåller. Med katalogansvarig organisation menas den organisation som är ansvarig för innehållet i utbudskatalogen. Detta behöver göras innan man hämtar vård- och omsorgstjänster från en viss utbudskatalog (se flöde Hämta Vård- och omsorgstjänster).

##### 3.1.1.1 Arbetsflöde

![Arbetsflöde](img_004.png)

###### 3.1.1.1.1 Roller

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| Tjänstekonsument | System som begär information om katalogansvariga organisationer |
| Tjänsteproducent | System som svarar på förfrågan |

##### 3.1.1.2 Sekvensdiagram

![Sekvensdiagram](img_002.png)

#### 3.1.2 Sök vård- och omsorgstjänster

Denna flödesbeskrivning visar processen för en användare (hälso- och sjukvårdspersonal, invånare etc.) som har behov av att hitta enheter som erbjuder en viss typ av vård- och omsorgstjänst. Exempel på vård- och omsorgstjänst kan vara ”Tonsillektomi” på Sophiahemmet eller ”Psykoterapi” på Capio Citykliniken Malmö Centrum. Innan vård- och omsorgstjänster hämtas behöver flödet för att hitta utbudsinformation tillämpas (se flöde Hitta utbudsinformation).

##### 3.1.2.1 Arbetsflöde

![Arbetsflöde](img_001.png)

| Namn/beteckning | Beskrivning alt. Referens |
| :--- | :--- |
| 1. Behov av att hitta vård- och omsorgstjänst | Det finns behov av att hitta utförare inom hälso- och sjukvården eller inom socialtjänsten som kan erbjuda en typ av vård- och omsorgstjänst.<br/>Det kan exempelvis vara en remittent som ska remittera en patient och som därmed har behov av att hitta en remissmottagare som erbjuder en viss typ av vård- och omsorgstjänst.<br/>Det kan även vara en invånare som är i behov av att ta prover och behöver hitta en vårdenhet som utför denna provtagning eller att hitta närmaste akutsjukvård.<br/>Enligt patientlagen (2014:821) ska patienten ha möjlighet att välja var i landet denne ska få vård.<br/>9 kap. Val av Utförare - 1 § En patient som omfattas av en regions ansvar för hälso- och sjukvård ska inom eller utom denna region få möjlighet att välja utförare av offentligt finansierad öppen vård.<br/>/ Exempel på information som det kan finnas behov av att hitta för en hälso- och sjukvårdspersonal:<br/>vilka tider en viss aktivitet utförs på<br/>vilka specialistmottagningar i landet som erbjuder en specifik typ av vård- och omsorgstjänst<br/>vilka väntetider som finns för en viss vård- och omsorgstjänst<br/>vilka kompetenser som finns att tillgå där en vård-och omsorgstjänst erbjuds, exempelvis psykolog, arbetsterapeut<br/>vilken (medicinteknisk) utrustning som en vård- och omsorgstjänst kan erbjuda, exempelvis bassäng<br/>om det finns en vård- och omsorgstjänst som kan erbjudas digitalt<br/>om det finns några störningar som gör att en vård- och omsorgstjänst inte är tillgänglig under en viss period<br/>vilken postadress en remiss ska skickas till om det ej går att skicka elektroniskt<br/>Exempel på information som det kan finnas behov av att hitta för en invånare:<br/>när, var och hur det går att få kontakt med primärvård som erbjuder vaccination mot säsongsinfluensa<br/>om ett barn kan tas emot av en specialistmottagning som utför hörselkontroll<br/>vilka tider en aktivitet utförs på<br/>om en tjänst kan erbjudas digitalt och i så fall hur den nås<br/>vilka specialistmottagningar i landet som erbjuder en specifik typ av vård- och omsorgstjänst<br/>vilka väntetider som finns för en viss vård- och omsorgstjänst<br/>hur bra bedömningar en mottagning har fått av andra invånare |
| 2. Sök vård- och omsorgstjänst | Personen som är i behov av att hitta en lämplig utförare av en viss typ av vård- och omsorgstjänst, gör en sökning. Information att filtrera på:<br/>typ av vård- och omsorgstjänst<br/>om vård- och omsorgstjänsten erbjuds virtuellt eller fysiskt<br/>vilken organisatorisk enhet som erbjuder vård- och omsorgstjänsten<br/>vilken verksamhet som bedrivs<br/>vilket kön invånaren har<br/>vilken ålder invånaren har<br/>om invånaren har några andra egenskaper (exempelvis i graviditetsvecka 32)<br/>önskat län och/eller kommun<br/>geografiska koordinater + en viss radie från koordinaterna<br/>vilken roll personen har som gör sökningen<br/>vilket språk personen som söker önskar få svar på<br/>om den katalogansvariga organisationen är offentlig huvudman eller ej |
| 3. Visa sökresultat | Baserat på den gjorda sökningen, ges ett svar tillbaka som matchar sökkriterierna.<br/>En sökning som inte motsvarar förväntningarna korrigeras och en ny sökning görs.<br/>Mer detaljerad information läses för att vidare kunna avgöra om den valda enheten och den vård- och omsorgstjänst som erbjuds motsvarar det behov som finns. Om inte, görs en ny sökning. |
| 5.Val av utförare och typ av vård- och omsorgstjänst | Då personen som letar efter utförare av en typ av vård- och omsorgstjänst hittar någon som motsvarar det efterfrågade fortsätter den aktuella processen.<br/>/ För en remittent kan detta innebära att skicka en remiss till den som erbjuder en vårdtjänst.<br/>För en invånare kan det innebära att besöka akutmottagningen som bäst matchar den gjorda sökningen, eller att brukaren väljer en utförare av beviljade insatser inom socialtjänsten.<br/>Flöde för att skicka remisser finns beskrivet i informationsspecifikationen till remissdomänen [R8]: clinicalprocess:activity:request |

###### 3.1.2.1.1 Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Användare | Användare som önskar hitta en enhet som erbjuder efterfrågad vård- och omsorgstjänst. |

##### 3.1.2.2 Sekvensdiagram

Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekonsumenten skickar en fråga med tjänstekontraktet GetCareServiceOfferings till tjänsteproducenter av utbudsinformation. Vid behov görs ytterligare frågor med tjänstekontraktet GetCareServiceOfferings för att möjliggöra urval av vård- och omsorgstjänster med olika filtreringar. Information om väntetider och kvalitetsindikatorer [R12] kan vid behov inhämtas från tjänsteproducent av indikatorer (domän: followup:groupoutcomes:qualityreporting).

![Sekvensdiagram](img_006.png)

### 3.2 Adressering

Domänen är systemadresserad där varje adress motsvarar ett system som tillhandahåller utbudsinformation för en eller flera katalogansvariga organisationer. Anledningen till att systemadressering används istället för verksamhetsbaserad adressering är att det medger att en katalogansvarig organisation kan ha utbud i flera system. Tjänsten GetOfferingCatalogues ger information om vilka system som hanterar utbudsinformation för vilka katalogansvariga organisationer.

#### 3.2.1 Sammanfattning adressering

| Åtkomst till utbud av vårdtjänster | Logisk adress |
| :--- | :--- |
| GetOfferingCatalogues | Ineras HSA-id: SE165565594230-1000 |
| För en specifik katalogansvarig organisation | Den logiska adress som ges vid slagning mot GetOfferingCatalogues |

### 3.3 Aggregering och engagemangsindex

Ej tillämpbart för denna tjänstedomän.

I de fall tjänstekonsument söker aggregerad information av utbud som erbjuds från olika katalogansvariga organisationer, används tjänsten GetOfferingCatalogues enligt ovan. Tjänstekonsumenten använder sedan tjänsten GetCareServiceOfferings för att hämta utbudsinformation hos de katalogansvariga organisationerna och svaren aggregeras av konsumenten själv på ett för ändamålet meningsfullt sätt.
