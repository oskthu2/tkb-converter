# PersonQueueStatus — ValueSet - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PersonQueueStatus — ValueSet**

## ValueSet: PersonQueueStatus — ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/ValueSet/personqueuestatus-vs | *Version*:1.0.0 |
| Active as of 2026-09-09 | *Computable Name*:PersonQueueStatusVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tillåtna värden för köstatus (queueStatus) i tjänstekontraktet GetPersonQueueStatus. Definierade som xs:enumeration i crm_carelisting_1_0.xsd. 

 **References** 

* [GetPersonQueueStatus](StructureDefinition-getpersonqueuestatus.md)

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
  "id" : "personqueuestatus-vs",
  "url" : "https://fhir.inera.se/ig/crm-carelisting/ValueSet/personqueuestatus-vs",
  "version" : "1.0.0",
  "name" : "PersonQueueStatusVS",
  "title" : "PersonQueueStatus — ValueSet",
  "status" : "active",
  "date" : "2026-09-09T16:48:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för köstatus (queueStatus) i tjänstekontraktet GetPersonQueueStatus.\nDefinierade som xs:enumeration i crm_carelisting_1_0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/personqueuestatus-cs"
    }]
  }
}

```
