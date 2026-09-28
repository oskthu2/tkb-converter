infrastructure: itintegration: dataexchange

![img_004.png](images/img_004.png)

![img_011.png](images/img_011.png)
Innehållsförteckning
1	Inledning	4
1.1	Svenskt namn	4
2	Versionsinformation	5
2.1	Version 1.0	5
2.1.1	Oförändrade tjänstekontrakt	5
2.1.2	Nya tjänstekontrakt	5
2.1.3	Utgångna tjänstekontrakt	5
2.2	Version tidigare	5
3	Tjänstedomänens arkitektur	5
3.1	Flöden	6
3.1.1	Fråga-svar	6
3.1.2	Uppdrag-resultat	9
3.1.3	Obligatoriska kontrakt	11
3.2	Adressering	11
3.3	Aggregering och engagemangsindex	11
4	Tjänstedomänens krav och regler	11
4.1	Informationssäkerhet och juridik	12
4.2	Icke funktionella krav	12
4.2.1	SLA krav	12
4.2.2	Övriga krav	12
4.3	Felhantering	12
4.3.1	Krav på en tjänsteproducent	12
4.3.2	Krav på en tjänstekonsument	13
5	Tjänstedomänens meddelandemodeller	13
5.1	Meddelandemodell - GetBinaryData	14
6	Tjänstekontrakt	15
6.1	GetBinaryData	15
6.1.1	Version	15
6.1.2	Fältregler	15
6.1.3	Övriga regler	16
6.1.4	Annan information om kontraktet	17
Revisionshistorik	18
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | Arkitekturella beslut | Bilaga | AB_infrastructure_ itintegration_dataexchange.docx |
| R2 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R3 | RIV Tekniska Anvisningar / Översikt | Finns på Webben | Länk |
| R4 | Senaste version av SOSFS 2016:40 Socialstyrelsens föreskrifter och allmänna råd om journalföring och behandling av personuppgifter i hälso- och sjukvården | Finns på Webben | Länk |
| R5 | Journalföring och behandling av personuppgifter i hälso- och sjukvården - Handbok vid tillämpningen av Socialstyrelsens föreskrifter och allmänna råd (HSLF-FS 2016:40) om journalföring och behandling av personuppgifter i hälso- och sjukvården. | Finns på Webben | Länk |
| R6 | RIV Tekniska Anvisningar - Binära bilagor | Finns på Webben | Länk |
| R7 | RIV Tekniska Anvisningar - Parallella huvudversioner av ett tjänstekontrakt | Finns på Webben | Länk |
| R8 | Informationsspecifikation | Bilaga | IS_infrastructure_ itintegration_dataexchange.docx |
| R9 | HL7 FHIR | Finns på Webben | Länk |
| R10 | W3C Web Accessibility Initiative (WAI) - alttext | Finns på Webben | Länk |
| R11 | Referens till binär data | Bilaga | Referens till binär data.docx |
| R12 | Anvisning för utformning av nyttolast i tjänstekontrakt | Finns på Webben | Länk |
| R13 | Introduktion till samverkansarkitektur | Finns på Webben | Länk |
Begrepp och förkortningar

| Begrepp/ Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Interoperabilitets- specifikation | Ett samlingsbegrepp för överenskommelser som beskriver förutsättningar och krav för digitala tjänster. / I interoperabilitetsspecifikationen beskrivs de krav som ställs på den part som ska ansluta till en samverkan och som parten förväntas uppfylla. | En interoperabilitetsspecifikation beskriver regler för en specifik interoperabel lösnings användning av tjänstekontrakt och dess innehåll utöver reglerna i tjänstekontraktets tjänstekonstraksbeskrivning (TKB). / Exempel på en interoperabilitetsspecifikation är interaktionsöverenskommelser enligt Anvisning för utformning av nyttolast i tjänstekontrakt [R12]. |
| Interoperabel lösning | En samling digitala tjänster som via API och/eller användargränssnitt realiserar ett verksamhetsbehov [R13]. | Varje interoperabel lösning beskrivs av en interoperabilitetsspecifikation innehållande överenskommelser som beskriver förutsättningar och krav för hur lösningen kan och får användas [R13]. |
|  |  |  |
|  |  |  |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
infrastructure:itintegration:dataexchange
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Denna domän hanterar utbyte av ostrukturerad information. Domänen syftar till att tillmötesgå vårdprofessionens behov av direktåtkomst till patientens vårdinformation (så kallad sammanhållen journalföring). Domänen syftar även till att användas för patientens egen åtkomst till sin vårdinformation.
Tjänstekontrakten i denna domän hanterar specifikt binära data i form av bilagor till annan vårddokumentation eller vårddokumentation vars ursprungsform är binär data. Domänens kontrakt stödjer tjänsteinteraktioner där konsumenten är i behov av att läsa informationen från ett eller flera källsystem.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska med andra ord följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastruktur:tjänsteförmedlingstjänster:datautbyte
Datautbyte

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen infrastructure:itintegration:dataexchange. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
GetBinaryData 1.0

