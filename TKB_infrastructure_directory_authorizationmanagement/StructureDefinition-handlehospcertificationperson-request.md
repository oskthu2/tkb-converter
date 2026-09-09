# HandleHospCertificationPerson — Request - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HandleHospCertificationPerson — Request**

## Logical Model: HandleHospCertificationPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/handlehospcertificationperson-request | *Version*:2.4.4 |
| Draft as of 2026-09-09 | *Computable Name*:HandleHospCertificationPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i HandleHospCertificationPerson. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-handlehospcertificationperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-handlehospcertificationperson-request.csv), [Excel](StructureDefinition-handlehospcertificationperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "handlehospcertificationperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/handlehospcertificationperson-request",
  "version" : "2.4.4",
  "name" : "HandleHospCertificationPersonRequest",
  "title" : "HandleHospCertificationPerson — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:58:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i HandleHospCertificationPerson.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/handlehospcertificationperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "handlehospcertificationperson-request",
      "path" : "handlehospcertificationperson-request",
      "short" : "HandleHospCertificationPerson — Request",
      "definition" : "Logisk modell för requestparametrar i HandleHospCertificationPerson."
    },
    {
      "id" : "handlehospcertificationperson-request.personalIdentityNumber",
      "path" : "handlehospcertificationperson-request.personalIdentityNumber",
      "short" : "Person-id för personen vars HOSP-uppgifter ska begäras utlämnade",
      "definition" : "Ref. person-id (personalIdentityNumber) [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "handlehospcertificationperson-request.operation",
      "path" : "handlehospcertificationperson-request.operation",
      "short" : "Operation: add eller remove",
      "definition" : "'add' för att lägga till personen, 'remove' för att ta bort personen från utlämningsförfrågningar.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/ValueSet/hosp-operation-vs"
      }
    },
    {
      "id" : "handlehospcertificationperson-request.certificationId",
      "path" : "handlehospcertificationperson-request.certificationId",
      "short" : "Alternativ id för personposten (frivillig)",
      "definition" : "Alternativ id för personposten (frivillig)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "handlehospcertificationperson-request.reason",
      "path" : "handlehospcertificationperson-request.reason",
      "short" : "Anledning till avregistrering (frivillig, loggas ej)",
      "definition" : "Anledning till avregistrering (frivillig, loggas ej)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
