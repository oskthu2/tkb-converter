
|  | Tjänstekontraktsbeskrivning / Version |
| :--- | :--- |
Innehåll
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
|  | PA1 | 2013-05-22 – 2013-07-19 | Första version | Ronny Nilsson, Henrika Littorin, Björn Skeppner |  |
|  | PA2 | 2013-09-06 | Uppdaterat efter synpunkter från Arkitektur och Regelverk / Skapat bilaga Arkitekturella beslut och lyft ut relevanta delar i skrivningar och kommentarer till detta dokument / Förbättringsförslag för mallen utlyfta till separat mail / Två mindre språkliga korrigeringar / Tydliggjort skrivning om informationsägarskap samt hänvisningen till R4 | Henrika Littorin |  |
|  | PA3 | 2013-10-03 – 2013-10-30 | Uppdaterat efter synpunkter från Arkitektur & Regelverk / Justering av SLA-nivåer / Anrop med felaktiga svar ska ge svar med felinformation / Förtydligande av att referenser till HSA är exempel där så är tillämpligt / Uppdaterat referenser till befintliga och nya arkitekturella beslut. / Byte av namn från organisation till organization / Förberedelse för delning i tre domäner | Ronny Nilsson, Henrika Littorin |  |
|  | PA4 | 2013-10-30 | Delad och rensad från information som enbart berör tjänstedomänerna employee och authorizationmanagement | Henrika Littorin |  |
|  | PA5 | 2014-01-29 | Borttag av attributet Fakturaadress / Förändrad funktionalitet i tjänstekontraktet GetHealthCareUnit / Tillägg av namn på enhet, vårdenhet och vårdgivare / Tillägg av HSA-id samt start- och slutdatum för vårdenhet / Tillägg av organisationsnummer för vårdgivare / Funktionsändring så att kontraktet ger svar även om HSA-id i frågan motsvarar en vårdenhet och att svaret då returneras med en flagga som informerar om att enheten är en vårdenhet / Tillägg av ytterligare felfall | Robert Lundmark |  |
| 1.0_RC2 |  | 2014-03-18 | Justeringar enligt avstämning med Ineras IT-arkitekt och A&R I samt efter intern genomgång: / Infört två alternativ för hantering av flera anslutna tjänsteproducenter (katalogtjänster) med beskrivning av fördelar för respektive alternativ / Justering av hänvisning till arkitekturella beslut (nu gemensamma för tre domäner), borttag av referenser till borttagna AB:n samt justering av numrering av övriga AB:n / Justerat skrivning om styrning av åtkomst / Borttag av några exempel på krav som kan ställas på tjänstekonsument / Borttag av referens till HSA-policyn för krav på producent / Borttag av SLA-krav på antal avbrott och längd på avbrott | Henrika Littorin, Ronny Nilsson |  |
| 1.0.0.RC_03 |  | 2014-07-22 | Justeringar enligt granskningsprotokoll VIS samt T / Benämning av domänen på förstasidan samt svenskt namn på domänen / Överflytt av beskrivning av alternativ för aggregering/engagemangsindex till AB / Överfört till ny mall | Henrika Littorin |  |
| 1.0_RC4 |  | 2014-09-05 | Återgått till gammal benämning av versioner enligt besked från Leo Röjerås / Tillägg av nytt avsnitt ”Svenskt namn” samt justering under rubriken WEB beskrivning enligt ny mall för TKB | Henrika Littorin, Inera AB |  |
| 1.0_RC5 |  | 2014-10-22 | Korrigerat felkoder och varningar. | Robert Lundmark, Cybercom AB |  |
| 1.0.1_RC1 |  | 2015-02-24 | Ny metod getHealthCareUnitIncludingManager / Tagit bort RC-nummer för tjänstekontrakt / Förtydligat att getHealthCareUnit även gäller funktioner | Robert Lundmark, Cybercom AB |  |
| 1.1_RC1 |  | 2015-07-30 | Lagt till stöd för fingerade objekt i alla metoder / Nya felfall Vårdgivare finns inte i katalogen och Det går inte att hitta några vårdenheter under vårdgivaren / Uppdaterat referens till HSA-schemat samt kompletterat inbäddat schema för tjänstedomänerna | Robert Lundmark Cybercom AB, Henrika Littorin, Inera AB |  |
| 1.2_RC1 |  | 2015-10-14 | Lagt till stöd för arkiverade objekt i metoderna
getHealthCareUnit
getHealthCareUnitIncludingManager
getHealthCareUnitList
getHealthCareUnitMembers | Robert Lundmark Cybercom AB |  |
| 1.3_RC1 |  | 2016-04-11 | Ändrat kardinalitet för fälten healthCareUnitMemberHsaId och healthCareUnitMemberName till att inte längre vara obligatoriska. / Förtydligat hur argumentet searchBase används i metodanropen. | Robert Lundmar Cybercom AB |  |
|  |  |  |  |  |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – :directory:organization | Version 1.0_RC4, 2014-09-05 | http://rivta.se/domains/_directory_organization.html |
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
infrastruktur:katalogtjänster:organisation
organisation

