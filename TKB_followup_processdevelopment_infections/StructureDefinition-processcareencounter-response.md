# ProcessCareEncounter — Response - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCareEncounter — Response**

## Logical Model: ProcessCareEncounter — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processcareencounter-response | *Version*:1.0.2 |
| Draft as of 2026-09-09 | *Computable Name*:ProcessCareEncounterResponse |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsen från tjänstekontraktet ProcessCareEncounter (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-processcareencounter-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processcareencounter-response.csv), [Excel](StructureDefinition-processcareencounter-response.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processcareencounter-response",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processcareencounter-response",
  "version" : "1.0.2",
  "name" : "ProcessCareEncounterResponse",
  "title" : "ProcessCareEncounter — Response",
  "status" : "draft",
  "date" : "2026-09-09T16:56:39+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsen från tjänstekontraktet ProcessCareEncounter\n(RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processcareencounter-response",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processcareencounter-response",
      "path" : "processcareencounter-response",
      "short" : "ProcessCareEncounter — Response",
      "definition" : "Logisk modell för responsen från tjänstekontraktet ProcessCareEncounter\n(RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1)."
    },
    {
      "id" : "processcareencounter-response.resultCode",
      "path" : "processcareencounter-response.resultCode",
      "short" : "Resultatkod: OK, ERROR eller INFO",
      "definition" : "OK = operationen genomförd utan fel\nERROR = Fel vid operationen\nINFO = Information finns om operationen\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-response.comment",
      "path" : "processcareencounter-response.comment",
      "short" : "Beskrivning av fel eller information om genomförd operation",
      "definition" : "Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
