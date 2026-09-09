# Gender (eOffering) — ValueSet - eservicesupply: eoffering v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gender (eOffering) — ValueSet**

## ValueSet: Gender (eOffering) — ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/eservicesupply-eoffering/ValueSet/gender-eoffering-vs | *Version*:1.0.0 |
| Active as of 2026-09-09 | *Computable Name*:GenderEofferingVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tillåtna värden för kön (gender) i GetAvailableEServices. 1 = Man, 2 = Kvinna. 

 **References** 

* [GetAvailableEServices](StructureDefinition-getavailableeservices.md)

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
  "id" : "gender-eoffering-vs",
  "url" : "https://fhir.inera.se/ig/eservicesupply-eoffering/ValueSet/gender-eoffering-vs",
  "version" : "1.0.0",
  "name" : "GenderEofferingVS",
  "title" : "Gender (eOffering) — ValueSet",
  "status" : "active",
  "date" : "2026-09-09T16:56:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för kön (gender) i GetAvailableEServices. 1 = Man, 2 = Kvinna.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/gender-eoffering-cs"
    }]
  }
}

```
