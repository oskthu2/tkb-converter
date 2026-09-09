# DeleteCareEncounter — Request - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteCareEncounter — Request**

## Logical Model: DeleteCareEncounter — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletecareencounter-request | *Version*:1.0.2 |
| Draft as of 2026-09-09 | *Computable Name*:DeleteCareEncounterRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet DeleteCareEncounter (RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1). Raderar information som tidigare registrerats via ProcessCareEncounter. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-deletecareencounter-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deletecareencounter-request.csv), [Excel](StructureDefinition-deletecareencounter-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deletecareencounter-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletecareencounter-request",
  "version" : "1.0.2",
  "name" : "DeleteCareEncounterRequest",
  "title" : "DeleteCareEncounter — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:56:39+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteCareEncounter\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1).\nRaderar information som tidigare registrerats via ProcessCareEncounter.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deletecareencounter-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deletecareencounter-request",
      "path" : "deletecareencounter-request",
      "short" : "DeleteCareEncounter — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteCareEncounter\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeleteCareEncounter:1).\nRaderar information som tidigare registrerats via ProcessCareEncounter."
    },
    {
      "id" : "deletecareencounter-request.careEncounterId",
      "path" : "deletecareencounter-request.careEncounterId",
      "short" : "careEncounterId för den vårdkontakt som ska raderas",
      "definition" : "Root: Nationell OID för lokala id:n: 1.2.752.129.2.1.2.1\nExtension: HSA-id för det system inom vilket careEncounterId är unikt + \":\" + ID.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
