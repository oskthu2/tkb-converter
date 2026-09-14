# Artifacts Summary - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetAccessLogsForPatient](StructureDefinition-getaccesslogsforpatient.md) | Logisk modell för tjänstekontraktet GetAccessLogsForPatient (RIV-TA urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1). Representerar responsens informationsstruktur (log.querying:AccessLogsResult). Returnerar lista för angiven patient med vilka vårdaktörer som har haft åtkomst till information, inklusive tidpunkt, syfte och resurstyp. Stödjer aggregering — queuedReportId får inte användas vid aggregerande anrop. |
| [GetAccessLogsForPatient — Request](StructureDefinition-getaccesslogsforpatient-request.md) | Logisk modell för requestparametrar i GetAccessLogsForPatient. Obs: queuedReportId ska INTE användas när aggregerande tjänst anropas. |
| [GetInfoLogsForCareProvider](StructureDefinition-getinfologsforcareprovider.md) | Logisk modell för tjänstekontraktet GetInfoLogsForCareProvider (RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForCareProviderResponder:1). Representerar responsens informationsstruktur (log.querying:InfoLogsResult). Returnerar lista för angiven informationsägande vårdgivare med vilka externa vårdgivare som har haft åtkomst till vårdgivarens information. |
| [GetInfoLogsForCareProvider — Request](StructureDefinition-getinfologsforcareprovider-request.md) | Logisk modell för requestparametrar i GetInfoLogsForCareProvider. |
| [GetInfoLogsForPatient](StructureDefinition-getinfologsforpatient.md) | Logisk modell för tjänstekontraktet GetInfoLogsForPatient (RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForPatientResponder:1). Representerar responsens informationsstruktur (log.querying:InfoLogsResult). Returnerar lista för angiven informationsägande vårdgivare och patient med vilka externa vårdgivare som haft åtkomst till information. |
| [GetInfoLogsForPatient — Request](StructureDefinition-getinfologsforpatient-request.md) | Logisk modell för requestparametrar i GetInfoLogsForPatient. |
| [GetLogsForCareProvider](StructureDefinition-getlogsforcareprovider.md) | Logisk modell för tjänstekontraktet GetLogsForCareProvider (RIV-TA urn:riv:ehr:log:querying:GetLogsForCareProviderResponder:1). Representerar responsens informationsstruktur (log.querying:LogsResult). Returnerar loggposter för angiven vårdgivare. |
| [GetLogsForCareProvider — Request](StructureDefinition-getlogsforcareprovider-request.md) | Logisk modell för requestparametrar i GetLogsForCareProvider. |
| [GetLogsForPatient](StructureDefinition-getlogsforpatient.md) | Logisk modell för tjänstekontraktet GetLogsForPatient (RIV-TA urn:riv:ehr:log:querying:GetLogsForPatientResponder:1). Representerar responsens informationsstruktur (log.querying:LogsResult). Returnerar loggposter för angiven vårdgivare och patient. |
| [GetLogsForPatient — Request](StructureDefinition-getlogsforpatient-request.md) | Logisk modell för requestparametrar i GetLogsForPatient. |
| [GetLogsForUser](StructureDefinition-getlogsforuser.md) | Logisk modell för tjänstekontraktet GetLogsForUser (RIV-TA urn:riv:ehr:log:querying:GetLogsForUserResponder:1). Representerar responsens informationsstruktur (log.querying:LogsResult). Returnerar loggposter för angiven vårdgivare och medarbetare. |
| [GetLogsForUser — Request](StructureDefinition-getlogsforuser-request.md) | Logisk modell för requestparametrar i GetLogsForUser. |
| [StoreLog](StructureDefinition-storelog.md) | Logisk modell för tjänstekontraktet StoreLog (RIV-TA urn:riv:ehr:log:store:StoreLogResponder:1). Representerar responsens informationsstruktur (log.store:Result). Tjänsten sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. |
| [StoreLog — Request](StructureDefinition-storelog-request.md) | Logisk modell för requestparametrar i StoreLog (RIV-TA urn:riv:ehr:log:store:StoreLogResponder:1). Innehåller en samling loggposter (log:Log) som ska lagras. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ActivityType — ValueSet](ValueSet-activitytype-vs.md) | Tillåtna värden för aktivitetstyp (log:ActivityTypeValue) i loggposter. |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna statuskoder som kan returneras av tjänsterna i ehr:log-domänen. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ActivityType](CodeSystem-activitytype-cs.md) | Kodverk för typ av aktivitet som utförts. Definieras i TKB ehr:log avsnitt Datatyper (log:ActivityType). |
| [ResultCode](CodeSystem-resultcode-cs.md) | Statuskoder som returneras av tjänstekontrakten i ehr:log-domänen. Definieras i TKB ehr:log avsnitt Datatyper. |

