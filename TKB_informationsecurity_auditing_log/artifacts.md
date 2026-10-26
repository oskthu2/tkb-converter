# Artifacts Summary - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetAccessLogsForPatient — Request](StructureDefinition-getaccesslogsforpatient-request.md) | Logisk modell för begäran i GetAccessLogsForPatient (urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientType), inklusive SOAP-huvuden enligt WSDL. |
| [GetAccessLogsForPatient — Response](StructureDefinition-getaccesslogsforpatient.md) | Logisk modell för svaret i GetAccessLogsForPatient (urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2, GetAccessLogsForPatientResponseType). |
| [GetFilesForOrderId — Request](StructureDefinition-getfilesfororderid-request.md) | Logisk modell för begäran i GetFilesForOrderId (urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1, GetFilesForOrderIdType), inklusive SOAP-huvuden enligt WSDL. |
| [GetFilesForOrderId — Response](StructureDefinition-getfilesfororderid.md) | Logisk modell för svaret i GetFilesForOrderId (urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1, GetFilesForOrderIdResponseType). |
| [GetInfoLogs — Request](StructureDefinition-getinfologs-request.md) | Logisk modell för begäran i GetInfoLogs (urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsType), inklusive SOAP-huvuden enligt WSDL. |
| [GetInfoLogs — Response](StructureDefinition-getinfologs.md) | Logisk modell för svaret i GetInfoLogs (urn:riv:informationsecurity:auditing:log:GetInfoLogsResponder:2, GetInfoLogsResponseType). |
| [GetLogs — Request](StructureDefinition-getlogs-request.md) | Logisk modell för begäran i GetLogs (urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsType), inklusive SOAP-huvuden enligt WSDL. |
| [GetLogs — Response](StructureDefinition-getlogs.md) | Logisk modell för svaret i GetLogs (urn:riv:informationsecurity:auditing:log:GetLogsResponder:2, GetLogsResponseType). |
| [GetLogsByOrder — Request](StructureDefinition-getlogsbyorder-request.md) | Logisk modell för begäran i GetLogsByOrder (urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderType), inklusive SOAP-huvuden enligt WSDL. |
| [GetLogsByOrder — Response](StructureDefinition-getlogsbyorder.md) | Logisk modell för svaret i GetLogsByOrder (urn:riv:informationsecurity:auditing:log:GetLogsByOrderResponder:1, GetLogsByOrderResponseType). |
| [StoreLog — Request](StructureDefinition-storelog-request.md) | Logisk modell för begäran i StoreLog (urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogType), inklusive SOAP-huvuden enligt WSDL. |
| [StoreLog — Response](StructureDefinition-storelog.md) | Logisk modell för svaret i StoreLog (urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogResponseType). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode](ValueSet-auditing-log-resultcode-vs.md) | Alla koder i ResultCodeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCode](CodeSystem-auditing-log-resultcode-cs.md) | Koder för ResultCodeType i domänschemat. |

