# ActivityType — ValueSet - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ActivityType — ValueSet**

## ValueSet: ActivityType — ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/ValueSet/activitytype-vs | *Version*:1.2.3 |
| Active as of 2026-09-09 | *Computable Name*:ActivityTypeVS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Tillåtna värden för aktivitetstyp (log:ActivityTypeValue) i loggposter. 

 **References** 

* [GetLogsForCareProvider](StructureDefinition-getlogsforcareprovider.md)
* [GetLogsForPatient](StructureDefinition-getlogsforpatient.md)
* [GetLogsForUser](StructureDefinition-getlogsforuser.md)
* [StoreLog — Request](StructureDefinition-storelog-request.md)

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
  "id" : "activitytype-vs",
  "url" : "https://fhir.inera.se/ig/ehr-log/ValueSet/activitytype-vs",
  "version" : "1.2.3",
  "name" : "ActivityTypeVS",
  "title" : "ActivityType — ValueSet",
  "status" : "active",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för aktivitetstyp (log:ActivityTypeValue) i loggposter.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/activitytype-cs"
    }]
  }
}

```
