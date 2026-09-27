# 4 Tjänstedomänens krav och regler

Källa: *Tjänstekontraktsbeskrivning strategicresourcemanagement: organizational: organization*, commit b349285d18c2 (2017-02-27, efter taggen 2.0_RC1), [TKB_strategicresourcemanagement_organizational_organization.docx](TKB_strategicresourcemanagement_organizational_organization.docx).

> **Utgången domän.** Domänen kom aldrig längre än 2.0_RC1. I september 2017 flyttades tjänstekontrakten till infrastructure.directory.organization, som har en egen IG, och domänens repo är sedan dess tomt. IG:n dokumenterar den sista versionen med innehåll.

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

Informationsinnehållet i de katalogtjänster som är anslutna som tjänsteproducenter ägs och förvaltas av respektive ansluten organisation/juridisk person. Informationsägarskapet beskrivs ytterligare i utredning utförd av Arkitektur och Regelverk Säkerhet (se avsnitt 4 i [R3]). I de fall som producenten i sin katalogtjänst lagrar information för flera informationsägare är det upp till varje ansluten organisation att avgöra vilken information som ska lämnas ut till vilken mottagare.

Tjänsteproducenten ansvarar därmed för att information endast lämnas ut till de tjänstekonsumenter som respektive informationsägare godkänt. Det tydliggörs här eftersom det avviker från T-boken i det att Tjänsteplattformen då inte ansvarar för den tekniska åtkomstkontrollen (ej möjligt när systembaserad adressering tillämpas). Om informationsägaren har behov av att reglera åtkomst per tjänstekonsument, ska tjänsteproducenten filtrera svaret enligt informationsägarens önskemål. Observera att det är regionala policyer snarare än lagar och förordningar som styr i vilken grad tjänsteproducenten ska begränsa åtkomst för en viss tjänstekonsument. Kunskapen om tjänsteproducentens identitet (d.v.s. ursprunglig tjänstekonsument i anropskedjan) får bara användas för teknisk åtkomstbegränsning på så sätt att svaret blir som om de vårdgivare/vårdenheter vars verksamhetschef inte godkänner aktuell tjänsteproducent varit exkluderade i frågan.

### 4.2 Icke funktionella krav

#### 4.2.1 Krav på en tjänsteproducent

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

##### 4.2.1.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänstekontrakt inom domänen. Observera att för en konsument kan tillgängligheten bli något lägre utifrån t.ex. mellanliggande kommunikationsutrustning, kommunikationsnät och användning av regional tjänsteplattform.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid |  | Definieras per tjänstekontrakt i avsnitt 6. |
| Tillgänglighet | 24x7, 99,9% |  |
| Last |  | Definieras per tjänstekontrakt i avsnitt 6. |
| Aktualitet | 10 minuter | Vid uppdatering av information i katalogtjänsten får det maximalt ta så lång tid innan den informationen används av och returneras via tjänstekontrakten. |
| Återställningstid | 1 dygn | Vid katastrof som bortfall av driftshall |

##### 4.2.1.2 Felhantering

###### 4.2.1.2.1 Logiska fel

Vid ett logiskt fel, d.v.s. förutsättning för att kunna besvara anropet saknas, t ex för att visst nödvändigt objekt eller attributvärde saknas

Exempel på mindre fel där resultat ändå kan returneras är:

Då obligatoriska attribut (som skulle returnerats) saknas

Attribut med värde som inte följer gällande värdemängd

Värdemängdsattribut med både kod-del och klartext-del men där dessa inte matchar varandra enligt gällande värdemängd

Attribut med felaktig syntax, t ex

Sammansatta attribut saknad någon del (t ex öppettider)

##### 4.2.1.3 Tekniska fel

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

#### 4.2.2 Övriga krav

-

#### 4.2.3 Krav på en tjänstekonsument

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
