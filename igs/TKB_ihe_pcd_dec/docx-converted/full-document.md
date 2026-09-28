
|  | IHE PCD DEC / Mätdata från mätutrustning / Version 1.0.1 / 2017-10-18 |
| :--- | :--- |
Innehåll
1	Inledning	8
1.1	Svenskt namn	8
2	Versionsinformation	8
2.1	Version 1.0	8
2.1.1	Oförändrade tjänstekontrakt	8
2.1.2	Nya tjänstekontrakt	8
2.1.3	Förändrade tjänstekontrakt	8
2.1.4	Utgångna tjänstekontrakt	9
2.2	Version tidigare	9
3	Tjänstedomänens arkitektur	9
3.1	Flöden	10
3.1.1	Flöde 1	10
3.2	Adressering	11
3.3	Aggregering och engagemangsindex	12
4	Tjänstedomänens krav och regler	12
4.1	Informationssäkerhet och juridik	12
4.2	Icke funktionella krav	12
4.2.1	SLA krav	12
4.2.2	Övriga krav	13
4.3	Felhantering	13
4.3.1	Krav på en tjänsteproducent	13
4.3.2	Krav på en tjänstekonsument	13
4.4	Kodverk	13
4.4.1	Continua	13
4.4.2	Medicinteknisk utrustning	13
5	Tjänstedomänens meddelandemodeller	13
5.1	V-MIM	14
6	Tjänstekontrakt	15
6.1	DeviceObservationConsumer	15
6.1.1	Version	15
6.1.2	Fältregler	15
6.1.3	Övriga regler	22
6.1.4	Annan information om kontraktet	22
Revisionshistorik

| Version | Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 1.0_RC1 |  | 2015-09-06 | Första version av dokumentet | Khaled Daham |  |
| 1.0_RC1 |  | 2015-09-16 | Lagt till fältregler | Khaled Daham |  |
| 1.0_RC1 |  | 2015-09-30 | Uppdaterat exempel och referenstabell | Khaled Daham |  |
| 1.0_RC2 |  | 2016-02-03 | Uppdaterat exempel-filer. / Separerat de olika ER7 segmenten för enklare läsning. / Lagt till referenser till verktyg som underlättar vid utveckling och verifiering av ER7-meddelanden. / Lagt till referenser till de ISO-  mätutrustning | Khaled Daham |  |
| 1.0_RC3 |  | 2016-04-18 | Redaktionella ändringar efter feedback ifrån Telia (Hjalmar Jacobson) / Lagt till två ER7-exempel, en för blodtryck och en för vikt. | Khaled Daham |  |
| 1.0_RC3 |  | 2016-06-28 | Tagit bort webtexten ur TKB, webtexten publiceras på inera.se | Khaled Daham |  |
| 1.0_RC3 |  | 2016-07-01 | Uppdaterat med domännamn enligt VIFO och svenskt kortnamn. | Khaled Daham |  |
| 1.0_RC3 |  | 2016-08-24 | Ändrat filnamn på exempelfiler samt TKB. / Lagt till länk till bitbucket för ärendethantering. / Lagt till ett tomt AB | Khaled Daham |  |
| 1.0_RC4 |  | 2016-10-28 | Beslut om att använda Continuas WSDL istället för RIVTA-kuvertering. / Interaktionen byter även namn ifrån ProcessDeviceObservation till DeviceObservationConsumer | Khaled Daham |  |
| 1.0_RC4 |  | 2016-11-14 | Uppdaterad nomenklatur kring arkitekturen för att återspegla Continuas (2016) uppdaterade guidelines / Uppdaterat referenstabellen / Ärenden som åtgärdats / https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/4/missvisande-beskrivning-av-dom-nen-i-rc3 / Lagt till exempel med logisk adressering i wsa:To | Khaled Daham |  |
| 1.0_RC4 |  | 2017-03-10 | Uppdaterat semantik för adressering, https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/6/semantik-saknas-f-r-logisk-adress-i-wsdl | Khaled Daham |  |
| 1.0_RC4 |  | 2017-03-24 | Lagt till en paragraf för vilka kodverk som är tillåtna, https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/3/st-d-f-r-m-tv-rden-fr-n-medicinteknisk | Khaled Daham |  |
| 1.0_RC4 |  | 2017-05-03 | Korrigerat fel i test-svit | Khaled Daham |  |
| 1.0.1 |  | 2017-10-13 | Uppdaterat exempel i TKB så att de stämmer överens med test-svit samt exempel i ./docs/examples/ / Tagit bort stycket 4.4.3 som gav tillåtelse till att använda SNOMED-kodade mätvärden. Issue https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/10/tkb-anger-felaktigt-att-att-andra / Uppdaterat version och datum. | Khaled Daham |  |
| 1.0.1 |  | 2017-10-20 | Tagit bort itintegration_registry_2.0.xsd ur repositoryt. / Stängt issue https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues/9/felaktigt-exempel-i-avsnitt-6125 | Khaled Daham |  |
Referenser

