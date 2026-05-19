## StoreLog
Tjänst som sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. Loggposter sparas i ett arkiv med löpnummer samt signeras för att säkerställa integriteten av loggposter.
Loggposter valideras enligt schema. Resultat av anropet returneras i ett Result objekt med statuskod. Vi fel sparas ej loggposter i loggtjänsten.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.0

### SLA-krav
Loggtjänsten har höga krav på tillgänglighet enär loggande tillämpningar kan drabbas av funktionsstörningar om loggtjänsten är otillgänglig. För att minska detta beroende bör loggande tillämpningar ha köfunktionalitet vid avbrott i loggtjänsten.

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att lagring av loggposter skett då anropet genomförts utan fel. Loggposter ska vara tillgängliga för uppföljning inom 24 timmar. |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| log | log:Log | En kollektion av loggposter som ska lagras i loggtjänsten. | 1..* |
| Svar |  |  |  |
| storeLog | log.store:Result | Result Objekt som anger om loggposter sparats eller om fel har inträffat. Resultat koder som kan returneras är OK, INFO, ERROR, VALIDATIONERROR och ACCESSDENIED. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet att lagra loggposter. Om behörighet nekas skall ett fel returneras och flödet avbrytas.

### Tjänsteinteraktion
StoreLog

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:StoreLogRequest xmlns:ns0="urn:riv:ehr:log:store:StoreLogResponder:1" xmlns:ns1="urn:riv:ehr:log:store:1" xmlns:ns2="urn:riv:ehr:log:1">
<!-- Array -->
<ns0:Log>
<ns2:LogId>?</ns2:LogId>
<ns2:System>
<ns2:SystemId>?</ns2:SystemId>
<!-- Optional -->
<ns2:SystemName>?</ns2:SystemName>
</ns2:System>
<ns2:Activity>
<ns2:ActivityType>?</ns2:ActivityType>
<!-- Optional -->
<ns2:ActivityLevel>?</ns2:ActivityLevel>
<!-- Optional -->
<ns2:ActivityArgs>?</ns2:ActivityArgs>
<ns2:StartDate>?</ns2:StartDate>
<ns2:Purpose>?</ns2:Purpose>
</ns2:Activity>
<ns2:User>
<ns2:UserId>?</ns2:UserId>
<!-- Optional -->
<ns2:Name>?</ns2:Name>
<!-- Optional -->
<ns2:PersonId>?</ns2:PersonId>
<!-- Optional -->
<ns2:Assignment>?</ns2:Assignment>
<!-- Optional -->
<ns2:Title>?</ns2:Title>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:User>
<ns2:Resources>
<!-- Array -->
<ns2:Resource>
<ns2:ResourceType>?</ns2:ResourceType>
<!-- Optional -->
<ns2:Patient>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:PatientName>?</ns2:PatientName>
</ns2:Patient>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<!-- Optional -->
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:Resource>
</ns2:Resources>
</ns0:Log>
</ns0:StoreLogRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:StoreLogResponse xmlns:ns0="urn:riv:ehr:log:store:StoreLogResponder:1" xmlns:ns1="urn:riv:ehr:log:store:1">
<ns0:StoreLog>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
</ns0:StoreLog>
</ns0:StoreLogResponse>


### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [StoreLogInteraction_1.0_RIVTABP21.wsdl](files/wsdl/StoreLogInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [StoreLogResponder_1.0.xsd](files/schema/StoreLogResponder_1.0.xsd) | Tjänstespecifikt schema |
| [ehr_logstore_1.0.xsd](files/schema/ehr_logstore_1.0.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/storelog](StructureDefinition-storelog.html)
* **Logisk modell (request):** [StructureDefinition/storelog-request](StructureDefinition-storelog-request.html)