##### Förändrade tjänstekontrakt
Inga förändrade tjänstekontrakt.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Ingen tidigare version.

## Tjänstedomänens arkitektur
Utgångspunkten för tjänsterna i denna tjänstedomän är att kunna hämta binära filer som refererats till i svar på andra tjänsteförfrågningar. Exempel på tillämpningar där detta kan vara aktuellt är för patientens och professionens åtkomst till vård- och omsorgshistorik via Journalen, Nationell patientöversikt, och Elektronisk remiss.
Nedan beskrivs de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver dels vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

### Flöden
Nedanstående diagram visar hur flödet principiellt ser ut när information ur kontrakt i tjänstedomänen efterfrågas och hanteras.

#### Fråga-svar

##### Arbetsflöde

![img_005.png](images/img_005.png)
*Figur 1. Exempel: Hämta binära filer vid behov i tjänsten Nationell patientöversikt - NPÖ.*

![Figur 2. Exempel: Hämta binära filer vid behov i tjänsten 1177 journal.](images/img_002.png)

###### Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Patienten | Den patient som vill få tillgång till information som tjänsterna tillhandahåller. |
| Professionen | Den hälso- och sjukvårdspersonal som vill få tillgång till patientens data. |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekontrakt som används i exemplet nedan är: GetImagingOutcome för bilddiagnostiska resultat och GetBinaryData för bilagor. Tjänstekontraktet GetImagingOutcome adresseras genom Nationella tjänsteplattformen (NTjP) medan tjänstekontraktet GetBinaryData adresseras direkt till en regional tjänsteplattform (RTP). En referens till bilagor inkluderas i responsen för GetImagingOutcome som innehåller uppgifter för åtkomst till bilagorna med kontraktet GetBinaryData.
I exemplet adresseras en regional tjänsteplattform vid anrop med GetBinaryData men GetBinaryData kan också adresseras direkt till tjänsteproducenten utan att en tjänsteplattform används.

![img_007.png](images/img_007.png)
*Figur 3. Sekvensdiagram över sökning efter information där GetImagingOutcome används som exempel, men samma princip gäller för alla tjänstekontrakt som refererar till GetBinaryData.*
Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Tjänstekonsument | Det system som används för att konsumera information. Dvs det system som använder tjänster enligt ett tjänstekontrakt. |
| NTjP | Nationell tjänsteplattform hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster nationellt. |
| RTP | Regional tjänsteplattform hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster regionalt. |
| Tjänsteproducent_GIO | Det system som i detta fall är källsystem för tjänstekontraktet GetImagingOutcome. |
| Tjänsteproducent_GBD | Det system som i detta fall är källsystem för tjänstekontraktet GetBinaryData. |

#### Uppdrag-resultat

##### Arbetsflöde

![img_003.png](images/img_003.png)
*Figur 4. Exempel: Arbetsflöde Skicka och ta emot remiss med refererade bilagor i tjänsten Elektronisk remiss.*

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Hälso- och sjukvårdspersonal 1 | Den hälso- och sjukvårdspersonal som skapar och skickar remiss |
| Hälso- och sjukvårdspersonal 2 | Den hälso- och sjukvårdspersonal som tar emot remiss |

