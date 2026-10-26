# Artifacts Summary - financial: billing: claim v1.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ProcessClaimSpecification — Request](StructureDefinition-processclaimspecification-request.md) | Logisk modell för begäran i ProcessClaimSpecification (urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationType), inklusive SOAP-huvuden enligt WSDL. |
| [ProcessClaimSpecification — Response](StructureDefinition-processclaimspecification.md) | Logisk modell för svaret i ProcessClaimSpecification (urn:riv:financial:billing:claim:ProcessClaimSpecificationResponder:1, ProcessClaimSpecificationResponseType). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Resultatkod](ValueSet-financial-billing-claim-resultcode-vs.md) | Alla koder i ResultCodeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Resultatkod](CodeSystem-financial-billing-claim-resultcode-cs.md) | Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 4.3.1.1. |