## GetLogsForCareProvider
Tjänst som returnerar loggposter för angiven vårdgivare, all åtkomst som har skett av vårdgivarens medarbetare.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.1

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| Svar |  |  |  |
| getLogsForCareProvider | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion
GetLogsForCareProvider

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetLogsForCareProviderRequest xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
<!-- Optional -->
<ns0:CareUnitId>?</ns0:CareUnitId>
</ns0:GetLogsForCareProviderRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetLogsForCareProviderResponse xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetLogsForCareProvider>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:Logs>
<!-- Optional -->
<!-- Array -->
<ns1:Log>
<ns2:LogId>?</ns2:LogId>
<ns2:System>
<ns2:SystemId>?</ns2:SystemId>
<!-- Optional -->
<ns2:SystemName>?</ns2:SystemName>
</ns2:System>
<ns2:Activity>
<ns2:ActivityType>?</ns2:ActivityType>
<!-- Optional -->
<ns2:ActivityLevel>?</ns2:ActivityLevel>
<!-- Optional -->
<ns2:ActivityArgs>?</ns2:ActivityArgs>
<ns2:StartDate>?</ns2:StartDate>
<ns2:Purpose>?</ns2:Purpose>
</ns2:Activity>
<ns2:User>
<ns2:UserId>?</ns2:UserId>
<!-- Optional -->
<ns2:Name>?</ns2:Name>
<!-- Optional -->
<ns2:PersonId>?</ns2:PersonId>
<!-- Optional -->
<ns2:Assignment>?</ns2:Assignment>
<!-- Optional -->
<ns2:Title>?</ns2:Title>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:User>
<ns2:Resources>
<!-- Array -->
<ns2:Resource>
<ns2:ResourceType>?</ns2:ResourceType>
<!-- Optional -->
<ns2:Patient>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:PatientName>?</ns2:PatientName>
</ns2:Patient>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<!-- Optional -->
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:Resource>
</ns2:Resources>
</ns1:Log>
</ns1:Logs>
</ns0:GetLogsForCareProvider>
</ns0:GetLogsForCareProviderResponse>


### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetLogsForCareProviderInteraction_1.1_RIVTABP21.wsdl](files/wsdl/GetLogsForCareProviderInteraction_1.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetLogsForCareProviderResponder_1.1.xsd](files/schema/GetLogsForCareProviderResponder_1.1.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getlogsforcareprovider](StructureDefinition-getlogsforcareprovider.html)
* **Logisk modell (request):** [StructureDefinition/getlogsforcareprovider-request](StructureDefinition-getlogsforcareprovider-request.html)

## GetLogsForUser
Tjänst som returnerar loggposter för angiven vårdgivare samt medarbetare, all åtkomst som har skett av medarbetaren.
Logguttaget begränsas av angivet datumintervall .
Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapas av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultatkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.1

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| userId | log:HsaId | Medarbetare som haft åtkomst. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| Svar |  |  |  |
| getLogsForUser | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion
GetLogsForUser

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetLogsForUserRequest xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForUserResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:UserId>?</ns0:UserId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
<!-- Optional -->
<ns0:CareUnitId>?</ns0:CareUnitId>
</ns0:GetLogsForUserRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetLogsForUserResponse xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForUserResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetLogsForUser>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:Logs>
<!-- Optional -->
<!-- Array -->
<ns1:Log>
<ns2:LogId>?</ns2:LogId>
<ns2:System>
<ns2:SystemId>?</ns2:SystemId>
<!-- Optional -->
<ns2:SystemName>?</ns2:SystemName>
</ns2:System>
<ns2:Activity>
<ns2:ActivityType>?</ns2:ActivityType>
<!-- Optional -->
<ns2:ActivityLevel>?</ns2:ActivityLevel>
<!-- Optional -->
<ns2:ActivityArgs>?</ns2:ActivityArgs>
<ns2:StartDate>?</ns2:StartDate>
<ns2:Purpose>?</ns2:Purpose>
</ns2:Activity>
<ns2:User>
<ns2:UserId>?</ns2:UserId>
<!-- Optional -->
<ns2:Name>?</ns2:Name>
<!-- Optional -->
<ns2:PersonId>?</ns2:PersonId>
<!-- Optional -->
<ns2:Assignment>?</ns2:Assignment>
<!-- Optional -->
<ns2:Title>?</ns2:Title>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:User>
<ns2:Resources>
<!-- Array -->
<ns2:Resource>
<ns2:ResourceType>?</ns2:ResourceType>
<!-- Optional -->
<ns2:Patient>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:PatientName>?</ns2:PatientName>
</ns2:Patient>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<!-- Optional -->
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:Resource>
</ns2:Resources>
</ns1:Log>
</ns1:Logs>
</ns0:GetLogsForUser>
</ns0:GetLogsForUserResponse>


### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetLogsForUserInteraction_1.1_RIVTABP21.wsdl](files/wsdl/GetLogsForUserInteraction_1.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetLogsForUserResponder_1.1.xsd](files/schema/GetLogsForUserResponder_1.1.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getlogsforuser](StructureDefinition-getlogsforuser.html)
* **Logisk modell (request):** [StructureDefinition/getlogsforuser-request](StructureDefinition-getlogsforuser-request.html)

