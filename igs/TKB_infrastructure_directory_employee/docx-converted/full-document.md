
|  | infrastructure:directory:employee / Tjänstekontraktsbeskrivning / Version 4.0 / ARK_0015 / 2025-10-13 |
| :--- | :--- |
Innehåll
1	Inledning	10
1.1	Svenskt namn	10
2	Versionsinformation	10
2.1	Version 4.0	10
2.1.1	Oförändrade tjänstekontrakt	10
2.1.2	Nya tjänstekontrakt	10
2.1.3	Förändrade tjänstekontrakt	10
2.1.4	Utgångna tjänstekontrakt	12
2.2	Version tidigare	12
3	Tjänstedomänens arkitektur	12
3.1	Flöden	12
3.1.1	Hämta information om en person	12
3.1.2	Hämta information om personal med vårdmedarbetaruppdrag inom en vårdenhet	13
3.1.3	Obligatoriska kontrakt	13
3.2	Adressering	14
3.3	Aggregering och engagemangsindex	14
4	Tjänstedomänens krav och regler	14
4.1	Informationssäkerhet och juridik	15
4.2	Icke funktionella krav	15
4.2.1	SLA krav	15
4.3	Felhantering	15
4.3.1	Krav på en tjänsteproducent	16
4.3.2	Krav på en tjänstekonsument	17
5	Tjänstedomänens meddelandemodeller	17
5.1	V-MIM	17
5.2	Formatregler	17
5.2.1	RIV-specifikation	17
6	Tjänstekontrakt	18
6.1	GetEmployeeIncludingProtectedPerson	18
6.1.1	Version	18
6.1.2	Fältregler	18
6.1.3	Tjänstekontraktsspecifika krav och regler	22
6.1.4	SLA-krav	22
6.1.5	Logiska fel	22
6.1.6	Annan information om kontraktet	23
6.2	GetEmployee	24
6.2.1	Version	24
6.2.2	Fältregler	24
6.3	GetCommissionMembersIncludingProtectedPerson	25
6.3.1	Version	25
6.3.2	Fältregler	25
6.3.3	Tjänstekontraktsspecifika krav och regler	28
6.3.4	SLA-krav	28
6.3.5	Logiska fel	28
6.3.6	Annan information om kontraktet	29
6.4	GetCommissionMembers	30
6.4.1	Version	30
6.4.2	Fältregler	30
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
| 2.0_RC1 |  | 2016-10-24 | Ändrat tilltalsnamn till icke-obligatorisk parameter / Justerat felhantering enligt avstämning med A&R / Justerat skrivning om adressering efter input från Tommy Carlsson. / Uppdaterat/förtydligat textuella beskrivningar av attributen HSA-id och e-postadress i schemat utifrån förändringar i HSA-schema version 4.6.1 och 4.7. / Kompletterat Excel-schemat med beskrivning av tjänstekontraktsparametrar som inte tekniskt är attribut (healthCareUnitHsaId etc.) / Ensat benämningar för arkiverade och fingerade objekt / Justerat referens till ”Råd utlämnande av information från HSA” samt justerat versioner för HSA-policy och HSA-schema. / Tagit bort labeledURI för GetEmployee / Ändrat kardinalitet för paTitleName och paTitleCode för GetEmployee / Ändra domännamn / Bytt domännamn | Henrika Littorin, Inera AB / Ronny Nilsson, Inera AB / Robert Lundmark, Inera AB |  |
| 2.0_RC2 |  | 2017-07-07 | Uppdaterat efter granskningskommentarer: / Flödesschemana ersatta av Sekvensdiagram / Referenser till nya Informations specifikationen, även införda per attribut i anrop och svar – därmed har exceldokumenten också kunnat tas bort. / Kapitlet om informationssäkerhet ersatt med ref till Informationsspecifikationen / Nytt krav vid bulk-uppdatering infört | Ronny Nilsson Inera AB |  |
| 2.0_RC3 |  | 2017-08-24 | Bytt tillbaka till tidigare domännamn enligt beslut i A&R / Justerat länkar efter ny Inera-webb / Tagit bort referens till AB som beskrivit undantag från kravet att mappa mot nationellt fackspråk då detta är gjort i den senaste informationsspecifikationen | Henrika Littorin, Inera AB |  |
| 2.0 |  | 2017-11-30 | Godkänd av Inera A&R |  |  |
| 2.1_RC1 | PA1 | 2018-02-10 | Ändring av kontrakten 
m a p avvikande telefontider, sms-telefonnummer och språkkod | Ronny Nilsson, Inera AB |  |
| 2.1_RC1 | PA2 | 2018-02-27 | Uppdatering av versionsnummer enligt RivTa | Robert Lundmark, Cybercom AB |  |
| 2.1_RC1 | PA3 | 2018-03-07 | Uppdatering utifrån intern granskning | Ronny Nilsson, Inera AB |  |
| 2.1 |  | 2018-04-11 | Fastställd version | Ronny Nilsson, Inera AB |  |
| 2.2_RC1 | PA1 | 2019-06-18 | Ny version för att ersätta hsaws. GetEmployee och GetEmployeeIncludingProtectedperson har uppdaterats med två returparametrar age och gender som returneras om en inparameter profile har värdet extended1 | Ronny Nilsson, Inera AB |  |
| 2.2 |  | 2019-12-18 | Fastställd version | Robert Lundmark, Cybercom AB |  |
| 3.0_RC1 |  | 2021-02-09 | Rättning av fält healthCareProfessionalLicenceSpeciality för GetCommissionMembers

