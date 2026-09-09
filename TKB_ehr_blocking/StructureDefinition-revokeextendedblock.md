# RevokeExtendedBlock - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeExtendedBlock**

## Logical Model: RevokeExtendedBlock 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/revokeextendedblock | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:RevokeExtendedBlock |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RevokeExtendedBlock (RIV-TA urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2). Häver en spärr permanent i lokal spärrtjänst. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-revokeextendedblock.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokeextendedblock.csv), [Excel](StructureDefinition-revokeextendedblock.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokeextendedblock",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/revokeextendedblock",
  "version" : "3.2.2",
  "name" : "RevokeExtendedBlock",
  "title" : "RevokeExtendedBlock",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RevokeExtendedBlock\n(RIV-TA urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2).\nHäver en spärr permanent i lokal spärrtjänst.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/revokeextendedblock",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokeextendedblock",
      "path" : "revokeextendedblock",
      "short" : "RevokeExtendedBlock",
      "definition" : "Logisk modell för tjänstekontraktet RevokeExtendedBlock\n(RIV-TA urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2).\nHäver en spärr permanent i lokal spärrtjänst.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "revokeextendedblock.result",
      "path" : "revokeextendedblock.result",
      "short" : "Resultat av hävningen",
      "definition" : "Resultat av hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokeextendedblock.result.resultCode",
      "path" : "revokeextendedblock.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "revokeextendedblock.result.resultText",
      "path" : "revokeextendedblock.result.resultText",
      "short" : "Beskrivande text till svarskoden",
      "definition" : "Beskrivande text till svarskoden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
