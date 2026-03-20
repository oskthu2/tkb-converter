## Tjänstekontrakt

### GetCareDocumentation
GetCareDocumentation returnerar journalanteckningar för en patient. Sådana anteckningar är av typerna utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning, slutanteckning som även inkluderar epikris, anteckning utan fysiskt möte, slutenvårdsanteckning samt besöksanteckning.
Meddelandeformatet baseras på NPÖ RIV 2.2.0 och är kompatibelt med HL7 v. 3 CDA v. 2. Mappning mot dessa hittas i bilaga [R3].

#### Version
3.0

#### Gemensamma informationskomponenter
Gemensamma informationskomponenter är typer gemensamma för användning i tjänstekontrakt i flera domäner. Nedan listas de gemensamma typer som används i kontraktet GetCareDocumentation.
Användning av datatyperna sker i enlighet med hur de är definierade, dvs. regler som anges för respektive datatyp och kardinalitet för de olika attributen ska följas. I de fall det finns restriktioner på en eller flera datatyper anges det i fältregeltabellerna.
Version 19 av gemensamma datatyper har använts för det här kontraktet.

##### CVType
En CVType är en referens till ett begrepp som definieras i ett externt kodverk (kodsystem, terminologi eller ontologi). Se vanligt förekommande kodverk. En CVType kan innehålla en enkel kod, det vill säga en hänvisning till ett begrepp som definieras direkt av det refererade kodverket, eller den kan innehålla ett uttryck i någon syntax definierad av det refererade kodverket som kan utvärderas, exempelvis begreppet "vänster fot" som är ett postkoordinerat uttryck byggt från den primära koden "FOT" och bestämningen "VÄNSTER".

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string | Kod eller uttryck definierad enligt kodverket. | 0..1 |
| codeSystem | string | Kodverket som definierar koden. | 0..1 |
| codeSystemName | string | Kodverkets namn i klartext. | 0..1 |
| codeSystemVersion | string | Versionsangivelse som har definierats specifikt för det givna kodverket. | 0..1 |
| displayName | string | Den läsbara representationen (klartext) av koden eller uttrycket som definierat av kodverket. | 0..1 |
| originalText | string | Texten så som sedd och/eller vald av användaren som har matat in den, och som representerar användarens avsedda betydelse. | 0..1 |
Regler
code
code ska vara en exakt match till en kod eller ett uttryck definierat av kodverket, som refereras till i codeSystem. Om kodverket definierar en kod eller ett uttryck som inkluderar mellanslag, ska koden inkludera mellanslaget. Ett uttryck kan endast användas där kodverket antingen definierar en uttryckssyntax, eller där det finns en allmänt accepterad syntax för kodverket.
Det åligger det mottagande systemet att bedöma om man kontrollerar huruvida det är ett uttryck som har skickats istället för en enkel kod, och utvärdera uttrycket istället för att behandla uttrycket som en kod. I vissa fall kan det vara oklart eller tvetydigt om koden representerar en enda symbol eller ett uttryck. Detta uppstår vanligtvis där kodverket definierar ett uttrycksspråk och sedan definierar prekoordinerade begrepp med symboler som matchar deras uttryck, t.ex. UCUM. I andra fall är det säkert att behandla uttrycket som en symbol. Det finns ingen garanti för att detta alltid är säkert: definitionerna i kodverket bör alltid konsulteras för att avgöra hur man ska hantera potentiella uttryck.
codeSystem
Kodverk ska refereras till genom en globalt unik identifierare, som möjliggör entydig hänvisning till standardkodverk eller andra lokala kodverk. Identifieraren ska vara en Universally Unique Identifier (UUID), Object Identifier (OID), eller Uniform Resource Identifier (URI). En CVType som har ett kodattribut ska ha ett kodverk som specificerar begreppsystemet som definierar koden.
codeSystemName
Syftet med ett kodverksnamn är att hjälpa en mänsklig tolkare av en kod att tolka codeSystem. Tjänstekonsumenter och tjänsteproducenter som använder codeSystemName ska INTE funktionellt förlita sig på kodverkets namn. Dessutom KAN de välja att inte implementera kodverkets namn men ska INTE avvisa instanser då namnet finns.
codeSystemVersion
Olika versioner av ett kodverk måste vara kompatibla. Per definition ska en kod ha samma betydelse i alla versioner av ett kodverk. Mellan versioner kan koder inaktiveras men inte tas bort eller återanvändas. Om klartexten av en kod ändras måste den fortfarande vara kompatibel (lika) mellan olika kodverksversioner.
displayName
Om ifylld, ska klartexten vara den läsbara representationen av koden eller uttrycket som definierat av kodverket vid tiden av datainmatningen. Om kodverket inte definierar en klartext för koden eller uttrycket, kan ingen tillhandahållas. Tjänstekonsumenter och tjänsteproducenter som hävdar direkt eller indirekt överensstämmelse KAN välja att inte implementera klartext men ska INTE avvisa instanser då klartext finns.
Huvudsyfte med klartexten är att stödja implementationsfelsökning, men kan även användas till andra tillämpningsspecifika ändamål som till exempel visning för användaren i gränssnittet.
originalText
Det finns två godkända tillämpningar av elementet originalText:
OriginalText kan användas för att beskriva det en användare angav och som representeras av koden. I en situation där användaren dikterar eller skriver text är originalText den text som matats in eller yttrats av användaren.
OriginalText kan användas i de fall producenten avser ange ett värde som saknar kod. I dessa fall motsvarar originalText benämningen för värdet som saknar kod. Behov att tillföra nya koder till kodverket förmedlas till den som ansvarar för kodverkets innehåll.
OriginalText ska vara den exakta text så som den presenteras i originalkällan utan att på något sätt bearbetas eller omvandlas. Således ska originalText representeras i vanlig textform.

##### DatePeriodType
Ett datumintervall anges normalt sett med ett start- och ett slutdatum, men öppna intervall är tillåtna. Huruvida ändpunkterna inkluderas i intervallet eller ej bör tydligt beskrivas vid varje enskild tillämpning.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | DateType | Periodens startdatum. Minst ett av start och end skall anges. | 0..1 |
| end | DateType | Periodens slutdatum. Minst ett av start och end skall anges. | 0..1 |

##### DateType
Datum anges som en sträng med formatet ”ÅÅÅÅMMDD”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”. Tidszon anges inte. Datum ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

##### HSAIdType
HSA-id anges som en sträng enligt definition från Inera AB. I de fall då HSA-id inte finns tillgängligt ska ett för källsystemet lokalt id användas. Lokala id:n får enbart användas i OrgUnitType, och då endast i undantagsfall.

##### IIType
En IIType är en numerisk eller alfanumerisk sträng som kan härledas till ett enskilt objekt eller entitet i ett känt system. Exempel är ett personnummer eller ett vårdkontakts-id.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | En identifierare som i sig själv eller tillsammans med värdet för extension är universellt unik. Om extension anges är root en unik identifierare av namnrymden för värdet som anges i extension. | 1..1 |
| extension | string | En identifierare som tillsammans med värdet för root är universellt unik. Används om värdet på root inte är universellt unikt. | 0..1 |

