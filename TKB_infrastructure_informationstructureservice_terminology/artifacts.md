# Artifacts Summary - infrastructure: informationstructureservice: terminology v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetConcepts — Request](StructureDefinition-getconcepts-request.md) | Logisk modell för begäran i GetConcepts (urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsRequestType), inklusive SOAP-huvuden enligt WSDL. |
| [GetConcepts — Response](StructureDefinition-getconcepts.md) | Logisk modell för svaret i GetConcepts (urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsResponseType). |
| [GetTerminologySubset — Request](StructureDefinition-getterminologysubset-request.md) | Logisk modell för begäran i GetTerminologySubset (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetRequestType), inklusive SOAP-huvuden enligt WSDL. |
| [GetTerminologySubset — Response](StructureDefinition-getterminologysubset.md) | Logisk modell för svaret i GetTerminologySubset (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetResponseType). |
| [GetTerminologySubsetInformation — Request](StructureDefinition-getterminologysubsetinformation-request.md) | Logisk modell för begäran i GetTerminologySubsetInformation (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationRequestType), inklusive SOAP-huvuden enligt WSDL. |
| [GetTerminologySubsetInformation — Response](StructureDefinition-getterminologysubsetinformation.md) | Logisk modell för svaret i GetTerminologySubsetInformation (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationResponseType). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Resultatkod](ValueSet-terminology-resultcode-vs.md) | Alla koder i ResultCodeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Resultatkod](CodeSystem-terminology-resultcode-cs.md) | Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 7 (fältregler). |

