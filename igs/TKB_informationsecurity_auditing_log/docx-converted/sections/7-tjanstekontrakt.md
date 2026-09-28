## Tjänstekontrakt

### StoreLog
Tjänst som sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. Loggposter ska sparas i ett arkiv med löpnummer samt signeras för att säkerställa integriteten av loggposter.
Loggposter valideras enligt schema. Resultat av anropet returneras i ett Result objekt med statuskod. Vi fel sparas ej loggposter i loggtjänsten.
Viktigt: För loggning av åtkomster som ryms inom sammanhållen journalföring så skall en konsument av StoreLog följa referens #8 (ARK_0041, Tillämpningsanvisning PDL-loggning). De tekniska möjligheter som kontraktet stödjer begränsas av ARK_0041.

#### Version
2.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Log* | urn:riv:informationsecurity:auditing:log:2:LogType | En kollektion av loggposter som ska lagras i loggtjänsten. | 1..* |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:auditing:log:2:ResultType | Result Objekt som anger om loggposter sparats eller om fel har inträffat. Resultat koder som kan returneras är OK, INFO, ERROR, VALIDATION_ERROR och ACCESSDENIED. | 1..1 |

#### Övriga regler
#1 En producent ska verifiera att attributet LogId (se datatyp informationsecurity:auditing:log:2:LogType) är unikt och om så ej är fallet, returnera anropet med VALIDATION_ERROR.
#2 För att begränsa storleken på tjänsteanropet/requestet så får en konsument ej skicka mer än 500 records/anrop då paketet kan bli för stort för mellanliggande tjänsteplattformer eller tjänsteproducent.

##### Icke funktionella krav

###### SLA-krav
Loggtjänsten har höga krav på tillgänglighet enär loggande tillämpningar kan drabbas av funktionsstörningar om loggtjänsten är otillgänglig. För att minska detta beroende bör loggande tillämpningar ha köfunktionalitet vid avbrott i loggtjänsten.

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att lagring av loggposter skett då anropet genomförts utan fel. Loggposter ska vara tillgängliga för uppföljning inom 24 timmar. |  |

#### Exempel

##### Exempel på anrop
Se StoreLogRequest.xml

##### Exempel på svar
Se StoreLogResponse.xml