| Namn | Dokument | Kommentar | Länk |
| :--- | :--- | :--- | :--- |
| R1 | AB_IHE_PCD_DEC.docx | Obligatoriskt | Bilaga |
| R2 | Flera dokument | Continua implementations-guidelines 2016, rörande överföring av observationer mellan infrastrukturen för datafångst i hemmet och verksamhetens telemedicin-applikation. | Guidelines som ges ut av Continua Alliance beställts kostnadsfritt för nedladdning via denna länk: http://www.pchalliance.org/continua/continua-design-guidelines |
| R3 | RIVTA flera dokument | Finns på Webben | http://rivta.se/ |
| R4 | Lista över vanligt förekommande kodverk och identifierare |  | https://bitbucket.org/rivta-domains/best-practice/wiki/ListOfCommonlyUsedCodeSystems.md |
| R5 | IHE Patient Care Devices, Technical Framework, Volume1, Profiles | Beskrivning av användarfall och tillämpningar för PCD | http://www.ihe.net/uploadedFiles/Documents/PCD/IHE_PCD_TF_Vol1.pdf |
| R6 | IHE Patient Care Devices, Technical Framework, Volume2, Transactions | Beskrivning av meddelandetransaktioner | http://www.ihe.net/uploadedFiles/Documents/PCD/IHE_PCD_TF_Vol2.pdf |
| R7 | IHE Patient Care Devices, Technical Framework, Volume3, Semantic Content | Beskrivning av meddelandetransaktionernas semantiska innehåll | http://www.ihe.net/uploadedFiles/Documents/PCD/IHE_PCD_TF_Vol3.pdf |
| R8 | IHE Patient Care Devices, Technical Framework, Supplement 2007-2008, Subscribe to Patient Data SPD – Trial Implementation | Beskrivning av användarfall, tillämpning för beställning/initiering av mätserie från PCD | http://ihe.net/Technical_Framework/upload/IHE_PCD_Suppl_SPD_Rev1-2_TI_Reissued-2011-11-11.pdf |
| R9 | HL7 messaging, version 2.6 | HL7 standarden, version 2.6 | http://www.hl7.org / Standarden är nerladdningsbar via HL7:s hemsida men kräver att ett konto skapas. |
| R10 | HL7 messaging, version 2.7 | HL7 standarden, version 2.7 | http://www.hl7.org / Standarden är nerladdningsbar via HL7:s hemsida men kräver att ett konto skapas. / IHE PCD profilen baserar sig på HL7 version 2.6 men profilen refererar även till nytt segment, PRT, som finns definierad först i efterföljande version, version 2.7 |
| R11 | HAPI TestPanel | Verktyg för verifiering/utveckling av HL7 ER7, skrivet i Java (OpenSource) och går att köra på de flesta operativsystem. / Användes vid verifiering av exempelfilerna. | http://hl7api.sourceforge.net/hapi-testpanel/install.html |
| R12 | HL7Soup | Verktyg för verifiering/utveckling av HL7 ER7, endast för Windows. | http://www.hl7soup.com/Developer.html |
| R13 | Hantering av kontrol-koder i xml | Finns på webben | https://www.w3.org/International/questions/qa-controls - support |
| R14 | Tecken som inte får användas i xml | Finns på webben | http://www.w3.org/TR/xml/ - syntax |
| R15 | Ärendehantering | Finns på webben | https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues?status=new&status=open |
Förkortningar

