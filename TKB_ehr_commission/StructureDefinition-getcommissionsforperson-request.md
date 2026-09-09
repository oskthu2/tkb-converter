# GetCommissionsForPerson — Request - ehr: commission v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCommissionsForPerson — Request**

## Logical Model: GetCommissionsForPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-commission/StructureDefinition/getcommissionsforperson-request | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetCommissionsForPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetCommissionsForPerson (RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1). 
Exakt ett av fälten personalHsaId och personalIdentityNumber ska anges. Om inget av dessa anges, eller om värdet är ogiltigt, returneras statuskod VALIDATIONERROR. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-commission|current/StructureDefinition/StructureDefinition-getcommissionsforperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcommissionsforperson-request.csv), [Excel](StructureDefinition-getcommissionsforperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcommissionsforperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-commission/StructureDefinition/getcommissionsforperson-request",
  "version" : "1.0.0",
  "name" : "GetCommissionsForPersonRequest",
  "title" : "GetCommissionsForPerson — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:52:40+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetCommissionsForPerson\n(RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1).\n\nExakt ett av fälten personalHsaId och personalIdentityNumber ska anges.\nOm inget av dessa anges, eller om värdet är ogiltigt, returneras statuskod VALIDATIONERROR.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-commission/StructureDefinition/getcommissionsforperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcommissionsforperson-request",
      "path" : "getcommissionsforperson-request",
      "short" : "GetCommissionsForPerson — Request",
      "definition" : "Logisk modell för requestparametrar i GetCommissionsForPerson\n(RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1).\n\nExakt ett av fälten personalHsaId och personalIdentityNumber ska anges.\nOm inget av dessa anges, eller om värdet är ogiltigt, returneras statuskod VALIDATIONERROR."
    },
    {
      "id" : "getcommissionsforperson-request.personalHsaId",
      "path" : "getcommissionsforperson-request.personalHsaId",
      "short" : "HSA-id för den aktör som medarbetaruppdrag ska hämtas för",
      "definition" : "HSA-id för den person vars medarbetaruppdrag efterfrågas.\nMaxlängd: 32 tecken.\nVillkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges.\nKardinalitet: Villkorlig (0..1) — se ASSUME-EC-001 i QUESTIONS.md.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionsforperson-request.personalIdentityNumber",
      "path" : "getcommissionsforperson-request.personalIdentityNumber",
      "short" : "Personnummer för den aktör som medarbetaruppdrag ska hämtas för",
      "definition" : "Personnummer eller samordningsnummer för den person vars medarbetaruppdrag efterfrågas.\nMaxlängd: 12 tecken.\nVillkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges.\nKardinalitet: Villkorlig (0..1) — se ASSUME-EC-001 i QUESTIONS.md.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
