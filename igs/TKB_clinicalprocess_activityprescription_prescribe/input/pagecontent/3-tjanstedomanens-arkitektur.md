## Tjänstedomänens arkitektur
Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden – översikt
Tjänsteinteraktionerna stödjer ett antal grundläggande användningsfall för hantering av patientens läkemedelsbehandlingar, ordination och förskrivning enligt följande översikt.

![img_001.png](images/img_001.png)
Översikt användningsfall för Samlad läkemedelslista (ordinatörens perspektiv).
Utgående från patientens läkemedelslista kan ordinatör/förskrivare göra nödvändiga justeringar i behandlingarna och även hantera att utfärda och dra tillbaka (makulera) expedieringsunderlag. Expedieringsunderlagen skickas automatiskt till (om man inte annat angivit) till Receptregistret så att det blir tillgängligt för farmaceuten på apoteket. På så vis kan en mer sammanhållen ordinationsprocess erhållas i vårdsystemet.
Notera att i professionens perspektiv ingår alla användningsfall och interaktioner; för patienten ingår att läsa sin egen samlade läkemedelslista.
I bilden har vit färg används för att indikera att det finns en interaktion via ett tjänstekontrakt som används för att stödja användningsfallet. Notera att flera av användarfunktionerna kan samutnyttja samma tjänstekontrakt.
Användningsfallen ur ett funktionellt/användarperspektiv beskrivs i [R4].

### Läsa patientens samlade läkemedelslista

#### Förutsättningar
Arbetsflödet förutsätter att
Användaren har identifierats i vårdinformationssystemet med s.k. stark autentisering.

#### Arbetsflöde

![img_002.png](images/img_002.png)

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Val av patient | Patientval baserat på vilka patienter vårdinformationssystemet tillgängliggör för användaren. Hälso- och sjukvårdspersonal måste ha en vårdrelation till personen som väljs. |
| Hantera samtycke till direktåtkomst inom sammanhållen journalföring | Kontrollera och vid behov registrera samtycke att ta del av patientens information från andra vårdgivare inom begreppet sammanhållen journalföring. Det är vårdgivaren där Hälso- och sjukvårdspersonalen har uppdrag som måste säkerställa att de har patientens samtycke. 
Om samtycke ej kan inhämtas får nödsituation åberopas om förutsättningar för detta enligt SOSFS2008:14 är uppfyllda.
Not: se tjänstedomänen riv:ehr:patientconsent |
| Välj visa patientens samlade läkemedelslista | Vårdinformationssystemet kontrollerar användarens behörighet för åtgärden som avbryts om behörighet saknas. Verksamhetschef är ansvarig för att korrekt behörighet tilldelas personalen. / Vårdinformationssystemet hämtar patientens läkemedelsordinationer och förskrivningar från Tjänsteproducenten. Användaren/Tjänstekonsumenten kan t.ex. styra hur mycket historiska data som ska hämtas från Tjänsteproducenten. |
| Filtrera bort spärrade uppgifter | Vårdinformationssystemet ansvarar för att filtrera ordinationslistan utifrån regelverket för spärr och samtycke. 
Patientens spärrlista ska hämtas från Spärrtjänst (se riv:ehr:blocking).
Om patienten har begärt spärr ska spärrkontroll och eventuell filtrering av läkemedelsordinationerna göras. Hänsyn ska tas dock till om patienten gjort undantag för läkemedelsinformation i spärren. / Om samtycke saknas och nödsituation inte åberopats, får endast ordinationer registrerade hos Hälso- och sjukvårdspersonalens egen vårdgivare visas. |
| Hämta info om läkemedlen Kontrollera om interaktioner eller andra varningar | Vårdinformationssystemet hämtar kompletterande artikelinformation från SIL för de ordinerade läkemedlen. 
Kontroll mot SIL gällande varningar (interaktions-, graviditets-, ålder- och dublettvarningar) ska utföras. |
| Visa ordinationslista med eventuella varningar | Den samlade aktuella läkemedelslistan visas för Hälso- och sjukvårdspersonalen inklusive eventuella varningar.
Kompletterande information är möjlig genom att t.ex. koppla vidare till texter i FASS. |
| Logga åtkomst | Vårdinformationssystemet ansvarar för att åtgärden att visa den samlade läkemedelslistan loggas i en loggfunktion som medger uppföljning enligt PDL/SOSFS2008:14. |

#### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som tar del av tidigare gjorda ordinationer för en viss patient. |
| Vårdinformationssystem | Det system som hälso- och sjukvårdspersonalen använder i flödet och som agerar Tjänstekonsument relativt tjänstekontraktet. |

#### Sekvensdiagram

![img_003.png](images/img_003.png)

### Visa uthämtade läkemedel (expedieringar)

#### Förutsättningar
Arbetsflödet förutsätter att
Användaren har identifierats i vårdinformationssystemet med s.k. stark autentisering.

#### Arbetsflöde

