# 7 Tjänstekontrakt - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Logg – Loggning och uppföljning av åtkomst till patientjournal**, tjänstekontraktsbeskrivning version 2.0.8 (2024-10-24), [TKB_informationsecurity_auditing_log.docx](TKB_informationsecurity_auditing_log.docx).

Motsvarar TKB kapitel 6 **Tjänstekontrakt** (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### StoreLog

Tjänst som sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. Loggposter ska sparas i ett arkiv med löpnummer samt signeras för att säkerställa integriteten av loggposter.

Loggposter valideras enligt schema. Resultat av anropet returneras i ett Result objekt med statuskod. Vi fel sparas ej loggposter i loggtjänsten.

Viktigt: För loggning av åtkomster som ryms inom sammanhållen journalföring så skall en konsument av StoreLog följa referens #8 (ARK_0041, Tillämpningsanvisning PDL-loggning). De tekniska möjligheter som kontraktet stödjer begränsas av ARK_0041.

#### 7.1.1 Version

2.0

#### 7.1.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| Log* | urn:riv:informationsecurity:auditing:log:2:LogType | En kollektion av loggposter som ska lagras i loggtjänsten. | 1..* |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:auditing:log:2:ResultType | Result Objekt som anger om loggposter sparats eller om fel har inträffat. Resultat koder som kan returneras är OK, INFO, ERROR, VALIDATION_ERROR och ACCESSDENIED. | 1..1 |

#### 7.1.3 Övriga regler

#1 En producent ska verifiera att attributet LogId (se datatyp informationsecurity:auditing:log:2:LogType) är unikt och om så ej är fallet, returnera anropet med VALIDATION_ERROR.

#2 För att begränsa storleken på tjänsteanropet/requestet så får en konsument ej skicka mer än 500 records/anrop då paketet kan bli för stort för mellanliggande tjänsteplattformer eller tjänsteproducent.

##### 7.1.3.1 Icke funktionella krav

###### 7.1.3.1.1 SLA-krav

Loggtjänsten har höga krav på tillgänglighet enär loggande tillämpningar kan drabbas av funktionsstörningar om loggtjänsten är otillgänglig. För att minska detta beroende bör loggande tillämpningar ha köfunktionalitet vid avbrott i loggtjänsten.

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att lagring av loggposter skett då anropet genomförts utan fel. Loggposter ska vara tillgängliga för uppföljning inom 24 timmar. |   |

#### 7.1.4 Exempel

##### 7.1.4.1 Exempel på anrop

Se [StoreLogRequest.xml](StoreLogRequest.xml).

##### 7.1.4.2 Exempel på svar

Se [StoreLogResponse.xml](StoreLogResponse.xml).

#### 7.1.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| log | LogType | Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost. | 1..* |
| ../logId | Id |   | 1..1 |
| ../system | SystemType | Datatyp som representerar ett system i loggposten. Det system som skapar loggposten. | 1..1 |
| ../../systemId | HsaId |   | 1..1 |
| ../../systemName | SystemName |   | 0..1 |
| ../activity | ActivityType | Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten. | 1..1 |
| ../../activityType | ActivityTypeValue |   | 1..1 |
| ../../activityLevel | ActivityLevel |   | 0..1 |
| ../../activityArgs | ActivityArgs |   | 0..1 |
| ../../startDate | dateTime |   | 1..1 |
| ../../purpose | PurposeDescription |   | 1..1 |
| ../user | UserType | Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost. | 1..1 |
| ../../userId | HsaId |   | 1..1 |
| ../../name | UserName |   | 0..1 |
| ../../personId | IIType | En universellt unik identifierare. | 0..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../assignment | Assignment |   | 0..1 |
| ../../title | UserTitle |   | 0..1 |
| ../../careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| ../../../careProviderId | HsaId |   | 1..1 |
| ../../../careProviderName | CareProviderName |   | 0..1 |
| ../../careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 1..1 |
| ../../../careUnitId | HsaId |   | 1..1 |
| ../../../careUnitName | CareUnitName |   | 0..1 |
| ../resources | ResourcesType | Information om aktuella resurser. En loggpost kan hålla en eller flera resurser. | 1..1 |
| ../../resource | ResourceType | Datatyp som representerar en resurs i loggposten. | 1..* |
| ../../../resourceType | ResourceTypeValue |   | 1..1 |
| ../../../patient | PatientType | Datatyp som representerar en patient i en resurs. | 0..1 |
| ../../../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../../patientName | PatientName |   | 0..1 |
| ../../../careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| ../../../../careProviderId | HsaId |   | 1..1 |
| ../../../../careProviderName | CareProviderName |   | 0..1 |
| ../../../careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 0..1 |
| ../../../../careUnitId | HsaId |   | 1..1 |
| ../../../../careUnitName | CareUnitName |   | 0..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.1.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:auditing:log:StoreLogResponder:2:StoreLog`

#### 7.1.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [StoreLogInteraction_2.0_RIVTABP21.wsdl](StoreLogInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [StoreLogResponder_2.0.xsd](StoreLogResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_auditing_log_2.0.xsd](informationsecurity_auditing_log_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [StoreLogRequest.xml](StoreLogRequest.xml) | Exempel på begäran |
| [StoreLogResponse.xml](StoreLogResponse.xml) | Exempel på svar |
| [SjD_TK_StoreLog_2.0.docx](SjD_TK_StoreLog_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.1.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/storelog-request](StructureDefinition-storelog-request.md)
* **Logisk modell (response):** [StructureDefinition/storelog](StructureDefinition-storelog.md)
* **Kodsystem:** [CodeSystem/auditing-log-resultcode-cs](CodeSystem-auditing-log-resultcode-cs.md)
* **ValueSet:** [ValueSet/auditing-log-resultcode-vs](ValueSet-auditing-log-resultcode-vs.md)

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

#### 7.2.1 Version

2.0

#### 7.2.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reserv-nummer som vårdgivare haft åtkomst till. | 0..1 |
| userId | urn:riv:informationsecurity:auditing:log:2:HsaId | Medarbetare som haft åtkomst. | 0..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| careUnitId | urn:riv:informationsecurity:auditing:log:2:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |   |   |   |
| logsResult | urn:riv:informationsecurity:auditing:log:2:LogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### 7.2.3 Övriga regler

queuedReportId kan ej anropas av en aggregerande tjänst.

##### 7.2.3.1 Icke funktionella krav

N/A

###### 7.2.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |   |

#### 7.2.4 Exempel

##### 7.2.4.1 Exempel på anrop

Se [GetLogsRequest.xml](GetLogsRequest.xml).

##### 7.2.4.2 Exempel på svar

Se [GetLogsResponse.xml](GetLogsResponse.xml).

#### 7.2.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| careProviderId | HsaId |   | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| userId | HsaId |   | 0..1 |
| fromDate | dateTime |   | 1..1 |
| toDate | dateTime |   | 1..1 |
| careUnitId | HsaId |   | 0..1 |
| queuedReportId | Id |   | 0..1 |
| **Svar** |   |   |   |
| logsResult | LogsResultType | Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel. | 1..1 |
| ../reportResult | ReportResultType |   | 1..1 |
| ../../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../../resultCode | ResultCodeType |   | 1..1 |
| ../../../resultText | string |   | 0..1 |
| ../../startInterval | dateTime |   | 0..1 |
| ../../endInterval | dateTime |   | 0..1 |
| ../../queuedReportId | Id |   | 0..1 |
| ../../queueTime | int |   | 0..1 |
| ../logs | LogsType | Datatyp som håller lista med loggposter. Kan vara en tom lista | 0..1 |
| ../../log | LogType | Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost. | 0..* |
| ../../../logId | Id |   | 1..1 |
| ../../../system | SystemType | Datatyp som representerar ett system i loggposten. Det system som skapar loggposten. | 1..1 |
| ../../../../systemId | HsaId |   | 1..1 |
| ../../../../systemName | SystemName |   | 0..1 |
| ../../../activity | ActivityType | Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten. | 1..1 |
| ../../../../activityType | ActivityTypeValue |   | 1..1 |
| ../../../../activityLevel | ActivityLevel |   | 0..1 |
| ../../../../activityArgs | ActivityArgs |   | 0..1 |
| ../../../../startDate | dateTime |   | 1..1 |
| ../../../../purpose | PurposeDescription |   | 1..1 |
| ../../../user | UserType | Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost. | 1..1 |
| ../../../../userId | HsaId |   | 1..1 |
| ../../../../name | UserName |   | 0..1 |
| ../../../../personId | IIType | En universellt unik identifierare. | 0..1 |
| ../../../../../root | string |   | 1..1 |
| ../../../../../extension | string |   | 0..1 |
| ../../../../assignment | Assignment |   | 0..1 |
| ../../../../title | UserTitle |   | 0..1 |
| ../../../../careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| ../../../../../careProviderId | HsaId |   | 1..1 |
| ../../../../../careProviderName | CareProviderName |   | 0..1 |
| ../../../../careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 1..1 |
| ../../../../../careUnitId | HsaId |   | 1..1 |
| ../../../../../careUnitName | CareUnitName |   | 0..1 |
| ../../../resources | ResourcesType | Information om aktuella resurser. En loggpost kan hålla en eller flera resurser. | 1..1 |
| ../../../../resource | ResourceType | Datatyp som representerar en resurs i loggposten. | 1..* |
| ../../../../../resourceType | ResourceTypeValue |   | 1..1 |
| ../../../../../patient | PatientType | Datatyp som representerar en patient i en resurs. | 0..1 |
| ../../../../../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../../../../root | string |   | 1..1 |
| ../../../../../../../extension | string |   | 0..1 |
| ../../../../../../patientName | PatientName |   | 0..1 |
| ../../../../../careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| ../../../../../../careProviderId | HsaId |   | 1..1 |
| ../../../../../../careProviderName | CareProviderName |   | 0..1 |
| ../../../../../careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 0..1 |
| ../../../../../../careUnitId | HsaId |   | 1..1 |
| ../../../../../../careUnitName | CareUnitName |   | 0..1 |

#### 7.2.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:auditing:log:GetLogsResponder:2:GetLogs`

#### 7.2.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetLogsInteraction_2.0_RIVTABP21.wsdl](GetLogsInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetLogsResponder_2.0.xsd](GetLogsResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_auditing_log_2.0.xsd](informationsecurity_auditing_log_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [GetLogsRequest.xml](GetLogsRequest.xml) | Exempel på begäran |
| [GetLogsResponse.xml](GetLogsResponse.xml) | Exempel på svar |
| [SjD_TK_GetLogs_2.0.docx](SjD_TK_GetLogs_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.2.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getlogs-request](StructureDefinition-getlogs-request.md)
* **Logisk modell (response):** [StructureDefinition/getlogs](StructureDefinition-getlogs.md)
* **Kodsystem:** [CodeSystem/auditing-log-resultcode-cs](CodeSystem-auditing-log-resultcode-cs.md)
* **ValueSet:** [ValueSet/auditing-log-resultcode-vs](ValueSet-auditing-log-resultcode-vs.md)

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

#### 7.3.1 Version

2.0

#### 7.3.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer som någon vårdgivare haft åtkomst till. | 1..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |   |   |   |
| accessLogsResult | urn:riv:informationsecurity:auditing:log:2:AccessLogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### 7.3.3 Övriga regler

queuedReportId kan ej anropas av en aggregerande tjänst.

##### 7.3.3.1 Icke funktionella krav

N/A

###### 7.3.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |   |

#### 7.3.4 Exempel

##### 7.3.4.1 Exempel på anrop

Se [GetAccessLogsForPatientRequest.xml](GetAccessLogsForPatientRequest.xml).

##### 7.3.4.2 Exempel på svar

Se [GetAccessLogsForPatientResponse.xml](GetAccessLogsForPatientResponse.xml).

#### 7.3.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| fromDate | dateTime |   | 1..1 |
| toDate | dateTime |   | 1..1 |
| queuedReportId | Id |   | 0..1 |
| **Svar** |   |   |   |
| accessLogsResult | AccessLogsResultType | Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel. | 1..1 |
| ../reportResult | ReportResultType |   | 1..1 |
| ../../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../../resultCode | ResultCodeType |   | 1..1 |
| ../../../resultText | string |   | 0..1 |
| ../../startInterval | dateTime |   | 0..1 |
| ../../endInterval | dateTime |   | 0..1 |
| ../../queuedReportId | Id |   | 0..1 |
| ../../queueTime | int |   | 0..1 |
| ../accesssLogs | AccessLogsType | Datatyp som håller lista med Access loggar. Kan vara en tom lista. | 0..1 |
| ../../accessLog | AccessLogType | Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt. | 0..* |
| ../../../careProviderId | HsaId |   | 1..1 |
| ../../../careProviderName | CareProviderName |   | 0..1 |
| ../../../careUnitId | HsaId |   | 1..1 |
| ../../../careUnitName | CareUnitName |   | 0..1 |
| ../../../accessDate | dateTime |   | 1..1 |
| ../../../userId | HsaId |   | 1..1 |
| ../../../userName | UserName |   | 0..1 |
| ../../../userTitle | UserTitle |   | 0..1 |
| ../../../purpose | PurposeDescription |   | 1..1 |
| ../../../resourceType | ResourceTypeValue |   | 1..1 |

#### 7.3.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2:GetAccessLogsForPatient`

#### 7.3.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetAccessLogsForPatientInteraction_2.0_RIVTABP21.wsdl](GetAccessLogsForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetAccessLogsForPatientResponder_2.0.xsd](GetAccessLogsForPatientResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_auditing_log_2.0.xsd](informationsecurity_auditing_log_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [GetAccessLogsForPatientRequest.xml](GetAccessLogsForPatientRequest.xml) | Exempel på begäran |
| [GetAccessLogsForPatientResponse.xml](GetAccessLogsForPatientResponse.xml) | Exempel på svar |
| [SjD_TK_GetAccessLogsForPatient_2.0.docx](SjD_TK_GetAccessLogsForPatient_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |
| [SjD_TP_GetAccessLogsForPatient_2.0.docx](SjD_TP_GetAccessLogsForPatient_2.0.docx) | Självdeklaration (tjänsteproducent), version 2.0 |

#### 7.3.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getaccesslogsforpatient-request](StructureDefinition-getaccesslogsforpatient-request.md)
* **Logisk modell (response):** [StructureDefinition/getaccesslogsforpatient](StructureDefinition-getaccesslogsforpatient.md)
* **Kodsystem:** [CodeSystem/auditing-log-resultcode-cs](CodeSystem-auditing-log-resultcode-cs.md)
* **ValueSet:** [ValueSet/auditing-log-resultcode-vs](ValueSet-auditing-log-resultcode-vs.md)

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

#### 7.4.1 Version

2.0

#### 7.4.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer som annan vårdgivare än informationsägaren haft åtkomst till. | 0..1 |
| fromDate | xs:DateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:DateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId* | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..1 |
| Svar |   |   |   |
| infoLogsResult | urn:riv:informationsecurity:auditing:log:2:InfoLogsResultType | Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

#### 7.4.3 Övriga regler

queuedReportId kan ej anropas av en aggregerande tjänst.

##### 7.4.3.1 Icke funktionella krav

###### 7.4.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 4.3.2 Övriga). |   |

#### 7.4.4 Exempel

##### 7.4.4.1 Exempel på anrop

Se [GetInfoLogsRequest.xml](GetInfoLogsRequest.xml).

##### 7.4.4.2 Exempel på svar

Se [GetInfoLogsResponse.xml](GetInfoLogsResponse.xml).

#### 7.4.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| careProviderId | HsaId |   | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| fromDate | dateTime |   | 1..1 |
| toDate | dateTime |   | 1..1 |
| queuedReportId | Id |   | 0..1 |
| **Svar** |   |   |   |
| infoLogsResult | InfoLogsResultType | Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel. | 1..1 |
| ../reportResult | ReportResultType |   | 1..1 |
| ../../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../../resultCode | ResultCodeType |   | 1..1 |
| ../../../resultText | string |   | 0..1 |
| ../../startInterval | dateTime |   | 0..1 |
| ../../endInterval | dateTime |   | 0..1 |
| ../../queuedReportId | Id |   | 0..1 |
| ../../queueTime | int |   | 0..1 |
| ../careProviders | CareProvidersType | Datatyp som håller lista med vårdgivare. Kan vara en tom lista. | 0..1 |
| ../../careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 0..* |
| ../../../careProviderId | HsaId |   | 1..1 |
| ../../../careProviderName | CareProviderName |   | 0..1 |

#### 7.4.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2:GetInfoLogs`

#### 7.4.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetInfoLogsInteraction_2.0_RIVTABP21.wsdl](GetInfoLogsInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetInfoLogsResponder_2.0.xsd](GetInfoLogsResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_auditing_log_2.0.xsd](informationsecurity_auditing_log_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [GetInfoLogsRequest.xml](GetInfoLogsRequest.xml) | Exempel på begäran |
| [GetInfoLogsResponse.xml](GetInfoLogsResponse.xml) | Exempel på svar |
| [SjD_TK_GetInfoLogs_2.0.docx](SjD_TK_GetInfoLogs_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.4.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getinfologs-request](StructureDefinition-getinfologs-request.md)
* **Logisk modell (response):** [StructureDefinition/getinfologs](StructureDefinition-getinfologs.md)
* **Kodsystem:** [CodeSystem/auditing-log-resultcode-cs](CodeSystem-auditing-log-resultcode-cs.md)
* **ValueSet:** [ValueSet/auditing-log-resultcode-vs](ValueSet-auditing-log-resultcode-vs.md)

### GetLogsByOrder

En tjänst som returnerar ett unikt ordernummer (order-id) vilket senare kan användas för anrop av tjänsten GetFilesForOrderId för att från denna tjänst erhålla ett unikt URL, vilket man sedan kan använda för att via REST-anrop hämta hem de filer som har skapats av GetLogsByOrder, se kap 3.1.5.

Logguttaget begränsas av nedan angiva inparametrar.

#### 7.5.1 Version

1.0

#### 7.5.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på | 1..1 |
| careUnitId | urn:riv:informationsecurity:auditing:log:2:HsaId | Vårdenhet som är ägare till loggposter och som urvalet av loggposter baseras på | 0..500 |
| patientId | urn:riv:informationsecurity:auditing:log:2:IIType | Patientens personnummer, samordningsnummer, alternativt reservnummer | 0..500 |
| userId | urn:riv:informationsecurity:auditing:log:2:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigställts. | 0..500 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| maxResultsPerFile | xs:int | Antal loggposter/fil (max 10000/zipfil) | 0..1 |
|   |   |   |   |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:auditing:log:2:ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. / En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. / Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| orderId | Urn:riv:informationsecurity:auditing:log:2:OrderId | Det ordernummer som ska bifogas anropet till GetFilesForOrder för att få de loggposter som urvalet angavs i anropet till tjänsten. Se kap 3.1.5 | 0..1 |

#### 7.5.3 Övriga regler

N/A

##### 7.5.3.1 Icke funktionella krav

N/A

###### 7.5.3.1.1 SLA-krav

N/A

#### 7.5.4 Exempel

##### 7.5.4.1 Exempel på anrop

Se GetLogsByOrderRequest.xml

##### 7.5.4.2 Exempel på svar

Se GetLogsByOrderResponse.xml

#### 7.5.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| careProviderId | HsaId |   | 1..1 |
| careUnitId | HsaId |   | 0..* |
| patientId | IIType | En universellt unik identifierare. | 0..* |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| userId | HsaId |   | 0..* |
| fromDate | dateTime |   | 1..1 |
| toDate | dateTime |   | 1..1 |
| maxResultsPerFile | int |   | 0..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |
| orderId | OrderId |   | 0..1 |

#### 7.5.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1:GetLogsByOrder`

#### 7.5.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetLogsByOrderInteraction_1.0_RIVTABP21.wsdl](GetLogsByOrderInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetLogsByOrderResponder_1.0.xsd](GetLogsByOrderResponder_1.0.xsd) | Tjänsteschema |
| [informationsecurity_auditing_log_2.0.xsd](informationsecurity_auditing_log_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetLogsByOrder_1.0.docx](SjD_TK_GetLogsByOrder_1.0.docx) | Självdeklaration (tjänstekonsument), version 1.0 |

#### 7.5.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getlogsbyorder-request](StructureDefinition-getlogsbyorder-request.md)
* **Logisk modell (response):** [StructureDefinition/getlogsbyorder](StructureDefinition-getlogsbyorder.md)
* **Kodsystem:** [CodeSystem/auditing-log-resultcode-cs](CodeSystem-auditing-log-resultcode-cs.md)
* **ValueSet:** [ValueSet/auditing-log-resultcode-vs](ValueSet-auditing-log-resultcode-vs.md)

### GetFilesForOrderId

Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter.

Producenten ska säkerställa att anropande tjänstekonsument har rättighet till det efterfrågade order id't.

Då ordnarna som inkommer via den asynkrona tjänster läggs på kö så är det inte säkert att resultatet är färdigt ifall man frågar direkt efter att ordern har lagts. Tiden för orderna att bli klar varierar beroende på last på systemet och storleken på resultatet. Ett frågande system bör dock kunna förvänta sig ett svar inom fyra timmar.

Under tiden ordern inte är klar returnerar GetFilesForOrderId ett svar utan länkar/`<multimedia>`-stycke.

OBS: Resultatfilerna är garanterat tillgängliga i ett dygn. Därefter ska de rensas automatiskt bort. Filen ska bara kunna hämtas en gång då de efter hämtning ska rensas bort.

Resultatfilerna är ZIP:ade och innehåller en XML-fil med det urval som efterfrågats

#### 7.6.1 Version

1.0

#### 7.6.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| orderId | urn:riv:informationsecurity:auditing:log:2:OrderId | Order Id för vilka filer man vill lista. | 1..1 |
| Svar |   |   |   |
| multimedia | urn:riv:informationsecurity:auditing:log:2:MultimediaType | GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer. | 0..* |

#### 7.6.3 Övriga regler

Inga övriga regler finns.

#### 7.6.4 Annan information om kontraktet

URL’n som erhålls i responset skall följa format på URL enligt ARK_0038. Se även AKR_0038 för tillämpning.

##### 7.6.4.1 Exempel på anrop

Se GetFilesForOrderIdRequest.xml.

##### 7.6.4.2 Exempel på svar

Se GetFilesForOrderIdResponse.xml

#### 7.6.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| orderId | OrderId |   | 1..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |
| multimedia | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../id | string |   | 0..1 |
| ../mediaType | CodedValue |   | 1..1 |
| ../value | base64Binary |   | 0..1 |
| ../reference | anyURI |   | 0..1 |

#### 7.6.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1:GetFilesForOrderId`

#### 7.6.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetFilesForOrderIdInteraction_1.0_RIVTABP21.wsdl](GetFilesForOrderIdInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetFilesForOrderIdResponder_1.0.xsd](GetFilesForOrderIdResponder_1.0.xsd) | Tjänsteschema |
| [informationsecurity_auditing_log_2.0.xsd](informationsecurity_auditing_log_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetFilesForOrderId_1.0.docx](SjD_TK_GetFilesForOrderId_1.0.docx) | Självdeklaration (tjänstekonsument), version 1.0 |

#### 7.6.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getfilesfororderid-request](StructureDefinition-getfilesfororderid-request.md)
* **Logisk modell (response):** [StructureDefinition/getfilesfororderid](StructureDefinition-getfilesfororderid.md)
* **Kodsystem:** [CodeSystem/auditing-log-resultcode-cs](CodeSystem-auditing-log-resultcode-cs.md)
* **ValueSet:** [ValueSet/auditing-log-resultcode-vs](ValueSet-auditing-log-resultcode-vs.md)

