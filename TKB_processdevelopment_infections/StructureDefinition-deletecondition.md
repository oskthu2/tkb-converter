# DeleteCondition - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteCondition**

## Logical Model: DeleteCondition 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deletecondition | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:DeleteCondition |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DeleteCondition (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessCondition. Representerar responsens informationsstruktur. 
Request innehåller endast två filterfält (logicalAddress, conditionId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-deletecondition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deletecondition.csv), [Excel](StructureDefinition-deletecondition.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deletecondition",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deletecondition",
  "version" : "1.0.2",
  "name" : "DeleteCondition",
  "title" : "DeleteCondition",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DeleteCondition\n(RIV-TA processdevelopment:infections). Raderar information som tidigare\nregistrerats via ProcessCondition. Representerar responsens\ninformationsstruktur.\n\nRequest innehåller endast två filterfält (logicalAddress, conditionId)\noch dokumenteras i sin helhet i avsnitt 7 istället för som en separat\nlogisk modell.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deletecondition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deletecondition",
      "path" : "deletecondition",
      "short" : "DeleteCondition",
      "definition" : "Logisk modell för tjänstekontraktet DeleteCondition\n(RIV-TA processdevelopment:infections). Raderar information som tidigare\nregistrerats via ProcessCondition. Representerar responsens\ninformationsstruktur.\n\nRequest innehåller endast två filterfält (logicalAddress, conditionId)\noch dokumenteras i sin helhet i avsnitt 7 istället för som en separat\nlogisk modell."
    },
    {
      "id" : "deletecondition.resultCode",
      "path" : "deletecondition.resultCode",
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
      "id" : "deletecondition.comment",
      "path" : "deletecondition.comment",
      "short" : "Kommentar",
      "definition" : "Beskrivning av fel som uppstått alternativt information om genomförd\nradering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