Nya värden för profile i begäran för GetEmployee | Robert Lundmark,
Cybercom AB |  |
| 3.0 |  | 2021-03-10 | Release version 3.0 | Robert Lundmark, Cybercom AB |  |
| 3.0.1_RC1 |  | 2022-01-12 | Anpassning av nomenklaturen efter Behörighetsmodell för vård och omsorg. / Översyn och korrigering av referenser samt beskrivningar i avsnitten 3, 4 och 5. Justerat sidhuvud och sidfot enligt Ineras nu gällande dokumentmall. / Klar för formell granskning, baserat på godkänd i informell granskning av TKB för relaterad domän (TFF- 821524). | Henrika Littorin, Inera AB |  |
| 3.0.1 |  | 2022-01-28 | Godkänd granskning (VG-TFF-860525) | Robert Lundmark, Knowit |  |
| 3.0.2 |  | 2024-04-03 | Inga dokumentändringar | Robert Lundmark, Knowit |  |
| 4.0_RC1 |  | 2025-06-11 | Justerat felaktighet där attributet gender beskrivs som obligatoriskt i XML-schemat men valfritt enligt TKB. Ska vara valfritt, då gender inte kan sättas för personer registrerade med passuppgifter. Gäller samtliga kontrakt: / GetCommissionMembersIncludingProtectedPerson / GetCommissionMembers / GetEmployeeIncludingProtectedPerson / GetEmployee / Uppdatering för HSA-schema 5.2: / Tillägg av attributet ”strukturerad postadress” i GetEmployee och GetEmployeeIncludingProtectedPerson. / Justerat för namnändring från HSA-policy till HSA Tillitsramverk samt från HPT/HSA-policytillämpning till HSA Tillitsdeklaration. / Tagit bort versionsangivelser för referenser. / Justerat efter förhandsgranskning av TKB för Organisation från Informationsarkitektur. | Henrika Littorin, Inera / Per Grundström, Inera Test och utveckling |  |
| 4.0 |  | 2025-10-13 | Godkänd efter kvalitetssäkring | Per Grundström, Inera Test och utveckling |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut – Infrastructure:directory:employee |  | https://rivta.se/tkview/#/domain/infrastructure:directory:employee |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | Inera A&R Råd Utlämnande av information från HSA |  | www.inera.se/hsa/dokument, under länken Stödjande dokument |
| R4 | Tillitsramverk: HSA Tillitsramverk |  | www.inera.se/hsa/dokument, under länken Styrande dokument |
| R5 | Informationsspecifikation för Katalogtjänst HSA |  | www.inera.se/hsa/dokument, under länken Styrande dokument |
| R6 | Behörighetsmodell för hälso- och sjukvården |  | www.inera.se/hsa/dokument, under länken Stödjande dokument |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
Infrastructure: Directory: Employee
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Infrastruktur Katalogtjänster Medarbetare
Medarbetare

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen Infrastructure: Directory: Employee. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 4.0

#### Oförändrade tjänstekontrakt

#### Nya tjänstekontrakt
Inga tjänstekontrakt har tillkommit.

#### Förändrade tjänstekontrakt
GetCommissionMembersIncludingProtectedPerson
GetCommissionMembers
GetEmployeeIncludingProtectedPerson
GetEmployee
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson |  |  |  |
| GetEmployeeIncludingProtectedPerson |  |  |  |
| GetEmployeeIncludingProtectedPerson |  |  |  |
|  | 3.0 | 4.0 | Icke-kompatibel med avseende på användning av attributet kön (gender), om tjänsten följt XML-schema för domänen.
 Kompatibel för övriga parametrar. |
