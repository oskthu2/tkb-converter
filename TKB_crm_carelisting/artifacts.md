# Artifacts Summary - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [CreateListing](StructureDefinition-createlisting.md) | Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval) (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1). Representerar responsens informationsstruktur. Skapar en ny listning — kopplar ett personId till en vårdenhet. |
| [CreateListing — Request](StructureDefinition-createlisting-request.md) | Logisk modell för requestparametrar i tjänstekontraktet CreateListing (Göra tjänsteval). (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1). |
| [GetAvailableFacilities](StructureDefinition-getavailablefacilities.md) | Logisk modell för tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare) (RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1). Representerar responsens informationsstruktur. Hämtar lista med tillgängliga vårdenheter (tjänsteutövare) inom en region. |
| [GetAvailableFacilities — Request](StructureDefinition-getavailablefacilities-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare). (RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1). |
| [GetListing](StructureDefinition-getlisting.md) | Logisk modell för tjänstekontraktet GetListing (Visa tjänsteval) (RIV-TA urn:riv:crm:carelisting:GetListingResponder:1). Representerar responsens informationsstruktur. Hämtar information om en persons aktiva listning (tjänsteval). |
| [GetListing — Request](StructureDefinition-getlisting-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetListing (Visa tjänsteval). (RIV-TA urn:riv:crm:carelisting:GetListingResponder:1). |
| [GetListingTypes](StructureDefinition-getlistingtypes.md) | Logisk modell för tjänstekontraktet GetListingTypes (Visa listningstyp) (RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1). Representerar responsens informationsstruktur. Hämtar lista med möjliga listningstyper som en given person kan bruka vid listning. |
| [GetListingTypes — Request](StructureDefinition-getlistingtypes-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetListingTypes (Visa listningstyp). (RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1). |
| [GetPersonQueueStatus](StructureDefinition-getpersonqueuestatus.md) | Logisk modell för tjänstekontraktet GetPersonQueueStatus (Visa köstatus) (RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1). Representerar responsens informationsstruktur. Hämtar köstatus för en person — returnerar om personen är i kö samt vilken vårdenhet köstatusen gäller för. |
| [GetPersonQueueStatus — Request](StructureDefinition-getpersonqueuestatus-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetPersonQueueStatus (Visa köstatus). (RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PersonQueueStatus — ValueSet](ValueSet-personqueuestatus-vs.md) | Tillåtna värden för köstatus (queueStatus) i tjänstekontraktet GetPersonQueueStatus. Definierade som xs:enumeration i crm_carelisting_1_0.xsd. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PersonQueueStatus](CodeSystem-personqueuestatus-cs.md) | Kodverk för köstatus för en person, enligt xs:enumeration i crm_carelisting_1_0.xsd. Används i tjänstekontraktet GetPersonQueueStatus. |

