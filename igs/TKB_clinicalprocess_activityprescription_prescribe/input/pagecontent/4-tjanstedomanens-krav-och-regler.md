# 4 Tjänstedomänens krav och regler


## Informationssäkerhet och juridik


### Lagar och regler

I informationsspecifikationen [VIS_clinicalprocess_activityprescription_prescribe.docx] beskrivs de lagar och regler som är tillämpliga för informationen i sig.
Där framgår kortfattat att den information som upprättas och lagras i NOD utgör journalhandlingar och att åtkomst därmed regleras av Patientdatalag och Socialstyrelsens föreskrifter och handbok (2008:14).  Vidare att tjänsterna dessutom tillhandahåller information från bakomliggande datakällor som e-hälsomyndigheten ansvarar för; Receptdepån och Läkemedelsförteckningen (LF) vars åtkomst regleras av Receptregisterlagen och Lag om läkemedelsförteckning. Regelverk för användning av läkemedelsförteckningen är beskrivna i e-hälsomyndighetens Handbok för vårdaktörer, del 2 –  Läkemedelsförteckning (i dagligt tal kallad  ”Handboken”).

### Krav på tjänstekonsumenten

Tjänstekonsumenter (vårdinformationssystemet) måste ansvara för följande vid åtkomst av journalhandlingar:
- Att medarbetaren är starkt autentiserad om medarbetarens inloggning sker i nät som delas med flera vårdgivare.
- Att medarbetaren måste knytas till aktuell vårdenhet och vårdgivare enligt PDL för att registreringar och läsningar ska kunna relateras till rätt ansvarig enhet.
- Att kontrollera användarens behörighet till information och funktion som tillgängliggörs via tjänsterna.
- Att spärrkontroll genomförs innan information kan visas för en medarbetare med uppdrag utanför den journalförande vårdenheten.
- Att regelverket för samtycke och behov av uppgifterna måste följas.
Att regelverket för åtkomstloggning måste följas.
Vid åtkomst av information från e-hälsomyndigheten innebär det vidare att tjänstekonsumenter måste ansvara för följande:
- Att kontrollera att samtycke till läkemedelsförteckningen finns registrerat, och i förekommande fall tillhandahålla nödvändigt systemstöd för att inhämta och registrera sådant.
- Att regelverket i ”Handboken” följs vid de tjänstekonsumenter som visar information från läkemedelsförteckningen har ansvar för att följa
- Att kontrollera att samtycke till läkemedelsförteckningen finns registrerat, och i förekommande fall tillhandahålla nödvändigt systemstöd för att inhämta och registrera sådant.
- Värt att känna till är också
- Att olika regelverk gäller för åtkomst i Receptdepån beroende på om patienten är registrerad som s.k. dos-patient eller inte. Läsning i receptdepån är i dagsläget endast tillåten för dos-patienter medan registrering är tillåten för båda kategorierna. Det finns följaktligen skäl för tjänstekonsumenten att skilja på dessa kategorier.
- Att det finns krav på fler uppgifter om användaren (Förskrivaren) vid användning av de tjänster som har åtkomst till information från e-hälsomyndighetens datakällor (både vid läsning och vid skrivning) än vad som är nödvändigt för information som enbart lagras i NOD.

### Krav på tjänsteproducenten

Lagrade journaluppgifter inom ramen för tjänsteproducent omfattas av lagens krav på att patienten kan begära (hos IVO) att hela eller delar av journalen förstörs, dvs. raderas.
I den förvaltning som ansvarar för tjänsteproducent för den journalförda samlade läkemedelslistan, ska det finnas rutiner för att hantera radering av uppgifter i NOD, om begäran om s.k. journalförstöring kommer från personuppgiftsansvarig vårdgivare med stöd av IVOs beslut.
Uppgifterna ska i dessa fall helt tas bort ur databas/system i NOD. Uppgifterna (t.ex. en läkemedelsbehandling) ska därefter inte alls returneras via tjänsteinteraktionerna. Notera att det finns därför inte några fält för ”borttagen-markering” eller dylikt i tjänstekontrakten. Exakt vad som tas bort i det aktuella fallet beror på beslutet vilket i sin tur påverkas av vilka uppgifter som behöver finnas kvar för vård av patienten.

### Informationens riktighet

Tjänsterna är utformade för att underlätta informationens riktighet genom att de så lång rimligt är utför funktioner som innebär samtidig ändring av eller urval av flera informationselement i samma tjänst.

### Konfidentialitet

All kommunikation med tjänsterna sker via TLS-krypterad förbindelse.

### Tillgänglighet

Kravet på tjänsternas tillgänglighet är högt och regleras av speciella SLA-krav.

## Ickefunktionella krav


### SLA

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.
Notera. Nedan krav är preliminära för att ge en fingervisning om kraven inom domänen. SLA-kraven för tillgänglighet, svarstider etc. ska detaljeras och regleras i Tjänsteavtal och kopplas till Leverantörens driftåtagande för tjänsteproducent.

