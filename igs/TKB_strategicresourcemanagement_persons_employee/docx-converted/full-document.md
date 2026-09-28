
|  | Tjänstekontraktsbeskrivning / Version |
| :--- | :--- |
Innehåll
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
|  | PA1 | 2013-10-30 | Första version, kopierad från tidigare arkitekturella beslut för infrastructure:directory:organization innan uppdelningen i flera domäner | Henrika Littorin |  |
|  | PA2 | 2014-01-23 | Ändrat format för specialityCode och specialityName / Domännamn ändrat i enlighet med beslut från A&R från infrastructure:directory:person till infrastructure:directory:employee | Robert Lundmark |  |
|  | PA3 | 2014-01-29 | Lagt till attribut Befattning kod och namn till GetPerson-metoderna efter krav från tjänsten Plattform för internetbaserat stöd och behandling samt kompletterat med ytterligare felfall. | Robert Lundmark |  |
| 1.0_RC2 |  | 2014-03-18 | Justeringar enligt avstämning med Ineras IT-arkitekt och A&R VI samt efter intern genomgång: / Infört två alternativ för hantering av flera anslutna tjänsteproducenter (katalogtjänster) med beskrivning av fördelar för respektive alternativ / Justering av hänvisning till arkitekturella beslut (nu gemensamma för tre domäner), borttag av referenser till borttagna AB:n samt justering av numrering av övriga AB:n / Justerat skrivning om styrning av åtkomst / Borttag av några exempel på krav som kan ställas på tjänstekonsument / Borttag av referens till HSA-policyn för krav på producent / Borttag av SLA-krav på antal avbrott och längd på avbrott / Omskrivning/förtydligande av avsnitt 3.1 / Namnändring av kontrakten i analogi med namnändring av domänen (GetEmployee istället för GetPerson) | Henrika Littorin, Ronny Nilsson |  |
| 1.0.0.RC_03 |  | 2014-07-22 | Justeringar enligt granskningsprotokoll VIS samt T / Svenskt namn på domänen / Överflytt av beskrivning av alternativ för aggregering/engagemangsindex till AB / Överfört till ny mall | Henrika Littorin |  |
| 1.0_RC4 |  | 2014-09-05 | Återgått till gammal benämning av versioner enligt besked från Leo Röjerås / Tillägg av nytt avsnitt ”Svenskt namn” samt justering under rubriken WEB beskrivning enligt ny mall för TKB | Henrika Littorin, Inera AB |  |
| 1.1_RC1 |  | 2015-01-13 / 2015-01-23 / 2015-01-27 | Tillägg av nya tjänstekontrakt GetCommissionMembersIncludingProtectedPerson och GetCommissionMembers / Godkänd av kravställare Intygstjänster / Uppdaterat webbtext efter förhandsgranskning VI / Uppdaterat utifrån mina kommentarer | Henrika Littorin, Inera AB / Ronny Nilsson, Inera AB |  |
| 1.0.1_RC1 |  | 2015-03-17 | Ändrat till version 1.0.1 för att överensstämma med de gemensamma riktlinjerna / Lagt till felfall för felaktigt HSA-id i OrganizationalArea i commissionRights / Tagit bort RC-nummer för tjänstekontrakt | Robert Lundmark, Cybercom AB |  |
| 1.1_RC1 |  | 2015-06-10 | Lagt till stöd för fingerade objekt i alla metoder / Uppdaterat referens till HSA-schemat samt kompletterat inbäddat schema för tjänstedomänerna | Robert Lundmark Cybercom AB, Henrika Littorin, Inera AB |  |
| 1.1.1RC1 |  | 2016-04-11 | Lagt till varning om både personnummer och hsaIdentity anges vid anrop för GetEmployee / Förtydligat hur argumentet searchBase används i metodanropen. | Robert Lundmark Cybercom AB |  |
|  |  |  |  |  |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – | Version 1.1_RC1, 2015-01-13 |  |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Råd Utlämnande av information från HSA | Version 1., | www.inera.se/hsa, under Dokument och Stödjande |
| R4 | Tillitsramverk: HSA-policy | Version 3.6, | www.inera.se/hsa, under Dokument och Avtal |
| R5 | RIV Informationsspecifikation HSA Struktur och innehåll | Version 4., | www.inera.se/hsa, under Dokument och Styrande |
| R6 | Behörighetsmodell för hälso- och sjukvården | Version 1.0, 2011-12-09 | www.inera.se/hsa, under Behörighetsmodell |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen .
Den svenska benämningen är .
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastruktur:katalogtjänster:medarbetare
medarbetare

