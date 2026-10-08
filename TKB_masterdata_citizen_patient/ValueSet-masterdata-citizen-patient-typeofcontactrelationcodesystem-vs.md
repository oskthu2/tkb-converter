# Kodverk för typ av kontaktrelation - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kodverk för typ av kontaktrelation**

## ValueSet: Kodverk för typ av kontaktrelation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeofcontactrelationcodesystem-vs | *Version*:1.0.0-rc1.snapshot |
| Active as of 2026-10-08 | *Computable Name*:TypeOfContactRelationCodeSystemVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Alla koder i TypeOfContactRelationCodeSystemCS. 

 **References** 

* [GetPatientContactInformation — Response](StructureDefinition-getpatientcontactinformation.md)
* [UpdatePatientContactInformation — Request](StructureDefinition-updatepatientcontactinformation-request.md)

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
  "id" : "masterdata-citizen-patient-typeofcontactrelationcodesystem-vs",
  "url" : "https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeofcontactrelationcodesystem-vs",
  "version" : "1.0.0-rc1.snapshot",
  "name" : "TypeOfContactRelationCodeSystemVS",
  "title" : "Kodverk för typ av kontaktrelation",
  "status" : "active",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Alla koder i TypeOfContactRelationCodeSystemCS.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeofcontactrelationcodesystem-cs"
    }]
  }
}

```
