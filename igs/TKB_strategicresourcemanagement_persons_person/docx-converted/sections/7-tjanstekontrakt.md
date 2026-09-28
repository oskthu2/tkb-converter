## Tjänstekontrakt

### GetPersonsForProfile
Tjänst för att hämta uppgifter för 1..* personidentiteter.
Mängden data i svaret är dels beroende av den profil som efterfrågas, dels om personen har sekretessmarkering och/eller Skyddat folkbokföring eller ej. Se kap 8 för mer information.

#### Version
5.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Array med personidentiteter som efterfrågas. Maxantal 500 | 1..* |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för urval av returnerat data. | 1..1 |
| ignoreReferredIdentity | xs:Boolean | Om satt till true, ska producenten ignorera att följa och returnera eventuellt hänvisad huvudidentitet. Producenten ska returnera endast personposter på det sökta id:et | 1..1 |
| Svar |  |  |  |
| requestedPersonRecord | urn:riv:strategicresourcemanagement:persons:person:5:RequestedPersonRecordType | 1..* RequestedPersonRecord innehållande eventuella personposter för efterfrågade personidentiteter | 1..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - | - | - |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producentansvar | En producent skall alltid i svaret svara med requestedPersonalIdentity samt PersonRecord. / Vilket innebär att om konsumenten skickar in 3st personidentiteter men det endast finns 2st personposter som motsvarar anropet så skall likväl 3 svar erhållas, varav 1 i så fall med en tom PersonRecord. |
| #2 | Producentansvar | En producent ska alltid returnera huvudidentitetens personuppgifter om flaggan ignoreReferredIdentity är satt till False. Dvs en sökning på en reservidentitet skall returnera huvudidentitetens personuppgifter -om det finns en koppling mellan reservidentiteten och en huvudidentitet. |
| #3 | Producentansvar | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #4 | Konsument | Om testIndicator är satt till ”true” och anrop sker till produktionsdata (PROD) ska en konsument normalt kasta svaret.  Alternativt måste konsumenten ha förmåga att hantera testdata. |

##### Icke funktionella krav
Se kapitel 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
-

#### Annan information om kontraktet
-

### GetPersonsForProfileUnrestricted
Tjänst för att hämta uppgifter för 1..* personidentiteter.
Mängden data i svaret är beroende av den profil som efterfrågas. Denna tjänst är en utökning av GetPersonForProfile och levererar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.
För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.

#### Version
5.0

#### Fältregler
Se GetPersonForProfile.

#### Övriga regler
Se GetPersonForProfile.

### SearchPersonsForProfile
Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.
Mängden data i svaret är dels beroende av den profil som efterfrågas, dels angivna sökkriterier. Se kap 8 för mer information om profiler, bl.a om vad som gäller då personidentiteten har sekretessmarkering. Antalet personidentiteter som kan returneras synkront är begränsat till max 500st. Om resultatet överstiger 500 poster ska producenten avbryta sökningen och generera ett Soapfault med angivandet av lämplig feltext.
OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.
Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### Version
5.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| query | xs:String | Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning för frågespråk [R7]) | 1..1 |
| queryLanguage | xs:String | Anger syntax för element query | 1..1 |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för returnerat data (se kap 8) | 1..1 |
| Svar |  |  |  |
| personRecord | urn:riv:strategicresourcemanagement:persons:person:5:PersonRecordType | LookupResidentsResponse innehållande folkbokföringsposter för efterfrågat sökdata | 0..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - |  |  |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
|  |  |  |
| Allmänna regler | Allmänna regler | Allmänna regler |
| - |  |  |

##### Icke funktionella krav
Se kapitel 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
-

#### Annan information om kontraktet
För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

### SearchPersonsForProfileUnrestricted
Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.
Mängden data i svaret är dels beroende av den profil som efterfrågas, dels angivna sökkriterier. Se kap 8 för mer information om profiler. Denna tjänst är en utökning av SearchPersonsForProfile och returnerar samtliga efterfrågade personuppgifter oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.
För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.
Antalet personidentiteter som kan returneras synkront är begränsat till max 500st. Om resultatet överstiger 500 poster ska producenten avbryta sökningen och generera ett Soapfault med angivandet av lämplig feltext.
OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.
Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### Version
5.0