### WEB beskrivning
Syftet med tjänstedomänen är att förse övriga e-tjänster med kvalitetssäkrade och aktuella personuppgifter om personer som är anställda inom, eller arbetar på uppdrag av, organisationer inom vård och omsorg.
Tjänstekontrakten inom domänen används främst för att göra sökningar efter kontaktinformation och andra egenskaper för personer verksamma inom vård och omsorg. Tjänstekontrakten möjliggör också att e-tjänster kan lista tillgängliga medarbetare inom en specifik vårdenhet.

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om version .
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version

#### Oförändrade tjänstekontrakt

#### Nya tjänstekontrakt
-

#### Förändrade tjänstekontrakt
GetEmployeeIncludingProtectedPerson
GetEmployee
Se kontraktsbeskrivningar under kap 6 Tjänstekontrakt. Se även AB-2.2 [R1].

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
1.1

## Tjänstedomänens arkitektur

### Flöden

#### Flöde – Hämta information om anställd/uppdragstagare
Tjänstekontrakten som beskrivs i detta dokument används för att hämta information om en specifik person som är anställd inom eller arbetar på uppdrag av en organisation verksam inom svensk vård och omsorg.
Anropet kan till exempel användas vid uppdatering/kontroll av en intern användardatabas i en tjänst eller i ett sökgränssnitt för att presentera detaljerad information om en person. Dessa användningsområden kan beskrivas med nedanstående övergripande flöde.
Tjänstekontrakten som idag stödjer detta flöde är
GetEmployeeIncludingProtectedPerson (se avsnitt 6.1)
GetEmployee (se avsnitt 6.2)
Fler tjänstekontrakt kan komma att utvecklas varefter behov uppstår.

##### Arbetsflöde
Flödet startar generellt när en användare i tjänstekonsumentens tjänst (nedan kallad Tjänsten) önskar åtkomst till viss information som finns i tjänsteproducentens tjänst (nedan kallad Katalogen)
Tjänsteproducenten kan här antingen hämta den efterfrågande informationsmängden i det ögonblick då användaren försöker få åtkomst till informationen eller i förväg genom regelbunden (ofta dygnsvis) inhämtning av den totala informationsmängd som överenskommits i anslutningen
Relevant inparameter extraheras och skickas i överenskommet tjänstekontrakt till Katalogen
Vilka inparametrar som är relevanta definieras i respektive kontrakt
Katalogen verifierar om aktuellt objekt återfinns i Katalogen, baserat på inskickade inparametrar
Om så inte är fallet skickas ett meddelande till Tjänsten att objektet saknas och flödet fortsätter då enligt punkt 6
Om objektet återfinns i Katalogen extraheras de egenskaper som specificerats i aktuellt tjänstekontrakt och skickas till Tjänsten
Egenskaper för det eller de objekt som returnerats från Katalogen behandlas i Tjänsten
Irrelevant information sållas bort, eventuell nödvändig översättning av attributinnehåll görs och informationen läggs in i Tjänstens layout/mallar för presentation av information
Vissa tjänster kan även använda information från andra källor som då också läggs ihop med informationen från Katalogen enligt ovan
Tjänsten meddelar användaren resultatet av sökningen och presenterar den information som erhållits från Katalogen samt eventuella andra informationskällor

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Användare | Utgörs som regel av en medarbetare inom vården (som söker information om en specifik person) |
|  |  |

##### Flödesdiagram

#### Flöde – Lista medarbetare på vårdenhet
Tjänstekontrakten som beskrivs i detta flöde används för att hämta information om personer som arbetar på uppdrag av en specifik vårdenhet.
Anropet kan till exempel användas vid tillägg/uppdatering/kontroll av användare i en intern användardatabas i en tjänst eller vid tilldelning av ärenden till en medarbetare. Dessa användningsområden kan beskrivas med nedanstående övergripande flöde.
Tjänstekontrakten som idag stödjer detta flöde är
GetCommissionMembersIncludingProtectedPerson (se avsnitt 6.3)
GetCommissionMembers (se avsnitt 6.4)