| Förkortning | Betydelse | Kommentar |
| :--- | :--- | :--- |
| Tjänstekonsument (K) | Informationssystem där aktörens agerande leder till automatiskt informationsutbyte med andra system (t.ex. e-tjänst eller journalsystem). En Tjänstekonsument använder en SOA-tjänst som i sin tur följer ett tjänstekontrakt. | Se referens [R3] |
| Tjänsteproducent (P) | Hanterar logik och format så som specificeras av ett tjänstekontrakt. | Se referens [R3] |

## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: mätdata från mätutrustning
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Mätdata från mätutrustning
Mätdata från mätutrustning

## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd: mätdata från mätutrustning. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 1.0

#### Oförändrade tjänstekontrakt
Inga oförändrade tjänstekontrakt.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med denna version:
DeviceObservationConsumer, version 1.0

#### Förändrade tjänstekontrakt
Inga förändrade tjänstekontrakt.

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
N/A

## Tjänstedomänens arkitektur
Den transaktion som valts ut ur Contiuas e2e-arkitektur är den som sker mellan rollerna Personal Healthcare Gateway (PHG) och Services application, protokollen mellan dessa båda funktionella komponenter i Continuas referensmodell samlas under rubriceringen Services-IF eller Services Interface.
Protokollen i Services-IF syftar till att standardisera transaktionerna mellan den personliga insamlingsinfrastrukturen och vårdgivarnas uppsamlingspunkt (behandlingsplattform). Det finns andra tänkbara scenarion där informationen samlas av andra parter än en vårdgivare – t.ex. ett personligt hälsokonto, men sådan datainsamling faller utanför den nationella arkitekturens och vårdgivarnas uppdrag.
Continua pekar på en SOAP-ansats för ”Observation Upload” som innebär stor komplexitet  i form av WS-Security, SAML 2 och WS-Reliable Messaging. Dessa standarder måste stödjas för att vara continua-compliant. Dessa standarder (som i sin tur kräver WS-Addressing och SOAP-1.2) används inte i dagens svenska protokoll  – varken inom Hälso- och sjukvården (RIVTA BP 2.1) eller statliga myndigheter (SHS-2).
IHE profilen för PCD (Patient Care Devices) definierar flöden och interaktioner mellan vårdsystem och system som hanterar mät- och undersökningsapparatur. IHE profilen specificerar inte nya standards utan är snarare rekommendationer på hur redan etablerade standards ska appliceras i specifika användningsfall. En IHE profil kan enkelt jämföras med en RIV-TA tjänstedomän. Profilen definierar vidare aktörer och meddelandetransaktioner (jmf tjänstekontrakt) mellan aktörer.
En aktör i en IHE profil behöver inte nödvändigtvis direkt motsvara ett system. Aktören är en modellering, en gruppering av atomär funktionalitet och egenskaper. Ett fysiskt system kan i verkligheten agera som en IHE aktör eller som en grupp aktörer. Detta för att det specifika systemet kanske är designat för att täcka funktionalitet över flera aktörsgränser eller för att det kan finnas direkta krav i IHE profil där ett system som åberopar kompabilitet mot en viss IHE aktör även måste stödja en eller flera andra IHE aktörer. Ett konkret exempel på detta är att ett system som stödjer aktören Device Observation Reporter (system som kan leverera mät- och observationsdata) även måste stödja aktören Consistent Time, d v s har funktionalitet för att säkra att intern klocka för generering av tidsstämplar är synkroniserad mot en gemensam tidsreferens i samverkansdomänen.
I ursprungliga profilen definieras två aktörer, Device Observation Consumer (kan exempelvis vara ett journalsystem) och Device Observation Reporter (kan exempelvis vara en hemmonitoreringsplattform). Den definierade transaktionen mellan dem är överföringen av mät- och observationsdata, IHE PCD-01.
Continua Alliance paketerar interoperabilitetsprofiler från bl.a. standardiseringsorganet IHE i syfte att åstadkomma just detta. Continuas paketeringar av standarder benämns ”design guidelines”. Den aktuella paketeringen benämns ”Observation Upload” [R2].