### GetLogs
Tjänst som returnerar loggposter utifrån angivna sökkriterier, all åtkomst som har skett av vårdgivarens medarbetare.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten ska returnera inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORT_ON_QUEUE eller REPORT_IN_PROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Observera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekommenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORT_ON_QUEUE eller REPORT_IN_PROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORT_NOT_FOUND ifall man har angett ett felaktigt id (queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAX_QUERY_RESULT_EXCEEDED. Datumintervall kan då justeras för ett mindre antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

#### Version
2.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reserv-nummer som vårdgivare haft åtkomst till. | 0..1 |
| userId | urn:riv:informationsecurity:auditing:log:2:HsaId | Medarbetare som haft åtkomst. | 0..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| careUnitId | urn:riv:informationsecurity:auditing:log:2:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |  |  |  |
| logsResult | urn:riv:informationsecurity:auditing:log:2:LogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### Övriga regler
queuedReportId kan ej anropas av en aggregerande tjänst.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |  |

#### Exempel

##### Exempel på anrop
Se GetLogsRequest.xml

##### Exempel på svar
Se GetLogsResponse.xml

### GetAccessLogsForPatient
Tjänst som returnerar lista för angiven patient, vilka vårdgivare och vårdaktör som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK .
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORT_ON_QUEUE eller REPORT_IN_PROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Observera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekommenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORT_ON_QUEUE eller REPORT_IN_PROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORT_NOT_FOUND ifall man har angett ett felaktigt id (queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAX_QUERY_RESULT_EXCEEDED. Datumintervall kan då justeras för ett mindre antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

#### Version
2.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer som någon vårdgivare haft åtkomst till. | 1..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |  |  |  |
| accessLogsResult | urn:riv:informationsecurity:auditing:log:2:AccessLogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### Övriga regler
queuedReportId kan ej anropas av en aggregerande tjänst.

##### Icke funktionella krav
N/A

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |  |

#### Exempel

##### Exempel på anrop
Se GetAccessLogsForPatientRequest.xml

##### Exempel på svar
Se GetAccessLogsForPatientResponse.xml

### GetInfoLogs
Tjänst som returnerar loggposter utifrån angivna sökkriterier, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORT_ON_QUEUE eller REPORT_IN_PROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Observera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekommenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORT_ON_QUEUE eller REPORT_IN_PROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORT_NOT_FOUND ifall man har angett ett felaktigt id (queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAX_QUERY_RESULT_EXCEEDED. Datumintervall kan då justeras för ett minska antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

#### Version
2.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer som annan vårdgivare än informationsägaren haft åtkomst till. | 0..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |  |  |  |
| infoLogsResult | urn:riv:informationsecurity:auditing:log:2:InfoLogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### Övriga regler
queuedReportId kan ej anropas av en aggregerande tjänst.

##### Icke funktionella krav

###### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |  |

#### Exempel

##### Exempel på anrop
Se GetInfoLogsRequest.xml

##### Exempel på svar
Se GetInfoLogsResponse.xml

### GetLogsByOrder
En tjänst som returnerar ett unikt ordernummer (order-id) vilket senare kan användas för anrop av tjänsten GetFilesForOrderId för att från denna tjänst erhålla ett unikt URL, vilket man sedan kan använda för att via REST-anrop hämta hem de filer som har skapats av GetLogsByOrder, se kap 3.1.5.
Logguttaget begränsas av nedan angiva inparametrar.

#### Version
1.0

#### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på | 1..1 |
| careUnitId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdenhet som är ägare till loggposter och som urvalet av loggposter baseras på | 0..500 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer | 0..500 |
| userId | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..500 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| maxResultsPerFile | xs:int | Antal loggposter/fil (max 10000/zipfil) | 0..1 |
|  |  |  |  |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:auditing:log:2:ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. / En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. / Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| orderId | Urn:riv:informationsecurity:auditing:log:2:OrderId | Det ordernummer som ska bifogas anropet till GetFilesForOrder för att få de loggposter som urvalet angavs i anropet till tjänsten. Se kap 3.1.5 | 0..1 |

#### Övriga regler
N/A

##### Icke funktionella krav
N/A

###### SLA-krav
N/A

#### Exempel

##### Exempel på anrop
Se GetLogsByOrderRequest.xml

##### Exempel på svar
Se GetLogsByOrderResponse.xml

### GetFilesForOrderId
Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter.
Producenten ska säkerställa att anropande tjänstekonsument har rättighet till det efterfrågade order id't.
Då ordnarna som inkommer via den asynkrona tjänster läggs på kö så är det inte säkert att resultatet är färdigt ifall man frågar direkt efter att ordern har lagts. Tiden för orderna att bli klar varierar beroende på last på systemet och storleken på resultatet. Ett frågande system bör dock kunna förvänta sig ett svar inom fyra timmar.
Under tiden ordern inte är klar returnerar GetFilesForOrderId ett svar utan länkar/<multimedia>-stycke.
OBS: Resultatfilerna är garanterat tillgängliga i ett dygn. Därefter ska de rensas automatiskt bort. Filen ska bara kunna hämtas en gång då de efter hämtning ska rensas bort.
Resultatfilerna är ZIP:ade och innehåller en XML-fil med det urval som efterfrågats

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| orderId | urn:riv: informationsecurity:auditing:log:2:OrderId | Order Id för vilka filer man vill lista. | 1..1 |
| Svar |  |  |  |
| multimedia | urn:riv: informationsecurity:auditing:log:2:MultimediaType | GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer. | 0..* |

#### Övriga regler
Inga övriga regler finns.

#### Annan information om kontraktet
URL’n som erhålls i responset skall följa format på URL enligt ARK_0038. Se även AKR_0038 för  tillämpning.

##### Exempel på anrop
Se GetFilesForOrderIdRequest.xml.

##### Exempel på svar
Se GetFilesForOrderIdResponse.xml

