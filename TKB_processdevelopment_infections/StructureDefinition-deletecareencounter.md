# DeleteCareEncounter - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteCareEncounter**

## Logical Model: DeleteCareEncounter 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deletecareencounter | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:DeleteCareEncounter |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DeleteCareEncounter (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessCareEncounter. Representerar responsens informationsstruktur. 
Request innehåller endast två filterfält (logicalAddress, careEncounterId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-deletecareencounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deletecareencounter.csv), [Excel](StructureDefinition-deletecareencounter.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deletecareencounter",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deletecareencounter",
  "version" : "1.0.2",
  "name" : "DeleteCareEncounter",
  "title" : "DeleteCareEncounter",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DeleteCareEncounter\n(RIV-TA processdevelopment:infections). Raderar information som tidigare\nregistrerats via ProcessCareEncounter. Representerar responsens\ninformationsstruktur.\n\nRequest innehåller endast två filterfält (logicalAddress, careEncounterId)\noch dokumenteras i sin helhet i avsnitt 7 istället för som en separat\nlogisk modell.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deletecareencounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deletecareencounter",
      "path" : "deletecareencounter",
      "short" : "DeleteCareEncounter",
      "definition" : "Logisk modell för tjänstekontraktet DeleteCareEncounter\n(RIV-TA processdevelopment:infections). Raderar information som tidigare\nregistrerats via ProcessCareEncounter. Representerar responsens\ninformationsstruktur.\n\nRequest innehåller endast två filterfält (logicalAddress, careEncounterId)\noch dokumenteras i sin helhet i avsnitt 7 istället för som en separat\nlogisk modell."
    },
    {
      "id" : "deletecareencounter.resultCode",
      "path" : "deletecareencounter.resultCode",
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
      "id" : "deletecareencounter.comment",
      "path" : "deletecareencounter.comment",
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