#### Fältregler
Se SearchPersonsForProfile.

#### Övriga regler
N/A

#### Annan information om kontraktet
För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

### SearchPersonsForProfileByOrder
Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. Denna tjänst tillskillnad från SearchPersonsForProfile returnerar endast ett orderId som sedan ska användas tillsammans med tjänsten GetFilesForOrderId för att få tillgång till resultatet av sökningen. Se sekvensschemat i kapitel 3.1.10.
Ett typiskt användningsfallet för denna tjänst är när man önskar få ut ett större antal personuppgifter baserat på sökparametrarna. T.ex för en screeningverksamhet (ex screening av bröstcancer) att kunna ta ut en population personer baserat på ålder, kön och län för att kalla dem till undersökning.
OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.
Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### Version
5.0  Notering: Se punkt 2.1.3

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| query | xs:String | Fråga för persondata angivet med syntax enligt element queryLanguage (se Tillämpningsanvisning frågespråk [R7]) | 1..1 |
| queryLanguage | xs:String | Anger syntax för element query | 1..1 |
| profile | urn:riv:strategicresourcemanagement:persons:person:5:LookupProfileType | Profil för returnerat data (se kap 8). | 1..1 |
| Svar |  |  |  |
| orderId | urn:riv:strategicresourcemanagement:persons:person:5:OrderId | OrderId Det unika order id som genererats för denna sökning. | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - | - | - |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | En producent ska enbart returnera enligt profil 1 (se kap 8) om protectedPersonIndicator eller protectedPopulationRecord är satt till true. |
| #2 | Producent | Om antalet sökträffar hos producenten överskrider maxgränsen för antalet sökträffar som denna kan returnera så skall producenten returnera ett SOAP klientfel som inkluderar feltexten ”Förfrågans maxgräns överskriden”. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| - | - | - |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

### SearchPersonsForProfileByOrderUnrestricted
Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax.
Denna tjänst tillskillnad från SearchPersonsForProfile returnerar endast ett orderId som sedan ska användas tillsammans med tjänsten GetFilesForOrderId för att få tillgång till resultatet av sökningen. Se sekvensschemat i kapitel 3.1.9. Denna tjänst är en utökning av SearchPersonsForProfileByOrder och returnerar samtliga efterfrågade personuppgifter oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring.
För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.
Ett typiskt användningsfallet för denna tjänst är när man önskar få ut ett större antal personuppgifter baserat på sökparametrarna. T.ex för en screeningverksamhet (ex screening av bröstcancer) att kunna ta ut en population personer baserat på ålder, kön och län för att kalla dem till undersökning.
OBS! Tillskillnad från GetPersonsForProfile till vilken man kan ange ignoreReferredIdentity så returnerar denna tjänst endast svar på den specifika identitet som man söker på.
Tjänsten returnerar dock även information på eventuellt kopplade identiteter, samt information om vilken kopplad identitet som utgör huvudidentiteten.

#### Version
5.0  Notering: Se punkt 2.1.3

#### Fältregler
Se SearchPersonsForProfileByOrder

#### Övriga regler
Se SearchPersonsForProfileByOrder

#### Annan information om kontraktet
För mer information om vad som är implementerat kring möjliga Query’s (queryLanguage), se Tillämpningsanvisning frågespråk [R7]

### GetFilesForOrderId
Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter.
Producenten ska säkerställa att anropande tjänstekonsument har rättighet till det efterfrågade order id't.

#### Version
3.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| orderId | urn:riv:strategicresourcemanagement:persons:person:5:OrderId | Order Id för vilka filer man vill lista. | 1..1 |
| Svar |  |  |  |
| multimedia | urn:riv:strategicresourcemanagement:persons:person:5:MultimediaType | GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer. | 0..* |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - | - | - |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | Om antalet sökträffar hos producenten överskrider maxgränsen för antalet sökträffar som denna kan returnera så skall producenten returnera ett SOAP klientfel som inkluderar feltexten ”Förfrågans maxgräns överskriden”. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| - | - | - |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
URL’n som erhålls i responset skall följa format på URL enligt ARK_0038. Se även AKR_0038 för tillämpning.