| GetEmployee | 2.0 | 2.0, 2.1, 2.2 | Kompatibel |
| GetEmployee | 2.1 | 2.0, 2.1, 2.2 | Kompatibel |
| GetEmployee | 2.2 | 2.0, 2.1, 2.2 | Kompatibel |
| GetEmployee | 2.0, 2.1, 2.2 | 3.0 | Kompatibel |
| GetEmployee | 2.0, 2.1, 2,2, 3.0 | 4.0 | Icke-kompatibel med avseende på användning av attributet kön (gender), om tjänsten följt XML-schema för domänen.
 Kompatibel för övriga parametrar. |
| GetCommissionMembersIncludingProtectedPerson | 2.1 | 2.0 | Kompatibel |
| GetCommissionMembersIncludingProtectedPerson | 2.0 | 2.1 | Kompatibel |
| GetCommissionMembersIncludingProtectedPerson | 2.0, 2.1 | 4.0 | Icke-kompatibel med avseende på användning av attributet kön (gender), om tjänsten följt XML-schema för domänen.
 Kompatibel för övriga parametrar. |
| GetCommissionMembers | 2.1 | 2.0 | Kompatibel |
| GetCommissionMembers | 2.0 | 2.1 | Kompatibel |
| GetCommissionMembers | 2.0, 2.1 | 4.0 | Icke-kompatibel med avseende på användning av attributet kön (gender), om tjänsten följt XML-schema för domänen.
 Kompatibel för övriga parametrar. |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Struktur enligt ovan

## Tjänstedomänens arkitektur
Tjänstekontrakten som beskrivs i detta dokument används för att hämta information om personer som är anställd inom eller arbetar på uppdrag av en organisation verksam inom svensk vård och omsorg.
Anropen kan till exempel användas vid uppdatering/kontroll av en intern användardatabas i en tjänst eller i ett sökgränssnitt för att presentera detaljerad information om en person alternativt för att lista all personal som matchar vissa kriteria och har vårdmedarbetaruppdrag inom en vårdenhet.

### Flöden

#### Hämta information om en person
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar information om en person via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaks till den anropande konsumenten. Se Sekvensdiagram nedan.

##### Arbetsflöde 1
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_002.png](images/img_002.png)

#### Hämta information om personal med vårdmedarbetaruppdrag inom en vårdenhet
Flödet för en typisk användning är normalt att en tjänstekonsument hämtar information om personal med vårdmedarbetaruppdrag inom en vårdenhet via en virtuell tjänst som i sin tur anropar tjänsteproducenten samt returnerar svaret från producenten tillbaks till den anropande konsumenten. Se Sekvensdiagram nedan.

##### Arbetsflöde 2
Se Sekvensdiagram nedan.

##### Sekvensdiagram

![img_001.png](images/img_001.png)

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 1 | Flöde 2 |
| :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson (se avsnitt 6.1) | X |  |
| GetEmployee (se avsnitt 6.2) | X |  |
| GetCommissionMembersIncludingProtectedPerson (se avsnitt 6.3) |  | X |
| GetCommissionMembers (se avsnitt 6.4) |  | X |

### Adressering
Tjänstedomänen tillämpar verksamhetsbaserad adressering. Som logisk adress används Inera AB:s HSA-id för Katalogtjänst HSA.

### Aggregering och engagemangsindex
För närvarande är aggregering eller engagemangsindex ej aktuellt, då endast en tjänsteproducent är ansluten till tjänstedomänen.
I samband med att fler tjänsteproducenter ansluter till tjänstedomänen behöver sökningen från anropande tjänstekonsument realiseras mot flera tjänsteproducenter. Vilken alternativ lösning som ska tillämpas när denna situation uppstår är ännu inte beslutat, se AB-2.3 [R1].

## Tjänstedomänens krav och regler
Följande krav skall beaktas då ett system agerar som en tjänstekonsument för tjänstedomänens ingående tjänster.
Autentisering av tjänstekonsument ska alltid ske med SITHS Funktionscertifikat.
Tjänstekonsumenten ansvarar för att ha en kontinuitetsplan för det fall att tjänsteproducentens tjänst inte skulle vara tillgänglig.
Tjänstekonsumenten skall redovisa sin belastning på tjänstedomänen (antalet anrop) till såväl tjänstedomänansvarig som till ansvarig för den/de tjänsteproducenter som tjänstekonsumenten anropar. Eventuella väsentliga ändringar av belastning ska kommuniceras i god tid före effektuering så att tillgänglighet och prestanda kan upprätthållas över tid.
Tjänstekonsumenten skall följa vid var tid gällande villkor för den/de tjänsteproducenter från vilka tjänstekonsumenten hämtar information. Ett exempel på sådana villkor är HSA Tillitsramverk [R4], där informationsägarna bland annat ställer krav på
att all användning av informationen erhållen från tjänsteproducenten ska beskrivas i godkänd HSA Tillitsdeklaration Konsument (alternativt i godkänd HSA Tillitsdeklaration Producent om det handlar om en lokal tjänst).
att tillämpliga lagar och regelverk, t.ex. Dataskyddsförordningen, GDPR, efterlevs
att information som lagras i egen applikation ska skyddas på tillfredställande sätt
att information som lagras i egen applikation ska hållas uppdaterad mot ursprungskällan
att intern revision genomförs årligen för kontroll av efterlevnad till HSA Tillitsramverk
Anslutna tjänsteproducenter kan ha egna processer för godkännande av tjänstekonsumenter som anropar tjänsteproducentens katalogtjänst.
OBS Vid anrop i syfte att uppdatera en lokal DB med aktuella uppgifter från producenten, så ska konsumenten bara använda 1 tråd, dvs göra ett anrop och sedan vänta på och ta emot svaret innan nästa anrop görs, och med en 50 ms paus mellan anropen. Detta för att kunna garantera svarstider för övriga användare.

