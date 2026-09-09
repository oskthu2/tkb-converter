# Artifacts Summary - clinicalprocess: logistics: logistics v3.0.13

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetCareContacts](StructureDefinition-getcarecontacts.md) | Logisk modell för tjänstekontraktet GetCareContacts (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3). Representerar responsens informationsstruktur (GetCareContactsResponseType). En lista med CareContactType returneras, var och en med ett header och ett body. |
| [GetCareContacts — Request](StructureDefinition-getcarecontacts-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetCareContacts (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3). Representerar GetCareContactsType i GetCareContactsResponder_3.0.xsd. |
| [GetCarePlans](StructureDefinition-getcareaplans.md) | Logisk modell för tjänstekontraktet GetCarePlans (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2). Representerar responsens informationsstruktur (GetCarePlansResponseType). En lista med CarePlanType returneras, var och en med ett header och ett body. |
| [GetCarePlans — Request](StructureDefinition-getcareaplans-request.md) | Logisk modell för requestparametrar i tjänstekontraktet GetCarePlans (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2). Representerar GetCarePlansType i GetCarePlansResponder_2.0.xsd. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TypeOfCarePlan — ValueSet](ValueSet-typeofcareplan-vs.md) | Tillåtna värden för typeOfCarePlan i GetCarePlans enligt clinicalprocess:logistics:logistics. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [TypeOfCarePlan](CodeSystem-typeofcareplan-cs.md) | Typ av vård- och omsorgsplan enligt clinicalprocess:logistics:logistics v3.0. Definierad i clinicalprocess_logistics_logistics_enum_3.0.xsd. |