### GetPersonContactInformation
Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen. Kontaktinformationen kan ha skapats antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller av t.ex en vårdaktör via vårdaktörens tjänst. Kontaktuppgifterna består dels av vilka kontaktvägar (telefon, mail etc) som personen själv i fråga kan nås på, dels av kontaktpersoner och kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård.
Kontaktinformation (mail, mobilnummer etc) kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Id på personen vars kontaktuppgifter efterfrågas | 1..1 |
| Svar |  |  |  |
| contactInformationRecord | urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationRecordType | PersonContactInformationRecordResponse innehållande den efterfrågade personidentitetens kontaktinformation och/eller kontaktpersoner | 0..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| - | - | - |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Producent | Om en person har sekretessmarkering eller Skyddad folkbokföring (protectetPersonIndicator resp protectedPopulationRecord) så ska ej kontaktuppgifter returneras i svaret. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| - | - | - |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
N/A

### GetPersonContactInformationUnrestricted
Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen.
Denna tjänst är en utökning av GetPersonContactInformation och levererar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring. För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.
Kontaktinformationen kan ha skapats antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller av t.ex en vårdaktör via vårdaktörens tjänst. Kontaktuppgifterna består dels av vilka kontaktvägar (telefon, mail etc) som personen själv i fråga kan nås på, dels av kontaktpersoner och kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård.
Kontaktinformation (mail, mobilnummer etc) kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### Version
4.0

#### Fältregler
Se GetPersonContactInformation.

#### Övriga regler
Se GetPersonContactInformation.

##### Icke funktionella krav
Se GetPersonContactInformation.

###### SLA-krav
Se GetPersonContactInformation.

#### Annan information om kontraktet
Se GetPersonContactInformation.

### UpdatePersonContactInformation
Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst. Kontaktuppgifterna består dels av vilka kontaktvägar som personen själv i fråga kan nås på (exempelvis telefon, email), dels av kontaktpersoner samt kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. En konsument av denna tjänst kan således dels vara en tjänst såsom Journalen, dels ett vårdsystem.
Kontaktinformation kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den som utför uppdateringen. | 1..1 |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Id på personen vars kontaktuppgifter ska uppdateras | 1..1 |
| versionToUpdate | urn:riv:strategicresourcemanagement:persons:person:5:Timestamp | Den version av personposten som skall uppdateras. Se även Övriga regler.

Tjänstekonsumenten får värdet genom en föregående hämtning av detta attribut (version i datatypen ContactInformationRecordType). | 0..1 |
| contactInformation | urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationType | Personens kontaktuppgifter | 0..* |
| contactPerson | urn:riv:strategicresourcemanagement:persons:person:5:ContactPersonType | Uppgifter om personens kontaktpersoner | 0..* |
| optoutPaperNotification* | Xs:Boolean | Sätts till true om personen ej önskar pappersavisering | 0..1 |
| Svar |  |  |  |
| updatePersonContactInformationResult | urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonContactInformationResultType | UpdatePersonContactInformationResult med status för om tjänsten utfördes, samt eventuellt resultat av uppdateringen. Se datatyp resultType för gällande felkoder | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Uppdatering kontaktuppgifter | optoutPaperNotification får endast sättas till true om det finns minst en kontaktuppgift som har digitalNotification satt till true |
| #4 | Uppdatering kontaktuppgifter | Då en förändring av personens kontaktuppgifter sker, dvs personens kontaktuppgifter uppdateras så ska versionToUpdate bifogas för att säkerställa transaktionsintegriteten, att posten inte har uppdaterats under pågående transaktion. |
| #5 | Uppdatering kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| - | - | - |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #1 | Uppdatering kontaktuppgifter | För personer med sekretessmarkering eller Skyddad folkbokföring (protectetPersonIndicator resp protectedPopulationRecord) så ska man ej kunna ange kontaktuppgifter. |
| #2 | Uppdatering kontaktuppgifter | En update ska alltid föregås av en läsning. Detta för att i anropet till tjänsten få med sig befintlig information på personen. De attribut som skickas in utan data blir därmed raderade/tomma. / Läsningen kan antingen ske via GetPersonContactInformation eller GetPerson och med minst profil 3. |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
För kodverk, se [R3].