## GetLogsForPatient
Tjänst som returnerar loggposter för angiven vårdgivare samt patient, all åtkomst som har skett av vårdgivarens medarbetare till patientens information.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med loggposter (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är ägare till loggposter och som urvalet av loggposter baseras på. | 1..1 |
| patientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som vårdgivare haft åtkomst till. | 1..1 |
| careUnitId | log:HsaId | Ej obligatoriskt fält för att filtrera ut loggposter för en specifik vårdenhet. | 0..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |  |  |  |
| getLogsForPatient | log.querying:LogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista med loggposter samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga loggposter. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.
.

### Tjänsteinteraktion
GetLogsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetLogsForPatientRequest xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
<!-- Optional -->
<ns0:CareUnitId>?</ns0:CareUnitId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
</ns0:GetLogsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetLogsForPatientResponse xmlns:ns0="urn:riv:ehr:log:querying:GetLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetLogsForPatient>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:Logs>
<!-- Optional -->
<!-- Array -->
<ns1:Log>
<ns2:LogId>?</ns2:LogId>
<ns2:System>
<ns2:SystemId>?</ns2:SystemId>
<!-- Optional -->
<ns2:SystemName>?</ns2:SystemName>
</ns2:System>
<ns2:Activity>
<ns2:ActivityType>?</ns2:ActivityType>
<!-- Optional -->
<ns2:ActivityLevel>?</ns2:ActivityLevel>
<!-- Optional -->
<ns2:ActivityArgs>?</ns2:ActivityArgs>
<ns2:StartDate>?</ns2:StartDate>
<ns2:Purpose>?</ns2:Purpose>
</ns2:Activity>
<ns2:User>
<ns2:UserId>?</ns2:UserId>
<!-- Optional -->
<ns2:Name>?</ns2:Name>
<!-- Optional -->
<ns2:PersonId>?</ns2:PersonId>
<!-- Optional -->
<ns2:Assignment>?</ns2:Assignment>
<!-- Optional -->
<ns2:Title>?</ns2:Title>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:User>
<ns2:Resources>
<!-- Array -->
<ns2:Resource>
<ns2:ResourceType>?</ns2:ResourceType>
<!-- Optional -->
<ns2:Patient>
<ns2:PatientId>?</ns2:PatientId>
<!-- Optional -->
<ns2:PatientName>?</ns2:PatientName>
</ns2:Patient>
<ns2:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns2:CareProvider>
<!-- Optional -->
<ns2:CareUnit>
<ns2:CareUnitId>?</ns2:CareUnitId>
<!-- Optional -->
<ns2:CareUnitName>?</ns2:CareUnitName>
</ns2:CareUnit>
</ns2:Resource>
</ns2:Resources>
</ns1:Log>
</ns1:Logs>
</ns0:GetLogsForPatient>
</ns0:GetLogsForPatientResponse>


### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetLogsForPatientInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetLogsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetLogsForPatientResponder_1.0.xsd](files/schema/GetLogsForPatientResponder_1.0.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getlogsforpatient](StructureDefinition-getlogsforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getlogsforpatient-request](StructureDefinition-getlogsforpatient-request.html)

## GetAccessLogsForPatient
Tjänst som returnerar lista för angiven patient, vilka vårdgivare och vårdaktör som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK .
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.1

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| PatientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som någon vårdgivare haft åtkomst till. | 1..1 |
| FromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| ToDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| QueuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. / Skall inte användas när aggregerande tjänst anropas. | 0..1 |
| Svar |  |  |  |
| AccessLogsResultType | logquerying:AccessLogsResultType | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet till ”patientbunden” logginformation. Normalt så sker detta via behörighetskontrollen i en Tjänsteplattform. Anropande konsument har att säkerställa att patienten är starkt autentiserad.

### Tjänsteinteraktion
GetAccessLogsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetAccessLogsForPatientRequest xmlns:ns0="urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:PatientId>?</ns0:PatientId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
</ns0:GetAccessLogsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetAccessLogsForPatientResponse xmlns:ns0="urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:GetAccessLogsForPatient>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:AccesssLogs>
<!-- Optional -->
<!-- Array -->
<ns1:AccessLog>
<ns1:CareProviderId>?</ns1:CareProviderId>
<!-- Optional -->
<ns1:CareProviderName>?</ns1:CareProviderName>
<ns1:CareUnitId>?</ns1:CareUnitId>
<!-- Optional -->
<ns1:CareUnitName>?</ns1:CareUnitName>
<ns1:UserId>?</ns1:UserId>
<!-- Optional -->
<ns1:UserName>?</ns1:UserName>
<!-- Optional -->
<ns1:UserTitle>?</ns1:UserTitle>
<ns1:AccessDate>?</ns1:AccessDate>
<ns1:Purpose>?</ns1:Purpose>
<ns1:ResourceType>?</ns1:ResourceType>
</ns1:AccessLog>
</ns1:AccesssLogs>
</ns0:GetAccessLogsForPatient>
</ns0:GetAccessLogsForPatientResponse>


### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetAccessLogsForPatientInteraction_1.1_RIVTABP21.wsdl](files/wsdl/GetAccessLogsForPatientInteraction_1.1_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetAccessLogsForPatientResponder_1.1.xsd](files/schema/GetAccessLogsForPatientResponder_1.1.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |
| [SjD_TP_GetAccessLogsForPatient_1.1.docx](files/docs/SjD_TP_GetAccessLogsForPatient_1.1.docx) | Tjänstebeskrivning |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getaccesslogsforpatient](StructureDefinition-getaccesslogsforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getaccesslogsforpatient-request](StructureDefinition-getaccesslogsforpatient-request.html)