### Flöden

#### Flöde 1
Följande diagram visar hur ett typiskt flöde ser ut vid hemmonitorering. Flödet visar när en mätning skall starta, när mätvärden hämtas, om en mätperiod behöver uppdateras eller avslutas. ”Applikation/System” avser i bilden den infrastruktur för hemmonitorering som tillhandahålls som tjänst på marknaden.

![img_001.png](images/img_001.png)

##### Arbetsflöde
Beroende på monitoreringstjänstens funktion, sker manuell inmatning av monitoreringsuppdraget i en kundingång i monitoreringstjänsten eller via en integration med journalsystemet. Denna informationsöverföring sker utanför relation till aktuellt standardiseringsarbete.

###### Roller

| Namn | Beskrivning |
| :--- | :--- |
| Device Observation Reporter | De system som i detta fall utgör källsystemet där observationer och mätningar produceras eller mellanlagras. |
| Tjänsteplattform | Tjänsteplattformen är det lager som hanterar virtuella tjänster, aggregerande tjänster samt anpassningstjänster. |
| Device Observation Consumer | Det system som används för att konsumera information. D.v.s. det system som använder tjänster enligt ett tjänstekontrakt. |

##### Sekvensdiagram

![img_002.png](images/img_002.png)

### Adressering
Tjänstedomänen tillämpar källsystem-adressering där varje adress är personuppgiftsansvarig (PuA) för tjänstekonsumenten, det förutsätter att tjänstekonsumenten(device observation reporter) känner till källsystemets(device observation consumer) HSA-id.
Den logiska adressen anges med elementet To: som barn till elementet.
Exempel logisk adress SE55667788-0101:

| <soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:add="http://www.w3.org/2005/08/addressing" xmlns:urn="urn:ihe:pcd:dec:2010" xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope"> / <soap:Header xmlns:wsa="http://www.w3.org/2005/08/addressing"> / <add:To soapenv:mustUnderstand="true">SE55667788-0101</add:To> / </soap:Header> |
| :--- |

### Aggregering och engagemangsindex
Ej tillämpad för Device Observation Reporter, en Device Observation Consumer skall uppdatera EngagemangsIndex enligt de regler som finns för de tjänstekontrakt man producerar, t.ex GetObservations.

## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Behöver information ifrån Inera AR

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Ingen information får vara äldre än… |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

#### Övriga krav

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Skall följa de regler för ”PCD-01 Observation Result message”, och följa de koder som anges som giltiga enligt Message Acknowledgment Segment. Se referenser R10, R11, R12. Exempel på svarsmeddelande finns även I kapitel 6.1.3

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.

#### Krav på en tjänstekonsument
N/A

### Kodverk
Nedan listas tre huvudområden och dess kodverk som domänen tillåter att användas i OBX-fält, utöver det som Continua kräver för en WAN-certifierad device så tillåter domänen ytterligare två områden med utpekade kodverk.

#### Continua
Continua guidelines pekar ut IEEE 11073 20601/104xx för överföring av mätdata ifrån PHD.

#### Medicinteknisk utrustning
Medicinteknisk utrustning som används vid vårdplats som stödjer IEEE 11073-10101/10201 får användas, dvs de MDC_koder som finns definierade i 11073-10101/10201 används istället för 11073-20601/104xx i OBX-fält.

## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### V-MIM

![img_003.jpeg](images/img_003.jpeg)

| Klass.attribut | Mappning mot V-TIM 2.2 |
| :--- | :--- |
| Aktivitet | Aktivitet |
| … | … |

## Tjänstekontrakt

