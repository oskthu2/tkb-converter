# ProcessCondition - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCondition**

## Logical Model: ProcessCondition 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcondition | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:ProcessCondition |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet ProcessCondition (RIV-TA processdevelopment:infections). Representerar responsens informationsstruktur — bekräftar registrering av ett bedömt hälsorelaterat tillstånd. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-processcondition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processcondition.csv), [Excel](StructureDefinition-processcondition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processcondition",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcondition",
  "version" : "1.0.2",
  "name" : "ProcessCondition",
  "title" : "ProcessCondition",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet ProcessCondition\n(RIV-TA processdevelopment:infections). Representerar responsens\ninformationsstruktur — bekräftar registrering av ett bedömt\nhälsorelaterat tillstånd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcondition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processcondition",
      "path" : "processcondition",
      "short" : "ProcessCondition",
      "definition" : "Logisk modell för tjänstekontraktet ProcessCondition\n(RIV-TA processdevelopment:infections). Representerar responsens\ninformationsstruktur — bekräftar registrering av ett bedömt\nhälsorelaterat tillstånd."
    },
    {
      "id" : "processcondition.resultCode",
      "path" : "processcondition.resultCode",
      "short" : "Resultatkod",
      "definition" : "Resultatkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/processdevelopment-infections/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "processcondition.comment",
      "path" : "processcondition.comment",
      "short" : "Kommentar",
      "definition" : "Beskrivning av fel som uppstått alternativt information om genomförd\nregistrering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
