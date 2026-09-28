# ActorType - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActorType**

## ValueSet: ActorType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-actortype-vs | *Version*:2.1.0 |
| Active as of 2026-09-28 | *Computable Name*:ActorTypeVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Alla koder i ActorTypeCS. 

 **References** 

* [CreateListing — Request](StructureDefinition-createlisting-request.md)
* [GetListing — Request](StructureDefinition-getlisting-request.md)
* [GetListingCounty — Request](StructureDefinition-getlistingcounty-request.md)

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
  "id" : "carelisting-actortype-vs",
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-actortype-vs",
  "version" : "2.1.0",
  "name" : "ActorTypeVS",
  "title" : "ActorType",
  "status" : "active",
  "date" : "2026-09-28T09:25:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Alla koder i ActorTypeCS.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/carelisting-actortype-cs"
    }]
  }
}

```