### Informationssäkerhet och juridik
Se Informationsspecifikationen [R5].

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänstekontrakt inom domänen. Observera att för en konsument kan tillgängligheten bli något lägre utifrån t.ex. mellanliggande kommunikationsutrustning, kommunikationsnät och användning av regional tjänsteplattform.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid |  | Definieras per tjänstekontrakt i avsnitt 6. |
| Tillgänglighet | 24x7, 99,9% |  |
| Last |  | Definieras per tjänstekontrakt i avsnitt 6. |
| Aktualitet | 10 minuter | Vid uppdatering av information i katalogtjänsten får det maximalt ta så lång tid innan den informationen används av och returneras via tjänstekontrakten. |
| Återställningstid | 1 dygn | Vid katastrof som bortfall av driftshall |

### Felhantering
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

#### Krav på en tjänsteproducent
Följande krav skall beaktas då ett system agerar som en tjänsteproducent för tjänstedomänens ingående tjänster.
Tjänsteproducenten ansvarar för
att tillhandahålla tjänsten i enlighet med denna tjänstekontraktsbeskrivning med avseende på
tjänstedomänens arkitektur (se avsnitt 3)
informationssäkerhet och juridik (se [R5])
felhantering (både tekniska och logiska fel som beskrivs i detta kapitel)
SLA:er (se avsnitt4.2.1)
informationsinnehåll (specificeras för resp. tjänstekontrakt under avsnitt 6)
tjänstedomänens meddelandemodeller (se avsnitt 5)
att vid behov förmedla kontakt mellan tjänstekonsument och informationsägare, t.ex. i frågor som rör förändring av innehåll
att (vid behov genom kravställning på anslutna organisationer/informationsägare) tillse att
den information som tillhandahålls vid var tid är uppdaterad och korrekt
den information som tillhandahålls vid var tid i möjligaste mån är säkrad mot ursprungskällor
minst omfattar detta: kontroll av namnuppgifter mot Skatteverket samt kontroll av legitimerad yrkesgrupp mot Socialstyrelsens register minst en gång per månad
tillämpliga lagar och regelverk, t.ex. Dataskyddsförordningen, efterlevs
det finns ett dokumenterat regelverk för hur administratörsbehörigheter tilldelas och tas bort
uppgifter om koppling mellan HSA-id och individ arkiveras i enlighet med organisationens gallringsbeslut efter det att anställning upphört
uppgifter om koppling mellan HSA-id och organisation samt mellan HSA-id och vårdgivare/vårdenhet arkiveras efter det att verksamheten upphört
HSA-id behålls då en person byter person-identitet (t.ex. från samordningsnummer till personnummer)
att upprätthålla en organisation för administration samt för mottagande av driftstörningsinformation
att förändringar som görs i tjänsten loggas så att det går att spåra vem som gjort en förändring och när
att särskild hantering av personer med skyddade personuppgifter finns dokumenterad och tillämpas
att årligen genomföra intern revision för att säkerställa att tjänsteproducenten verkligen uppfyller samtliga krav beskrivna i denna tjänstekontraktsbeskrivning

##### Logiska fel
Logiskt fel, d.v.s. förutsättning för att kunna besvara anropet saknas, t ex för att visst nödvändigt objekt eller attributvärde saknas ska hanteras enligt:
Då obligatoriska attribut (som skulle returnerats) saknas. Objekt som saknar obligatoriska attribut (eller där de obligatoriska attributen inte följer specificerad syntax) returneras ej.
Attribut med värde som inte följer gällande värdemängd
Värdemängdsattribut med både kod-del och klartext-del men där dessa inte matchar varandra enligt gällande värdemängd
Attribut med felaktig syntax, t ex
Sammansatta attribut saknad någon del (t ex telefontider)

