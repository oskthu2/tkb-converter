# DeletePrescription — Request - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeletePrescription — Request**

## Logical Model: DeletePrescription — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deleteprescription-request | *Version*:1.0.2 |
| Draft as of 2026-09-09 | *Computable Name*:DeletePrescriptionRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet DeletePrescription (RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1). Raderar information om en ordination som tidigare registrerats via ProcessPrescriptionReason. Ordinationsorsaken för ordinationen tas inte bort. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-deleteprescription-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteprescription-request.csv), [Excel](StructureDefinition-deleteprescription-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteprescription-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deleteprescription-request",
  "version" : "1.0.2",
  "name" : "DeletePrescriptionRequest",
  "title" : "DeletePrescription — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:56:39+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet DeletePrescription\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1).\nRaderar information om en ordination som tidigare registrerats via ProcessPrescriptionReason.\nOrdinationsorsaken för ordinationen tas inte bort.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/deleteprescription-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteprescription-request",
      "path" : "deleteprescription-request",
      "short" : "DeletePrescription — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet DeletePrescription\n(RIV-TA urn:riv:followup:processdevelopment:infections:DeletePrescription:1).\nRaderar information om en ordination som tidigare registrerats via ProcessPrescriptionReason.\nOrdinationsorsaken för ordinationen tas inte bort."
    },
    {
      "id" : "deleteprescription-request.prescriptionId",
      "path" : "deleteprescription-request.prescriptionId",
      "short" : "Ordinations-id för den ordination som ska raderas",
      "definition" : "Nationell OID för lokala ID:n: 1.2.752.129.2.1.2.1\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
