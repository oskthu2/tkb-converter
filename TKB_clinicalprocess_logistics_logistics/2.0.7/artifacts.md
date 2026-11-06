# Artifacts Summary - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [GetCareContacts](StructureDefinition-getcarecontacts.md) | Logisk modell för tjänstekontraktet GetCareContacts 2.0 (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2). Representerar svarets informationsstruktur (GetCareContactsResponseType): noll eller flera vårdkontakter, var och en med ett huvud (careContactHeader) och en kropp (careContactBody). |
| [GetCareContacts — Request](StructureDefinition-getcarecontacts-request.md) | Logisk modell för begäran i tjänstekontraktet GetCareContacts 2.0 (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2). Representerar GetCareContactsType i GetCareContactsResponder_2.0.xsd. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CareContactCode — ValueSet](ValueSet-carecontactcode-vs.md) | Tillåtna värden för careContactCode i GetCareContacts 2.0. |
| [CareContactStatus — ValueSet](ValueSet-carecontactstatus-vs.md) | Tillåtna värden för careContactStatus i GetCareContacts 2.0. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CareContactCode](CodeSystem-carecontactcode-cs.md) | Typ av vårdkontakt (careContactCode i GetCareContacts 2.0). Uppräkningen CareContactCodeEnum i clinicalprocess_logistics_logistics_enum_2.0.xsd. Utelämnat värde betyder att typen är okänd. |
| [CareContactStatus](CodeSystem-carecontactstatus-cs.md) | Status på vårdkontakten (careContactStatus i GetCareContacts 2.0), enligt kodverk ur NPÖ RIV-spec 2.2. Uppräkningen CareContactStatusEnum i clinicalprocess_logistics_logistics_enum_2.0.xsd. |

