# DeletePrescriptionReason - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeletePrescriptionReason**

## Logical Model: DeletePrescriptionReason 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteprescriptionreason | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:DeletePrescriptionReason |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DeletePrescriptionReason (RIV-TA processdevelopment:infections). Raderar information som tidigare registrerats via ProcessPrescriptionReason. Representerar responsens informationsstruktur. 
Request innehåller endast tre filterfält (logicalAddress, activityId, conditionId — exakt ett av activityId/conditionId ska anges) och dokumenteras i sin helhet i avsnitt 7 istället för som en separat logisk modell. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-deleteprescriptionreason.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteprescriptionreason.csv), [Excel](StructureDefinition-deleteprescriptionreason.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteprescriptionreason",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteprescriptionreason",
  "version" : "1.0.2",
  "name" : "DeletePrescriptionReason",
  "title" : "DeletePrescriptionReason",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DeletePrescriptionReason\n(RIV-TA processdevelopment:infections). Raderar information som tidigare\nregistrerats via ProcessPrescriptionReason. Representerar responsens\ninformationsstruktur.\n\nRequest innehåller endast tre filterfält (logicalAddress, activityId,\nconditionId — exakt ett av activityId/conditionId ska anges) och\ndokumenteras i sin helhet i avsnitt 7 istället för som en separat\nlogisk modell.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/deleteprescriptionreason",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteprescriptionreason",
      "path" : "deleteprescriptionreason",
      "short" : "DeletePrescriptionReason",
      "definition" : "Logisk modell för tjänstekontraktet DeletePrescriptionReason\n(RIV-TA processdevelopment:infections). Raderar information som tidigare\nregistrerats via ProcessPrescriptionReason. Representerar responsens\ninformationsstruktur.\n\nRequest innehåller endast tre filterfält (logicalAddress, activityId,\nconditionId — exakt ett av activityId/conditionId ska anges) och\ndokumenteras i sin helhet i avsnitt 7 istället för som en separat\nlogisk modell."
    },
    {
      "id" : "deleteprescriptionreason.resultCode",
      "path" : "deleteprescriptionreason.resultCode",
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
      "id" : "deleteprescriptionreason.comment",
      "path" : "deleteprescriptionreason.comment",
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
