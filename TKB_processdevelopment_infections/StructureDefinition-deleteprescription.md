# DeletePrescription - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeletePrescription**

## Logical Model: DeletePrescription 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteprescription | *Version*:1.0.2 |
| Draft as of 2026-09-26 | *Computable Name*:DeletePrescription |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DeletePrescription (RIV-TA processdevelopment:infections). Raderar information om en ordination som tidigare registrerats via ProcessPrescriptionReason (ordinationsorsaken för ordinationen tas inte bort). Representerar responsens informationsstruktur. 
Request innehåller endast två filterfält (logicalAddress, prescriptionId) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-deleteprescription.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteprescription.csv), [Excel](StructureDefinition-deleteprescription.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteprescription",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteprescription",
  "version" : "1.0.2",
  "name" : "DeletePrescription",
  "title" : "DeletePrescription",
  "status" : "draft",
  "date" : "2026-09-26T19:40:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DeletePrescription\n(RIV-TA processdevelopment:infections). Raderar information om en\nordination som tidigare registrerats via ProcessPrescriptionReason\n(ordinationsorsaken för ordinationen tas inte bort). Representerar\nresponsens informationsstruktur.\n\nRequest innehåller endast två filterfält (logicalAddress, prescriptionId)\noch dokumenteras i sin helhet i avsnitt 7 istället för som en separat\nlogisk modell.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteprescription",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteprescription",
      "path" : "deleteprescription",
      "short" : "DeletePrescription",
      "definition" : "Logisk modell för tjänstekontraktet DeletePrescription\n(RIV-TA processdevelopment:infections). Raderar information om en\nordination som tidigare registrerats via ProcessPrescriptionReason\n(ordinationsorsaken för ordinationen tas inte bort). Representerar\nresponsens informationsstruktur.\n\nRequest innehåller endast två filterfält (logicalAddress, prescriptionId)\noch dokumenteras i sin helhet i avsnitt 7 istället för som en separat\nlogisk modell."
    },
    {
      "id" : "deleteprescription.resultCode",
      "path" : "deleteprescription.resultCode",
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
      "id" : "deleteprescription.comment",
      "path" : "deleteprescription.comment",
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
