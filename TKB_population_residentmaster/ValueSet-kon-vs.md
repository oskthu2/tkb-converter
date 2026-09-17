# Kön — ValueSet - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kön — ValueSet**

## ValueSet: Kön — ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/population-residentmaster/ValueSet/kon-vs | *Version*:1.2 |
| Active as of 2026-09-17 | *Computable Name*:KonVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tillåtna värden för fältet Kon enligt KonTYPE. 

 **References** 

* [LookupResidentForFullProfile](StructureDefinition-lookupresidentforfullprofile.md)

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
  "id" : "kon-vs",
  "url" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/kon-vs",
  "version" : "1.2",
  "name" : "KonVS",
  "title" : "Kön — ValueSet",
  "status" : "active",
  "date" : "2026-09-17T11:18:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för fältet Kon enligt KonTYPE.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/kon-cs"
    }]
  }
}

```