##### MultimediaType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | string | Identitet på multimediaobjekt som används vid referenser inom multimediadokument. | 0..1 |
| mediaType | MediaTypeEnum | Mediatyper enligt HL7 | 1..1 |
| value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges. | 0..1 |
| reference | anyURI | Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. | 0..1 |

##### OrgUnitType

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. Om tillgängligt skall detta anges. I de fall HSA-id saknas kan ett för källsystemet unikt id användas. | 0..1 |
| orgUnitName | string | Namn på organisationsenhet. Om tillgängligt skall detta anges. | 0..1 |
| orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| orgUnitAddress | string | Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:
”Storgatan 12
468 91 Lilleby” | 0..1 |
| orgUnitLocation | string | Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering | 0..1 |

##### ResultType
Element för att returnera logiska fel i uppdaterande tjänster. Ska inte definieras som egen typ utan inkluderas i svarstypen.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | En beskrivande text som kan visas för användaren. | 0..1 |

##### TimeStampType
Tidpunkt anges som en sträng med formatet ”ÅÅÅÅMMDDttmmss”. Detta motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”. Tidszon anges inte. Tidpunkt ska anges i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

##### JoL-header
Detta kontrakt använder en gemensam header som används vid läsning av journalinformation. Headern är uppdelad i två huvudsakliga delar. Den första innehåller information för att ett konsumerande system ska kunna avgöra om en användare har rätt att ta del av den returnerade informationen. För detta beslut krävs bland annat information om vilken vårdgivare och vårdenhet som är informationsägare samt vilken tidpunkt som skall användas som jämförelsetid vid spärrkontroll. Den andra delen av headern innehåller metainformation som är gemensam för patientjournalinformation, exempelvis uppgift om vilken hälso- och sjukvårdspersonal som är angiven som författare av informationen och information om signering.
Version 2.2 av JoL-headern har använts för det här kontraktet.

#### DocBook-format för clinicalDocuemtNoteText-fältet
Fältet ”clinicalDocumentNoteText” innehåller anteckningens textuella innehåll. Producenten har möjlighet att formatera denna text i sina system i det standardiserade layout-formatet DocBook version 5.0 [R11], som är en Oasis standard.
En tjänstekonsument eller tjänsteproducent behöver inte stödja samtliga element i DocBook-standarden. Följande element är centrala och ska hanteras av samtliga tjänstekonsumenter.
version
article
title
info
para
section
bibliography
En tjänstekonsument kan utöver dessa element specificera regler kring användningen av ytterligare element i en interaktionsöverenskommelse.
En tjänsteproducent kan välja att hantera elementen ovan men kan även välja att följa reglerna i en eventuell interaktionsöverenskommelsen vid formatering av text med DocBook anpassad för en specifik tjänstekonsument. Tjänsteproducenten ska då baserat på information i http-headern ”x-rivta-original-serviceconsumer-hsaid” [R2] identifiera tjänstekonsumenten och anpassa svaret baserat på interaktionsöverenskommelsens regler.
En tjänsteproducent får inte använda andra element i DocBook-standarden som inte ingår i listan ovan eller i tjänstekonsumentens interaktionsöverenskommelse.
En text som är formaterad enligt DocBook ska vara s.k. ”entity encoded” för att kunna skickas via fältet “clinicalDocumentNoteText”. Detta behövs för att XML-taggarna, som är en del av DocBook-formatet som används för att formatera texten som utgör fältets innehåll, inte ska uppfattas som en del av svarsmeddelandets XML-struktur. Vid den s.k. entity encoding översätts exempelvis de nedanstående symbolerna på angivit sätt:
> översätts till &gt;
< översätts till &lt;
“ översätts till &quot;
Kolumnen “DocBook-element” i tabellen nedan visar en exempelstruktur med de DocBook-element som kan användas. Kolumnen “DocBook-element med entity encoding” visar samma DocBook-element med entity encoding, och därmed det formatet som kan skickas via fältet “clinicalDocumentNoteText”.
Konsumenten behöver sedan återskapa den ursprungliga DocBook XML-syntaxen från innehållet i fältet, dvs översätta t.ex. &gt till >. Det finns många exempel på open-source-bibliotek som kan användas av producenten för att göra ”entity encoding” och av konsumenten för att återställa till XML-syntaxen. Ett exempel är Apache Commons Text StringEscapeUtils (se metoderna escapeXml respektive unescapeXml) [R12].
Efter att konsumenten har återställt texten till den ursprungliga XML-syntaxen, behöver konsumenten även transformera texten till ett presentationsformat såsom XHTML eller PDF. Det kan t.ex. ske med hjälp av de XSLT-baserade transformeringsskript som tillhandahålls på DocBooks hemsida [R11].