##### Arbetsflöde
Flödet startar generellt när en användare i tjänstekonsumentens tjänst (nedan kallad Tjänsten) önskar åtkomst till viss information som finns i tjänsteproducentens tjänst (nedan kallad Katalogen)
Tjänsteproducenten kan här antingen hämta den efterfrågande informationsmängden i det ögonblick då användaren försöker få åtkomst till informationen eller i förväg genom regelbunden (ofta dygnsvis) inhämtning av den totala informationsmängd som överenskommits i anslutningen
Relevanta inparametrar extraheras och skickas i överenskommet tjänstekontrakt till Katalogen
Vilka inparametrar som är relevanta definieras i respektive kontrakt
Katalogen verifierar om aktuellt objekt återfinns i Katalogen, baserat på inskickade inparametrar
Om så inte är fallet skickas ett meddelande till Tjänsten att objektet saknas och flödet fortsätter då enligt punkt 6
Om objektet återfinns i Katalogen extraheras de egenskaper som specificerats i aktuellt tjänstekontrakt och skickas till Tjänsten
Egenskaper för det eller de objekt som returnerats från Katalogen behandlas i Tjänsten
Irrelevant information sållas bort, eventuell nödvändig översättning av attributinnehåll görs och informationen läggs in i Tjänstens layout/mallar för presentation av information
Vissa tjänster kan även använda information från andra källor som då också läggs ihop med informationen från Katalogen enligt ovan
Tjänsten meddelar användaren resultatet av sökningen och presenterar den information som erhållits från Katalogen samt eventuella andra informationskällor

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Användare | Utgörs som regel av en medarbetare inom vårdens administration (som söker en specifik person i en lista av medarbetare) |
|  |  |

##### Flödesdiagram

#### Obligatoriska kontrakt

| Tjänstekontrakt | Flöde |
| :--- | :--- |
| GetEmployeeIncludingProtectedPerson (se avsnitt 6.1) | Hämta information om anställd/uppdragstagare |
| GetEmployee (se avsnitt 6.2) | Hämta information om anställd/uppdragstagare |
| GetCommissionMembersIncludingProtectedPerson (se avsnitt 6.3) | Lista medarbetare på vårdenhet |
| GetCommissionMembers (se avsnitt 6.4) | Lista medarbetare på vårdenhet |

### Adressering

### Aggregering och engagemangsindex
För närvarande är aggregering eller engagemangsindex ej aktuellt, då endast en tjänsteproducent är ansluten till tjänstedomänen.
I samband med att fler tjänsteproducenter ansluter till tjänstedomänen behöver sökningen från anropande tjänstekonsument realiseras mot flera tjänsteproducenter. Vilken alternativ lösning som ska tillämpas när denna situation uppstår är ännu inte beslutat, se AB-2.3 [R1].

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Informationsinnehållet i de katalogtjänster som är anslutna som tjänsteproducenter ägs och förvaltas av respektive ansluten organisation/juridisk person. Informationsägarskapet beskrivs ytterligare i utredning utförd av Arkitektur och Regelverk Säkerhet (se avsnitt 4 i [R3]). I de fall som producenten i sin katalogtjänst lagrar information för flera informationsägare är det upp till varje ansluten organisation att avgöra vilken information som ska lämnas ut till vilken mottagare.
Tjänsteproducenten ansvarar därmed för att information endast lämnas ut till de tjänstekonsumenter som respektive informationsägare godkänt. Det tydliggörs här eftersom det avviker från T-boken i det att Tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänsteproducentens identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdgivare/vårdenheter vars verksamhetschef inte godkänner aktuell tjänsteproducent varit exkluderade i frågan.

### Icke funktionella krav