##### Sekvensdiagram
Nedanstående diagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekontrakt som används är: ProcessRequest för remisshantering och GetBinaryData för bilagor. Tjänstekontraktet ProcessRequest adresseras genom Nationella tjänsteplattformen (NTjP) medan tjänstekontraktet GetBinaryData adresseras utanför Nationella tjänsteplattformen. En referens till bilagor inkluderas i request-meddelandet för ProcessRequest som innehåller uppgifter för åtkomst till bilagorna med kontraktet GetBinaryData.

![img_008.png](images/img_008.png)
*Figur 5: Sekvensdiagram för arbetsflödet Skicka och ta emot remiss där tjänstekontraktet ProcessRequest används som exempel, men samma princip gäller för alla tjänstekontrakt som refererar till GetBinaryData.*
Roller

| Namn/beteckning | Beskrivning alt. referens |
| :--- | :--- |
| Hälso- och sjukvårdspersonal 1 | Den hälso- och sjukvårdspersonal som skapar och skickar remiss. |
| Informationssystem 1 | Det system som i exemplet är tjänstekonsument för tjänstekontraktet ProcessRequest och tjänsteproducent för tjänstekontraktet GetBinaryData. |
| NTjP | Nationell tjänsteplattform som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster nationellt. |
| Informationssystem 2 | Det system som i exemplet är tjänsteproducent för tjänstekontraktet ProcessRequest och tjänstekonsument för tjänstekontraktet GetBinaryData. |
| Hälso- och sjukvårdspersonal 2 | Den hälso- och sjukvårdspersonal som tar emot remiss. |

#### Obligatoriska kontrakt
Följande tabell specificerar vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Fråga-svar | Uppdrag-resultat |
| :--- | :--- | :--- |
| GetBinaryData | X | X |
| Tjänstekontrakt som refererar till GetBinaryData | X | X |

### Adressering
Tjänstekontraktet GetBinaryData ska enbart anropas utanför Nationella tjänsteplattformen (NTjP).
Tjänstekonsumenten behöver känna till källsystemets HSA-id (logisk adress) och den URL (teknisk adress) tjänstekonsumenten ska anropa. Såväl logisk som teknisk anslutningsadress hämtas från en referens, se bilaga [R11]. Referensen kan antingen förmedlas till tjänstekonsumenten via svaret på ett anrop till ett annat tjänstekontrakt som tjänstekonsumenten anropat eller som del av ett meddelande som skickats till tjänstekonsumenten på annat sätt.

### Aggregering och engagemangsindex
Aggregering är inte tillämpbart för tjänstekontrakt i domänen.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Kraven för hantering av information som hanteras med tjänstekontraktet GetBinaryData måste linjera med regler för informationsbehandling i det tjänstekontrakt eller annat meddelande som bär en referens till tjänstekontraktet GetBinaryData. Uppgifter från det tjänstekontrakt eller annat meddelande som bär referensen används bl.a. för spärrkontroll vid medarbetarens direktåtkomst och kontroll om informationen godkänts att visas för patient vid patientens direktåtkomst.
En specifik interoperabel lösning behöver tillhandahålla en interoperabilitetsspecifikation för att beskriva användningen av tjänstekontraktet GetBinaryData och dess innehåll utöver reglerna i denna TKB. Interoperabilitetsspecifikationen kan beskriva krav på informationssäkerhet och juridik som inte beskrivs vare sig i denna TKB, eller i dokumentationen om informationsbehandling för det tjänstekontrakt eller annat meddelande som bär referensen.

### Icke funktionella krav

#### SLA krav
En specifik interoperabel lösning behöver i en interoperabilitetsspecifikation beskriva den interoperabla lösningens SLA-krav.

#### Övriga krav

##### Gemensamma konsumentregler
R1: Hantering av en refererad bilaga måste linjera med regler för informationsbehandling i det tjänstekontrakt eller annat meddelande som bär referensen.