| DocBook-element | DocBook-element med entity encoding |
| :--- | :--- |
|  |  |

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnit | IIType | Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret. / root sätts till OID(1.2.752.129.2.1.4.1) för HSA / extension sätts till HSA-id på vårdenhet. | 0..* |
| healthcareProvider | IIType | Filtrering på vårdgivare vilket motsvarar accountableHealthcareProvider i svaret. / root sätts till OID (1.2.752.129.2.1.4.1) för HSA / extension sätts till HSA-id på vårdgivare. | 0..* |
| patientId | IIType | Id för patienten där fältet extension sätts till patientens identitetsbeteckning. Anges med 12 tecken utan avskiljare. / Tjänsteproducenten ska i svaret leverera all information om patienten på en begäran riktad mot någon av patientens identitetsbeteckningar, dvs. även information som har registrerats på andra till patienten kopplade identitetsbeteckningar (personnummer, samordningsnummer eller lokala reservnummer). / Fältet root sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på lokal reservidentitet med hjälp av att ange lokalt definierade OID:ar för lokal reservidentitet, exempelvis SLL:s lokal reservidentitet (1.2.752.97.3.1.3). / OBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet. / En tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna record.timestamp, author.timestamp, signature.timestamp i headern eller dissentingOpinion.authorTime i svaret ligger inom sökintervallets start- och slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemId | IIType | Begränsar sökningen till anteckningar som är skapade i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Fältet root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till källsystemets HSA-id. / Se även regel sourceSystemId. | 0..1 |
| hasMoreReference | string | Kan anges av tjänstekonsument när man tidigare fått ett hasMore-svar från tjänsteproducent att det finns ytterligare information att hämta. / Se även regel hasMoreReference. | 0..1 |
| Svar |  |  |  |
| careDocumentation | CareDocumentationType | De anteckningar som matchar begäran. | 0..* |
| ../header | HeaderType | JoL-header. / Innehåller metainformation som är gemensam för patientjournalinformation, exempelvis uppgift om vilken hälso- och sjukvårdspersonal / som är angiven som författare av informationen och information om signering. | 1..1 |
| ../../accessControlHeader | AccessControlHeaderType | Information för kontroll av åtkomst. / Syftet med denna del av headern är att den ska innehålla den information som behövs för konsumentens filtrering av informationen innan den visas upp för slutanvändaren eller på annat vis behandlas vidare, exempelvis för kontroll av spärrar (avseende vårdpersonals åtkomst till information; PDL) eller om informationen får visas för patienten eller inte (verksamhetens rätt till rådrum och menprövning). / En konsument (en konsumerande tjänst/applikation) har inte rätt att ta del av något annat än innehållet i accessControlHeader innan de för ändamålet nödvändiga säkerhetskontrollerna har utförts. | 1..1 |
| ../../../accountableHealthcareProvider | IIType | Id för informationsägande vårdgivare. / I första hand HSAid alternativt i andra hand organisationsnummer. / Om HSA-id används sätts fältet root till oid för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id. / Om organisationsnummer används skall fältet root sättas till OID för organisationsnummer (1.2.752.29.4.3) och fältet extension sättas till organisationsnumret. / Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. / Se även regel Spärrhantering. | 0..1 |
| ../../../accountableCareUnit | IIType | Id för informationsägande vårdenhet angivet med HSA-id. / Fältet root sätts OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id. / Fältet används för spärrkontroll och är obligatorisk om uppgiften i patientjournal ska kunna ses via sammanhållen journalföring. / Se även regel Spärrhantering. | 0..1 |
| ../../../patientId | IIType | Patientens identitetsbeteckning. Den identitetsbeteckning som denna uppgift lagrades under när uppgiften skapades ska om möjligt anges. Exempel på en situation då detta förekommer är exempelvis då patienten tidigare erhållit vård dokumenterat under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer. / Fältet root sätts till OID för kodverket för identifieraren: / 1) För personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / Fältet extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../careProcessId | IIType | Id för den individanpassad vårdprocess som informationen journalförts inom ramen för. Består av ett lokalt genererat UUID. / UUID anges i root och extension lämnas tomt. | 0..1 |
| ../../../blockComparisonTime | TimeStampType | Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring för kontroll av patientens (ev.) spärrade information, såväl yttre (mellan vårdgivare) som inre (mellan vårdenheter) spärr. / Tidpunkten ska i så hög grad som möjligt överensstämma med den tidpunkt som ur patientens synvinkel är den mest naturliga. Detta är vanligtvis tidpunkten för patientens vårdkontakt som låg till grund för dokumentationen. | 1..1 |
| ../../../approvedForPatient | boolean | Ansvarig vårdpersonals beslut, alternativt baserat på verksamhetens policy och regler (men-/sekretessprövning), huruvida informationen får delas till patient för ändamålet Patients åtkomst (Individens direktåtkomst). / Om information beslutas delas sätts värdet i sådant fall till true, i annat fall till false. False innebär att informationen inte får delas till patient. / Notera att flaggans värde kan, för samma information, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. / I sådana fall skall källsystemet uppdatera engagemangsindex för att konsumenter skall kunna bli notifierade därom. | 1..1 |
| ../../sourceSystemId | IIType | Det källsystem som informationen lagras i. / Fältet root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till källsystemets HSA-id. | 1..1 |
| ../../record | RecordType | Uppgift i patientjournal / Metainformation avseende den dokumenterade informationen. | 1..1 |
| ../../../id | IIType | Unik och beständig identifierare för uppgift i patientjournal. / För att vara konsistent och beständig med tidigare majorversioner ska tjänsteproducenter av tidigare majorversioner av GetCareDocumentation endast ange root på samma sätt som documentId i tidigare majorversioner.
Extension utelämnas. Denna hantering krävs för att tjänstekonsumenten ska kunna filtrera bort dubbletter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. / Se även regel Verify unique recordId. | 1..1 |
| ../../../timestamp | TimeStampType | Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten. | 1..1 |
| ../../author | AuthorType | Hälso- och sjukvårdspersonal som ansvarar för information i patientjournal. Notera att den som registrerar informationen från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte är författare. | 0..1 |
| ../../../id | IIType | HSA-id för hälso- och sjukvårdspersonal. / Fältet root sätts till oid för HSA-id (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id. | 0..1 |
| ../../../name | string | Namn på hälso- och sjukvårdspersonal. | 0..1 |
| ../../../timestamp | TimeStampType | Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges. | 1..1 |
| ../../../byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning vid författandet av informationen. Om möjligt skall kod från kodverket KV Befattning användas för att ange personens befattning så som den var angiven i HSA-katalogen vid tidpunkten. Om kod inte är tillgänglig anges befattning i klartext i CV-typens attribut originalText. | 0..1 |
| ../../../orgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. | 0..1 |
| ../../signature | SignatureType | Signeringsinformation | 0..1 |
| ../../../id | IIType | HSA-id för hälso- och sjukvårdspersonal som signerat uppgift i patientjournal. / Fältet root sätts till oid för HSA-id (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id. | 0..1 |
| ../../../name | String | Namn på hälso- och sjukvårdspersonal som signerat uppgift i patientjournal. | 0..1 |
| ../../../timestamp | TimeStampType | Anger tidpunkten för signering av uppgift i patientjournal. | 0..1 |
| ../../../byRole | CVType | Information om hälso- och sjukvårdspersonalens befattning vid författandet av informationen. Om möjligt skall KV Befattning användas för att ange personens befattning så som den var angiven i HSA-katalogen vid tidpunkten.  Om kod inte är tillgänglig anges befattning i klartext i CV-typens attribut originalText. | 0..1 |
| ../body | CareDocumentationBodyType | Journalanteckning | 1..1 |
| ../../clinicalDocumentNoteCode | CVType | Typ av anteckning. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11). / Kodverket kan komma att kompletteras över tid vilket medför att konsumenter av kontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras. | 1..1 |
| ../../clinicalDocumentNoteTitle | string | Titel på anteckningen. | 0..1 |
| ../../clinicalDocumentNoteText | string | Journalanteckningens innehåll i text. / Texten kan antingen skickas som vanlig text eller formaterat enligt DocBook-standarden, se 7.1.3. / Se även regel careDocumentationBody. | 0..1 |
| ../../multimediaEntry | MultimediaType | Journalanteckningens innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till objektet. / Vid användning av multimediaEntry kompletteras reglerna i tjänstekontraktsbeskrivningen med en Interaktionsöverenskommelse som ytterligare beskriver integrationen. / Se även regel careDocumentationBody samt regel Binära bilagor. | 0..1 |
| ../../../mediaType | string | Typ av multimedia. / Se interaktionsöverenskommelse för beskrivning av typer som hanteras. | 1..1 |
| ../../../value | base64Binary | Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges. / Se även regel multimediaEntry. | 0..1 |
| ../../../reference | anyURI | Referens till extern binär fil i form av en URL om interaktionsöverenskommelsen tillåter detta. Ett och endast ett av attributen value och reference ska anges. / Se interaktionsöverenskommelse för ytterligare beskrivning. / Se även regel multimediaEntry. | 0..1 |
| ../../dissentingOpinion | DissentingOpinionType | Om patienten eller någon för denna ansvarig person (exempelvis vårdnadshavare) har lämnat en avvikande mening till journalanteckningen. | 0..* |
| ../../../opinionId | IIType | En universellt unik identifierare för den avvikande meningen. Identifieraren ska vara beständig, i betydelsen att upprepade frågemeddelanden ger samma värde i svarsmeddelanden som rör samma journalnotat. | 0..1 |
| ../../../../root | string | En universellt unik identifierare för den avvikande meningen eller en identifierare som tillsammans med värdet för ”extension” ger en universellt unik identifierare. | 1..1 |
| ../../../../extension | string | Om värdet på root inte universellt unikt ska detta fält innehålla ett kompletterande värde som tillsammans med värdet för root ger en universellt unik identifierare. | 0..1 |
| ../../../authorTime | TimeStampType | Tidpunkten då den avvikande meningen författades. | 1..1 |
| ../../../opinion | string | Text som innehåller den avvikande meningen. | 1..1 |
| ../../../personId | IIType | Id för författaren av den avvikande meningen. | 1..1 |
| ../../../../root | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1) ), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) ), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) ), [R14]. | 1..1 |
| ../../../../extension | string | Sätts till personens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../personName | string | Namnet på författaren av den avvikande meningen. | 1..1 |
| hasMore | HasMoreType | Anges av tjänsteproducent när det finns ytterligare information att hämta. / Not: Vid svar från tjänsteproducent är kardinaliteten 0..1. / Se även regel Partiell datahämtning. | 0..* |
| ../logicalAddress | string | Den logiska adressen till tjänsteproducenten som genererar svaret och har mer information. | 1..1 |
| ../reference | string | En unik identifierare som tjänstekonsumenten anger i nästa anrop för att hämta mer data. Om det då finns ytterligare mer information hos tjänsteproducenten ska en ny, unik identifierare levereras. / Tjänsteproducenten avgör hur referensen byggs upp. / Exempel: Base64({ ”queryHash” : ”7114efbb6a761fb1a2d6dae55b5612e1", ”lastReturnedId” : 7685824}) = eyDigJ1xdWVyeUhhc2jigJ0gOiDigJ03MTE0ZWZiYjZhNzYxZmIxYTJkNmRhZTU1YjU2MTJlMSIsIOKAnWxhc3RSZXR1cm5lZElk4oCdIDogNzY4NTgyNH0= / Re även regel Referensens giltighetstid. | 1..1 |
| result | ResultType | Innehåller information om det gick bra eller ej att besvara förfrågan. / Se avsnitt 7.1.7 för beskrivning av hantering vid logiska fel. | 1..1 |
| ../resultCode | ResultCodeEnum | Anger resultatet av besvarad förfrågan. / Kan endast vara OK, INFO eller ERROR. | 1..1 |
| ../resultText | string | Optionellt felmeddelande som innehåller information om felet som uppstod. | 0..1 |

#### Partiell datahämtning
GetCareDocumentation möjliggör partiell leverans och hämtning av vårdanteckningar. Detta bör endast användas av de tjänsteproducenter som har uttömt möjligheterna att möta svarstidskraven eller krav på meddelandestorlek för tjänstekontraktet. Att stödja partiell datahämtning är frivilligt för både tjänstekonsument och tjänsteproducent.
Partiell datahämtning initieras av tjänsteproducenten genom att leverera den senaste journalinformationen, plus elementet hasMore med en unik referens.
Vid flera partiella leveranser ska tjänsteproducenten alltid leverera den senaste informationen som inte tidigare levererats i omvänd kronologisk ordning. I det fall information som redan levererats har uppdaterats kan producenten välja att på nytt skicka den uppdaterade informationen i kommande anrop. I det fall ny information tillkommer under den tid då referensen är giltig kan producenten välja att inkludera den nya informationen.
Ambitionen bör vara att skicka så många poster som möjligt under svarstidskravet eller krav på meddelandestorlek för tjänstekontraktet vid varje partiell leverans. Detta då det är frivilligt för tjänstekonsumenter att stödja funktionen samt för att möjliggöra en så bra upplevelse som möjligt för slutanvändaren då en tjänstekonsument kan ha valt att endast hämta nästkommande partiella leverans på slutanvändarens kommando.
Tjänstekonsumenter väljer själva hur och om de vill hämta resterande information, eller om de vill nöja sig med den information som levererats. Om mer information ska hämtas, så ska anropet direktadresseras till aktuell tjänsteproducent, begäran ska innehålla attributet hasMoreReference och övriga anropsparametrar ska vara identiska med anropet som föranledde hasMore-svar.

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Element | Beskrivning |
| :--- | :--- | :--- |
| Begäran | Begäran | Begäran |
| hasMoreReference | <hasMoreReference> | Anropet skall göras direktadresserat till den logiska adressen som tjänsteproducenten levererat i <hasMore/logicalAddress>.
hasMoreReference ska vara identiskt med den referens som tjänsteproducenten levererat i <hasMore/reference>. / Övriga anropsparametrar ska vara identiska med anropet som föranledde hasMore-svar. |
| sourceSystemId | <sourceSystemId> | Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges vid begäran på reservnummer. |
| Svar | Svar | Svar |
| Spärrhantering | <header/accessControlHeader/ accountableHealthcareProvider> / <header/accessControlHeader/ accountableCareUnit> | Uppgifterna krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring. |
| Verify unique recordId [sch] | <header/record/id> | Identifieraren ska vara unik. Samma id får inte förekomma flera gånger. |
| careDocumentationBody [sch] | <clinicalDocumentNoteText>

<multimediaEntry> | Endast ett av attributen clinicalDocumentNoteText och multimediaEntry ska anges. |
| Binära bilagor | <multimediaEntry> | Producenter av GetCareDocumentation måste följa de generella riktlinjer för binära bilagor, se referens [R16]. |
| multimediaEntry [sch] | <multimediaEntry/value> / <multimediaEntry/reference> | Endast ett av attributen value och reference ska anges. |
| Partiell datahämtning | <hasMore> | Får enbart användas när antalet poster är så många att tjänsteproducenten riskerar att inte kunna svara inom 27 sekunder eller när storleken på svaret inte ryms inom gällande regelverk [R2]. / De poster som levereras måste vara de senaste posterna. / Vid svar från tjänsteproducent är kardinaliteten 0..1. |
| Referensens giltighetstid | <hasMore/reference> | Referensen ska vara giltig i minst en timme. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Verify non-empty elements [sch] | Alla element i svaret. | Tomma värden får inte anges. |
| pattern.CvType [sch] | Alla element som använder datatypen CVType. | code och/eller originalText ska anges / Om code anges ska även codeSystem anges / Om codeSystem anges ska även code anges / codeSystem ska vara en OID / Om codeSystemName anges ska även code samt codeSystem anges / Om codeSystemVersion anges ska även code samt codeSystem anges / Om displayName anges ska även code samt codeSystem anges |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA krav
Inga avvikande SLA krav.

#### Logiska fel
För återrapportering av logiska fel skall resultCode sättas till någon av de giltiga koderna enligt [R19].
Logiskt fel
Ett logisk fel är en situation där behandlingen kan ha resulterat i ett, ur slutanvändarens perspektiv, oväntat utfall. För att klassas som ett logiskt fel måste tjänstebegäran utformats enligt överenskommelse (korrekt enligt XML-schema och tjänstekontraktsbeskrivning) och tjänsteproducentens behandling har inte misslyckats på grund av ett tekniskt fel hos vare sig tjänstekonsument eller tjänsteproducent enligt definitionen i [R19].
För återrapportering av logiska fel ska svaret innehålla ett element “resultCode” med värde ERROR och en textuell felbeskrivning av felet i element “resultText”.
ResultText skall loggas och kan visas upp för användaren i de fall då det är tillämpbart.
Exempel:

| <MakeBookingResponse> / <resultCode>ERROR</resultCode> / <resultText>Referensen som skickats i hasMoreReference är ogiltig</resultText> / </MakeBookingResponse> |
| :--- |
Inget att rapportera
Om man inte har något speciellt att rapportera kring behandling av en tjänstebegäran sätts elementet “resultCode” till värdet OK och elementet “resultText” utelämnas.
Meddelande till systemförvaltare
Om man efter lyckad behandling av en tjänstebegäran vill återrapportera information från behandlingen eller beskrivande text för returnerad data ska man i svaret inkludera elementet “resultCode” med värde OK och elementet “resultText” innehållande den text som ska loggas men inte visas för användaren.
Meddelande till användare
Om man efter lyckad behandling av en tjänstebegäran vill återrapportera ett meddelande som skall visas upp för användaren ska man i svaret inkludera elementet “resultCode” med värde INFO och elementet “resultText” innehållande meddelandet som ska visas upp.

### GetDiagnosis
GetDiagnosis returnerar registrerade diagnoser för en patient inklusive en diagnoskod per ursprungligt diagnosticeringstillfälle. Meddelandeformatet baseras på NPÖ RIV 2.2.0 och är kompatibelt med HL7 v. 3 CDA v. 2. Mappning mot dessa hittas i bilaga [R4].

#### Version
2.0

#### Gemensamma informationskompontenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga Gemensamma_typer_7.pdf” [R15]. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på vårdenhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas), [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas), [R14]. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| timePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna authorTime, signatureTime eller diagnosisTime i svaret ligger inom sökintervallets start- och slutdatum. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till diagnoser som tillgängliggörs av angivet källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till de diagnoser som dokumenterades vid hälso- och sjukvårdskontakt. | 0..* |
| Svar |  |  |  |
| diagnosis | DiagnosisType | De diagnoser som matchar begäran. | 0..* |
| ../diagnosisHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system tillgängliggör informationen. | 1..1 |
| ../../documentTitle |  | N/A | 0..0 |
| ../../documentTime |  | N/A | 0..0 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13] | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenhet / (Regel: 1) | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel: 1) | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso- och sjukvårds skontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified |  | N/A | 0..0 |
| ../../nullifiedReason |  | N/A | 0..0 |
| ../diagnosisBody | DiagnosisBodyType |  | 1..1 |
| ../../typeOfDiagnosis | TypeOfDiagnosisEnum | Anges som "Huvuddiagnos" eller "Bidiagnos". | 1..1 |
| ../../chronicDiagnosis | boolean | Sätts till true om diagnosen är kronisk, false om diagnosen inte är kronisk, och används inte om okänt. | 0..1 |
| ../../diagnosisTime | TimeStampType | Tidpunkt då bedömningen gjordes. | 0..1 |
| ../../diagnosisCode | CVType | Diagnoskod. | 0..1 |
| ../../../code | string | Kod för den aktuella diagnosen. | 0..1 |
| ../../../displayName | string | Klartext för kod som angivits i attributet diagnosisCode. | 0..1 |
| ../../../codeSystem | string | OID för kodsystem. | 0..1 |
| ../../../codeSystemName | string | Namn på kodsystem. | 0..1 |
| ../../../codeSystemVersion | string | Om tillämpbart, versionsangivelse som definierats av det givna kodsystemet. | 0..1 |
| ../../../originalText | string | originalText ska användas vid överföring av värden som kommer från lokala kodverk som ej är identifierade med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges kan inget av de övriga elementen anges. | 0..1 |
| ../../relatedDiagnosis | RelatedDiagnosisType | Relaterad diagnos. / Associationen används för att länka samman diagnoser som relaterar till varandra. Använd om möjligt detta för att länka t.ex. bidiagnos till huvuddiagnos eller orsakskod till diagnos. | 0..* |
| ../../../documentId | string | Unik identitet för diagnosen. | 1..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA krav
Inga avvikande SLA krav.

