# GetHospCredentialsForPerson — Request - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHospCredentialsForPerson — Request**

## Logical Model: GetHospCredentialsForPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethospcredentialsforperson-request | *Version*:2.4.4 |
| Draft as of 2026-09-09 | *Computable Name*:GetHospCredentialsForPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetHospCredentialsForPerson. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-gethospcredentialsforperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethospcredentialsforperson-request.csv), [Excel](StructureDefinition-gethospcredentialsforperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethospcredentialsforperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethospcredentialsforperson-request",
  "version" : "2.4.4",
  "name" : "GetHospCredentialsForPersonRequest",
  "title" : "GetHospCredentialsForPerson — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:58:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetHospCredentialsForPerson.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethospcredentialsforperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethospcredentialsforperson-request",
      "path" : "gethospcredentialsforperson-request",
      "short" : "GetHospCredentialsForPerson — Request",
      "definition" : "Logisk modell för requestparametrar i GetHospCredentialsForPerson."
    },
    {
      "id" : "gethospcredentialsforperson-request.personalIdentityNumber",
      "path" : "gethospcredentialsforperson-request.personalIdentityNumber",
      "short" : "Person-id för personen vars HOSP-uppgifter söks ut",
      "definition" : "Ref. person-id (personalIdentityNumber) [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
