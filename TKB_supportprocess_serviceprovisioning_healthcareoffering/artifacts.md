# Artifacts Summary - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetCareServiceOfferings — Request](StructureDefinition-getcareserviceofferings-request.md) | Logisk modell för begäran i GetCareServiceOfferings (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsType), inklusive SOAP-huvuden enligt WSDL. |
| [GetCareServiceOfferings — Response](StructureDefinition-getcareserviceofferings.md) | Logisk modell för svaret i GetCareServiceOfferings (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsResponseType). |
| [GetOfferingCatalogues — Request](StructureDefinition-getofferingcatalogues-request.md) | Logisk modell för begäran i GetOfferingCatalogues (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesType), inklusive SOAP-huvuden enligt WSDL. |
| [GetOfferingCatalogues — Response](StructureDefinition-getofferingcatalogues.md) | Logisk modell för svaret i GetOfferingCatalogues (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesResponseType). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RIV-TA-version (RIVTAVersion)](ValueSet-healthcareoffering-rivtaversion-vs.md) | Alla koder i RIVTAVersionCS. |
| [Status för vård- och omsorgstjänst (CareServiceStatus)](ValueSet-healthcareoffering-careservicestatus-vs.md) | Alla koder i CareServiceStatusCS. |
| [Typ av plats (TypeOfPlace)](ValueSet-healthcareoffering-typeofplace-vs.md) | Alla koder i TypeOfPlaceCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [RIV-TA-version (RIVTAVersion)](CodeSystem-healthcareoffering-rivtaversion-cs.md) | Koder för RIVTAVersionEnum i domänschemat. Visningstexter ur TKB avsnitt 6.1.2 (GetOfferingCatalogues, rivtaVersion). |
| [Status för vård- och omsorgstjänst (CareServiceStatus)](CodeSystem-healthcareoffering-careservicestatus-cs.md) | Koder för CareServiceStatusEnum i domänschemat. Visningstexter ur TKB avsnitt 6.2.2 (GetCareServiceOfferings, careServiceStatus). |
| [Typ av plats (TypeOfPlace)](CodeSystem-healthcareoffering-typeofplace-cs.md) | Koder för TypeOfPlaceEnum i domänschemat. Visningstexter ur TKB avsnitt 6.2.2 (GetCareServiceOfferings, typeOfPlace). |