#### Logiska fel
Vid ett logiskt fel ska result.resultCode sättas till ERROR och result.errorCode enligt nedanstående tabell, om result.message innehåller ett meddelande så ska det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som ska returneras.

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande result.message kan närmare peka på vilken regel som ej efterföljts. / En omsändning av information kommer att ge samma fel. |

### GetAlertInformation
GetAlertInformation returnerar uppmärksamhetsinformation för en patient, exempelvis överkänslighet mot läkemedel, allvarlig sjukdom eller vårdbegränsning. Meddelandeformatet baseras på NPÖ RIV 2.2.0 och är kompatibelt med HL7 v. 3 CDA v. 2. Mappning mot dessa hittas i bilaga [Error! Reference source not found.]R3.

#### Version
2.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga Gemensamma_typer_7.pdf” [R15]. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14]. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| timePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som startar vid validityTimePeriod.start och slutar vid obsoleteTime eller validityTimePeriod.end om någon av dessa är satta, annars tills vidare, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till uppmärksamhetsinformation som tillgängliggörs av angivet källsystem.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till den uppmärksamhetsinformation som dokumenterades vid hälso- och sjukvårds kontakt. | 0..* |
| Svar |  |  |  |
| alertInformation | AlertInformationType | Den uppmärksamhetsinformation som matchar begäran. | 0..* |
| ../alertInformationHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system tillgängliggör informationen. | 1..1 |
| ../../documentTitle |  | N/A | 0..0 |
| ../../documentTime |  | N/A | 0..0 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som verifierat informationen i dokumentet. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | hälso- och sjukvårdspersonalens HSA-id. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13] | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenhet. / Se regel 1 | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalen är uppdragstagare för. / Se regel 1 | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Tidpunkt för signering. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet | 0..1 |
| ../../nullified |  | N/A | 0..0 |
| ../../nullifiedReason |  | N/A | 0..0 |
| ../alertInformationBody | AlertInformation / BodyType |  | 1..1 |
| ../../typeOfAlertInformation | CVType | Kod som anger vilken typ av uppmärksamhetssignal som avses. / Använd t.ex.  KV Uppmärksamhetstyp eller KV Informationstyp. / Se regel 2 | 1..1 |
| ../../../code | string | Kod som anger typ av uppmärksamhetssignal. Bör tas från KV Uppmärksamhetstyp. | 0..1 |
| ../../../displayName | string | Koden i klartext. | 0..1 |
| ../../../codeSystem | string | OID för kodsystem. Då OID till KV Uppmärksamhetstyp saknas bör OID för KV Informationstyp anges istället (1.2.752.129.2.2.2.1), då KV Uppmärksamhetstyp är en delmängd av KV Informationstyp. | 0..1 |
| ../../../codeSystemName | string | Klartext för kodsystemet angivet i codeSystem. | 0..1 |
| ../../../codeSystemVersion | string | Version på kodsystem, om tillgängligt. | 0..1 |
| ../../../originalText | string | Om typ av uppmärksamhetssignal är beskriven i ett lokalt kodsystem, eller ett kodsystem utan OID ska typ av uppmärksamhetssignal anges här. | 0..1 |
| ../../ascertainedDate | DateType | Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades. Om inget specifikt datum för detta finns i källsystemet används
samma tid som starttiden i attributet giltighetstid. | 0..1 |
| ../../verifiedTime | TimeStampType | Den tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet | 0..1 |
| ../../validityTimePeriod | TimePeriodType | Tidsintervallet inom vilket uppmärksamhetssignalen är giltig. Sluttidpunkt kan vara aktuellt att ange då man i förväg bedömer att uppmärksamhetssignalen har en sluttidpunkt (t.ex. för behandlingar). | 1..1 |
| ../../../start | TimeStampType | Format ÅÅÅÅMMDDhhmmss. | 1..1 |
| ../../../end | TimeStampType | Format ÅÅÅÅMMDDhhmmss. | 0..1 |
| ../../alertInformationComment | string | Text som innehåller en kommentar av den ansvarige hälso- och sjukvårdspersonalen angående uppmärksamhetssignalen. Vid läkemedelsöverkänslighet kan kommentaren avse en anamnes,
en beskrivning av den observerade reaktionen, en beskrivning av möjliga agens, föreliggande undersökningsresultat. | 0..1 |
| ../../obsoleteTime | TimeStampType | Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet. Används exempelvis om det uppmärksammade förhållandet bedöms som inte längre aktuellt trots att tidigare angiven gilitighetstid ej gått ut. | 0..1 |
| ../../obsoleteComment | string | Text som innehåller information om varför uppmärksamhetssignalen gjorts inaktuell. | 0..1 |
| ../../hypersensitivity | HyperSensitivityType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges. | 0..1 |
| ../../../typeOfHypersensitivity | CVType | Kod som anger en precisering av vilken typ av överkänslighet som uppmärksamhetssignalen avser. Koden bör hämtas ur ICD10/SNOMED, [R13]. / Exempel: / Läkemedelsöverkänslighet / Överkänslighet avs. födoämne / Överkänslighet avs. djur / Överkänslighet avs. växt / Överkänslighet av kemikalie | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../../degreeOfSeverity | CVType | Kod som anger bedömning av överkänslighetens allvarlighet. / KV Allvarlighetsgrad (1.2.752.129.2.2.3.3), [R13] | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../../degreeOfCertainty | CVType | Kod som innehåller en uppgift om med vilken visshet överkänsligheten är precis så som den har angivits. / KV Visshetsgrad (1.2.752.129.2.2.3.11) | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../../pharmaceuticalHypersensitivity | PharmaceuticalHypersensitivityType | Mer detaljerad information om läkemedelsöverkänslighet. | 0..1 |
| ../../../../atcSubstance | CVType | Kod och klartext som anger den substans, eller grupp av substanser, som kan förorsaka en överkänslighetsreaktion. ATC-kod på minst treställig nivå ska anges för en läkemedelsöverkänslighet med en allvarlighetsgrad livshotande eller skadande, [R13]. / Om en ATC-kod ej kan anges ska attributen nonAtcSubstance
och nonATCSubstanceComment
användas. | 0..1 |
| ../../../../../code | string | Substansens ATC-kod. | 1..1 |
| ../../../../../displayName | string | Klartext för substans (substansnamn) | 1..1 |
| ../../../../../codeSystem | string | 1.2.752.129.2.2.3.1.1 | 1..1 |
| ../../../../../ codeSystemName | string | Används ej | 0..0 |
| ../../../../../ codeSystemVersion | string | Används ej | 0..0 |
| ../../../../../originalText | string | Används ej | 0..0 |
| ../../../../nonATCSubstance | string | Text som anger benämning på aktiv substans som kan förorsaka en överkänslighetsreaktion. / Ska anges om attributet atcSubstance saknas. | 0..1 |
| ../../../../nonATCSubstanceComment | string | Text som innehåller en förklaring till varför ej ATC-kod används. / Ska anges om attributet atcSubstance saknas. | 0..1 |
| ../../../../pharmaceuticalProductId | CVType | Identifierare för aktuell läkemedelsprodukt som kan orsaka överkänslighet. 
NPL-id (1.2.752.129.2.1.5.1). | 0..* |
| ../../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../../otherHypersensitivity | OtherHypersensitivityType | Mer detaljerad information om överkänsligheten. Kan användas för annan överkänslighet än läkemedelsöverkänslighet. | 0..1 |
| ../../../../hypersensitivityAgent | string | Text som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. / Bör anges. | 0..1 |
| ../../../../hypersensitivityAgentCode | CVType | Text som anger den kod som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. Exempelvis kan LMK-kod för överkänslighet födoämne eller CAS-kod för överkänslighet kemikalie användas. Kan användas för annan överkänslighet än läkemedelsöverkänslighet. | 0..1 |
| ../../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../../codeSystemVersion | string | Kodsystemsversion | 0..1 |
| ../../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../seriousDisease | SeriousDiseaseType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges. | 0..1 |
| ../../../disease | CVType | Kod som beskriver en allvarlig sjukdom som hälso- och sjukvårdstagaren har och som en hälso- och sjukvårdspersonen vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna sjukdom skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren). Bör anges enligt ICD10/SNOMED, [R13]. | 1..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../treatment | TreatmentType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). | 0..1 |
| ../../../treatmentDescription | string | Text som beskriver en allvarlig behandling som hälso- och sjukvårdstagaren genomgår och som en hälso- och sjukvårdspersonal vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna behandling skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren). | 1..1 |
| ../../../treatmentCode | CVType | En preciserad uppgift om behandlingen. Bör anges med KVÅ-kod (1.2.752.116.1.3.2.1.4) | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../../pharmaceuticalTreatment | CVType | Kod och klartext som anger uppgift om den eller de läkemedel som används vid en uppmärksammad behandling.
ATC-kod (1.2.752.129.2.2.3.1.1), [R13]. | 0..* |
| ../../../../code | string | Läkemedlets (ATC-)kod. Om code anges måste också codeSystem och displayName anges. | 0..1 |
| ../../../../displayName | string | Klartext för läkemedel (namn på läkemedel). Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../communicableDisease | CommunicableDiseaseType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). | 0..1 |
| ../../../communicableDiseaseCode | CVType | Kod som anger en precisering av vilken smittsam sjukdom som hälso- och sjukvårdstagaren har. Bör anges som ICD10-kod, [R13]. | 1..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../../routeOfTransmission | CVType | Kod som anger hur den uppmärksammade sjukdomen smittar. Obligatorisk uppgift om det styrs av författning. KV Smittväg. | 0..1 |
| ../../../../code | string | Kod. Om code anges måste också codeSystem och displayName också anges. | 0..1 |
| ../../../../displayName | string | Klartext. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem. | 0..1 |
| ../../../../codeSystemVersion | string | Kodsystemsversion. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../restrictionOfCare | RestrictionOfCareType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). Denna klass skiljer sig sig något från motsvarigheten i Varning2-infospec. | 0..1 |
| ../../../restrictionOfCareComment | string | Text som innehåller information om ett uppmärskammat förhållande som inte avser överkänslighet, annat medicinskt tillstånd, behandling eller arbetsmiljörisk. | 1..1 |
| ../../unstructuredAlertInformation | UnstructuredAlertInformationType | En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). | 0..1 |
| ../../../unstructuredAlertInformationHeading | string | Text som innehåller en beskrivande rubrik för en tidigare utfärdad varning. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen. | 1..1 |
| ../../../unstructuredAlertInformationContent | string | Text som beskriver vad varningen gäller, samt viss administrativ information. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen. | 1..1 |
| ../../relatedAlertInformation | RelatedAlertInformationType | Information om samband uppmärksamhetssignal | 0..* |
| ../../../typeOfAlertInformationRelationship | CVType | Text som anger vilken typ av samband som avses. KV Samband (1.2.752.129.2.2.2.4), [R13]. | 1..1 |
| ../../../../code | string | Kod för samband uppmärksamhetssignal. Om code anges måste också displayName och codeSystem anges. | 0..1 |
| ../../../../displayName | string | Klartext för samband uppmärksamhetssignal. Om displayName anges måste också code och codeSystem anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för samband uppmärksamhetssignal. Om codeSystem anges måste också code och displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Klartext för kodsystem för samband uppmärksamhetssignal. | 0..1 |
| ../../../../codeSystemVersion | string | Version för kodsystem för samband uppmärksamhetssignal. | 0..1 |
| ../../../../originalText | string | Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. Om originalText anges kan ingen av de övriga elementen anges. | 0..1 |
| ../../../relationComment | string | Text som innehåller en kommentar till det aktuella sambandet | 0..1 |
| ../../../documentId | string | Lokalt unik identitet för relaterad uppmärksamhetssignal | 1..* |
| result | ResultType | Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler
Inga fältregler utöver de som är beskrivna ovan.

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Då uppmärksamhetssignaler ska skickas till Nationell Patientöversikt måste någon av följande koder från kv informationstyp anges: / upp-ube / upp-ube-beh / upp-ube-lbe / upp-ube-kod / upp-uas / upp-uas-sjd / upp-vbe / upp-vbe-vbe / upp-arb / upp-arb-smf / upp-arb-smf-vag / upp-arb-smf-sjd / upp-est / upp-est-rub / upp-est-inh / Alternativt ska någon av följande koder från kv uppmärksamhetstyp anges: / Överkänslighet / Allvarlig sjukdom / Allvarlig behandling / Smittsam sjukdom / Vårdbegränsning / Historisk varningsinformation | ../../typeOfAlertInformation | Uppmärksamhets-signaler till NPÖ. |

