# Artifacts Summary - ehr: patientsummary v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [DeleteEhrExtract — Request](StructureDefinition-deleteehrextract-request.md) | Logisk modell för begäran i DeleteEhrExtract (urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractType), inklusive SOAP-huvuden enligt WSDL. |
| [DeleteEhrExtract — Response](StructureDefinition-deleteehrextract.md) | Logisk modell för svaret i DeleteEhrExtract (urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractResponseType). |
| [DeleteEhrExtractStatus — Request](StructureDefinition-deleteehrextractstatus-request.md) | Logisk modell för begäran i DeleteEhrExtractStatus (urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1, DeleteEhrExtractStatusType), inklusive SOAP-huvuden enligt WSDL. |
| [DeleteEhrExtractStatus — Response](StructureDefinition-deleteehrextractstatus.md) | Logisk modell för svaret i DeleteEhrExtractStatus (urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1, DeleteEhrExtractStatusResponseType). |
| [GetEhrExtract — Request](StructureDefinition-getehrextract-request.md) | Logisk modell för begäran i GetEhrExtract (urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractType), inklusive SOAP-huvuden enligt WSDL. |
| [GetEhrExtract — Response](StructureDefinition-getehrextract.md) | Logisk modell för svaret i GetEhrExtract (urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractResponseType). |
| [ReceiveEhrExtract — Request](StructureDefinition-receiveehrextract-request.md) | Logisk modell för begäran i ReceiveEhrExtract (urn:riv:ehr:patientsummary:ReceiveEhrExtractResponder:1, ReceiveEhrExtractType), inklusive SOAP-huvuden enligt WSDL. |
| [ReceiveEhrExtract — Response](StructureDefinition-receiveehrextract.md) | Logisk modell för svaret i ReceiveEhrExtract (urn:riv:ehr:patientsummary:ReceiveEhrExtractResponder:1, ReceiveEhrExtractResponseType). |
| [ReceiveEhrExtractStatus — Request](StructureDefinition-receiveehrextractstatus-request.md) | Logisk modell för begäran i ReceiveEhrExtractStatus (urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1, ReceiveEhrExtractStatusType), inklusive SOAP-huvuden enligt WSDL. |
| [ReceiveEhrExtractStatus — Response](StructureDefinition-receiveehrextractstatus.md) | Logisk modell för svaret i ReceiveEhrExtractStatus (urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1, ReceiveEhrExtractStatusResponseType). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Typ av statusmeddelande (response_detail)](ValueSet-patientsummary-responsedetailtypecodes-vs.md) | Alla koder i ResponseDetailTypeCodesCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Typ av statusmeddelande (response_detail)](CodeSystem-patientsummary-responsedetailtypecodes-cs.md) | Koder för ResponseDetailTypeCodes i domänschemat. Visningstexter ur TKB avsnitt 2.3 Statusrapportering. |

