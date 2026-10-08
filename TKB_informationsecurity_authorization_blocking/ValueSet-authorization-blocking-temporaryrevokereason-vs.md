# TemporaryRevokeReason - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TemporaryRevokeReason**

## ValueSet: TemporaryRevokeReason 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/ValueSet/authorization-blocking-temporaryrevokereason-vs | *Version*:4.0.4 |
| Active as of 2026-10-08 | *Computable Name*:TemporaryRevokeReasonVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Alla koder i TemporaryRevokeReasonCS. 

 **References** 

* [GetExtendedBlocksForPatient — Response](StructureDefinition-getextendedblocksforpatient.md)
* [RegisterTemporaryExtendedRevoke — Request](StructureDefinition-registertemporaryextendedrevoke-request.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "authorization-blocking-temporaryrevokereason-vs",
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/ValueSet/authorization-blocking-temporaryrevokereason-vs",
  "version" : "4.0.4",
  "name" : "TemporaryRevokeReasonVS",
  "title" : "TemporaryRevokeReason",
  "status" : "active",
  "date" : "2026-10-08T18:28:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Alla koder i TemporaryRevokeReasonCS.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/authorization-blocking-temporaryrevokereason-cs"
    }]
  }
}

```
