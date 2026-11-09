# Artifacts Summary - financial: patientfees: exemption v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ProcessExemptionStatuses — Request](StructureDefinition-processexemptionstatuses-request.md) | Logisk modell för begäran i ProcessExemptionStatuses (urn:riv:financial:patientfees:exemption:ProcessExemptionStatusesResponder:1, ProcessExemptionStatusesType), inklusive SOAP-huvuden enligt WSDL. |
| [ProcessExemptionStatuses — Response](StructureDefinition-processexemptionstatuses.md) | Logisk modell för svaret i ProcessExemptionStatuses (urn:riv:financial:patientfees:exemption:ProcessExemptionStatusesResponder:1, ProcessExemptionStatusesResponseType). |
| [RequestExemptionStatuses — Request](StructureDefinition-requestexemptionstatuses-request.md) | Logisk modell för begäran i RequestExemptionStatuses (urn:riv:financial:patientfees:exemption:RequestExemptionStatusesResponder:1, RequestExemptionStatusesType), inklusive SOAP-huvuden enligt WSDL. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ActorType](ValueSet-patientfees-exemption-actortype-vs.md) | Alla koder i ActorTypeCS. |
| [ResultCode](ValueSet-patientfees-exemption-resultcode-vs.md) | Alla koder i ResultCodeCS. |
| [TypeOfExemption](ValueSet-patientfees-exemption-typeofexemption-vs.md) | Alla koder i TypeOfExemptionCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ActorType](CodeSystem-patientfees-exemption-actortype-cs.md) | Koder för ActorTypeEnum i domänschemat. |
| [ResultCode](CodeSystem-patientfees-exemption-resultcode-cs.md) | Koder för ResultCodeEnum i domänschemat. |
| [TypeOfExemption](CodeSystem-patientfees-exemption-typeofexemption-cs.md) | Koder för TypeOfExemptionEnum i domänschemat. |

