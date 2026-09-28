# DateTypeFormat - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DateTypeFormat**

## ValueSet: DateTypeFormat 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs | *Version*:5.1.0 |
| Active as of 2026-09-28 | *Computable Name*:DateTypeFormatVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Alla koder i DateTypeFormatCS. 

 **References** 

* [GetPersonsForProfile — Response](StructureDefinition-getpersonsforprofile.md)
* [GetPersonsForProfileUnrestricted — Response](StructureDefinition-getpersonsforprofileunrestricted.md)
* [SearchPersonsForProfile — Response](StructureDefinition-searchpersonsforprofile.md)
* [SearchPersonsForProfileUnrestricted — Response](StructureDefinition-searchpersonsforprofileunrestricted.md)
* [UpdatePerson — Response](StructureDefinition-updateperson.md)
* [UpdatePerson — Request](StructureDefinition-updateperson-request.md)

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
  "id" : "SPP-datetypeformat-vs",
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs",
  "version" : "5.1.0",
  "name" : "DateTypeFormatVS",
  "title" : "DateTypeFormat",
  "status" : "active",
  "date" : "2026-09-28T09:23:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Alla koder i DateTypeFormatCS.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/SPP-datetypeformat-cs"
    }]
  }
}

```