### WEB beskrivning
Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrade och aktuella organisations-, enhets- och funktionsuppgifter.
Användningsområden utgörs främst av
Publika vårdsökningar efter kontaktinformation till enheter verksamma inom vård och omsorg
Hämtning av information om vårdgivare och vårdenheter kopplade till Patientdatalagen, PDL

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om version .
Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

#### Oförändrade tjänstekontrakt

#### Nya tjänstekontrakt
Inga tjänstekontrakt har tillkommit.

#### Förändrade tjänstekontrakt
GetHealthCareUnit
GetHealthCareUnitIncludingManager
Se kontraktsbeskrivningar under kap 6.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
1.

## Tjänstedomänens arkitektur

### Flöden

#### Flöde – Hämta specificerad informationsmängd
Kataloginformation om organisation och enheter/funktioner kan användas för många olika syften och behovet av information ser då också olika ut. Principen för informationshämtningen är dock densamma och kan beskrivas med samma flöde.
Ett stort och viktigt användningsområde för katalogtjänster inom vård och omsorg är vårdsökningar där en användare på en webbsida söker efter till exempel en sjukgymnastikmottagning i Oxelösund eller information om vart de ska vända sig med akut halsfluss när klockan är sju på en fredag kväll. Sökalgoritmerna skapas i detta fall av tjänstekonsumentens tjänst (webbsidan), men tjänsteproducentens tjänst bidrar med information om vilka vårdmottagningar som finns, vilken typ av verksamhet de bedriver samt öppettider och annan kontaktinformation.
Andra exempel på befintliga användningar är presentation av olika typer av förvalslistor i gränssnitt riktade mot vårdpersonal (t.ex. vilka vårdenheter som ingår i en vårdgivares verksamhet eller vilka mottagningar som tillhör en klinik) eller detaljerad kontaktinformation till en enhet, funktion eller person. Informationen skulle också kunna sägas stödja en behörighetshantering baserad personliga/anställningsrelaterade egenskaper, då tjänstekontrakten också levererar behörighetsgrundande information i form av t.ex. tillhörighet till legitimerad yrkesgrupp och befattning.
Samtliga dessa användningsområden kan beskrivas med nedanstående övergripande flöde.
Tjänstekontrakten som idag stödjer detta flöde är
GetHealthCareUnit (se avsnitt 6.1)
GetHealthCareUnitList (se avsnitt 6.2)
GetHealthCareUnitMembers (se avsnitt 6.3)
GetUnit (se avsnitt 6.4)
GetHealthCareUnitIncludingManager (se avsnitt 6.5)
Fler tjänstekontrakt kan komma att utvecklas varefter behov uppstår.

