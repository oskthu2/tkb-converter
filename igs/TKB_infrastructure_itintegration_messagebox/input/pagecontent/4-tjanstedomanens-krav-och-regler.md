# 4 Tjänstedomänens krav och regler

Källa: *Tjänstekontraktsbeskrivning Meddelandetjänst*, version 1.0.0 (2013-12-04), [Tjanstekontrakt_Meddelandetjanst_Beskrivning.doc](Tjanstekontrakt_Meddelandetjanst_Beskrivning.doc).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

#### 4.1.1 Krav på en tjänsteproducent

##### 4.1.1.1 Informationssäkerhet

De flesta tjänstekontrakt i domänen hanterar känslig information och klassas som patientuppgifter.

Detta betyder att de krav som PDL (Patient Data Lagen) ställer på hur informationen hanteras skall beaktas. En tjänsteproducent ger åtkomst till sina tjänster genom avtal som Tjänsteplattformen hanterar och verkställer för en tjänstekonsument.

#### 4.1.2 Krav på en tjänstekonsument

##### 4.1.2.1 Informationssäkerhet

De flesta tjänstekontrakt i domänen hanterar känslig information och klassas som patientuppgifter.

Detta betyder att de krav som PDL (Patient Data Lagen) ställer på hur informationen hanteras skall beaktas när hälso- och sjukvårdspersonal är mottagare av denna information. I dagsläget kan en tjänstekonsument komma åt alla meddelanden i Meddelandetjänsten efter att behörighet givits. Därför är det av största vikt att endast meddelanden avsedda för de verksamheter som Tjänstekonsumenten representerar hämtas och tas bort från tjänsten. En tjänstekonsument representeras alltid av ett system och därmed inte av en inloggad användare.

### 4.2 Felhantering

Ett logisk fel returneras i ett response (result) och anger om anropet lyckades eller ej (resultCode). Ett lyckad anrop motsvaras av OK eller INFO. Om INFO returneras finns mer information som anger under vilka specifika omständigheter anropet ansågs vara lyckat av mottagaren.

Ett tekniskt fel returnerar ett SoapFault.

#### 4.2.1 Logiska fel

Då felkoden ERROR returneras (resultCode) skall typen av fel returneras i errorId. Idag finns det definierat 2 errorId:

- 1 = INTERNAL

Ett internt fel inträffade i tjänsten. Ytterligare information om felet kan finnas i fältet errorText.

- 2 = UNREAD_DELETE

Ett försök gjordes att ta bort ett meddelande som ej tidigare hämtats.

#### 4.2.2 Tekniska fel (SoapFault)

Denna typ av fel kan likställas vid ovanstående tekniska fel. En omsändning av informationen bör göras enligt ett förutbestämt schema, dock med ett begränsat antal försök.

### 4.3 Krav på en tjänstekonsument

#### 4.3.1 Omsändning vid fel

En strategi för omsändning av anrop bör finnas i de fall en tjänstekonsument agerar som en proxy för att system. Dvs ansvaret för att anrop genomförs har delegerats till denna proxy.

Omsändningstrategin skall innehålla ett begränsat antal försök under ett ökande tidsintervall. Dessutom skall den endast tillämpas vid tekniska fel.

### 4.4 Krav på en tjänsteproducent

#### 4.4.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
|---|---|---|
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Alla information skall alltid vara uppdaterad. |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
