# DeleteCareEncounter — Response - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteCareEncounter — Response**

## Logical Model: DeleteCareEncounter — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletecareencounter-response | *Version*:1.0.2 |
| Draft as of 2026-09-09 | *Computable Name*:DeleteCareEncounterResponse |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsen från tjänstekontraktet DeleteCareEncounter (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-deletecareencounter-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deletecareencounter-response.csv), [Excel](StructureDefinition-deletecareencounter-response.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deletecareencounter-response",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletecareencounter-response",
  "version" : "1.0.2",
  "name" : "DeleteCareEncounterResponse",
  "title" : "DeleteCareEncounter — Response",
  "status" : "draft",
  "date" : "2026-09-09T16:56:39+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsen från tjänstekontraktet DeleteCareEncounter\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletecareencounter-response",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deletecareencounter-response",
      "path" : "deletecareencounter-response",
      "short" : "DeleteCareEncounter — Response",
      "definition" : "Logisk modell för responsen från tjänstekontraktet DeleteCareEncounter\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1)."
    },
    {
      "id" : "deletecareencounter-response.resultCode",
      "path" : "deletecareencounter-response.resultCode",
      "short" : "Resultatkod: OK, ERROR eller INFO",
      "definition" : "OK = operationen genomförd utan fel\nERROR = Fel vid operationen\nINFO = Information finns om operationen\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deletecareencounter-response.comment",
      "path" : "deletecareencounter-response.comment",
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
