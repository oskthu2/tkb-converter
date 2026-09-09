# CheckConsent — Request - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckConsent — Request**

## Logical Model: CheckConsent — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/checkconsent-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:CheckConsentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i CheckConsent. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-checkconsent-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkconsent-request.csv), [Excel](StructureDefinition-checkconsent-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkconsent-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/checkconsent-request",
  "version" : "1.0.1",
  "name" : "CheckConsentRequest",
  "title" : "CheckConsent — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i CheckConsent.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/checkconsent-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkconsent-request",
      "path" : "checkconsent-request",
      "short" : "CheckConsent — Request",
      "definition" : "Logisk modell för requestparametrar i CheckConsent."
    },
    {
      "id" : "checkconsent-request.accessingActor",
      "path" : "checkconsent-request.accessingActor",
      "short" : "Den aktör/person som önskar åtkomst till informationen (AccessingActorType)",
      "definition" : "Den aktör/person som önskar åtkomst till informationen (AccessingActorType)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkconsent-request.accessingActor.employeeId",
      "path" : "checkconsent-request.accessingActor.employeeId",
      "short" : "HSA-id för medarbetaren (max 32 tecken)",
      "definition" : "HSA-id för medarbetaren (max 32 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "checkconsent-request.accessingActor.careProviderId",
      "path" : "checkconsent-request.accessingActor.careProviderId",
      "short" : "HSA-id för vårdgivaren som medarbetaren tillhör (max 32 tecken)",
      "definition" : "HSA-id för vårdgivaren som medarbetaren tillhör (max 32 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "checkconsent-request.accessingActor.careUnitId",
      "path" : "checkconsent-request.accessingActor.careUnitId",
      "short" : "HSA-id för vårdenheten som medarbetaren tillhör (max 32 tecken)",
      "definition" : "HSA-id för vårdenheten som medarbetaren tillhör (max 32 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "checkconsent-request.patientId",
      "path" : "checkconsent-request.patientId",
      "short" : "Patientens personnummer alternativt samordningsnummer vars information aktören önskar åtkomst till",
      "definition" : "PersonIdValue — personnummer, samordningsnummer eller reservnummer. Max 12 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