##### Arbetsflöde
Flödet startar generellt när en användare i tjänstekonsumentens tjänst (nedan kallad Tjänsten) önskar åtkomst till viss information som finns i tjänsteproducentens tjänst (nedan kallad Katalogen)
Exempel på önskemål kan vara att se detaljerad information en enhet, funktion eller person eller att se en lista över valbara vårdenheter vid registrering i ett kvalitetsledningssystem
Tjänsteproducenten kan här antingen hämta den efterfrågande informationsmängden i det ögonblick då användaren försöker få åtkomst till informationen eller i förväg genom regelbunden (ofta dygnsvis) inhämtning av den totala informationsmängd som överenskommits i anslutningen
Relevanta inparametrar extraheras och skickas i överenskommet tjänstekontrakt till Katalogen
Vilka inparametrar som är relevanta definieras i respektive kontrakt
Katalogen verifierar om aktuellt objekt återfinns i Katalogen, baserat på inskickade inparametrar
Om så inte är fallet skickas ett meddelande till Tjänsten att objektet saknas och flödet fortsätter då enligt punkt 6.
Om objektet återfinns i Katalogen extraheras de egenskaper som specificerats i aktuellt tjänstekontrakt och skickas till Tjänsten
Egenskaper för det eller de objekt som returnerats från Katalogen behandlas i Tjänsten
Irrelevant information sållas bort, eventuell nödvändig översättning av attributinnehåll görs och informationen läggs in i Tjänstens layout/mallar för presentation av information
Vissa tjänster använder även information från andra källor, t.ex. Nationella Patientenkäten eller Mina vårdkontakter som då också läggs ihop med informationen från Katalogen enligt ovan
Tjänsten meddelar användaren resultatet av sökningen och presenterar den information som erhållits från Katalogen samt eventuella andra informationskällor

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Användare | Kan utgöras av allmänheten (en person som gör en vårdsökning på en publik webbplats) eller av en medarbetare inom vården (som söker information om tillgängliga enheter eller kontaktinformation till en specifik enhet) |
|  |  |

##### Flödesdiagram

#### Obligatoriska kontrakt

| Tjänstekontrakt | Flöde |
| :--- | :--- |
| GetHealthCareUnit (se avsnitt 6.1) | Hämta specificerad informationsmängd |
| GetHealthCareUnitList (se avsnitt 6.2) | Hämta specificerad informationsmängd |
| GetHealthCareUnitMembers (se avsnitt 6.3) | Hämta specificerad informationsmängd |
| GetUnit (se avsnitt 6.4) | Hämta specificerad informationsmängd |
| GetHealthCareUnitIncludingManager (se avsnitt 6.5) | Hämta specificerad informationsmängd |

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
Sammansatta attribut saknad någon del (t ex öppettider)

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
För tjänstedomänen utnyttjas befintliga strukturer inom HSA för förvaltning och vidareutveckling av informations- och meddelandemodeller, se även AB-2.4 [R2]. Två gånger per år införs genomarbetade och beslutade ändringar i informationsmodellen enligt särskild process.
Nuvarande informationsmodell beskrivs i RIV Informationsspecifikation HSA Struktur och Innehåll []. Ingen mappning mot nationellt fackspråk är genomförd av skäl som beskrivs i AB-2.5 [R1].

### Formatregler

#### RIV-specifikation
Formatregler för tjänstedomänen specificeras i RIV Informationsspecifikation HSA Struktur och Innehåll [], se även AB-2.6 [R1]. Ytterligare detaljer finns i även schemabeskrivningen för respektive tjänstekontrakt, se avsnitt 6.

## Tjänstekontrakt

### GetHealthCareUnit
Metoden söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitMemberHsaId | String | HSA-id för en enhet eller funktion som är kopplad till en vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnit | HealthCareUnitType |  | 0..1 |
| ..healthCareUnitMemberHsaId | String | Enhetens (funktionens) HSA-id | 0..1 |
| ..healthCareUnitMemberName | String | Enhetens (funktionens) namn | 0..1 |
| ..healthCareUnitMemberStartDate | dateTime | Startdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitMemberEndDate | dateTime | Slutdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id | 1..1 |
| ..unitIsHealthCareUnit | Boolean | True, om enheten (funktionen) själv är en vårdenhet
Om enheten (funktionen) inte är vårdenhet kommer inget värde att returneras. | 0..1 |
| ..healthCareUnitName | String | Vårdenhetens namn | 1..1 |
| ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn | 1..1 |
| ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer | 1..1 |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. | 0..1 |
| ..feignedHealthCareUnitMember | Boolean | true: om enheten är ett fingerat objekt | 0..1 |
| ..feignedHealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt | 0..1 |
| ..feignedHealthCare | Boolean | true: om vårdgivaren är ett fingerat objekt | 0..1 |
| ..ealthCareUnitMember | Boolean | true: om enheten är ett arkiverat objekt | 0..1 |
| ..ealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt | 0..1 |
| ..ealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetHealthCareUnit används följande sökningar/sökbaser:
- Sök efter kopplad enhet: i anropet angiven sökbas
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter vårdgivare: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareUnit | 10 anrop/s | 100 ms |