##### Gemensamma producentregler
R2: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Respektive kontrakt beskriver närmare hur logiska fel ska hanteras.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (Soap Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. I stället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.
Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga generella krav på konsument. En specifik interoperabel lösning behöver tillhandahålla en interoperabilitetsspecifikation för att beskriva hanteringen av eventuella logiska fel.

##### Tekniska fel
Inga generella krav på konsument. En specifik interoperabel lösning behöver tillhandahålla en interoperabilitetsspecifikation för att beskriva hanteringen av eventuella tekniska fel.

## Tjänstedomänens meddelandemodeller
Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen. Varje tjänstekontrakt ska ha en (1..1) egen meddelandemodell som uttömmande beskriver informationen som tjänstekontraktet bär. För varje meddelandemodell beskrivs hur mappning ser ut mot tjänstekontraktets schema (XSD).

![Meddelandemodell - GetBinaryData](images/img_006.png)
Meddelandemodell - GetBinaryData
*Figur 6: UML-representation av XSD-schemat.*
Nedan beskrivs mappning mellan meddelandemodell/ XSD och informationsmodellen i informationsspecifikationen [R8].

| Meddelandemodell/ XSD | Mappning mot Nationell Informationsstruktur 2016:1 |
| :--- | :--- |
| GetBinaryDataRequest | Saknas |
| logicalAddress | Saknas |
| parameters | Saknas |
| GetBinaryDataType | Saknas |
| id | Dokument.id |
| GetBinaryDataResponse | Saknas |
| parameters | Saknas |
| GetBinaryDataResponseType | Saknas |
| binaryData | Binär data |
| result | Saknas |
| BinaryType | Binär data |
| contentType | Binär data.mediatyp |
| data | Binär data.data |
| ResultType | Saknas |
| resultCode | Saknas |
| resultText | Saknas |

## Tjänstekontrakt

### GetBinaryData
Tjänstekontraktet hanterar information som kodas och överförs i ett format bestående enbart av bitar (0 och 1), vilket kan inkludera filer, bilder, ljud eller andra typer av data som inte är textbaserade.
Vanliga användningsfall är hantering av bilagor till annan vårddokumentation eller vårddokumentation vars ursprungsform är binär data.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Referens till ytterligare regler för enskilda element anges i kolumnen ”Namn”. Dessa regler beskrivs mer i detalj i kapitlet ”Övriga regler”.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| id | string | Unik identifierare av binär fil i källsystemet. / Anges på det sätt identifieraren är angiven i referensen, se avsnitt 6.1.4, till den binära filen. | 1..1 |
| Svar |  |  |  |
| binaryData | BinaryDataType | Information om det binära innehållet. | 0..1 |
| result | ResultType | Innehåller information om det gick bra eller ej att besvara förfrågan. | 1..1 |

##### BinaryDataType

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| contentType | token | MIME-typ för det binära innehållet.
Anges enligt urvalet MimeTypes i FHIR. http://hl7.org/fhir/ValueSet/mimetypes
OID: 2.16.840.1.113883.4.642.3.1024 / Vanligt förekommande MIME-typer och deras filändelser finns här https://mimetype.io/ | 1..1 |
| data | base64Binary | Det faktiska binära innehållet. | 1..1 |

##### ResultType

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum | Kan endast vara OK, INFO eller ERROR. | 1..1 |
| resultText | string | En beskrivande text som kan visas för användaren. | 0..1 |

##### ResultCodeEnum

| Värde | Beskrivning |
| :--- | :--- |
| OK | Transaktionen har utförts enligt uppdraget. |
| INFO | En beskrivande text som kan visas för användaren. |
| ERROR | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. |

#### Övriga regler
Till detta tjänstekontrakt finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan. Regler markerade med [sch] återfinns i schematron (constraints).

| ID | Kontext | Beskrivning |
| :--- | :--- | :--- |
| Regler i begäran | Regler i begäran | Regler i begäran |
| Id | id | Tjänstekontraktet GetBinaryData kan endast anropas av en tjänstekonsument efter att tjänstekonsumenten har kännedom om identifieraren för den binära filen. Identifieraren kan t.ex. förmedlas i en referens, se bilaga [R11], i ett tjänstekontrakt eller annat meddelande som pekar ut den binära filen. / Attributet attachment.id i referensen, se bilaga [R11], ska anges som id i begäran i tjänstekontraktet GetBinaryData. |
| Regler i svaret | Regler i svaret | Regler i svaret |
| MIME-typ | contentType | Vilka värden som tillåts för elementet contentType behöver beskrivas i en interoperabilitetsspecifikation. |
| Allmänna regler | Allmänna regler | Allmänna regler |
| Åtkomst och spärrkontroll |  | Åtkomsten till den vårddokumentation som refererar till en binär fil ligger även till grund för åtkomsthantering och spärrkontroll för den binära filen. |
| Interoperabilitetsspecifikation |  | En specifik interoperabel lösning behöver tillhandahålla en interoperabilitetsspecifikation för att beskriva användningen av tjänstekontraktet GetBinaryData och dess innehåll utöver reglerna i denna TKB. / Tjänstekonsumenter och tjänsteproducenter behöver utöver regler och anvisningar i denna TKB även följa regler och anvisningar i interoperabilitetsspecifikationen. |

##### Icke funktionella krav

#### Annan information om kontraktet
Tjänstekontraktets innehåll och definitioner är en tillämpning av resursen Binary (https://hl7.org/fhir/binary.html) i standarden HL7 FHIR [R9] för informationsutbyte inom hälso- och sjukvård.
För att använda tjänstekontraktet krävs att tjänstekonsumenten har kännedom om identifieraren för den binära filen. Identifieraren kan förmedlas i en referens, se bilaga [R11], till exempel i ett tjänstekontrakt eller annat meddelande som pekar ut den binära filen. Vilken information referensen håller om den binära filen kan skilja för olika interoperabla lösningar.
I referensen, se bilaga [R9], tillhandahålls metadata om ett dokument i objektet DocumentReferenceType. Med dokument avses alla serialiserade objekt med en MIME-typ. Ett dokument vars metadata beskrivs i DocumentReferenceType kan representeras av en eller flera binära filer i objektet AttachmentType som återfinns i DocumentReferenceType. Anledningen till denna struktur är för att kunna förmedla flera varianter av samma dokument men med olika egenskaper, till exempel en bild som representeras med flera filer innehållande olika detaljeringsnivå av information, eller olika filtyp (MIME-typ), men som i övrigt har samma innehåll. Ett annat exempel är ett dokument som representeras av flera PDF-filer med text på olika språk, men med samma textuella innehåll. Dessa egenskaper (t.ex. språk eller filstorlek) som kan skilja sig mellan olika varianter av samma dokument återfinns som metadata i AttachmentType.
Observera att det är den binära filen som unikt identifieras med attributet attachment.id i referensen som ska anges som identifierare för den binära fil som efterfrågas vid anrop med tjänstekontraktet GetBinaryData. I exempelmeddelandet nedan är det ”binary-1” markerat i svart text som ska anges som id i begäran i GetBinaryData.
Informationshanteringen av den binära filen styrs av reglerna för innehållet i det meddelande som innehåller referensen.
Exempelmeddelande för en referens:
<documentReference>
<id value="document-1" />
<version value="1" />
<status value="current" />
<description value="Ett dokument som exemplifierar användningen av en referens." />
<attachment>
<id value="binary-1" />
<contentType value="application/pdf" />
<language value="sv" />
<size value="1256498" />
<title value="Exempeldokument" />
<creation value="20241030131305" />
<endpoint>
<status value="active" />
<connectionType value="urn:riv:infrastructure:itintegration:dataexchange:GetBinaryDataResponder:1:rivtabp21" />
<address value="https://url.till.en.api-endpoint.se" />
<logicalAddress value="SE2321000016-T65N" />
<accessControlMechanism value="mutual-tls" />
</endpoint>
</attachment>
</documentReference>

## Revisionshistorik

| Version | Datum | Författare | Kommentar |
| :--- | :--- | :--- | :--- |
| Preliminär version | 2024-10-30 | Thomas Siltberg | Preliminär version |
| 1 |  |  |  |
|  |  |  |  |
|  |  |  |  |