![img_004.png](images/img_004.png)

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Läsa patientens samlade läkemedelslista | Se flöde Läsa patientens samlade läkemedelslista. |
| Kontrollera behörighet & samtycke | Vårdinformationssystemet kontrollerar användarens behörighet för åtgärden som avbryts om behörighet saknas. Verksamhetschef är ansvarig för att korrekt behörighet tilldelas personalen. / Vårdinformationssystemet kontrollerar om det existerar ett samtycke för användaren att läsa patientens uthämtade läkemedel från Läkemedelsförteckningen. Om inte, så måste användaren inhämta samtycke från patienten, om samtycket är tillsvidare så registrerar systemet detta. / Om samtycke ej kan inhämtas får nödsituation åberopas om förutsättningar för detta enligt SOSFS2008:14 är uppfyllda. |
| Hämta information om uthämtade läkemedel | Vårdinformationssystemet hämtar expedieringar från Läkemedelsförteckningen och anger typen av samtycke som ska användas för åtkomst. Om varningsnivån för antal slagningar är uppnådd så bör systemet visa upp ett meddelande, då fortsatt läsning från Läkemedelsförteckningen leder till temporär avstängning av användaren. |
| Logga åtkomst | Vårdinformationssystemet ansvarar för att åtgärden att visa den samlade läkemedelslistan loggas i en loggfunktion som medger uppföljning enligt PDL/SOSFS2008:14. |

#### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som tar del av expedieringar för en viss patient. |
| Vårdinformationssystem | Det system som hälso- och sjukvårdspersonalen använder i flödet och som agerar Tjänstekonsument relativt tjänstekontraktet. |

### Skapa/ändra läkemedelsbehandling

#### Förutsättningar
Arbetsflödet förutsätter att
Användaren har identifierats i vårdinformationssystemet med s.k. stark autentisering.

#### Arbetsflöde

![img_005.png](images/img_005.png)

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Val av patient | Patientval baserat på vilka patienter vårdinformationssystemet tillgängliggör för användaren. Hälso- och sjukvårdspersonal måste ha en vårdrelation till personen som väljs. |
| Läs patientens samlade läkemedelslista | Se flöde Läsa patientens samlade läkemedelslista. |
| Skapa ordination | Vårdinformationssystemet kontrollerar användarens behörighet för åtgärden som avbryts om behörighet saknas. Verksamhetschef är ansvarig för att korrekt behörighet tilldelas personalen. / Användaren kan antingen välja att ändra en existerande läkemedelsbehandling genom en ny ordination, eller att skapa en ny läkemedelsbehandling. Användaren anger läkemedel, styrka, form, dosering, insättningstid mm och skapar sen en eller flera nya ordinationer inom samma behandling. Om önskat kan även nya expedieringsunderlag skapas. |
| Läs/visa uppdaterad läkemedelslista | Vårdinformationssystemet visar upp uppdaterad läkemedelslista för användaren baserat på nya ordinations- och expedieringsunderlagsobjekt som returneras från Tjänsteproducenten. |

#### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som skapar en eller flera nya ordinationer. |
| Vårdinformationssystem | Det system som hälso- och sjukvårdspersonalen använder i flödet och som agerar Tjänstekonsument relativt tjänstekontraktet. |

### Registrera/bekräfta ordination baserat på löst expedieringsunderlag

#### Förutsättningar
Arbetsflödet förutsätter att
Användaren har identifierats i vårdinformationssystemet med s.k. stark autentisering.

#### Arbetsflöde

![img_006.png](images/img_006.png)

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Val av patient | Patientval baserat på vilka patienter vårdinformationssystemet tillgängliggör för användaren. Hälso- och sjukvårdspersonal måste ha en vårdrelation till personen som väljs. |
| Läsa patientens samlade läkemedelslista | Se flöde Läsa patientens samlade läkemedelslista. |
| Registrera/bekräfta ordination | Vårdinformationssystemet kontrollerar användarens behörighet för åtgärden som avbryts om behörighet saknas. Verksamhetschef är ansvarig för att korrekt behörighet tilldelas personalen. / Användare väljer om expedieringsunderlag ska kopplas till en existerande behandling, eller om en ny behandling ska skapas (se flödet Skapa ny behandling). Vårdinformationssystemet kopplar expedieringsunderlaget till läkemedelsbehandlingen. |
| Läs/visa uppdaterad läkemedelslista | Vårdinformationssystemet visar upp uppdaterad läkemedelslista för användaren. |

#### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som bekräftar/registrerar ny ordination. |
| Vårdinformationssystem | Det system som hälso- och sjukvårdspersonalen använder i flödet och som agerar Tjänstekonsument relativt tjänstekontraktet. |

### Sätt ut läkemedelsbehandling

#### Förutsättningar
Arbetsflödet förutsätter att
Användaren har identifierats i vårdinformationssystemet med s.k. stark autentisering.

#### Arbetsflöde