###### Logiska fel

#### Annan information om kontraktet
Information returneras endast om angiven enhet är kopplad till en vårdenhet, om den angivna enheten inte är det, t ex om den i sig själv är en vårdenhet, returneras ingen vårdenhetsinformation.

### GetHealthCareUnitList
Metoden söker fram och listar en angiven vårdgivares alla vårdenheter, definierade enligt PDL. Kan användas av tjänstekonsumenten för att t.ex. skapa en förvalslista i ett användargränssnitt.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareProviderHsaId | String | Vårdgivarens HSA-id. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas.

searchBase används både för sökning av den kopplade enheten, vårdenheten och vårdgivaren. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnitList | HealthCareUnitListType |  | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn | 1..1 |
|  |  |  |  |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. | 0..1 |
| ..feigned | Boolean | true: om vårdgivaren är ett fingerat objekt | 0..1 |
| ..ealthCareProvider | Boolean | true: om vårdgivaren är ett arkierat objekt | 0..1 |
| ..healthCareUnit | HealthCareUnitType | Ingående vårdenhet enligt PDL | 0..n |
| .. ..healthCareUnitHsaId | String | HSA-identitet ingående enhet | 1..1 |
| .. ..healthCareUnitName | String | Namn ingående enhet | 1..1 |
| .. ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. | 0..1 |
| .. ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. | 0..1 |
| .. ..feigned | Boolean | true: om vårdenheten är ett fingerat objekt | 0..1 |
| .. ..ealthCareUnit | Boolean | true: om vårdenheten är ett arkierat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetHealthCareUnitList används följande sökningar/sökbaser:
- Sök efter vårdgivaren: i anropet angiven sökbas
- Sök efter vårdenheter: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareUnitList | 1 anrop/s | 2000 ms |

###### Logiska fel

#### Annan information om kontraktet
-

### GetHealthCareUnitMembers
Metoden söker fram alla kopplade enheter för den angivna vårdenheten. Kan användas av tjänstekonsumenten för att se vilka mottagningar och avdelningar som ingår i en klinik eller för att i ett användargränssnitt skapa en förvalslista med samtliga arbetsplatskoder kopplade till vårdenheten. Notera särskilt att alla enheter inte är kopplade till en vårdenhet och att samtliga arbetsplatskoder inte finns registrerade.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnitMembers | HealthCareUnitMembersType | Information om vårdenheten och dess kopplade enheter | 0..1 |
| ..healthCareUnitName | String | Vårdenhetens namn. | 1..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id | 1..1 |
| ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareUnitPrescriptionCode | String | Vårdenhetens arbetsplatskod(-er) | 0..n |
| ..telephoneNumber | String | Vårdenhetens publika direkttelefonnummer. | 0..n |
| ..postalAddress | AddressType | Vårdenhetens postadress. | 0..1 |
| .. ..addressLine | String | Adressrader | 1..n |
| ..postalCode | String | Vårdenheten postnummer där verksamheten bedrivs | 0..1 |
| ..feigned | Boolean | true: om vårdenheten är ett fingerat objekt | 0..1 |
| ..ealthCareUnit | Boolean | true: om vårdenheten är ett arkierat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
| ..healthCareUnitMember | HealthCareUnitMemberType | Information om en kopplad enhet | 0..n |
| .. .. healthCareUnitMember Name | String | Den kopplade enhetens namn | 1..1 |
| .. .. healthCareUnitMember HsaId | String | Den kopplade enhetens HSA-id | 1..1 |
| .. ..healthCareUnitMember StartDate | dateTime | Startdatum för kopplade enhetens verksamhet. | 0..1 |
| .. ..healthCareUnitMember EndDate | dateTime | Slutdatum för kopplade enhetens verksamhet. | 0..1 |
| .. .. healthCareUnitMember PrescriptionCode | String | Den kopplade enhetens arbetsplatskod(-er) | 0..n |
| .. ..healthCareUnitMember TelephoneNumber | String | Den kopplade enhetens publika direkttelefonnummer | 0..n |
| .. .. healthCareUnitMember postalAddress | AddressType | Den kopplade enhetens postadress | 0..1 |
| .. .. ..addressLine | String | Adressrader | 1..n |
| .. .. healthCareUnitMember postalCode | String | Den kopplade enhetens postnummer för där verksamheten bedrivs. | 0..1 |
| .. .. | Boolean | true: om enheten är ett fingerat objekt | 0..1 |
| .. .. | Boolean | true: om enheten är ett arkierat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetHealthCareUnitMembers används följande sökningar/sökbaser:
- Sök efter vårdenheten: i anropet angiven sökbas
- Sök efter kopplade enheter: här används sökbasen c=se

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Vårdenhet med kopplade enheter eller inte | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| Svarstid för vårdenhet utan kopplade enheter | 10 anrop/s | 100 ms |
| Svarstid för vårdenhet med kopplade enheter | 1 anrop/s | 1000 ms |

