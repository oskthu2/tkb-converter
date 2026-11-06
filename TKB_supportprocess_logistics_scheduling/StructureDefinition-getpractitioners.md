# GetPractitioners — Response - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPractitioners — Response**

## Logical Model: GetPractitioners — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getpractitioners | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetPractitioners |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetPractitioners (urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getpractitioners.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpractitioners.csv), [Excel](StructureDefinition-getpractitioners.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpractitioners",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getpractitioners",
  "version" : "2.0",
  "name" : "GetPractitioners",
  "title" : "GetPractitioners — Response",
  "status" : "draft",
  "date" : "2026-11-06T21:54:21+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetPractitioners\n(urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getpractitioners",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpractitioners",
      "path" : "getpractitioners",
      "short" : "GetPractitioners — Response",
      "definition" : "Logisk modell för svaret i GetPractitioners\n(urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersResponseType)."
    },
    {
      "id" : "getpractitioners.practitioner",
      "path" : "getpractitioners.practitioner",
      "short" : "practitioner",
      "definition" : "Information om bokningsbar vårdpersonal.",
      "comment" : "TKB-fält: `practitioner` (`PractitionerType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpractitioners.practitioner.HSAId",
      "path" : "getpractitioners.practitioner.HSAId",
      "short" : "HSAId",
      "definition" : "Bokningsbar vårdpersonals HsaId",
      "comment" : "TKB-fält: `practitioner.HSAId` (`HSAIdType`).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpractitioners.practitioner.HSAId.root",
      "path" : "getpractitioners.practitioner.HSAId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpractitioners.practitioner.HSAId.hSAIdExtension",
      "path" : "getpractitioners.practitioner.HSAId.hSAIdExtension",
      "short" : "hSAIdExtension",
      "definition" : "hSAIdExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../extension` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** hSAIdExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpractitioners.practitioner.firstName",
      "path" : "getpractitioners.practitioner.firstName",
      "short" : "firstName",
      "definition" : "Vårdpersonals förnamn.",
      "comment" : "TKB-fält: `practitioner.firstName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpractitioners.practitioner.lastName",
      "path" : "getpractitioners.practitioner.lastName",
      "short" : "lastName",
      "definition" : "Vårdpersonals efternamn.",
      "comment" : "TKB-fält: `practitioner.lastName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpractitioners.practitioner.title",
      "path" : "getpractitioners.practitioner.title",
      "short" : "title",
      "definition" : "Vårdpersonals titel.",
      "comment" : "TKB-fält: `practitioner.title` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpractitioners.resultCode",
      "path" : "getpractitioners.resultCode",
      "short" : "resultCode",
      "definition" : "Kan endast vara OK, INFO eller ERROR.",
      "comment" : "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/ValueSet/scheduling-resultcode-vs"
      }
    },
    {
      "id" : "getpractitioners.resultText",
      "path" : "getpractitioners.resultText",
      "short" : "resultText",
      "definition" : "Kan utelämnas om resultCode = OK.\n\nProducent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR",
      "comment" : "TKB-fält: `resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