![img_007.png](images/img_007.png)

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Val av patient | Patientval baserat på vilka patienter vårdinformationssystemet tillgängliggör för användaren. Hälso- och sjukvårdspersonal måste ha en vårdrelation till personen som väljs. |
| Välj behandling | Användaren väljer vilken av patientens läkemedelsbehandlingar som ska avslutas. |
| Sätt ut behandling | Användaren anger strukturerad utsättningsorsak och eventuellt en utsättningstidpunkt (om ej momentan utsättning). Vårdinformationssystemet skapar ny ordination med samma information som tidigare gällande ordination, men med ny utsättningstidpunkt. För en momentan utsättning så är ordinationens insättningstidpunkt och utsättningstidpunkt samma. / Om användaren väljer att makulera alla expedieringsunderlag i behandlingen så görs detta dels i NOD, och dels i receptdepån (om förskrivning med e-recept gjorts). Makuleringen sker momentant, även om ett framtida utsättningsdatum för behandlingen angetts. |
| Visa uppdaterad läkemedelslista | Vårdinformationssystemet visar upp en uppdaterad läkemedelslista för användaren baserad på ny ordinationsinformation som returnerats i anrop mot tjänst. |

#### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som sätter ut en läkemedelsbehandling. |
| Vårdinformationssystem | Det system som hälso- och sjukvårdspersonalen använder i flödet och som agerar Tjänstekonsument relativt tjänstekontraktet. |

### Registrera expedieringsunderlag

#### Förutsättningar
Arbetsflödet förutsätter att
Användaren har identifierats i vårdinformationssystemet med s.k. stark autentisering.

#### Arbetsflöde

![img_008.png](images/img_008.png)

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Val av patient | Patientval baserat på vilka patienter vårdinformationssystemet tillgängliggör för användaren. Hälso- och sjukvårdspersonal måste ha en vårdrelation till personen som väljs. |
| Registrera expedieringsunderlag | Vårdinformationssystemet kontrollerar användarens behörighet för åtgärden som avbryts om behörighet saknas. Verksamhetschef är ansvarig för att korrekt behörighet tilldelas personalen. / Om expedieringsunderlag ska skapas baserat på ordination i NOD hämtar Vårdinformationssystemet patientens läkemedelsordinationer från Tjänsteproducenten. Användaren kan sedan välja vilken ordination som expedieringsunderlaget ska baseras på. Om expedieringsunderlaget ska skapas fristående behövs inte detta. Användaren anger då läkemedel, styrka etc. |

#### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som skapar expedieringsunderlaget. |
| Vårdinformationssystem | Det system som hälso- och sjukvårdspersonalen använder i flödet och som agerar Tjänstekonsument relativt tjänstekontraktet. |

### Makulera expedieringsunderlag

#### Förutsättningar
Arbetsflödet förutsätter att
Användaren har identifierats i vårdinformationssystemet med s.k. stark autentisering.

#### Arbetsflöde

![img_009.png](images/img_009.png)

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Val av patient | Patientval baserat på vilka patienter vårdinformationssystemet tillgängliggör för användaren. Hälso- och sjukvårdspersonal måste ha en vårdrelation till personen som väljs. |
| Välj expedieringsunderlag | Vårdinformationssystemet kontrollerar användarens behörighet för åtgärden som avbryts om behörighet saknas. Verksamhetschef är ansvarig för att korrekt behörighet tilldelas personalen. / Användaren väljer expedieringsunderlag att makulera, antingen genom information som Vårdinformationssystemet hämtar från NOD, eller i fallet med lösa recept, alternativt med information som Vårdinformationssystem har lagrat lokalt. / Användaren väljer sen makuleringsorsak utifrån de orsaker som finns definerade av E-hälsomyndigheten. |

#### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal | Den hälso- och sjukvårdspersonal som makulerar expedieringsunderlag. |
| Vårdinformationssystem | Det system som hälso- och sjukvårdspersonalen använder i flödet och som agerar Tjänstekonsument relativt tjänstekontraktet. |

### Patienten läser sin egen läkemedelslista

#### Förutsättningar
Arbetsflödet förutsätter att
Användaren har identifierats i vårdinformationssystemet med s.k. stark autentisering.

#### Arbetsflöde

![img_010.png](images/img_010.png)

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Välj visa min läkemedelslista | Vårdinformationssystemet hämtar patientens läkemedelsordinationer och förskrivningar från Tjänsteproducenten och visar upp för användaren. |

#### Roller

| Namn/beteckning | Beskrivning |
| :--- | :--- |
| Patient | Den patient som tar del av de tidigare gjorda ordinationer som är registrerade för patienten. |
| Vårdinformationssystem | Det system som patienten använder i flödet och som agerar Tjänstekonsument relativt tjänstekontraktet. |

### Aggregering och engagemangsindex
Inte applicerbart då domänen inte nyttjar stödtjänsterna aggregerade tjänster eller engagemangsindex.