### UpdatePersonContactInformationUnrestricted
Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst.
Denna tjänst är en utökning av UpdatePersonContactInformation och hanterar all personinformation, oavsett om personen har sekretessmarkering och/eller skyddad folkbokföring. För att få åtkomst till detta kontrakt krävs ”berättigade skäl”, dvs verksamheten ska beskriva skälen för att få ansluta till detta kontrakt för åtkomst till personuppgifter som har sekretesskydd.
Kontaktuppgifterna består dels av vilka kontaktvägar som personen själv i fråga kan nås på (exempelvis telefon, email), dels av kontaktpersoner samt kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. En konsument av denna tjänst kan således dels vara en tjänst såsom Journalen, dels ett vårdsystem.
Kontaktinformation kan även anges som en ”digital aviseringsväg” vilket innebär att personen samtycker till att en verksamhet kan skicka ett meddelande till personen. Dvs om en person har angett en mailadress som kontaktinformation och även sätter denna som möjlig för ”digital avisering”, så kan en verksamhet via mail exempelvis skicka information om att personen har ny information att läsa i inkorgen på 1177.

#### Version
4.0

#### Fältregler
Se UpdatePersonContactInformation

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Uppdatering kontaktuppgifter | optoutPaperNotification får endast sättas till true om det finns minst en kontaktuppgift som har digitalNotification satt till true |
| #4 | Uppdatering kontaktuppgifter | Då en förändring av personens kontaktuppgifter sker, dvs personens kontaktuppgifter uppdateras så ska versionToUpdate bifogas för att säkerställa transaktionsintegriteten, att posten inte har uppdaterats under pågående transaktion. |
| #5 | Uppdatering av kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| - | - | - |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Uppdatering kontaktuppgifter | En update ska alltid föregås av en läsning. Detta för att i anropet till tjänsten få med sig befintlig information på personen. De attribut som skickas in utan data blir därmed raderade/tomma. / Läsningen kan antingen ske via GetPersonContactInformation eller GetPerson och med minst profil 3. |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Se UpdatePersonContactInformation

#### Annan information om kontraktet
För kodverk, se [R3].

### UpdatePerson
Tjänst för att ta ut en ny reservidentitet (NRID), uppdatera en befintlig reservidentitet, eller lägga till en lokal reservidentitet (LRID). Om tjänsten anropas utan identitet så erhålls en ny identitet (NRID) i svaret baserad på de uppgifter som har angivets på personen, ex födelsedatum, kön.

