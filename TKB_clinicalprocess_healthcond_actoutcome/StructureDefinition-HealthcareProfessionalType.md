# HealthcareProfessionalType - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HealthcareProfessionalType**

## Logical Model: HealthcareProfessionalType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/HealthcareProfessionalType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:HealthcareProfessionalType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
HealthcareProfessionalType enligt domänens schema: den gemensamma RIV-TA-typen HealthcareProfessionalType med snävare kardinalitet. 

**Usages:**

* Use this Logical Model: [GetImagingOutcome](StructureDefinition-getimagingoutcome.md), [GetMaternityMedicalHistory](StructureDefinition-getmaternitymedicalhistory.md) and [GetReferralOutcome](StructureDefinition-getreferraloutcome.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-HealthcareProfessionalType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HealthcareProfessionalType.csv), [Excel](StructureDefinition-HealthcareProfessionalType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HealthcareProfessionalType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/HealthcareProfessionalType",
  "name" : "HealthcareProfessionalType",
  "title" : "HealthcareProfessionalType",
  "status" : "active",
  "date" : "2026-11-09T03:19:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "HealthcareProfessionalType enligt domänens schema: den gemensamma RIV-TA-typen HealthcareProfessionalType med snävare kardinalitet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/HealthcareProfessionalType",
  "baseDefinition" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HealthcareProfessionalType",
      "path" : "HealthcareProfessionalType",
      "definition" : "HealthcareProfessionalType enligt domänens schema: den gemensamma RIV-TA-typen HealthcareProfessionalType med snävare kardinalitet."
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalHSAId",
      "path" : "HealthcareProfessionalType.healthcareProfessionalHSAId",
      "min" : 1
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalOrgUnit",
      "path" : "HealthcareProfessionalType.healthcareProfessionalOrgUnit",
      "min" : 1
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId",
      "path" : "HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId",
      "min" : 1
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId",
      "path" : "HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId",
      "min" : 1
    }]
  }
}

```