##### Icke funktionella krav
Inga övriga icke funktionella krav.

##### SLA krav
Inga avvikande SLA krav.

#### Logiska fel
Vid ett logiskt fel ska result.resultCode sättas till ERROR och result.errorCode enligt nedanstående tabell, om result.message innehåller ett meddelande så ska det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som ska returneras.

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande result.message kan närmare peka på vilken regel som ej efterföljts. / En omsändning av information kommer att ge samma fel. |

### GetFunctionalStatus
GetFunctionalStatus returnerar dokumenterade bedömning av funktionsnedsättningar och/eller aktivitetsförmåga för en patient. Meddelandeformatet baseras på NPÖ RIV 2.2.0.

#### Version
2.0

#### Gemensamma informationskomponenter
De gemensamma informationskomponenter som används i detta kontrakt beskrivs i bilagan ”Bilaga Gemensamma_typer_7.pdf” [R15]. Restriktioner av kardinaliteten av enskilda element i dessa gemensamma informationskomponenter markeras i kardinalitetskolumnen med röd text.

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar.  Finns ytterligare regler för ett element är det noterat med referens till regeln i beskrivningen och beskrivs mer i detalj i stycket Övriga regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careUnitHSAId | HSAIdType | Filtrering på vårdenhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. | 0..* |
| patientId | PersonIdType | Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. 
1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14]. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. | 1..1 |
| datePeriod | DatePeriodType | Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där documentTime i svaret ligger inom sökintervallets start- och slutdatumet. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. | 0..1 |
| ../start | string | Startdatum. Format ÅÅÅÅMMDD. | 1..1 |
| ../end | string | Slutdatum. Format ÅÅÅÅMMDD. | 1..1 |
| sourceSystemHSAId | HSAIdType | Begränsar sökningen till information om funktionsstatus som tillgängliggörs av angivet källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. | 0..1 |
| careContactId | string | Begränsar sökningen till de funktionsstatusobjekt som dokumenterades vid angiven hälso- och sjukvårdskontakt. | 0..* |
|  |  |  |  |
| Svar |  |  |  |
| functionalStatusAssessment | FunctionalStatusAssessmentTime | De funktionsstatusbedömningar som matchar begäran. | 0..* |
| ../functionalStatusAssessmentHeader | PatientSummaryHeaderType | Innehåller basinformation om dokumentet | 1..1 |
| ../../documentId | string | Funktionsbedömningens identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. | 1..1 |
| ../../sourceSystemHSAId | HSAIdType | HSA-id för det system tillgängliggör informationen. | 1..1 |
| ../../documentTitle | string | N/A | 0..0 |
| ../../documentTime | TimeStampType | Bedömningstidpunkt/händelsetidpunkt. | 1..1 |
| ../../patientId | PersonIdType | Identifierare för patient. | 1..1 |
| ../../../id | string | Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | 1..1 |
| ../../../type | string | Sätts till OID för typ av identifierare. 
För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14].
För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14].
För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. | 1..1 |
| ../../accountableHealthcareProfessional | HealthcareProfessionalType | Information om den hälso- och sjukvårdsperson som ansvarar för funktionsstatusbedömninge, nedan kallas författare. | 1..1 |
| ../../../authorTime | TimeStampType | Tidpunkt då informationen registrerades. | 1..1 |
| ../../../healthcareProfessionalHSAId | HSAIdType | Författarens HSA-id. | 0..1 |
| ../../../healthcareProfessionalName | string | Namn på författaren. Om tillgängligt ska detta anges. | 0..1 |
| ../../../healthcareProfessionalRoleCode | CVType | Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13]. / I de fall kodverket Befattning ej kan användas, men information om befattning finns tillgänglig, måste vårdgivaren ange en OID på det organisationsinterna kodverk som används istället. / Information som finns kan inte utelämnas på grund av att mappning till kodverket Befattning inte är möjlig | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../../healthcareProfessionalOrgUnit | OrgUnitType | Den organisation som författaren är uppdragstagare på. | 0..1 |
| ../../../../orgUnitHSAId | HSAIdType | HSA-id för organisationsenhet. | 1..1 |
| ../../../../orgUnitName | string | Namnet på den organisation som författaren är uppdragstagare på. | 1..1 |
| ../../../../orgUnitTelecom | string | Telefon till organisationsenhet. | 0..1 |
| ../../../../orgUnitEmail | string | Epost till organisationsenhet. | 0..1 |
| ../../../../orgUnitAddress | string | Postadress för den organisation som författaren är uppdragstagare på. | 0..1 |
| ../../../../orgUnitLocation | string | Text som anger namnet på plats eller ort för organisationens fysiska placering. | 0..1 |
| ../../../healthcareProfessionalCareUnitHSAId | HSAIdType | HSA-id för vårdenhet. (Regel:1) | 0..1 |
| ../../../healthcareProfessionalCareGiverHSAId | HSAIdType | HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel:1) | 0..1 |
| ../../legalAuthenticator | LegalAuthenticatorType | Information om vem som signerat informationen i dokumentet. | 0..1 |
| ../../../signatureTime | TimeStampType | Signaturtidpunkt. / Tid vid vilken funktionsstatusbedömningen signeras. | 1..1 |
| ../../../legalAuthenticatorHSAId | HSAIdType | HSA-id för person som signerat dokumentet | 0..1 |
| ../../../legalAuthenticatorName | string | Namnen i klartext för signerande person. | 0..1 |
| ../../../legalAuthenticatorRoleCode | CVType | Signerande persons befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13] | 0..1 |
| ../../../../code | string | Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för befattningskod. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för befattningskod. | 0..1 |
| ../../../../displayName | string | Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. | 0..1 |
| ../../approvedForPatient | boolean | Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. | 1..1 |
| ../../careContactId | string | Vårdkontakts-id. / Id för den vårdkontakt vid vilken funktionsstatusbedömningen gjorts. | 0..1 |
| ../../nullified | boolean | N/A | 0..0 |
| ../../nullifiedReason | string | N/A | 0..0 |
| ../functionalStatusAssessmentBody | FunctionalStatusAssessmentBodyType |  | 1..1 |
| ../../assessmentCategory | AssessmentCategoryEnum | Bedömningskategori. / Beskriver vilken kategori av bedömning som är gjord. Tillåtna värden är "pad-pad" (för PADL-bedömning) och "fun-fun" (för funktionsnedsättningsbedömningar). / Värdet här ska stämma överens med elementet categorization i den Update som tjänsteproducent skickar till EI. | 1..1 |
| ../../comment | string | Kommentar. / Text som innehåller kommentar till totaliten av bedömningarna. Får endast användas om assessmentCategory = pad-pad. | 0..1 |
| ../../padl | PADLType | Beskriver gjorda PADL-bedömningar. / Får enbart anges samtidigt som assessmentCategory = pad-pad. | 0..* |
| ../../../typeOfAssessment | CVType | Typ av PADL-bedömning. Kan anges med lämpligt kodsystem.
(Regel:2) | 1..1 |
| ../../../../code | string | Kod för PADL-bedömning. / Om code anges ska också codeSystem  samt displayName anges. | 0..1 |
| ../../../../codeSystem | string | Kodsystem för PADL-bedömning. / Om codeSystem anges ska också code samt displayName anges. | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för PADL-bedömning. | 0..1 |
| ../../../../codeSystemVersion | string | Version på kodsystem för PADL-bedömning. | 0..1 |
| ../../../../displayName | string | PADL-bedömningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | 0..1 |
| ../../../../originalText | string | Om PADL-bedömning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i typeOfAssessment anges. | 0..1 |
| ../../../assessment | string | Den textuella PADL-bedömning som gjorts i kategorin av bedömningar som beskrivs i typeOfAssessment. | 1..1 |
| ../../disability | DisabilityType | Beskriver gjord funktionsnedsättningsbedömning. / Får endast anges om assessmentCategory = fun-fun. | 0..1 |
| ../../../disabilityAssessment | CVType | Angivelse av kod för den funktion som bedömts nedsatt. / Om funktionen anges strukturerat ska kod från ICF [R13] användas. Koden ska anges utan bedömningsfaktor och detta ska tolkas som att det är den funktion som ICF-koden representerar som är nedsatt från normal funktion. I attributet kommentar kan nedsättningen vid behov textuellt graderas och specificeras ytterligare. / Om ICF-kod inte kan anges kan den nedsatta funktionen anges i attributet originalText / Kontraktet har i denna version inte stöd för ICFs numeriska bedömningsfaktor. | 1..1 |
| ../../../../code | string | Kod för den funktion som bedömts nedsatt. Exempelvis ICF kod: b3101 / Om code anges ska också codeSystem  samt displayName anges, men ej originalText. | 0..1 |
| ../../../../codeSystem | string | OID för ICF: 1.2.752.116.1.1.3 | 0..1 |
| ../../../../codeSystemName | string | Namn på kodsystem för funktionsnedsättning. | 0..0 |
| ../../../../codeSystemVersion | string | Version på kodsystem för funktionsnedsättning. | 0..0 |
| ../../../../displayName | string | ICF-kodens klartextbenämning, exempelvis ”röstkvalitet” . | 0..1 |
| ../../../../originalText | string | Om ICF-kod saknas, kan en funktionsnedsättningen beskrivas i text i detta attribut. / Om originalText anges ska inget annat värde i disabilityAssessment anges. | 0..1 |
| ../../../comment | string | Kommentar. / Text som innehåller ytterligare information om funktionsnedsättningen. Exempelvis: ”uttalssvårigheter och tillfälligt bortfall av röststyrka”. | 0..1 |
| result | ResultType | Innehåller information om begäran gick bra eller ej. | 1..1 |
| ../resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR | 1..1 |
| ../errorCode | ErrorCodeEnum | Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. | 0..1 |
| ../subcode | string | Inga subkoder är specificerade. | 0..1 |
| ../logId | string | En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. | 1..1 |
| ../message | string | En beskrivande text som kan visas för användaren. | 0..1 |

