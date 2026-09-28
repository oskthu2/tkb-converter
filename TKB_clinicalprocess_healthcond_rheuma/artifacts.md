# Artifacts Summary - clinicalprocess: healthcond: rheuma — Reumatismdata v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetRheumatoidArthritisData — Request](StructureDefinition-getrheumatoidarthritisdata-request.md) | Logisk modell för begäran i GetRheumatoidArthritisData (RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataType). |
| [GetRheumatoidArthritisData — Response](StructureDefinition-getrheumatoidarthritisdata.md) | Logisk modell för svaret i GetRheumatoidArthritisData (RIV-TA urn:riv:clinicalprocess:healthcond:rheuma:GetRheumatoidArthritisDataResponder:1, GetRheumatoidArthritisDataResponseType). Varje förekomst av rheumatoidArthritisData är ett dokument ur Reuma beslutsstödsjournal eller motsvarande system. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DoctorsGlobalEnum](ValueSet-physiciansglobal-vs.md) | Alla koder i PhysiciansGlobalCS. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DoctorsGlobalEnum](CodeSystem-physiciansglobal-cs.md) | Läkarens globala bedömning av sjukdomsaktivitet enligt DoctorsGlobalEnum i clinicalprocess_healthcond_rheuma_enum_1.0.xsd. |

