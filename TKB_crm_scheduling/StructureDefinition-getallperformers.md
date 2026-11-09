# GetAllPerformers - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllPerformers**

## Logical Model: GetAllPerformers 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallperformers | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:GetAllPerformers |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAllPerformers (RIV-TA urn:riv:crm:scheduling:GetAllPerformers:1). Representerar responsens informationsstruktur. Tjänst för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getallperformers.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallperformers.csv), [Excel](StructureDefinition-getallperformers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallperformers",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallperformers",
  "version" : "1.1",
  "name" : "GetAllPerformers",
  "title" : "GetAllPerformers",
  "status" : "active",
  "date" : "2026-11-09T03:26:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAllPerformers\n(RIV-TA urn:riv:crm:scheduling:GetAllPerformers:1).\nRepresenterar responsens informationsstruktur.\nTjänst för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallperformers",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallperformers",
      "path" : "getallperformers",
      "short" : "GetAllPerformers",
      "definition" : "Logisk modell för tjänstekontraktet GetAllPerformers\n(RIV-TA urn:riv:crm:scheduling:GetAllPerformers:1).\nRepresenterar responsens informationsstruktur.\nTjänst för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet."
    },
    {
      "id" : "getallperformers.performerInfos",
      "path" : "getallperformers.performerInfos",
      "short" : "PerformerInfoType",
      "definition" : "performerInfos",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallperformers.performerInfos.perfomer",
      "path" : "getallperformers.performerInfos.perfomer",
      "short" : "perfomer",
      "definition" : "perfomer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallperformers.performerInfos.firstName",
      "path" : "getallperformers.performerInfos.firstName",
      "short" : "firstName",
      "definition" : "firstName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallperformers.performerInfos.lastName",
      "path" : "getallperformers.performerInfos.lastName",
      "short" : "lastName",
      "definition" : "lastName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallperformers.performerInfos.title",
      "path" : "getallperformers.performerInfos.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
