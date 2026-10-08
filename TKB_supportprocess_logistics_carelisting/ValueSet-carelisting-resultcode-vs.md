# ResultCode - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ResultCode**

## ValueSet: ResultCode 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-resultcode-vs | *Version*:2.1.0 |
| Active as of 2026-10-08 | *Computable Name*:ResultCodeVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Alla koder i ResultCodeCS. 

 **References** 

* [CreateListing — Response](StructureDefinition-createlisting.md)
* [GetAvailableHealthcareFacilities — Response](StructureDefinition-getavailablehealthcarefacilities.md)
* [GetAvailableHealthcarePersonnel — Response](StructureDefinition-getavailablehealthcarepersonnel.md)
* [GetListing — Response](StructureDefinition-getlisting.md)
* [GetListingCounty — Response](StructureDefinition-getlistingcounty.md)
* [GetListingTypes — Response](StructureDefinition-getlistingtypes.md)
* [UpdateListing — Response](StructureDefinition-updatelisting.md)

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
  "id" : "carelisting-resultcode-vs",
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-resultcode-vs",
  "version" : "2.1.0",
  "name" : "ResultCodeVS",
  "title" : "ResultCode",
  "status" : "active",
  "date" : "2026-10-08T18:55:13+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Alla koder i ResultCodeCS.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/carelisting-resultcode-cs"
    }]
  }
}

```
