# Artifacts Summary - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetDispensedDrugs](StructureDefinition-getdispenseddrugs.md) | Logisk modell för tjänstekontraktet GetDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:GetDispensedDrugsResponder:1). Representerar responsens informationsstruktur: patientens läkemedelsförteckning med viss ordinationsinformation för att kunna koppla ihop utlämnat läkemedel med ordinerat. |
| [GetDispensedDrugs — Request](StructureDefinition-getdispenseddrugs-request.md) | Logisk modell för requestparametrar i GetDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:GetDispensedDrugsResponder:1, GetDispensedDrugsType). |
| [PrintListOfDispensedDrugs](StructureDefinition-printlistofdispenseddrugs.md) | Logisk modell för tjänstekontraktet PrintListOfDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1). Representerar responsens informationsstruktur: en PDF-rapport med patientens läkemedelsförteckning. |
| [PrintListOfDispensedDrugs — Request](StructureDefinition-printlistofdispenseddrugs-request.md) | Logisk modell för requestparametrar i PrintListOfDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1, PrintListOfDispensedDrugsType). Anropande system ska ha anropat GetDispensedDrugs innan denna tjänst anropas. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Atkomsttyp — ValueSet](ValueSet-atkomsttyp-vs.md) | Tillåtna värden för atkomsttyp enligt AtkomsttypCS. |
| [ResultCode — ValueSet](ValueSet-resultcode-vs.md) | Tillåtna värden för resultCode enligt ResultCodeCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [atkomsttyp](CodeSystem-atkomsttyp-cs.md) | Kodverk atkomsttyp enligt clinicalprocess_activityprescription_logistics_1.0.xsd. Treställig kod för typ av åtkomst till Läkemedelsförteckningen. |
| [resultCodeEnum](CodeSystem-resultcode-cs.md) | Kodverk resultCodeEnum enligt clinicalprocess_activityprescription_logistics_1.0.xsd. Resultatkod för anropet. |