### DeviceObservationConsumer
Detta tjänstekontrakt avser att stödja överföring av observationer och mätdata ifrån ett producerande system eller mellanlagrande system med hjälp av profilen IHE-PCD-01 och uppträder således i segmentet Services-IF enligt Continuas e2e arkitektur.
Tjänsten registrerar ett eller flera nya observationer/mätvärden med information om patient, mätutrustning, organisatorisk enhet och värden.
Meddelandemodellen från kap 5.1 motsvarar begäran för detta tjänstekontrakt.

#### Version
1.0

#### Fältregler
Nedanstående tabeller beskriver element i begäran och svar som behöver förtydliganden gentemot IHE-PCD-01-profilen samt det Continua guidelines definierar.
Första tabellen beskriver det enda xml-element i SOAP:Body och sedan följer de segment i HL7 v 2.6-meddelandet som behöver beskrivas mer ingående.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| CommunicatePCDData | xs:string | ihe-pcd-01 enligt Interoperability design guidelines for / personal health systems samt de fältregler som beskrivs nedan. | 1..1 |
Nedan följer förtydliganden utöver de som definieras av IHE-PCD-01 samt Continua guidelines som gäller för informationsutbyte över den nationella tjänsteplattformen.

##### Segment MSH Header
MSH header segmentet är det första segmentet i alla PCD-01-meddelanden.
Segmentet är obligatorisk och innehåller information som unikt identifierar noden som skickar meddelandet.
Nedanstående tabell skall tolkas tillsamman med de guidelines som finns i Annex E.4.1 i dokumentet H.812 – Observation Upload – DG2016.pdf se referens R2

| Element – Segment . Subsegment | PCD-01
HL7v2.6 MSH / (HL7 datatyp) | Beskrivning |
| :--- | :--- | :--- |
| MSH-6 | HD | Skall vara samma som logisk address. / Exempel: SE-ABCD1234 |
| MSH-9 | MSG | Måste sättas till  ORU^R01^ORU_R01 |
| MSH-18 | ID | Continua kräver att elementet skall sättas till den teckenkodning som används. / HL7 v2.x stipulerar dock att meddelanden som skickas över HTTP skall skall ange sin teckenkodning i HTTP-header “content-type” och att MSH-18 då skall ignoreras. / RIVTA kräver att UTF-8 skall användas, så både HTTP-header “content-type” samt MSH-18 skall sättas till UTF-8. |

###### Exempel på MSH Header

| MSH\|^~\&\|AcmeInc^ACDE48234567ABCD^EUI- 64\|\|\|SE-ABCD1234\|20090713090030+0000\|\|ORU^R01^ORU_R01\|MSGID1234\|P\|2.6\|\|\|NE\|AL\|\|UTF-8\|\|\|IHE PCD ORU-R01 2006^HL7^2.16.840.1.113883.9.n.m^HL7 |
| :--- |

##### Segment PID
Nedanstående tabell skall tolkas tillsammans med de guidelines som finns i Annex E.4.1 i dokumentet H.812 – Observtion Upload – DG2016.pdf se referens R2

| Element – Segment . Subsegment | PCD-01
HL7v2.6 PID / (HL7 datatyp) | Beskrivning |
| :--- | :--- | :--- |
| PID-3 | CX [1..1] | Id för patienten, den patient som observationsgruppen avser. |
| PID-3.1 | ST [1..1] | Personnummer/samordningsnummer,  Skall anges med 12 tecken utan avskiljare. / Exempel: 191212129876 |
| PID-3.4 | HD [0..1] | Assigning Authority / KV OID för typ av identifierare: / För personnummer används OID: 1.2.752.129.2.1.3.1
För samordningsnummer används OID: 1.2.752.129.2.1.3.3 |
| PID-5 | XPN | Patientens namn / Exempel:  Tolvan^Tolvansson^Mellannamn^^^^L^A |
| PID-5.7 |  | Kod för typ av namn i PID-5 dvs patientens namn. / Exempel: L / Tillåtna koder enligt HL7 |
| PID-5.8 |  | Tecken-representation i PID-5 för patientens namn. / Exempel: A / Tillåtna koder |
| PID-8 | IS | Patientens kön enligt HL7 / F : Female / M : Male / O : Other / U : Unknown / A : Ambiguous / N : Not applicable / Exempel: M |

