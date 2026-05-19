## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt sneare i dokumentet.

### Informationssäkerhet och juridik

#### Krav på en tjänsteproducent

##### Informationssäkerhet
De flesta tjänstekontrakt i domänen hanterar känslig information och klassas som patientuppgifter.
Detta betyder att de krav som PDL (Patient Data Lagen) ställer på hur informationen hanteras skall beaktas.

#### Krav på en tjänstekonsument

##### Informationssäkerhet
De flesta tjänstekontrakt i domänen hanterar känslig information och klassas som patientuppgifter.
Detta betyder att de krav som PDL (Patient Data Lagen) ställer på hur informationen hanteras skall beaktas när hälso- och sjukvårdspersonal är mottagare av denna information. I dagsläget hämtas kan endast en vårdenhet hämta sin egen information. I samband med detta görs åtkomstkontroll i NTJP för dessa tjänster.
Flera av tjänsterna är riktade att användas av en invånare där syftet är att hantera sina intyg.

##### Stark autentisering
En inloggad användare från hälso- och sjukvården skall vara starkt autentiserad med SITHS-kort eller motsvarande nivå av säkerhet i systemet.
En inloggad invånare skall vara starkt autentiserad med eLegitimation eller motsvarande nivå i systemet.

### Felhantering
Ett logisk fel returneras i ett response (result) och anger om anropet lyckades eller ej (resultCode). Ett lyckad anrop motsvaras av OK eller INFO. Om INFO returneras finns mer information som anger under vilka specifika omständigheter anropet ansågs vara lyckat av mottagaren.
Ett tekniskt fel returnerar ett SoapFault.

#### Logiska fel
Då felkoden ERROR returneras (resultCode) skall typen av fel returneras i errorId. Denna kan vara av 4 huvudtyper som skall tolkas enligt följande:
VALIDATION_ERROR
Informationsmängden som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande errorText kan närmare peka på vilken regel som ej efterföljts.
En omsändning av information kommer att ge samma fel.
TRANSFORMATION_ERROR
Informationsmängden som skickats kan ej översättas till mottagande systems format. Denna felkod kan uppträda i inledande tester av tjänstekontrakten och skall ej finnas vid produktionsklara system.
En omsändning av information kommer att ge samma fel.
APPLICATION_ERROR
Ett fel inträffade när informationen togs emot av det mottagande systemet. Denna felkod skickas av det mottagande systemet och mer information om felet skall skickas i fältet errorText.
En omsändning av informationen kan lyckas beroende på typ av fel.
TECHNICAL_ERROR
Ett fel inträffade som inte har med skickad information att göra. Denna typ av fel kan fås om mottagande system ej svarar (time-out) eller liknande fel.
En omsändning av informationen bör göras enligt ett förutbestämt schema, dock med ett begränsat antal försök.

#### Tekniska fel (SoapFault)
Denna typ av fel kan likställas vid ovanstående tekniska fel. En omsändning av informationen bör göras enligt ett förutbestämt schema, dock med ett begränsat antal försök.

### Krav på en tjänstekonsument

#### Omsändning vid fel
En strategi för omsändning av anrop bör finnas i de fall en tjänstekonsument agerar som en proxy för att system. Dvs ansvaret för att anrop genomförs har delegerats till denna proxy.
Omsändningstrategin skall innehålla ett begränsat antal försök under ett ökande tidsintervall. Dessutom skall den endast tillämpas vid tekniska fel eller vid logiska fel av typen TECHNICAL_ERROR.

#### Felhantering
Då alla tjänster används synkront är det tjänstekonsumenten som ansvarar för att tolka fel i samband med kommunikation korrekt.
Följande krav skall beaktas då system agerar som tjänsteproducenter och tjänstekonsumenter för tjänstedomänens ingående tjänster.

### Krav på en tjänsteproducent

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Alla information skall alltid vara uppdaterad. |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