#### Krav på en tjänstekonsument
Konsumenten behöver hantera de tekniska fel som kan uppstå, t ex uteblivet svar, se ovan.
Dessutom rekommenderas konsumenten ha egna kontroller av den information som returneras.

## Tjänstedomänens meddelandemodeller

### V-MIM
För tjänstedomänen utnyttjas befintliga strukturer inom HSA för förvaltning och vidareutveckling av informations- och meddelandemodeller, se även AB-2.4 [R2]. Två gånger per år införs genomarbetade och beslutade ändringar i informationsmodellen enligt särskild process.
Nuvarande informationsmodell som också inkluderar mappning mot Nationell Informationsstruktur 2017:1 beskrivs i Informationsspecifikation för Katalogtjänst HSA [R5].

### Formatregler

#### RIV-specifikation
Formatregler för tjänstedomänen specificeras i Informationsspecifikation för Katalogtjänst HSA [R5], se även AB-2.6 [R1]. Ytterligare detaljer finns i även schemabeskrivningen för respektive tjänstekontrakt, se avsnitt 6.

## Tjänstekontrakt

### GetEmployeeIncludingProtectedPerson
GetEmployeeIncludingProtectedPerson returnerar information, som kontaktinformation samt legitimerad yrkesgrupp och specialitet, för angiven person. Metoden kan användas av en tjänstekonsument för att t.ex. verifiera uppgifter i en egen intern användardatabas, för att kunna registrera en användare (med HSA-id) baserat på användarens person-id eller för att verifiera behörighet för det fall att denna grundar sig enbart på den personliga egenskapen Legitimerad yrkesgrupp.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.2 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 4.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personHsaId *1) | String | Sökt persons HSA-id. / Ref. HSA-id (hsaIdentity) [R5] | 0..1 |
| personalIdentityNumber *1) | String | Sökt persons Person-id (personnummer eller samordningsnummer)
Ref. person-id (personalIdentityNumber) [R5] | 0..1 |
| searchBase *2) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| profile | String | Anger vilka attribut som returneras i svaret. 
Värde kan skrivas med både stora och/eller små bokstäver. 
Om värdet utelämnas antas värdet vara FULL. Följande värden kan användas.

BASIC:
personHsaId, givenName, middleAndSurName, nickname, dn, protectedPerson, feignedPerson

TITLE:
Alla attribut som returneras av BASIC samt description, title, healthCareProfessionalLicence, healthCareProfessionalLicenceSpeciality, paTitle, specialityName, specialityCode

CONTACT:
Alla attribut som returneras av BASIC samt mail, telephoneNumber, switchboardNumber, nonPublicTelephoneNumber, mobileNumber, facsimileTelephoneNumber, telephoneHour, postalAddress, structuredPostalAddress

FULL:
Alla attribut som returneras av BASIC, TITLE och CONTACT.

