# Yrkeskod - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Yrkeskod**

## ValueSet: Yrkeskod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-yrkeskod-vs | *Version*:1.1.0 |
| Active as of 2026-09-26 | *Computable Name*:YrkesKodVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Alla koder i YrkesKodCS. 

 **References** 

* [AvbestallOrginalforpackning — Request](StructureDefinition-avbestallorginalforpackning-request.md)
* [BestallOrginalforpackning — Request](StructureDefinition-bestallorginalforpackning-request.md)
* [HamtaMeddelanden — Response](StructureDefinition-hamtameddelanden.md)
* [HamtaMeddelanden — Request](StructureDefinition-hamtameddelanden-request.md)
* [HamtaOrginalforpackning — Request](StructureDefinition-hamtaorginalforpackning-request.md)
* [HamtaVardtagareinformation — Request](StructureDefinition-hamtavardtagareinformation-request.md)
* [SkapaVardtagare — Request](StructureDefinition-skapavardtagare-request.md)
* [SkickaMeddelanden — Request](StructureDefinition-skickameddelanden-request.md)
* [UppdateraMeddelandeStatus — Request](StructureDefinition-uppdaterameddelandestatus-request.md)
* [UppdateraVardtagareinformation — Request](StructureDefinition-uppdateravardtagareinformation-request.md)

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
  "id" : "dosedispensing-yrkeskod-vs",
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-yrkeskod-vs",
  "version" : "1.1.0",
  "name" : "YrkesKodVS",
  "title" : "Yrkeskod",
  "status" : "active",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Alla koder i YrkesKodCS.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/dosedispensing-yrkeskod-cs"
    }]
  }
}

```
