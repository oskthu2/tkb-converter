# StoreLog — Response - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StoreLog — Response**

## Logical Model: StoreLog — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/storelog | *Version*:2.0.8 |
| Draft as of 2026-09-28 | *Computable Name*:StoreLog |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i StoreLog (urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-storelog.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-storelog.csv), [Excel](StructureDefinition-storelog.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "storelog",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/storelog",
  "version" : "2.0.8",
  "name" : "StoreLog",
  "title" : "StoreLog — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:01:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i StoreLog\n(urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/storelog",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "storelog",
      "path" : "storelog",
      "short" : "StoreLog — Response",
      "definition" : "Logisk modell för svaret i StoreLog\n(urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogResponseType)."
    },
    {
      "id" : "storelog.result",
      "path" : "storelog.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog.result.resultCode",
      "path" : "storelog.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/ValueSet/auditing-log-resultcode-vs"
      }
    },
    {
      "id" : "storelog.result.resultText",
      "path" : "storelog.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