extended1:
Alla attribut som returneras av FULL samt age och gender | 0..1 |
| Svar |  |  |  |
| personInformation | PersonInformationType | Information om personen. Om personen har flera person-objekt returneras en instans per objekt. | 0..* |
| ..personHsaId | String | Personens HSA-id. / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..givenName | String | Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter. / Ref. tilltalsnamn (givenName, gn) [R5] | 0..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag
Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5] | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. Får ej användas för presentation, endast för sökning.
Ref. smeknamn (nickName) [R5] | 0..1 |
| ..mail | String | E-postadress. / Ref. e-postadress (mail) [R5] | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer.
Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| ..switchboardNumber | Telefon | Telefonnummer till växel. / Ref. växeltelefon (hsaSwitchboardNumber) [R5] | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer / Ref. tjänstetelefon (hsaTelephoneNumber) [R5] | 0..* |
| ..mobileNumber | Telefon | Mobiltelefonnummer. / Ref. mobiltelefon (mobile) [R5] | 0..* |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. / Ref. fax (facsimileTelephoneNumber) [R5] | 0..* |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). / Ref. telefontid (telephoneHours) [R5] | 0..* |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..fromDate | String | Tiden gäller från och med detta datum | 0..1 |
| .. ..toDate | String | Tider gäller till och med detta datum | 0..1 |
| ..postalAddress | AddressType | Postadress i ostrukturerat format. / Kommer på sikt att ersättas av structuredPostalAddress. / . / Ref. postadress (postalAddress) [R5] | 0..1 |
| .. ..addressLine | String | Adressrad. | 1..* |
| ..structuredPostalAddress | structuredPostalAddressType | Vårdenhetens postadress i strukturerat format. / Kommer på sikt att ersätta postalAddress. / Ref. Strukturerad postadress (hsaPostalAddress) [R5] | 0..1 |
| .. .. addressee | String | Adressat | 1..* |
| .. .. street | String | Gata | 0..1 |
| .. .. premisesNumber | String | Adressplatsnummer | 0..1 |
| .. .. premisesLetter | String | Adressplatslittera | 0..1 |
| .. ..postCode | String | Postnummer | 1..1 |
| .. ..town | String | Postort | 1..1 |
| ..description | String | Generell beskrivning. / Ref. beskrivning (description) [R5] | 0..1 |
| ..title | String | Titel i fritext / Ref. titel (title) [R5] | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] | 0..* |
| ..healthCareProfessionalLicenceSpeciality | HealthCareProfessionalLicenceSpecialityType | Legitimerad yrkesgrupp och specialitet för läkare och tandläkare. Ref. leg.yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5] | 0..* |
| .. ..healthCareProfessionalLicence | String | Kod för Legitimerad yrkesgrupp som nedanstående specialitet hör till. | 1..1 |
| .. ..specialityCode | String | Kod för specialistutbildning utöver grundutbildning | 1..1 |
| .. ..specialityName | String | Klartext för namnet på specialistutbildning utöver grundutbildning | 1..1 |
| ..paTitle | PaTitleType | Personens befattning | 0..* |
| .. ..paTitleName | String | Befattning / Ref. befattning (paTitleName) [R5] | 0..1 |
| .. ..paTitleCode | String | Befattningskod / Ref. befattningskod (paTitleCode) [R5] | 0..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning för läkare eller tandläkare. / Ref. specialitet (specialityName) [R5] | 0..* |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning. / Ref. specialitetskod (specialityCode) [R5] | 0..* |
| ..dn | DN | ”Distinguished Name”. Objektets placering (sökväg) i katalogen, t.ex. cn=Henrika Littorin,ou=Anställda,ou=Enhet Systemförvaltning,ou=Område e-tjänster Drift och Förvaltning,o=Inera AB,c=SE | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras) / Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5] | 0..1 |
| ..feignedPerson | Boolean | true: om personen är ett fingerat objekt / Ref. hjälpklassen Fingerat objekt (hsaFeignedDataObject) [R5] | 0..1 |
| ..age *3) | String | Personens ålder, anges i jämna år. 
Värdet hämtas från personens person- eller samordningsnummer, Ref. person-id (personalIdentityNumber) [R5] eller födelsedatum (hsaPassportBirhtDate) ) [R5]. | 0..1 |
| ..gender *3) | String | Personens kön. 
0, okänt (person saknar person-id) 
1, man 
2, kvinna / Värdet beräknas från personens person- eller samordningsnummer, Ref. person-id (personalIdentityNumber) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
*1) personHsaId och personalIdentityNumber
Exakt ett av fälten personHsaId och personalIdentityNumber ska anges.
*2) searchBase
För GetEmployeeIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter person: i anropet angiven sökbas
*3) Attribut som returneras då inparametern ”profile” är satt till ”extended1” och om underlag finns definierade i personposten:
- age, personens ålder i hela år
- gender, personens kön

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson | 10 anrop/s | 100 ms |

#### Logiska fel
Logiska fel hanteras enligt: Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt person inte kan hittas i katalogen, så returneras tomt svar.
Saknar personobjektet obligatorisk uppgift om HSA-id eller Namn så returneras tomt svar.
Om både personHsaId och personIdentityNumber har angetts som sökparametrar, så är anropet felaktigt och ett soap-fault returneras.
För komplexa returvärden som inte följer specificerad syntax m a p sammansättningen, returneras inte det aktuella värdet. Detta gäller för:
- paTitle som utgår från separata attribut i HSA (kod och klartext) som behöver kunna matchas ihop.
- telephoneHours ska innehålla 4 eller upp till 7 delar (från-dag, till-dag, från-tid, till-tid, ev en kommentar, ev från-datum och ev till-datum) separerade med ”#”.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

### GetEmployee
Är identisk med GetEmployeeIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.1  GetEmployeeIncludingProtectedPerson ovan.

#### Version
Version på detta kontrakt är 4.0

#### Fältregler
Eftersom skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.1.2 Fältregler) aldrig kommer att returneras.

### GetCommissionMembersIncludingProtectedPerson
GetCommissionMembersIncludingProtectedPerson returnerar information, som namn, kontaktinformation samt legitimerad yrkesgrupp och specialitet, om personer som är kopplade till vårdmedarbetaruppdrag för angiven enhet eller organisation och kopplingen är inom ev angivna start- och slutdatum. Listan kan vid behov filtreras. Metoden kan användas av en tjänstekonsument för att t.ex. för en administratör presentera en lista med valbara personer för registrering i en intern användardatabas eller för tilldelning av ärenden.
Detta tjänstekontrakt skiljer sig från kontraktet beskrivet i 6.4 på så sätt att det även ger åtkomst till personer med skyddade personuppgifter. Se AB-2.7 [R1]. Informationsägaren avgör om tjänstekonsumenten ska beviljas åtkomst till personer med skyddade personuppgifter.