###### Exempel på PID

| PID\|\|\|191212129876^^^1.2.752.129.2.1.3.1^PI\|\|Tolvan^Tolvansson^Mellannamn^^^^L^A\|\|\|M |
| :--- |

##### Segment OBR
Nedanstående tabell skall tolkas tillsammans med de guidelines som finns i Annex E.4.1 i dokumentet H.812 – Observation Upload – DG2016.pdf se referens R2

| Element – Segment . Subsegment | PCD-01
HL7v2.6 PID / (HL7 datatyp) | Beskrivning |
| :--- | :--- | :--- |
| OBR-3.2 | OBR-3.2 / (IS) | OBR-3.2 innehåller det unika ID som observatiosgruppen/undersökningen fått i det utförande systemet. Det varierar dock hur olika system tolkar standarden och således hur de olika efterföljande subfälten ska sättas. / Bör sättas till systemets HSA ID. / Exempel: SE-123456789 |

###### Exempel på OBR

| OBR\|1\|AB12345^AcmePHGInc^ACDE48234567ABCD^EUI- 64\|SE-123456789^^^ \|182777000^monitoring of patient^SNOMED- CT\|\|\|20090813095715+0000 |
| :--- |

##### Segment OBX för utrustning och observation
Nedanstående tabell skall tolkas tillsammans med de guidelines som finns i Annex E.4.1 i dokumentet H.812 – Observation Upload – DG2016.pdf se referens R2
För utrustning som följer IEEE/ISO 11073-20601 finns det generella guidelines för hur dessa skall mappas in i ett OBX-segment, se H.812 – Observation Upload – DG2016.pdf Annex D.0.4 för mer information.

| Element – Segment . Subsegment | PCD-01
HL7v2.6 OBX / (HL7 datatyp) | PCD-01
HL7v2.6 OBX / (HL7 datatyp) | Beskrivning |
| :--- | :--- | :--- | :--- |
| OBX-3 | CWE | CWE | Typ av observation t.ex vikt, pulsmätning. / Exempel: MDC (IEEE/ISO 11073-20601): / 150456^MDC_PULS_OXIM_SAT_O2^MDC / 188736^MDC_MASS_BODY_ACTUAL^MDC / 149530^MDC_PULS_OXIM_PULS_RATE^MDC / Se även Appendix E.3 i  H.812 – Observation Upload – DG2016.pdf |
| OBX-5 | Varies | Varies | OBX-5 innehåller observationen. / Värdet för mätningen. / Exempel (vikt): 153.6\| |
| OBX-6 |  |  | Den enhet observationen är uttryckt med, t.ex centimeter för längd, eller kilogram för vikt. / Exempel med MDC: / 263875^MDC_DIM_KILO_G^MDC |
| OBR-7,OBR-8,OBX-14 |  | Tidstämpel (start/stop) som sätts i OBR-7 / Och OBR-8 gäller för gruppen av observationer, d v s alla efterföljande OBX segment. / Om varje observation har en egen tidsstämpel, kan OBX-14 användas. Denna position tillåter då istället endast en tidsstämpel, således inte ett intervall. / Tidsperiod för observationen. / Består av TimeStampType intervallerna startTime respektive endTime. Vardera uttrycks på formatet ÅÅÅÅMMDDttmmss. / Om observationen är en tidpunkt, inte ett intervall, sätts sluttid till samma tid som starttid. / NI 2015:1 / Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Exempelvis så kan tidsattributet ange att patienten hade huvudvärk igår kväll mellan kl. 20.00 och 21.45 även om detta berättades på morgonen efter och det dokumenterades först då. Om observationen är ett måltillstånd anger tidsattributet när detta tillstånd önskas vara uppnått. / Observationens tid skiljer sig vanligtvis från dokumentationstidpunkt i journalhandling som beskriver när tillståndet dokumenterades, vilket alltid sker i efterhand. | Tidstämpel (start/stop) som sätts i OBR-7 / Och OBR-8 gäller för gruppen av observationer, d v s alla efterföljande OBX segment. / Om varje observation har en egen tidsstämpel, kan OBX-14 användas. Denna position tillåter då istället endast en tidsstämpel, således inte ett intervall. / Tidsperiod för observationen. / Består av TimeStampType intervallerna startTime respektive endTime. Vardera uttrycks på formatet ÅÅÅÅMMDDttmmss. / Om observationen är en tidpunkt, inte ett intervall, sätts sluttid till samma tid som starttid. / NI 2015:1 / Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Exempelvis så kan tidsattributet ange att patienten hade huvudvärk igår kväll mellan kl. 20.00 och 21.45 även om detta berättades på morgonen efter och det dokumenterades först då. Om observationen är ett måltillstånd anger tidsattributet när detta tillstånd önskas vara uppnått. / Observationens tid skiljer sig vanligtvis från dokumentationstidpunkt i journalhandling som beskriver när tillståndet dokumenterades, vilket alltid sker i efterhand. |
| OBR-7 | DT | Observation Date/Time / Tillåtet format: / YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ] | Observation Date/Time / Tillåtet format: / YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ] |
| OBR-8 | DT | Observation End Date/Time / Tillåtet format: / YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ] | Observation End Date/Time / Tillåtet format: / YYYY[MM[DD[HH[MM[SS[.S[S[S[S]]]]]]]]][+/-ZZZZ] |
| OBX-14 | DTM | Tidsstämpel för observation. OBR-7/8 segmenten gäller om inte OBX-14 är satt. / OBX-14 skall inte vara >= OBR-7 och / skall inte vara <= OBR-8. | Tidsstämpel för observation. OBR-7/8 segmenten gäller om inte OBX-14 är satt. / OBX-14 skall inte vara >= OBR-7 och / skall inte vara <= OBR-8. |

