# Aktivitetskod — ValueSet - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aktivitetskod — ValueSet**

## ValueSet: Aktivitetskod — ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/ValueSet/aktivitetskod-vs | *Version*:3.1.0 |
| Active as of 2026-09-09 | *Computable Name*:AktivitetskodVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tillåtna värden för aktivitetskod i RegisterMedicalCertificate. 

 **References** 

* [RegisterMedicalCertificate — Request](StructureDefinition-registermedicalcertificate-request.md)

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
  "id" : "aktivitetskod-vs",
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/ValueSet/aktivitetskod-vs",
  "version" : "3.1.0",
  "name" : "AktivitetskodVS",
  "title" : "Aktivitetskod — ValueSet",
  "status" : "active",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för aktivitetskod i RegisterMedicalCertificate.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/aktivitetskod-cs"
    }]
  }
}

```