## GetInfoLogsForCareProvider
Tjänst som returnerar lista för angiven vårdgivare, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare.
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |  |  |  |
| getInfoLogsForCareProvider | log.querying:InfoLogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion
GetInfoLogsForCareProvider

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetInfoLogsForCareProviderRequest xmlns:ns0="urn:riv:ehr:log:querying:GetInfoLogsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
</ns0:GetInfoLogsForCareProviderRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetInfoLogsForCareProviderResponse xmlns:ns0="urn:riv:ehr:log:querying:GetInfoLogsForCareProviderResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetInfoLogsForCareProvider>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:CareProviders>
<!-- Optional -->
<!-- Array -->
<ns1:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns1:CareProvider>
</ns1:CareProviders>
</ns0:GetInfoLogsForCareProvider>
</ns0:GetInfoLogsForCareProviderResponse>


### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetInfoLogsForCareProviderInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetInfoLogsForCareProviderInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetInfoLogsForCareProviderResponder_1.0.xsd](files/schema/GetInfoLogsForCareProviderResponder_1.0.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getinfologsforcareprovider](StructureDefinition-getinfologsforcareprovider.html)
* **Logisk modell (request):** [StructureDefinition/getinfologsforcareprovider-request](StructureDefinition-getinfologsforcareprovider-request.html)

## GetInfoLogsForPatient
Tjänst som returnerar lista för angiven vårdgivare samt patient, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare
Logguttaget begränsas av angivet datumintervall.
Tjänsten returnerar en lista med vårdgivare (kan vara noll dvs en tom lista) om resultatkod är OK.
Tjänsten returnerar alltid inom 15 sekunder, även ifall rapporten ännu inte har hunnit skapats. Tiden är konfigurerbar av systemet och kan ändras vid behov.
Om rapporten inte har hunnit skapats av tjänsten returneras ett id (queuedReportId) som identifierar den rapport som håller på att skapas, man får även i detta fall resultkoden REPORTONQUEUE eller REPORTINPROCESS. Man får även en indikation på hur länge det förväntas ta innan rapporten är genererad (queueTime).
Med hjälp av queuedReportId skall ytterligare anrop sedan göras av det anropade systemet för att kontrollera/hämta den skapade rapporten. Obeservera att man måste ange queuedReportId, i annat fall kommer en ny rapport att skapas.
queueTime rekomenderas att användas av det anropande systemet för att bestämma när nästa anrop ska ske.
VIKTIGT att ytterligare anrop sker med queuedReportId om tidigare anrop avslutats med felkod REPORTONQUEUE eller REPORTINPROCESS för att inte köa upp flera rapporter.
Tjänsten returnerar statuskod REPORTNOTFOUND ifall man har angett ett felaktigt id(queuedReportId) för att hämta rapport. Ingen ny rapport skapas.
Tjänsten returnerar max 10000 loggposter. Om fler loggposter finns i rapportuttaget avslutas anropet med felkod MAXQUERYRESULTEXCEEDED. Datumintervall kan då justeras för ett mindra antal loggposter.
Max antal loggposter som kan returneras är konfigurerbart av systemet och kan ändras vid behov.

### Frivillighet
Obligatorisk, nationellt.

### Version
1.0

### SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | 99,80% |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att loggrapport skapas från senaste loggdata. Loggdata från de senaste 18 månaderna ska finnas tillgängligt för uppföljning. Aktuellt intervall av loggdata som finns tillgängligt för uppföljning returneras i svaret. (Se kapitel 1.5 Läsning av åtkomstloggar som är äldre än 18 månader). |  |

### Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | log:HsaId | Vårdgivare som är informationsägare av loggpost. | 1..1 |
| patientId | log:PersonId | Patientens personnummer, samordningsnummer, alternativt reservnummer som annan vårdgivare än informationsägaren haft åtkomst till. | 1..1 |
| fromDate | xs:dateTime | Obligatoriskt startdatum för att begränsa rapportuttaget. | 1..1 |
| toDate | xs:dateTime | Obligatoriskt slutdatum för att begränsa rapportuttaget. | 1..1 |
| queuedReportId | log:Id | Id på en pågående rapport. Id som returnerats från ett tidigare anrop och hänvisar till rapport som ej färdigstälts. | 0..1 |
| Svar |  |  |  |
| getInfoLogsForPatient | log.querying:InfoLogsResult | Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts utan fel returneras en lista av vårdgivare samt resultatkod OK. / Vid eventuella fel i tjänsteanropet returneras inga vårdgivare. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande. | 1..1 |

### Regler
Tjänsten skall kontrollera om anropande system har behörighet baserat på det anropande systemets certifikat.
Om tjänsten har behov av att filtrera åtkomsten ska detta baseras på ”x-rivta-original-serviceconsumer-hsaid” i RIV TA-headern.
Normalt så är en tjänst ansluten via en Tjänsteplattform och då är det den som reglerar åtkomsten.

### Tjänsteinteraktion
GetInfoLogsForPatient

### Exempel

#### Exempel på anrop
Följande XML visar strukturen på ett anrop till tjänsten.
<ns0:GetInfoLogsForPatientRequest xmlns:ns0="urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1">
<ns0:CareProviderId>?</ns0:CareProviderId>
<ns0:PatientId>?</ns0:PatientId>
<ns0:FromDate>?</ns0:FromDate>
<ns0:ToDate>?</ns0:ToDate>
<!-- Optional -->
<ns0:QueuedReportId>?</ns0:QueuedReportId>
</ns0:GetInfoLogsForPatientRequest>

#### Exempel på svar
Följande XML visar strukturen på svarsmeddelandet från tjänsten.
<ns0:GetInfoLogsForPatientResponse xmlns:ns0="urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1" xmlns:ns1="urn:riv:ehr:log:querying:1" xmlns:ns2="urn:riv:ehr:log:1">
<ns0:GetInfoLogsForPatient>
<ns1:Result>
<ns1:ResultCode>?</ns1:ResultCode>
<ns1:ResultText>?</ns1:ResultText>
<!-- Optional -->
<ns1:StartInterval>?</ns1:StartInterval>
<!-- Optional -->
<ns1:EndInterval>?</ns1:EndInterval>
<!-- Optional -->
<ns1:QueuedReportId>?</ns1:QueuedReportId>
<!-- Optional -->
<ns1:QueueTime>?</ns1:QueueTime>
</ns1:Result>
<!-- Optional -->
<ns1:CareProviders>
<!-- Optional -->
<!-- Array -->
<ns1:CareProvider>
<ns2:CareProviderId>?</ns2:CareProviderId>
<!-- Optional -->
<ns2:CareProviderName>?</ns2:CareProviderName>
</ns1:CareProvider>
</ns1:CareProviders>
</ns0:GetInfoLogsForPatient>
</ns0:GetInfoLogsForPatientResponse>

### Källfiler (RIV-TA)

Originalkällfiler för tjänstekontraktet, i RIV-TA-format:

| Fil | Typ |
|-----|-----|
| [GetInfoLogsForPatientInteraction_1.0_RIVTABP21.wsdl](files/wsdl/GetInfoLogsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL-kontrakt |
| [GetInfoLogsForPatientResponder_1.0.xsd](files/schema/GetInfoLogsForPatientResponder_1.0.xsd) | Tjänstespecifikt schema |
| [ehr_logquerying_1.1.xsd](files/schema/ehr_logquerying_1.1.xsd) | Underdomänschema |
| [ehr_log_1.0.xsd](files/schema/ehr_log_1.0.xsd) | Gemensamt domänschema |

### FHIR-artefakter

Följande FHIR-artefakter har genererats från ovanstående kontraktsbeskrivning:

* **Logisk modell (response):** [StructureDefinition/getinfologsforpatient](StructureDefinition-getinfologsforpatient.html)
* **Logisk modell (request):** [StructureDefinition/getinfologsforpatient-request](StructureDefinition-getinfologsforpatient-request.html)