#### Krav på en tjänsteproducent
Följande krav skall beaktas då ett system agerar som en tjänsteproducent för tjänstedomänens ingående tjänster.
Tjänsteproducenten ansvarar för
att tillhandahålla tjänsten i enlighet med denna tjänstekontraktsbeskrivning med avseende på
tjänstedomänens arkitektur (se avsnitt 3)
informationssäkerhet och juridik (se avsnitt 4.1)
felhantering (se avsnitt 4.2.1.2)
SLA:er (se avsnitt 4.2.1.1)
informationsinnehåll (specificeras för resp. tjänstekontrakt under avsnitt 6)
tjänstedomänens meddelandemodeller (se avsnitt 5)
att vid behov förmedla kontakt mellan tjänstekonsument och informationsägare, t.ex. i frågor som rör förändring av innehåll
att (vid behov genom kravställning på anslutna organisationer/informationsägare) tillse att
den information som tillhandahålls vid var tid är uppdaterad och korrekt
den information som tillhandahålls vid var tid i möjligaste mån är säkrad mot ursprungskällor
minst omfattar detta kontroll av namnuppgifter mot Skatteverket samt kontroll av legitimerad yrkesgrupp mot Socialstyrelsens register minst en gång per månad
tillämpliga lagar och regelverk, t.ex. Personuppgiftslagen PUL, efterlevs
det finns ett dokumenterat regelverk för hur administratörsbehörigheter tilldelas och tas bort
uppgifter om koppling mellan HSA-id och individ/organisation samt mellan HSA-id och vårdgivare/vårdenhet arkiveras i minst 10 år efter det att anställning och/eller verksamhet upphört
HSA-id behålls då en person byter person-identitet (t.ex. från samordningsnummer till personnummer)
att upprätthålla en organisation för administration samt för mottagande av driftstörningsinformation
att förändringar som görs i tjänsten loggas så att det går att spåra vem som gjort en förändring och när
att särskild hantering av personer med skyddade personuppgifter finns dokumenterad och tillämpas
att årligen genomföra intern revision för att säkerställa att tjänsteproducenten verkligen uppfyller samtliga krav beskrivna i denna tjänstekontraktsbeskrivning

##### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänstekontrakt inom domänen. Observera att för en konsument kan tillgängligheten bli något lägre utifrån t.ex. mellanliggande kommunikationsutrustning, kommunikationsnät och användning av regional tjänsteplattform.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid |  | Definieras per tjänstekontrakt i avsnitt 6. |
| Tillgänglighet | 24x7, 99,9% |  |
| Last |  | Definieras per tjänstekontrakt i avsnitt 6. |
| Aktualitet | 10 minuter | Vid uppdatering av information i katalogtjänsten får det maximalt ta så lång tid innan den informationen används av och returneras via tjänstekontrakten. |
| Återställningstid | 1 dygn | Vid katastrof som bortfall av driftshall |

##### Felhantering

###### Logiska fel
Vid ett logiskt fel, d.v.s. förutsättning för att kunna besvara anropet saknas, t ex för att visst nödvändigt objekt eller attributvärde saknas
Exempel på mindre fel där resultat ändå kan returneras är:
Då obligatoriska attribut (som skulle returnerats) saknas
Attribut med värde som inte följer gällande värdemängd
Värdemängdsattribut med både kod-del och klartext-del men där dessa inte matchar varandra enligt gällande värdemängd
Attribut med felaktig syntax, t ex
Sammansatta attribut saknad någon del (t ex telefontider)

##### Tekniska fel
Vid ett tekniskt fel levereras normalt ett generellt undantag (SOAP-fault).
Exempel på tekniska fel vid anrop till någon av tjänstedomänens tjänstekontrakt där SOAP-fault returneras är:
Katalogen (eller ev. läskopia) är inte nåbar (ur funktion, överlastad, kommunikationsmässigt eller på annat sätt onåbar)
Katalogen returnerar att det blev ett internt fel vid sökningen
Grundläggande information i katalogen, t ex kodtabeller, innehåller felaktig information eller felaktigt strukturerad information.
Exempel på andra tekniska fel är:
Anslutande tjänst är inte behörig att anropa det aktuella tjänstekontraktet. För denna typ av fel returneras ”http Status 403 – Access is denied”.
Tjänstekontraktsprogramvaran har slutat fungera. För denna typ av fel returneras ”http Status 503 – Service Temporarily Unavailable”.
För fatala tekniska fel t ex server-fel, fel på kommunikationsutrustning, fel i webb-tjänst-systemprogramvaran, kan svar helt utebli, därför måste konsumenten ha hantering för uteblivet svar (time-out) för sådant fall.
Vid tekniska fel förmedlas inga kataloguppgifter till konsumenten.

#### Övriga krav
-

