# Legitimerat yrke — ValueSet - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Legitimerat yrke — ValueSet**

## ValueSet: Legitimerat yrke — ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/ValueSet/legitimerat-yrke-vs | *Version*:2.0.0 |
| Active as of 2026-09-09 | *Computable Name*:LegitimeratYrkeVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tillåtna värden för legitimerat yrke enligt kodverket LegitimeratYrke (OID: 1.2.752.116.3.1.3). 

 **References** 

* [GetHospPersonForIVO](StructureDefinition-gethosppersonforivo.md)
* [GetHospPersonForPublicHealthcare](StructureDefinition-gethosppersonforpublichealthcare.md)

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
  "id" : "legitimerat-yrke-vs",
  "url" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/ValueSet/legitimerat-yrke-vs",
  "version" : "2.0.0",
  "name" : "LegitimeratYrkeVS",
  "title" : "Legitimerat yrke — ValueSet",
  "status" : "active",
  "date" : "2026-09-09T17:04:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för legitimerat yrke enligt kodverket LegitimeratYrke (OID: 1.2.752.116.3.1.3).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/legitimerat-yrke-cs"
    }]
  }
}

```