#### Version
Version på detta kontrakt är 3.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler. Attributen som levereras beskrivs mer ingående i Informationsspecifikationen [R5], med avseende på t.ex. fältlängder och krav på innehållet.

| Namn | Typ | Beskrivning, Ref Informationsspec. | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| healthCareUnitHsaId | String | HSA-id för vårdenhet enligt PDL.
Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| commissionPurpose | String | Vårdmedarbetaruppdragets ändamål enligt definierad värdemängd. / Ref. vårdmedarbetaruppdragets ändamål  (hsaCommissionPurpose) [R5] | 1..1 |
| commissionRights | String | Vårdmedarbetaruppdragets rättigheter enligt definierade värdemängder. Syntax / Aktivitet;Informationstyp;Omfång, alla delar behöver anges. 
Ref. vårdmedarbetaruppdragets rättigheter  (hsaCommissionRight) [R5] | 0..* |
| healthCareProfessionalLicense | String | Legitimerad yrkesgrupp enligt definierad värdemängd
Ref. legitimerad yrkesgrupp (hsaTitle) [R5] | 0..* |
| searchBase *1) | DN | Sökbas. Om ingen sökbas anges används c=SE som sökbas. | 0..1 |
| includeFeignedObject | boolean | true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras. | 0..1 |
| Svar |  |  |  |
| personInformation | PersonInformationType | Information om personen. / En person (ett HSA-id) returneras bara en gång även om personen är medlem i flera matchande vårdmedarbetaruppdrag Om personen har flera person-objekt returneras en instans per objekt. | 0..* |
| ..personHsaId | String | Personens HSA-id. / Ref. HSA-id (hsaIdentity) [R5] | 1..1 |
| ..givenName | String | Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter.
Ref. tilltalsnamn (givenName, gn) [R5] | 0..1 |
| ..middleAndSurName | String | Mellan- och Efternamn separerade med mellanslag
Ref. mellannamn (middleName) [R5] / Ref. efternamn (sn, surName) [R5] | 1..1 |
| ..nickName | String | Smeknamn. Används då tilltalsnamn inte är det namn som personen vill använda/bli tilltalad med. Får ej användas för presentation, endast för sökning.
Ref. smeknamn (nickName) [R5] | 0..1 |
| ..personStartDate | dateTime | Eventuellt startdatum för personens anställning. Om startdatum ännu inte inträtt innebär det att personens anställning ännu inte är aktiv.
Ref. startdatum (startDate) [R5] | 0..1 |
| ..personEndDate | dateTime | Eventuellt slutdatum för personens anställning. Om slutdatum passerats innebär det att personens anställning inte är aktiv.
Ref. slutdatum (endDate) [R5] | 0..1 |
| ..mail | String | E-postadress.
Ref. e-postadress (mail) [R5] | 0..1 |
| ..telephoneNumber | Telefon | Publikt direkttelefonnummer.
Ref. direkttelefon (telephoneNumber) [R5] | 0..* |
| ..switchboardNumber | Telefon | Telefonnummer till växel.
Ref. växeltelefon (hsaSwitchboardNumber) [R5] | 0..1 |
| ..nonPublicTelephoneNumber | Telefon | Tjänstetelefonnummer.
Ref. tjänstetelefon (hsaTelephoneNumber) [R5] | 0..* |
| ..mobileNumber | Telefon | Mobiltelefonnummer. / Ref. mobiltelefon (mobile) [R5] | 0..* |
| ..facsimileTelephoneNumber | Telefon | Faxnummer. / Ref. fax (facsimileTelephoneNumber) [R5] | 0..* |
| ..telephoneHour | TimeSpan | Telefontider för publik telefon (telephoneNumber). / Ref. telefontid (telephoneHours) [R5] | 0..* |
| .. ..fromDay | String | Från dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..fromTime | Time | Från tid. Format enligt ISO-8601. | 1..1 |
| .. ..toDay | String | Till dag. Måndag (1) – Söndag (7). | 1..1 |
| .. ..toTime | Time | Till tid. Format enligt ISO-8601. | 1..1 |
| .. ..comment | String | Information om aktuellt tidsintervall. | 0..1 |
| .. ..fromDate | String | Tiden gäller från och med detta datum | 0..1 |
| .. ..toDate | String | Tider gäller till och med detta datum | 0..1 |
| ..title | String | Titel i fritext / Ref. titel (title) [R5] | 0..1 |
| ..healthCareProfessionalLicence | String | Legitimerad yrkesgrupp / Ref. legitimerad yrkesgrupp (hsaTitle) [R5] | 0..* |
| ..paTitle | PaTitleType | Personens befattning | 0..* |
| .. ..paTitleName | String | Befattning / Ref. befattning (paTitleName) [R5] | 0..1 |
| .. ..paTitleCode | String | Befattningskod / Ref. befattningskod (paTitleCode) [R5] | 0..1 |
| ..specialityName | String | Specialistutbildning utöver grundutbildning för läkare eller tandläkare. / Ref. specialitet (specialityName) [R5] | 0..* |
| ..specialityCode | String | Klassificeringskod för specialistutbildning utöver grundutbildning för läkare eller tandläkare. / Ref. specialitetskod (specialityCode) [R5] | 0..* |
| ..healthCareProfessionalLicenceSpeciality | HealthCareProfessionalLicenceSpecialityType | Legitimerad yrkesgrupp och specialitet för läkare och tandläkare. Ref. leg.yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5] | 0..* |
| .. ..healthCareProfessionalLicence | String | Kod för Legitimerad yrkesgrupp som nedanstående specialitet hör till. | 1..1 |
| .. ..specialityCode | String | Kod för specialistutbildning utöver grundutbildning | 1..1 |
| .. ..specialityName | String | Klartext för namnet på specialistutbildning utöver grundutbildning | 1..1 |
| ..protectedPerson | Boolean | true: om person har skyddad identitet / (om personen inte har skyddad identitet kommer inget värde att returneras)
Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5] | 0..1 |
| ..feignedPerson | Boolean | true: om personen är ett fingerat objekt
Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5] | 0..1 |

