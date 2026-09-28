# Typ av telekommunikation (patient) - masterdata: citizen: patient v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av telekommunikation (patient)**

## ValueSet: Typ av telekommunikation (patient) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeoftelecompatient-vs | *Version*:1.0.0 |
| Active as of 2026-09-28 | *Computable Name*:TypeOfTelecomPatientVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Alla koder i TypeOfTelecomPatientCS. 

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
  "id" : "masterdata-citizen-patient-typeoftelecompatient-vs",
  "url" : "https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeoftelecompatient-vs",
  "version" : "1.0.0",
  "name" : "TypeOfTelecomPatientVS",
  "title" : "Typ av telekommunikation (patient)",
  "status" : "active",
  "date" : "2026-09-28T09:13:45+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Alla koder i TypeOfTelecomPatientCS.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/masterdata-citizen-patient-typeoftelecompatient-cs"
    }]
  }
}

```
