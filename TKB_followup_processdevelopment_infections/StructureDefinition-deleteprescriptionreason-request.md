# DeletePrescriptionReason — Request - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeletePrescriptionReason — Request**

## Logical Model: DeletePrescriptionReason — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deleteprescriptionreason-request | *Version*:1.0.2 |
| Draft as of 2026-09-09 | *Computable Name*:DeletePrescriptionReasonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet DeletePrescriptionReason (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1). Raderar information som tidigare registrerats via ProcessPrescriptionReason. Antingen activityId eller conditionId ska anges, men inte båda. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-deleteprescriptionreason-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteprescriptionreason-request.csv), [Excel](StructureDefinition-deleteprescriptionreason-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteprescriptionreason-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deleteprescriptionreason-request",
  "version" : "1.0.2",
  "name" : "DeletePrescriptionReasonRequest",
  "title" : "DeletePrescriptionReason — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:56:39+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet DeletePrescriptionReason\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1).\nRaderar information som tidigare registrerats via ProcessPrescriptionReason.\nAntingen activityId eller conditionId ska anges, men inte båda.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deleteprescriptionreason-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteprescriptionreason-request",
      "path" : "deleteprescriptionreason-request",
      "short" : "DeletePrescriptionReason — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet DeletePrescriptionReason\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescriptionReason:1).\nRaderar information som tidigare registrerats via ProcessPrescriptionReason.\nAntingen activityId eller conditionId ska anges, men inte båda."
    },
    {
      "id" : "deleteprescriptionreason-request.activityId",
      "path" : "deleteprescriptionreason-request.activityId",
      "short" : "Aktivitets-id för den aktivitet som ska raderas (profylax)",
      "definition" : "Anges när den ordinationsorsak som ska raderas är en aktivitet (profylax).\nNationell OID för lokala ID:n: 1.2.752.129.2.1.2.1\nKardinalitet: Villkorlig — antingen activityId eller conditionId ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteprescriptionreason-request.conditionId",
      "path" : "deleteprescriptionreason-request.conditionId",
      "short" : "Tillstånds-id för det tillstånd/diagnos som ska raderas (infektion)",
      "definition" : "Anges när den ordinationsorsak som ska raderas är ett tillstånd (infektion).\nNationell OID för lokala ID:n: 1.2.752.129.2.1.2.1\nKardinalitet: Villkorlig — antingen activityId eller conditionId ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