| Kategori | Värde | Beskrivning |
| --- | --- | --- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7x365, 99,95% |  |
| Last | Anpassas efter aktuellt behov. Följs upp kontinuerligt och kapacitetsplanering görs inför varje ny anslutning och/eller införande i verksamheter. | Notera att användningsfrekvensen inte kommer vara jämn över dygnet utan toppar kommer finnas då antalet anrop är betydligt högre än snittet. Förväntad högre belastning 08:00 - 17:00 vardagar. |
| Aktualitet | Tjänsteproducenterna ska alltid returnera den senast sparade versionen av informationen i respektive informationskälla | Informationskällor inom domänen är  NOD (primär) Receptdepå Human  Läkemedelsförteckningen |
| Återställningstid | Maximalt 8 timmar | Vid katastrof, bortfall av hel hall eller dylikt. Hela systemet ska finnas i två separata datahallar. |
| Servicefönster | Tjänsteproducenterna ska kunna arbeta utan servicefönster. Om man måste ha servicefönster skall detta avtalas speciellt vid varje tillfälle. Vården måste då underrättas minst 10 dagar innan. |  |


### Avtal

Krav på tjänstekonsumenten (vårdsystemet) och tjänsteproducenten regleras i Tjänsteavtal mellan Kund som nyttjar tjänsten och Leverantören.
Leverantör som tillhandahåller tjänsteproducent för uppgifter från flera vårdgivare (normalfallet för tjänstedomänen), måste teckna personuppgiftsbiträdesavtal med personuppgiftsansvariga, alternativt med en förmedlande part som i sin tur tecknar personuppgiftsbiträdesavtal med personuppgiftsansvariga.
Följande krav skall beaktas då ett system agerar som en tjänsteproducent för tjänstedomänens ingående tjänster.
- Tjänsteproducenten ansvarar för att information endast lämnas ut till de tjänstekonsumenter som informationsägarna godkänt.

## Felhantering


### Krav på en tjänsteproducent


#### Logiska fel

Vid ett logiskt fel skall result.resultCode sättas till ERROR och result.errorCode enligt nedanstående tabell, om result.message innehåller ett meddelande så skall det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som skall returneras.

| Felkod | Värde | Beskrivning |
| --- | --- | --- |
| VALIDATION_ERROR | VALIDATION_ERROR | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| ACCESS_DENIED | ACCESS_DENIED | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| NOT_FOUND | NOT_FOUND | Angiven artifakt finns ej. Angiven tjänst utfördes ej. |
| ALREADY_EXISTS | ALREADY_EXISTS | Angiven artifakt finns redan. Angiven tjänst utfördes ej. |
| INVALID_STATE | INVALID_STATE | Angiven tjänst utfördes ej då tjänsten eller artifakten var i ett felaktigt tillstånd. |


#### Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

### Krav på en tjänstekonsument


#### Logiska fel

Inga krav på konsument.

#### Tekniska fel

Inga krav på konsument.

## Generell hantering av tidpunkter


### Registreringstidpunkt (registrationTime)

Den tidpunkt när en journalanteckning sparas i NOD. Sätts till "nu" av tjänsteproducenten vid anrop.

### Beslutstidpunkt (writeTime)

Tidpunkt då det medicinska beslutet fattades. Beslutstidpunkten måste vara efter eller lika med registreringstidpunkten. För att sätta beslutstidpunkten till samma tidpunkt som registreringstidpunkten så utelämnas elementet writeTime helt.

### Insättningstidpunkt (startTime)

För ordinationer gäller att insättningstidpunkten måste vara efter eller lika med med beslutstidpunkten. Vid utelämnande av elementet så sätts insättningstidpunkten till samma som beslutstidpunkten.

### Utsättningstidpunkt (endTime)

Tidpunkt då patienten ska avsluta behandling. För ordinationer gäller att utsättningstidpunkten måste vara efter eller lika med med insättningstidpunkten. Vid utelämnande av elementet så sätts utsättningstidpunkten till samma som beslutstidpunkten.

### Exempel

- Efterregistrering av ordination: beslutstidpunkt sätts till tidpunkt i förfluten tid (t.ex. 1 år sen), insättningstidpunkt sätts till samma som beslutstidpunkt och utsättningstidpunkt anges till 3 månader efter insättning. Registeringstidpunkt kommer bli "nu".
- Momentan insättning av tidsbegränsad ordination: besluts- och insättniningstidpunkt utelämnas, utsättningstidpunkt sätts till "nu" + 3 månader. Registeringstidpunkt kommer bli "nu".
Regel för innebördes ordning för tidpunkter: beslutstidpunkt <= insättningstidpunkt <= utsättningstidpunkt.

### Insättnings- och utsättningstidpunkters påverkan på expedieringsunderlag

- Vid insättning av ordination med dispenserat expedieringsunderlag i framtiden, så beaktas inte tidsdelen av tidpunkten när insättningsdatum för expedieringsunderlaget sätts.
- Vid utsättning av ordination med dispenserat expedieringsunderlag i framtiden, så beaktas inte tidsdelen av tidpunkten när makuleringsdatum för expedieringsunderlaget sätts. Expedieringsunderlaget kommer alltid makuleras kl 24 det datum som är specificerat i utsättningstidpunkten för ordinationen.