# ListSickLeavesForCare — Request - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListSickLeavesForCare — Request**

## Logical Model: ListSickLeavesForCare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listsickleavesforcare-request | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:ListSickLeavesForCareRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ListSickLeavesForCare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-listsickleavesforcare-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listsickleavesforcare-request.csv), [Excel](StructureDefinition-listsickleavesforcare-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listsickleavesforcare-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listsickleavesforcare-request",
  "version" : "4.1-RC1",
  "name" : "ListSickLeavesForCareRequest",
  "title" : "ListSickLeavesForCare — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ListSickLeavesForCare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listsickleavesforcare-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listsickleavesforcare-request",
      "path" : "listsickleavesforcare-request",
      "short" : "ListSickLeavesForCare — Request",
      "definition" : "Logisk modell för requestparametrar i ListSickLeavesForCare."
    },
    {
      "id" : "listsickleavesforcare-request.enhetsId",
      "path" : "listsickleavesforcare-request.enhetsId",
      "short" : "HSA-id för enhet",
      "definition" : "HSA-id för enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listsickleavesforcare-request.maxDagarMellanIntyg",
      "path" : "listsickleavesforcare-request.maxDagarMellanIntyg",
      "short" : "Max antal dagars uppehåll mellan intyg i ett sjukfall",
      "definition" : "Max antal dagars uppehåll mellan intyg i ett sjukfall",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listsickleavesforcare-request.minstaSjukskrivningslangd",
      "path" : "listsickleavesforcare-request.minstaSjukskrivningslangd",
      "short" : "Minimal sjukskrivningslängd i dagar",
      "definition" : "Minimal sjukskrivningslängd i dagar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listsickleavesforcare-request.maxSjukskrivningslangd",
      "path" : "listsickleavesforcare-request.maxSjukskrivningslangd",
      "short" : "Maximal sjukskrivningslängd i dagar",
      "definition" : "Maximal sjukskrivningslängd i dagar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listsickleavesforcare-request.personalId",
      "path" : "listsickleavesforcare-request.personalId",
      "short" : "HSA-id för HoS-person som signerat nuvarande intyg (filter)",
      "definition" : "HSA-id för HoS-person som signerat nuvarande intyg (filter)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