###### Exempel på OBX

| OBX\|1\|NM\|150456^MDC_PULS_OXIM_SAT_O2^MDC\|1.0.0.15\|87.5\|262688^MDC_DIM_PERCENT^MDC\|\|\|\|\|R\|\|\|20140510094931.835-0400 / OBX\|2\|NM\|188736^MDC_MASS_BODY_ACTUAL^MDC\|1.0.0.16\|153.6\|263875^MDC_DIM_KILO_G^MDC\|\|\|\|\|R\|\|\|20140510094931.835-0400 / OBX\|3\|NM\|149530^MDC_PULS_OXIM_PULS_RATE^MDC\|1.0.0.17\|75.8\|264864^MDC_DIM_BEAT_PER_MIN^MDC\|\|\|\|\|R\|\|\|20140510094931.835-0400 |
| :--- |

##### Exempel på ett helt meddelande
Det här exemplet visar hela SOAP-payloaden som skickas, flera exempel finns i arkivet (under docs/examples) i den zip som publiceras på rivta.se.
Notera att HL7 v2.6-meddelanden som innehåller reserverade xml-tecken skall konverteras enligt de regler som beskrivs på R18 och R19 samt R15 kapitel 8.7. T.ex & blir &amp;

| <soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:add="http://www.w3.org/2005/08/addressing" xmlns:urn="urn:ihe:pcd:dec:2010" xmlns:soapenv="http://www.w3.org/2003/05/soap-envelope"> / <soap:Header xmlns:wsa="http://www.w3.org/2005/08/addressing"> / <add:To soapenv:mustUnderstand="true">${logicalAddress}</add:To> / </soap:Header> / <soap:Body> / <soap:Body> / <urn1:CommunicatePCDData>MSH\|^~\&amp;\|AcmeInc^ACDE48234567ABCD^EUI- 64\|\|\|SE-ABCD1234\|20090713090030+0000\|\|ORU^R01^ORU_R01\|MSGID1234\|P\|2.6\|\|\|NE\|AL\|\|UTF-8\|\|\|IHE PCD ORU-R01 2006^HL7^2.16.840.1.113883.9.n.m^HL7
PID\|\|\|191212129876^^^1.2.752.129.2.1.3.1^PI\|\|Tolvan^Tolvansson^Mellannamn^^^^L^A\|\|\|M
OBR\|1\|AB12345^AcmePHGInc^ACDE48234567ABCD^EUI-64\|CD12345^AcmePHGInc^ACDE48234567ABCD^EUI- 64\|182777000^monitoring of patient^SNOMED-CT\|\|\|20090813095715+0000
OBX\|1\|CWE\|68220^MDC_TIME_SYNC_PROTOCOL^MDC\|0.0.0.1\|532224^MDC_TIME_SYNC_NONE^MDC\|\|\|\|\|\|R
OBX\|2\|\|528399^MDC_DEV_SPEC_PROFILE_SCALE^MDC\|1\|\|\|\|\|\|\|X\|\|\|\|\|\|\|0123456789ABCDEF^EUI-64
OBX\|3\|DTM\|67975^MDC_ATTR_TIME_ABS^MDC\|1.0.0.1\|20090828123702\|\|\|\|\|\|R\|\|\|20090828173702+0000
OBX\|4\|NM\|188736^MDC_MASS_BODY_ACTUAL^MDC\|1.0.0.2\|156.3\|263875^MDC_DIM_KILO_G^MDC\|\|\|\|\|R\|\|\|20090815070707+0000
OBX\|5\|NM\|188740^MDC_LEN_BODY_ACTUAL^MDC\|1.0.0.3\|180\|263441^MDC_DIM_CENTI_M^MDC\|\|\|\|\|R\|\|\|20090815070707+0000
OBX\|6\|NM\|188752^MDC_RATIO_MASS_BODY_LEN_SQ^MDC\|1.0.0.4\|24.7\|264096^MDC_DIM_KG_PER_M_SQ^MDC\|\|\|\|\|R\|\|\|20090815070707+0000
OBR\|2\|AB12345^AcmePHGInc^ACDE48234567ABCD^EUI-64\|CD12345^AcmePHGInc ^ACDE48234567ABCD^EUI- 64\|182777000^monitoring of patient^SNOMED-CT\|\|\|20090813095715+0000
OBX\|7\|\|528399^MDC_DEV_SPEC_PROFILE_SCALE^MDC\|2\|\|\|\|\|\|\|X\|\|\|\|\|\|\|0123456789ABCDEF^EUI-64
OBX\|8\|DTM\|67975^MDC_ATTR_TIME_ABS^MDC\|2.0.0.1\|20090828123702\|\|\|\|\|\|R\|\|\|20090828173702+0000
OBX\|9\|NM\|188736^MDC_MASS_BODY_ACTUAL^MDC\|2.0.0.2\|80\|263875^MDC_DIM_KILO_G^MDC\|\|\|\|\|R\|\|\|20090815070707+0000
OBX\|10\|NM\|188740^MDC_LEN_BODY_ACTUAL^MDC\|2.0.0.3\|180\|263441^MDC_DIM_CENTI_M^MDC\|\|\|\|\|R\|\|\|20090815070707+0000
OBX\|11\|NM\|188752^MDC_RATIO_MASS_BODY_LEN_SQ^MDC\|2.0.0.4\|24.7\|264096^MDC_DIM_KG_PER_M_SQ^MDC\|\|\|\|\|R\|\|\|20090815070707+0000 / <urn1:CommunicatePCDData> / </soap:Body> / </soap:Envelope> |
| :--- |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| CommunicatePCDDataResponse | xs:string | Svar enligt Interoperability design guidelines for personal health systems | 1..1 |

##### Exempel svar

| <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:urn="urn:ihe:pcd:dec:2010"> / <soapenv:Header/> / <soapenv:Body> <urn:CommunicatePCDDataResponse>MSH\|^~\&amp;\|Stepstone\|\|AcmeInc^ACDE48234567ABCD^EUI64\|\|20090726095731+0500\|\|ACK^A01^ACK\|AMSGID1234\|P\|2.6\|&#xD;MSA\|AA\|MSGID1234\|Message Accepted\|&#xD;]]></urn:CommunicatePCDDataResponse> / </soapenv:Body> / </soapenv:Envelope> |
| :--- |

#### Övriga regler

#### Annan information om kontraktet