#### Version
5

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den som utför uppdateringen. Aktörens identitet ska även kompletteras med en organisatorisk identitet som kan peka ut PUA-ansvarig organisation. Se datatyp ActorType. | 1..1 |
| personId | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Personens identitet | 0..1 |
| gender | urn:riv:strategicresourcemanagement:persons:person:5:CodedValue | Kön (se kodverk, [R3]) | 0..1 |
| versionToUpdate | urn:riv:strategicresourcemanagement:persons:person:5:Timestamp | Håller reda på senast gällande version. Skall bifogas i de fall man genom en föregående läsning har erhållit detta attribut | 0..1 |
| Name | urn:riv:strategicresourcemanagement:persons:person:5:NameType | Personens alla namn | 0..1 |
| Birth | urn:riv:strategicresourcemanagement:persons:person:5:BirthType | Personens födelsedata | 0..1 |
| relationship | urn:riv:strategicresourcemanagement:persons:person:5:RelationshipType | Personens relationer | 0..* |
| givenAddress | urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType | Personen adress | 0..1 |
| deregistration | urn:riv:strategicresourcemanagement:persons:person:5:DeregistrationType | Avregistreringsorsak | 0..1 |
| administrativeInformation | urn:riv:strategicresourcemanagement:persons:person:5:AdministrativeInformationType | Administrativa uppgifter som normalt knyts till personer med reservidentitet | 0..1 |
| confirmedIdentity | urn:riv:strategicresourcemanagement:persons:person:5:ConfirmedIdentityType | Anger på vilket sätt en (reserv)identitet har styrkts | 0..* |
| addressAbroad | urn:riv:strategicresourcemanagement:persons:person:5:AddressAbroadType | Uppgiven utlandsadress | 0..1 |
| Svar |  |  |  |
| updatePersonResult | urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonResultType | UpdatePersonResult med status för om tjänsten utfördes, samt eventuellt uppdaterad/skapad personpost. För felkoder, se datatyp resultType | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #2 | Uppdatering av kontaktuppgifter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| - | - | - |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #1 | Uppdatering kontaktuppgifter | En update (uppdatering av befintlig post) ska alltid föregås av en läsning via GetPersonsForProfile och då med minst profil 4. Detta för att i anropet till UpdatePerson få med sig befintlig information på personen. De attribut som skickas in utan data blir raderade. |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
Kontraktet används enbart för att skapa eller uppdatera information för en person med reservidentitet. En reservidentitet byggs upp kring information om personen (se ref [R3]). Om man vill skapa en ”anonym” reservidentitet, kan man göra detta genom 2 anrop till tjänsten. Vid anrop 1 så anges enbart namn på personen, då skapas en reservidentitet som ej innehåller uppgifter om kön & födelsedata. Därefter kan man i anrop 2 tillföra dessa uppgifter, se Flöde 5a.

### LinkPersonIdentity
Tjänst för att koppla en persons identitet till dess huvudidentitet. T.ex en reservidentitet (LRID/NRID) till ett personnummer. Dvs kunna ange att en person som har 2 identiteter är densamma person. Genom denna koppling kan t.ex NPÖ för en person som är journalförd på 2 olika identiteter, t.ex en reservidentitet och sitt ordinarie personnummer, visa upp journalerna för bägge identiteterna.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den aktör som utför kopplingen | 1..1 |
| fromIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den identitet som man vill koppla till en huvudidentitet. | 1..1 |
| toIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den huvudidentitet som man vill koppla till | 1..1 |
| Svar |  |  |  |
| result | urn:riv:strategicresourcemanagement:persons:person:5:ResultType | Result status för hur tjänsten utfördes. För felkoder, se datatyp resultType | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #1 | Koppling av identiteter | Vid en koppling måste toIdentity ha >= hierarki än fromIdentity. En producent får ej godkänna en LinkPersonIdentity där toIdentity < hierarki än fromIdentity. Producenten ska då svara med ERROR och lämplig förklarande text i ResultType. Se tabell nedan för möjliga kopplingar. |
| #3 | Koppling av identiteter | Attributet updateTime i actor ska ej anges av konsumenten, detta ska utföras av producenten. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| - | - | - |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Koppling av identiteter | Den identitet som man kopplar till, toIdentity, blir den identitet som anges som huvudidentitet (se GetPersonsForProfile). Det är användaren av konsumenten som svarar för att ange vilken av identiteterna det är som är huvudidentiteten. Hierarkin är följande: LRID → NRID → SNR → PNR.  Om 2st LRID behöver kopplas så ska detta göras genom att koppla de bägge LRID till ett NRID. |

| → (kan länkas till) | LRID | NRID | SNR | PNR |
| :--- | :--- | :--- | :--- | :--- |
| LRID |  | X | X | X |
| NRID |  | X | X | X |
| SNR |  |  | * | * |
| PNR |  |  | * | * |
* Kopplingar mellan SNR & PNR görs enbart av SKV
(ex LRID kan länkas till NRID, SNR samt PNR. NRID kan länkas till NRID, SNR samt PNR osv)

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
N/A