#### Övriga regler

| Namn | Regel | Element | Ändamål |
| :--- | :--- | :--- | :--- |
| Regel 1 | Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL. Om HSA-id för vårdenhet och vårdgivare inte kan lämnas kommer elementet inte visas upp av konsumenter inom sammanhållen journalföring | ../../../healthcareProfessionalCareGiverHSAId / ../../../healthcareProfessionalCareUnitHSAId | Sammanhållen journalföring |
| Regel 2 | Då attributet endast avser Personlig ADL ska endast följande och max ett av vardera av följande värden användas: "personlig hygien", "på/avklädning", "förflyttning", "toalettbesök" och "födointag". | ../../../typeOfAssessment | Följsamhet till den delen av ADL taxonomin som rör de personliga aktiviteterna [R18]. |

##### Icke funktionella krav
Inga övriga icke funktionella krav

##### SLA krav
Inga avvikande SLA krav

#### Logiska fel
Vid ett logiskt fel ska result.resultCode sättas till ERROR och result.errorCode enligt nedanstående tabell, om result.message innehåller ett meddelande så ska det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som ska returneras.

| Felkod | Värde | Beskrivning |
| :--- | :--- | :--- |
| Ogiltig begäran | INVALID_REQUEST | Informationsmängden som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande result.message kan närmare peka på vilken regel som ej efterföljts. / En omsändning av information kommer att ge samma fel. |
