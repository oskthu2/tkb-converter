# 7 Tjänstekontrakt - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

## StoreLog

Tjänst som sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. Loggposter sparas i ett arkiv med löpnummer samt signeras för att säkerställa integriteten av loggposter. Loggposter valideras enligt schema. Resultat av anropet returneras i ett Result objekt med statuskod. Vi fel sparas ej loggposter i loggtjänsten.

### Frivillighet

Obligatorisk, nationellt.

### Version

1.0

### SLA-krav

Loggtjänsten har höga krav på tillgänglighet enär loggande tillämpningar kan drabbas av funktionsstörningar om loggtjänsten är otillgänglig. För att minska detta beroende bör loggande tillämpningar ha köfunktionalitet vid avbrott i loggtjänsten.

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet | 99,80% |   |
| Last |   |   |
| Aktualitet | Tjänsten garanterar att lagring av loggposter skett då anropet genomförts utan fel. Loggposter ska vara tillgängliga för uppföljning inom 24 timmar. |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| log | log:Log | En kollektion av loggposter som ska lagras i loggtjänsten. | 1..* |
| Svar |   |   |   |
| storeLog | log.store:Result | Result Objekt som anger om loggposter sparats eller om fel har inträffat. Resultat koder som kan returneras är OK, INFO, ERROR, VALIDATIONERROR och ACCESSDENIED. | 1..1 |

### Regler

Tjänsten skall kontrollera om anropande system har behörighet att lagra loggposter. Om behörighet nekas skall ett fel returneras och flödet avbrytas.

### Tjänsteinteraktion

StoreLog

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?

?
?

?
?
?
?
?

?
?
?
?
?

?
?

?
?

?

?
?

?
?

?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [StoreLogInteraction_1.0_RIVTABP21.wsdl](files/wsdl/StoreLogInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [StoreLogResponder_1.0.xsd](files/schema/StoreLogResponder_1.0.xsd) | Tjänstespecifikt schema |
| [ehr_logstore_1.0.xsd](files/schema/ehr_logstore_1.0.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/storelog](StructureDefinition-storelog.md)
* **Logisk modell (request):** [StructureDefinition/storelog-request](StructureDefinition-storelog-request.md)

## GetLogsForCareProvider

Tjänst som returnerar loggposter för angiven vårdgivare, all åtkomst som har skett av vårdgivarens medarbetare. Logguttaget begränsas av angivet datumintervall. Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK. Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov. Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime). Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas. queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske. VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter. Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas. Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter. Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet

Obligatorisk, nationellt.

### Version

1.1

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet | 99,80% |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| Svar |   |   |   |
| getLogsForCareProvider | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler

Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat. Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern. Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion

GetLogsForCareProvider

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
?
?
?
?

?

?
?

?
?
?
?
?

?
?
?
?
?

?
?

?
?

?

?
?

?
?

?
?
### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetLogsForCareProviderInteraction_1.1_RIVTABP21.wsdl](files/wsdl/GetLogsForCareProviderInteraction_1.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetLogsForCareProviderResponder_1.1.xsd](files/schema/GetLogsForCareProviderResponder_1.1.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getlogsforcareprovider](StructureDefinition-getlogsforcareprovider.md)
* **Logisk modell (request):** [StructureDefinition/getlogsforcareprovider-request](StructureDefinition-getlogsforcareprovider-request.md)

## GetLogsForUser

Tjänst som returnerar loggposter för angiven vårdgivare samt medarbetare, all åtkomst som har skett av medarbetaren. Logguttaget begränsas av angivet datumintervall . Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK. Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov. Om rapporten inte har hunnit skapas av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultatkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime). Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas. queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske. VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter. Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas. Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter. Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet

Obligatorisk, nationellt.

### Version

1.1

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet | 99,80% |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| userId | log:HsaId | Medarbetare som haft åtkomst. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| Svar |   |   |   |
| getLogsForUser | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler

Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat. Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern. Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion

GetLogsForUser

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
?
?
?
?

?

?
?

?
?
?
?
?

?
?
?
?
?

?
?

?
?

?

?
?

?
?

?
?
### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetLogsForUserInteraction_1.1_RIVTABP21.wsdl](files/wsdl/GetLogsForUserInteraction_1.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetLogsForUserResponder_1.1.xsd](files/schema/GetLogsForUserResponder_1.1.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getlogsforuser](StructureDefinition-getlogsforuser.md)
* **Logisk modell (request):** [StructureDefinition/getlogsforuser-request](StructureDefinition-getlogsforuser-request.md)

## GetLogsForPatient

Tjänst som returnerar loggposter för angiven vårdgivare samt patient, all åtkomst som har skett av vårdgivarens medarbetare till patientens information. Logguttaget begränsas av angivet datumintervall. Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK. Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov. Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime). Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas. queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske. VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter. Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas. Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter. Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet

Obligatorisk, nationellt.

### Version

1.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet | 99,80% |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| patientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som vårdgivare haft åtkomst till. | 1..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |   |   |   |
| getLogsForPatient | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler

Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat. Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern. Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten. .

### Tjänsteinteraktion

GetLogsForPatient

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
?
?
?
?

?

?
?

?
?
?
?
?

?
?
?
?
?

?
?

?
?

?

?
?

?
?

?
?
### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetLogsForPatientInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetLogsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetLogsForPatientResponder_1.0.xsd](files/schema/GetLogsForPatientResponder_1.0.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getlogsforpatient](StructureDefinition-getlogsforpatient.md)
* **Logisk modell (request):** [StructureDefinition/getlogsforpatient-request](StructureDefinition-getlogsforpatient-request.md)

## GetAccessLogsForPatient

Tjänst som returnerar lista för angiven patient, vilka vårdgivare och vårdaktör som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs. Logguttaget begränsas av angivet datumintervall. Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK . Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov. Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime). Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas. queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske. VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter. Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas. Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter. Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet

Obligatorisk, nationellt.

### Version

1.1

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet | 99,80% |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| PatientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som någon vårdgivare haft åtkomst till. | 1..1 |
| FromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| ToDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| QueuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. / Skall inte användas när aggregerande tjänst anropas. | 0..1 |
| Svar |   |   |   |
| AccessLogsResultType | logquerying:AccessLogsResultType | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler

Tjänsten skall kontrollera om anropande system har behörighet till ”patientbunden” logginformation. Normalt så sker detta via behörighetskontrollen i en Tjänsteplattform. Anropande konsument har att säkerställa att patienten är starkt autentiserad.

### Tjänsteinteraktion

GetAccessLogsForPatient

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
?
?
?
?

?
?
?
?
?
?
?
?
?
?
### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetAccessLogsForPatientInteraction_1.1_RIVTABP21.wsdl](files/wsdl/GetAccessLogsForPatientInteraction_1.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetAccessLogsForPatientResponder_1.1.xsd](files/schema/GetAccessLogsForPatientResponder_1.1.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |
| [SjD_TP_GetAccessLogsForPatient_1.1.docx](files/docs/SjD_TP_GetAccessLogsForPatient_1.1.docx) | Tjänstebeskrivning |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getaccesslogsforpatient](StructureDefinition-getaccesslogsforpatient.md)
* **Logisk modell (request):** [StructureDefinition/getaccesslogsforpatient-request](StructureDefinition-getaccesslogsforpatient-request.md)

## GetInfoLogsForCareProvider

Tjänst som returnerar lista för angiven vårdgivare, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare. Logguttaget begränsas av angivet datumintervall. Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK. Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov. Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime). Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas. queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske. VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter. Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas. Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter. Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet

Obligatorisk, nationellt.

### Version

1.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet | 99,80% |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | log:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |   |   |   |
| getInfoLogsForCareProvider | log.querying:InfoLogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler

Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat. Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern. Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion

GetInfoLogsForCareProvider

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
?
?
?
?

?
?
### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetInfoLogsForCareProviderInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetInfoLogsForCareProviderInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetInfoLogsForCareProviderResponder_1.0.xsd](files/schema/GetInfoLogsForCareProviderResponder_1.0.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getinfologsforcareprovider](StructureDefinition-getinfologsforcareprovider.md)
* **Logisk modell (request):** [StructureDefinition/getinfologsforcareprovider-request](StructureDefinition-getinfologsforcareprovider-request.md)

## GetInfoLogsForPatient

Tjänst som returnerar lista för angiven vårdgivare samt patient, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare Logguttaget begränsas av angivet datumintervall. Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK. Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov. Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime). Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas. queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske. VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter. Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas. Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter. Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet

Obligatorisk, nationellt.

### Version

1.0

### SLA-krav

| | | |
| :--- | :--- | :--- |
| Svarstid |   |   |
| Tillgänglighet | 99,80% |   |
| Last |   |   |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |   |

### Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | log:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| patientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som annan vårdgivare än informationsägaren haft åtkomst till. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |   |   |   |
| getInfoLogsForPatient | log.querying:InfoLogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler

Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat. Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern. Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion

GetInfoLogsForPatient

### Exempel

#### Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

?
?
?
?
?
#### Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

?
?
?
?
?
?

?
?
### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| | |
| :--- | :--- |
| [GetInfoLogsForPatientInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetInfoLogsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetInfoLogsForPatientResponder_1.0.xsd](files/schema/GetInfoLogsForPatientResponder_1.0.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getinfologsforpatient](StructureDefinition-getinfologsforpatient.md)
* **Logisk modell (request):** [StructureDefinition/getinfologsforpatient-request](StructureDefinition-getinfologsforpatient-request.md)

