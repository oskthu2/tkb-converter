# GetAllPerformers - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllPerformers**

## Logical Model: GetAllPerformers 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallperformers | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetAllPerformers |
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
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
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
      "short" : "Lista med medarbetare",
      "definition" : "Lista med medarbetare (PerformerInfoType).\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallperformers.performerInfos.performer",
      "path" : "getallperformers.performerInfos.performer",
      "short" : "HSA-id för bokningsbar medarbetare",
      "definition" : "HSA-id för bokningsbar medarbetare.\nOBS: I schemat stavas fältet 'perfomer' (felstavning, issue id 19). FSH-modellen använder korrekt stavning.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getallperformers.performerInfos.firstName",
      "path" : "getallperformers.performerInfos.firstName",
      "short" : "Medarbetarens förnamn",
      "definition" : "Medarbetarens förnamn.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallperformers.performerInfos.lastName",
      "path" : "getallperformers.performerInfos.lastName",
      "short" : "Medarbetarens efternamn",
      "definition" : "Medarbetarens efternamn.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallperformers.performerInfos.title",
      "path" : "getallperformers.performerInfos.title",
      "short" : "Medarbetarens titel",
      "definition" : "Medarbetarens titel.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