### UnlinkLinkPersonIdentity
Tjänst för att koppla isär en tidigare koppling mellan 2 identiteter. T.ex  en koppling mellan en reservidentitet (LRID/NRID) och ett personnummer (PNR). Skälet till isärkopplingen är normalt en felaktig tidigare genomförd koppling.

#### Version
4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| actor | urn:riv:strategicresourcemanagement:persons:person:5:ActorType | Den aktör som utför isärkopplingen | 1..1 |
| unlinkFromIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den huvudidentitet som man vill koppla isär från | 1..1 |
| unlinkIdentity | urn:riv:strategicresourcemanagement:persons:person:5:IIType | Den identitet som man tidigare hade kopplat till huvudidentiteten | 1..1 |
| Svar |  |  |  |
| result | urn:riv:strategicresourcemanagement:persons:person:5:ResultType | Result status för om tjänsten utfördes. För felkoder, se datatyp resultType | 1..1 |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| #3 | Isärkoppling av identiteter | Attributet updateTime i actor ska normalt ej anges, detta ska producenten ange. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| #1 | Isärkoppling av identiteter | En producent får ej tillåta en UnlinkPersonIdentity mellan ett SNR och ett PNR. Producenten ska då svara med ERROR och lämplig förklarande text i ResultType. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| #2 | Koppling av identiteter | Det är endast SKV som äger sammankopplingen mellan ett samordningsnummer (SNR) till ett PNR. |

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
N/A

### GetPersonsByFile
GetPersonsByFile är en REST-tjänst, dvs ingen RIVTA-tjänst. Tjänsten har tillkommit vid release 4.6 och genomgått namnbyte vid release av 5.0 av Personuppgiftstjänsten (tidigare namn var SearchPersonsByFile).
Tjänstens uppgift är att stödja verksamhetsbehovet att till Personuppgiftstjänsten kunna skicka in en lista med personidentiteter och i retur få personuppgifter. Ett typiskt användningsfall är att få uppdaterade personuppgifter utifrån en lista av personidentiteter från ett givet datum, för att uppdatera en lokal cache.
Genom att i anropet ange önskad profil så erhålls i svaret olika mycket detaljerade personuppgifter.
Tjänsten anropas med ett POST-anrop i vilket filen med personidentiteterna ingår. Som svar erhålls ett ”order-id” vilket sen används vid anrop av kontraktet GetFilesForOrderId.
För mer information om samverkande RIVTA-kontrakt , se R[14]

#### Version
1

#### Fältregler
Eftersom GetPersonsByFile ej är en RIVTA-tjänst så anges här inga attribut enligt RIVTA.
Tjänsten anropas med ett POST-anrop i vilket filen med personidentiteterna ingår. Som svar erhålls ett ”order-id” vilket sen används vid anrop av kontraktet GetFilesForOderId.
Parametrar:

| Namn | Beskrivning |
| :--- | :--- |
| profile | Obligatorisk parameter för vilken profil som önskas i svaret. Se TKB för beskrivning av profilerna P1-P5. Observera att profilen skall anges med versalt P.

Datatyp: String. / Exempel: P1 |
| fromDate | Valfri parameter för det datum man är intresserad av förändringar från och med baserat på fältet version i personposten.

Datatyp: LocalDateTime. / Exempel: 2021-10-12T00:00:00 |
| maxResultsPerFile | Valfri parameter för max antal personposter per fil. Ej angivet så returneras alltid resultatet i endast en fil. Detta värde får ej vara lägre än 500.

Datatyp: Integer. / Exempel: 1000 |
| primaryidentity | Valfri parameter. Om satt till true så kommer endast personposter som är huvudidentitet inkluderas i svaret. Om satt till false eller ej angiven alls så kommer alla personposter att inkluderas i svaret, vare sig de är huvudidentiteter eller ej.

Datatyp: Boolean. / Exempel: true |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).
N/A

##### Icke funktionella krav
Se 4.2

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Se 4.2

#### Annan information om kontraktet
N/A