#### Tjänstekontraktsspecifika krav och regler
Till denna informationsmängd finns inga regler som ej uttrycks i schemafilerna och tabellen ovan.
*2) searchBase
För GetCommissionMembersIncludingProtectedPerson används följande sökningar/sökbaser:
- Sök efter vårdenhet: i anropet angiven sökbas
- Sök efter enhet som pekas ut i organisationsomfång: i anropet angiven sökbas
- Sök efter vårdmedarbetaruppdrag: vårdenheten används som sökbas
- Sök efter person: här används sökbasen c=SE

#### SLA-krav
Krav på svarstider anges under förutsättning att TLS-uppkoppling är etablerad, d.v.s. TLS-förhandlingstid tillkommer vid start av ny TLS-session. Angivna krav på svarstid utgår ifrån mätning från Tjänsteplattformen mot Katalogtjänsten, och exklusive den tid som tjänsteplattformen behöver för att förmedla fråga och svar.
Svarstid ska kunna garanteras upp till angiven last.

| Metod | Svarstider måste garanteras upp till följande last | Svarstid för 95 % av alla anrop ligger inom |
| :--- | :--- | :--- |
| GetCommissionMembersIncludingProtectedPerson | 1 anrop/s | 1000 ms |

#### Logiska fel
Logiska fel hanteras enligt:
Om angiven sökbas inte finns i katalogen, returneras ett tomt svar.
Om sökt person inte kan hittas i katalogen, så returneras tomt svar .
Saknar personobjektet obligatorisk uppgift om HSA-id eller Namn så returneras tomt svar.
Om både personHsaId och personIdentityNumber har angetts som sökparametrar, så är anropet felaktigt och ett soap-fault returneras.
För sökning med ogiltiga värden och kombinationer av commissionPurpose och commissionRights returneras soap-fault.
För komplexa returvärden som inte följer specificerad syntax m a p sammansättningen, returneras inte det aktuella värdet. Detta gäller för:
- paTitle som utgår från separata attribut i HSA (kod och klartext) som behöver kunna matchas ihop.
- telephoneHours ska innehålla 4 eller upp till 7 delar (från-dag, till-dag, från-tid, , till-tid, ev en kommentar, ev från-datum och ev till-datum) separerade med ”#”.
för kontroll av att returnerade attributvärden följer specificerad syntax, så rekommenderas använda den Schematron vi tillhandahåller.

#### Annan information om kontraktet
-

### GetCommissionMembers
Är identisk med GetCommissionMembersIncludingProtectedPerson, förutom att skyddade personer aldrig returneras.
Det innebär också att fältet protectedPerson aldrig kommer att returneras.
För beskrivning av metoden se kap 6.3 GetCommissionMembersIncludingProtectedPerson ovan.

#### Version
Version på detta kontrakt är 3.0

#### Fältregler
Eftersom skyddade personer aldrig returneras, så innebär det att fältet protectedPerson (se 6.3.2 Fältregler) aldrig kommer att returneras.
