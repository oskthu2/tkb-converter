# Artifacts Summary - followup: qualityregistry: nkrr v1.2.2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetFormData](StructureDefinition-getformdata.md) | Logisk modell för tjänstekontraktet GetFormData (RIV-TA urn:riv:followup:qualityregistry:nkrr:GetFormData:1). Representerar responsens informationsstruktur. GetFormData hämtar underlag för ett enskilt kvalitetsregisterformulär. |
| [GetFormData — Request](StructureDefinition-getformdata-request.md) | Logisk modell för requestparametrar i GetFormData (RIV-TA urn:riv:followup:qualityregistry:nkrr:GetFormData:1). |
| [ProcessRegistrationNotification](StructureDefinition-processregistrationnotification.md) | Logisk modell för tjänstekontraktet ProcessRegistrationNotification (RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1). Representerar responsens informationsstruktur. |
| [ProcessRegistrationNotification — Request](StructureDefinition-processregistrationnotification-request.md) | Logisk modell för requestparametrar i ProcessRegistrationNotification (RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCodeEnum — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna resultatkoder (OK, INFO, ERROR) för tjänstekontrakt i domänen followup:qualityregistry:nkrr. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ResultCodeEnum](CodeSystem-resultcode-cs.md) | Resultatkoder (ResultCodeEnum) för tjänstedomänen followup:qualityregistry:nkrr. Används i svarsmeddelanden för att indikera utfall av tjänsteanrop. |