###### Logiska fel

#### Annan information om kontraktet
-

### GetUnit
GetUnit returnerar information om den angivna enheten (med enhet avses här alla typer av organisatoriska objekt, d.v.s. både organisation, enhet och funktion). Kan användas av tjänstekonsumenten för att presentera detaljerad information om en enhet i t.ex. en vårdsökning eller en kontaktlista. Notera särskilt att alla attribut inte är obligatoriska och att ytterst få enheter innehåller samtlig information enligt nedan specifikation.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| unitHsaId | String | HSA-id för sökt organisatorisk enhet. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| unit | unitType | Information om den angivna organisatoriska enheten | 0..1 |
| ..alternateName | String | Alternativt namn på enheten som används vid sidan av det officiella namnet (se även publicName). | 0..n |
| ..alternateText | String | Beskrivande text till jpegPhoto/bild på enhet. | 0..1 |
| ..businessClassification | BusinessClassificationType | Verksamhetskod | 0..n |
| .. ..businessClassificationName | String | Verksamhetskod(-er) i klartext | 1..1 |
| .. ..businessClassificationCode | String | Verksamhetskod(-er) kod | 1..1 |
| ..businessType | String | Klassificering av enhet (t.ex. sjukhus). | 0..n |
| ..careType | String | Vårdform. | 0..n |
| ..county | String | Namn på län. | 0..1 |
| ..countyCode | String | Kod för län. | 0..1 |
| ..description | String | Allmän beskrivning för enheten. | 0..1 |
| ..directoryContact | String | Mailadress till ansvarig för informationen om enheten. Uppgiften hämtas från enheten eller från något överliggande objekt (det närmast överliggande objekt där det finns definierat). | 0..1 |
| ..displayOption | String | Används för att beräkna enhetens publika / namn (publicName). | 0..1 |
| ..dropInHour | TimeSpan | Tider för dropin-besök (utan tidbokning). | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..mail | String | Mailadress till enheten. | 0..1 |
| ..facsimileNumber | Telefon | Faxnummer till enheten. | 0..n |
| ..geographicalCoordinatesRt90 | GeoCoordRt90Type | Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt RT90. | 0..1 |
| .. ..xCoordinate | String | X-koordinat. | 1..1 |
| .. ..yCoordinate | String | Y-koordinat. | 1..1 |
| ..geographicalCoordinatesSWEREF99 | GeoCoordSWEREF99Type | Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt SWEREF99. | 0..1 |
| .. ..nCoordinate | String | X-koordinat. | 1..1 |
| .. ..eCoordinate | String | Y-koordinat. | 1..1 |
| ..healthCareArea | String | Geografiskt definierat område för någon typ av administrativt indelning. | 0..1 |
| ..destinationIndicator | String | Anger vilka parter som får ta del av enhetens information. | 0..n |
| ..unitHsaId | String | Enhetens HSA-id | 1..1 |
| ..jpegPhoto | String | Bild för enheten. Base-64-format. | 0..1 |
| ..jpegLogotype | String | Logotype för enheten. Base-64-format. | 0..1 |
| ..labeledUri | String | Fullständig webbadress (inklusive http://  eller https://) | 0..1 |
| ..location | String | Namn på geografiskt område där enheten i huvudsak är placerad. | 0..1 |
| ..webPage1177 | String | Länk till Enhetens sida på 1177.se (om enheten är publik och finns på 1177.se) | 0..1 |
| ..management | String | Ägarform i klartext. | 0..n |
| ..municipality | String | Namn på kommun. | 0..1 |
| ..municipalityCode | String | Kod för kommun. | 0..1 |
|  |  |  |  |
| ..unitName | String | Namnet på enheten | 1..1 |
| ..patientInformation | String | Informationstext till patienter. | 0..1 |
| ..postalAddress | Address | Postadress. | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..n |
| ..postalCode | String | Postnummer där verksamheten bedrivs | 0..1 |
| ..priceInformation | String | Prisinformation. | 0..1 |
| ..publicName | String | Publikt officiellt namn.
Det publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption.
Om displayOption saknas beräknas det publika namnet enligt:
enhetens namn <blanktecken> location | 1..1 |
| ..relatedUnitHsaId | String | HSA-identitet på en enhet som på något sätt hör ihop med aktuell enhet. | 0..n |
| ..route | String | Vägbeskrivning. | 0..1 |
|  |  |  |  |
| ..street | String | Besöksadress (gatuadress). | 0..1 |
| ..surgeryHour | TimeSpan | Öppettider. | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..switchboardNumber | Telefon | Telefonnummer till växel | 0..1 |
| ..telephoneHour | TimeSpan | Telefontider | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..textTelephoneNumber | Telefon | Texttelefonnummer för personer med tal- eller hörselhandikapp. | 0..n |
| ..unitExtraInformation | String | Kompletterande information om enheten | 0..1 |
| ..unitFunction | UnitFunctionType | Information från direkt underliggande funktionsobjekt med  reservera funktionsnamn Avbokning Rådgivning | 0..n |
| .. ..name | String | unktionens namn (se ). | 1..1 |
| .. ..telephoneHour | TimeSpan | Telefontider för telefonnummer i parametern telephoneNumber. | 0..n |
| .. .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..telephoneNumber | Telefon | Publikt direkttelefonnummer. | 0..n |
| ..unitTemporaryInformation | DateSpan | Tillfällig information om enheten. | 0..1 |
| .. ..fromDate | String | Från datum. Exempel: 20101123 | 0..1 |
| .. ..toDate | String | Till datum. Exempel: 20101131 | 0..1 |
| .. ..temporaryInformation | String | Tillfällig information | 1..1 |
| ..visitingHour | TimeSpan | Besökstider för anhöriga. | 0..n |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| ..visitingRuleAge | AgeSpan | Åldersintervall på patienter som tas emot. | 0..1 |
| .. ..fromAge | String | Från ålder. 00 för nyfödd. | 1..1 |
| .. ..toAge | String | Till ålder. 99 för ingen övre åldersgräns. | 1..1 |
| .. ..comment | String | Kommentar till åldersintervallet | 0..1 |
| ..referralRules | String | Beskrivning av remisskrav. | 0..1 |
| ..visitingRules | String | Besöksregler | 0..1 |
| ..unitStartDate | dateTime | Startdatum för enhetens verksamhet | 0..1 |
| ..unitEndDate | dateTime | Slutdatum för enhetens verksamhet | 0..1 |
| ..feigned | Boolean | true: om enheten är ett fingerat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetUnit används följande sökningar/sökbaser:
- Sök efter enheten: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetUnit | 10 anrop/s | 200 ms |

###### Logiska fel

#### Annan information om kontraktet
-

### GetHealthCareUnitIncludingManager
Metoden söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. Kan användas av tjänstekonsumenten för att koppla ihop en enhet eller funktion i ett vårdsystem med vårdenhet i enlighet med PDL. Notera särskilt att alla enheter inte är kopplade till en vårdenhet. Om enheten i sig själv är utpekad som vårdenhet markeras detta med en flagga i svaret. Metoden är identisk med GetHealthCareUnit men innehåller även attribut för utpekad verksamhetschef i söksvaret.

#### Version
Version på detta kontrakt är .

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i nedan inklippta Exceldokument, med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitMemberHsaId | String | HSA-id för en enhet (funktion) som är kopplad till en vårdenhet enligt PDL. | 1..1 |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| healthCareUnit | HealthCareUnitType |  | 0..1 |
| ..healthCareUnitMemberHsaId | String | Enhetens (funktionens) HSA-id | 0..1 |
| ..healthCareUnitMemberName | String | Enhetens (funktionens) namn | 0..1 |
| ..healthCareUnitMemberStartDate | dateTime | Startdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitMemberEndDate | dateTime | Slutdatum för enhetens (funktionens) verksamhet | 0..1 |
| ..healthCareUnitHsaId | String | Vårdenhetens HSA-id | 1..1 |
| ..unitIsHealthCareUnit | Boolean | True, om enheten själv är en vårdenhet
Om enhet inte är vårdenhet kommer inget värde att returneras. | 0..1 |
| ..healthCareUnitName | String | Vårdenhetens namn | 1..1 |
| ..healthCareUnitManager | String | HSA id till utpekad verksamhetschef | 0..1 |
| ..healthCareUnitStartDate | dateTime | Startdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareUnitEndDate | dateTime | Slutdatum för vårdenhetens verksamhet. | 0..1 |
| ..healthCareProviderHsaId | String | Vårdgivarens HSA-id | 1..1 |
| ..healthCareProviderName | String | Vårdgivarens namn | 1..1 |
| ..healthCareProviderOrgNo | String | Vårdgivarens organisationsnummer | 1..1 |
| ..healthCareProviderStartDate | dateTime | Startdatum för vårdgivarens verksamhet. | 0..1 |
| ..healthCareProviderEndDate | dateTime | Slutdatum för vårdgivarens verksamhet. | 0..1 |
| ..feignedHealthCareUnitMember | Boolean | true: om enheten är ett fingerat objekt | 0..1 |
| ..feignedHealthCareUnit | Boolean | true: om vårdenheten är ett fingerat objekt | 0..1 |
| ..feignedHealthCare | Boolean | true: om vårdgivaren är ett fingerat objekt | 0..1 |
| ..feignedHealthCareUnitManager | Boolean | true: om vårdenhetens verksamhetschef är ett fingerat objekt | 0..1 |
| ..ealthCareUnitMember | Boolean | true: om enheten är ett arkiverat objekt | 0..1 |
| ..ealthCareUnit | Boolean | true: om vårdenheten är ett arkiverat objekt | 0..1 |
| ..ealthCareProvider | Boolean | true: om vårdgivaren är ett arkiverat objekt | 0..1 |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) searchBase
För GetHealthCareUnitIncludingManager används följande sökningar/sökbaser:
- Sök efter kopplad enhet: i anropet angiven sökbas
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter vårdgivare: i anropet angiven sökbas
- Sök efter verksamhetschef: i anropet angiven sökbas

##### Icke funktionella krav

###### SLA-krav
Svarstider är specifika för respektive tjänstekontrakt.
Krav på svarstider är dock inte definierade idag, men följande svarstidsnivå uppfylls idag (förutsatt SSL-uppkoppling):

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetHealthCareUnit | 10 anrop/s | 100 ms |

###### Logiska fel

#### Annan information om kontraktet
Information returneras endast om angiven enhet är kopplad till en vårdenhet, om den angivna enheten inte är det, t ex om den i sig själv är en vårdenhet, returneras ingen vårdenhetsinformation.
