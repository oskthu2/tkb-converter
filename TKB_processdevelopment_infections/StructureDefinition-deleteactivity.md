# DeleteActivity - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteActivity**

## Logical Model: DeleteActivity 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteactivity | *Version*:1.0.2 |
| Draft as of 2026-09-26 | *Computable Name*:DeleteActivity |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DeleteActivity (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessActivity. Representerar responsens informationsstruktur. 
Request innehåller endast två filterfält (logicalAddress, activityId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-deleteactivity.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteactivity.csv), [Excel](StructureDefinition-deleteactivity.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteactivity",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteactivity",
  "version" : "1.0.2",
  "name" : "DeleteActivity",
  "title" : "DeleteActivity",
  "status" : "draft",
  "date" : "2026-09-26T19:40:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DeleteActivity\n(RIV-TA processdevelopment:infections). Raderar information som tidigare\nregistrerats via ProcessActivity. Representerar responsens\ninformationsstruktur.\n\nRequest innehåller endast två filterfält (logicalAddress, activityId) och\ndokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk\nmodell.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteactivity",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteactivity",
      "path" : "deleteactivity",
      "short" : "DeleteActivity",
      "definition" : "Logisk modell för tjänstekontraktet DeleteActivity\n(RIV-TA processdevelopment:infections). Raderar information som tidigare\nregistrerats via ProcessActivity. Representerar responsens\ninformationsstruktur.\n\nRequest innehåller endast två filterfält (logicalAddress, activityId) och\ndokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk\nmodell."
    },
    {
      "id" : "deleteactivity.resultCode",
      "path" : "deleteactivity.resultCode",
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
      "id" : "deleteactivity.comment",
      "path" : "deleteactivity.comment",
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