#### Krav på en tjänstekonsument
Följande krav skall beaktas då ett system agerar som en tjänstekonsument för tjänstedomänens ingående tjänster.
Autentisering av tjänstekonsument ska alltid ske med SITHS Funktionscertifikat.
Tjänstekonsumenten ansvarar för att ha en kontinuitetsplan för det fall att tjänsteproducentens tjänst inte skulle vara tillgänglig.
Tjänstekonsumenten skall redovisa sin belastning på tjänstedomänen (antalet anrop) till såväl tjänstedomänansvarig som till ansvarig för den/de tjänsteproducenter som tjänstekonsumenten anropar. Eventuella väsentliga ändringar av belastning ska kommuniceras i god tid före effektuering så att tillgänglighet och prestanda kan upprätthållas över tid.
Tjänstekonsumenten skall följa vid var tid gällande villkor för den/de tjänsteproducenter från vilka tjänstekonsumenten hämtar information. Ett exempel på sådana villkor är HSA-policy [R4], där informationsägarna bland annat ställer krav på
att all användning av informationen erhållen från tjänsteproducenten ska beskrivas i godkänd HPTB, HSA-policytillämpning för brukarorganisation
att tillämpliga lagar och regelverk, t.ex. Personuppgiftslagen PUL, efterlevs
att information som lagras i egen applikation ska skyddas på tillfredställande sätt
att information som lagras i egen applikation ska hållas uppdaterad mot ursprungskällan
att intern revision genomförs årligen för kontroll av efterlevnad till HSA-policy
Anslutna tjänsteproducenter kan ha egna processer för godkännande av tjänstekonsumenter som anropar tjänsteproducentens katalogtjänst.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM
För tjänstedomänen utnyttjas befintliga strukturer inom HSA för förvaltning och vidareutveckling av informations- och meddelandemodeller, se även AB-2.4 [R1]. Två gånger per år införs genomarbetade och beslutade ändringar i informationsmodellen enligt särskild process.
Nuvarande informationsmodell beskrivs i RIV Informationsspecifikation HSA Struktur och Innehåll []. Ingen mappning mot nationellt fackspråk är genomförd av skäl som beskrivs i AB-2.5 [R1].

### Formatregler

#### RIV-specifikation
Formatregler för tjänstedomänen specificeras i RIV Informationsspecifikation HSA Struktur och Innehåll [], se även AB-2.6 [R1]. Ytterligare detaljer finns i även schemabeskrivningen för respektive tjänstekontrakt, se avsnitt 6.

## Tjänstekontrakt

### GetEmployeeIncludingProtectedPerson
GetEmployeeIncludingProtectedPerson returnerar information, som kontaktinformation samt legitimerad yrkesgrupp och specialitet, för angiven person. Metoden kan användas av en tjänstekonsument för att t.ex. verifiera uppgifter i en egen intern användardatabas, för att kunna registrera en användare (med HSA-id) baserat på användarens person-id eller för att verifiera behörighet för det fall att denna grundar sig enbart på den personliga egenskapen Legitimerad yrkesgrupp.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.2 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personHsaId *1) | String | Sökt persons HSA-id. | 0..1 |
| personalIdentityNumber *1) | String | Sökt persons Person-id (personnummer eller samordningsnummer) | 0..1 |
| searchBase *2) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| personInformation | PersonInformationType | Information om personen. / Om personen har flera person-objekt returneras en instans per objekt. | 0..n |
| ..personHsaId | String | Personens HSA-id. | 1..1 |
| ..givenName | String | Tilltalsnamn. | ..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. | 0..1 |
| ..mail | String | E-postadress. | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..switchboardNumber | Telefon | Telefonnummer till växel. | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer. | 0..n |
| ..mobileNumber | Telefon | Mobiltelefonnummer. | 0..n |
| ..smsTelephoneNumber | Telefon | Telefonnummer för SMS-meddelanden. | 0..1 |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. | 0..n |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..postalAddress | AddressType | Postadress. | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..n |
|  |  |  |  |
| ..description | String | Generell beskrivning. | 0..1 |
| ..languageKnowledgeCode | String | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. | 0..n |
| ..title | String | Titel i fritext | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp | 0..n |
| ..paTitle | PaTitleType | Personens befattning | 0..n |
| .. ..paTitleName | String | Befattning | ..1 |
| .. ..paTitleCode | String | Befattningskod | ..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning. | 0..n |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning. | 0..n |
| ..dn | DN | ”Distinguished Name”. Objektets placering (sökväg) i katalogen, t.ex. cn=Henrika Littorin,ou=Anställda,ou=Enhet Systemförvaltning,ou=Område e-tjänster Drift och Förvaltning,o=Inera AB,c=SE | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras) | 0..1 |
| .. | Boolean | true: om personen är ett fingerat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
*2) searchBase
För GetEmployeeIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter person: i anropet angiven sökbas

#### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson | 10 anrop/s | 100 ms |

#### Logiska fel

#### Annan information om kontraktet
-

### GetEmployee
Metoden är identisk med GetEmployeeIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap
ovan.

#### Version
Version på detta kontrakt är 1.1

#### Fältregler
Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.1.2 Fältregler) aldrig kommer att returneras.

### GetCommissionMembersIncludingProtectedPerson
GetCommissionMembersIncludingProtectedPerson returnerar information, som namn, kontaktinformation samt legitimerad yrkesgrupp och specialitet, om personer som är kopplade till medarbetaruppdrag för angiven enhet eller organisation och kopplingen är inom ev angivna start- och slutdatum. Listan kan vid behov filtreras. Metoden kan användas av en tjänstekonsument för att t.ex. för en administratör presentera en lista med valbara personer för registrering i en intern användardatabas eller för tilldelning av ärenden.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.4 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 1.1

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL. | 1..1 |
| commissionPurpose | String | Medarbetaruppdragets ändamål enligt definierad värdemängd. | 1..1 |
| commissionRights | String | Medarbetaruppdragets rättigheter enligt definierade värdemängder. Syntax / Aktivitet;Informationstyp;Omfång, alla delar behöver anges. | 0..n |
| healthCareProfessionalLicense | String | Legitimerad yrkesgrupp enligt definierad värdemängd | 0..n |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| personInformation | PersonInformationType | Information om personen. / En person (ett HSA-id) returneras bara en gång även om personen är medlem i flera matchande medarbetaruppdrag Om personen har flera person-objekt returneras en instans per objekt. | 0..n |
| ..personHsaId | String | Personens HSA-id. | 1..1 |
| ..givenName | String | Tilltalsnamn. | ..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. | 0..1 |
| ..personStartDate | dateTime | Eventuellt startdatum för personens anställning. Om startdatum ännu inte inträtt innebär det att personens anställning ännu inte är aktiv. | 0..1 |
| ..personEndDate | dateTime | Eventuellt slutdatum för personens anställning. Om slutdatum passerats innebär det att personens anställning inte är aktiv. | 0..1 |
| ..mail | String | E-postadress. | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..switchboardNumber | Telefon | Telefonnummer till växel. | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer. | 0..n |
| ..mobileNumber | Telefon | Mobiltelefonnummer. | 0..n |
| ..smsTelephoneNumber | Telefon | Telefonnummer för SMS-meddelanden. | 0..1 |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. | 0..n |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..languageKnowledgeCode | String | Kod för språk personen har tillräcklig kunskap om för att kunna ta emot patienter som talar detta språk. | 0..n |
| ..title | String | Titel i fritext | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp | 0..n |
| ..paTitle | PaTitleType | Personens befattning | 0..n |
| .. ..paTitleName | String | Befattning | ..1 |
| .. ..paTitleCode | String | Befattningskod | ..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning. | 0..n |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning. | 0..n |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras) | 0..1 |
| .. | Boolean | true: om personen är ett fingerat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns inga regler som ej uttrycks i schemafilerna och tabellen ovan.
*2) searchBase
För GetCommissionMembersIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter enhet som pekas ut i organisationsomfång: i anropet angiven sökbas
- Sök efter medarbetaruppdrag: vårdenheten används som sökbas
- Sök efter person: här används sökbasen c=SE

#### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetCommissionMembersIncludingProtectedPerson | 1 anrop/s | 1000 ms |

#### Logiska fel

#### Annan information om kontraktet
-

### GetCommissionMembers
Metoden är identisk med GetCommissionMembersIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.3  ovan.

#### Version
Version på detta kontrakt är 1.1

#### Fältregler
Eftersom att skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.3.2 Fältregler) aldrig kommer att returneras.
