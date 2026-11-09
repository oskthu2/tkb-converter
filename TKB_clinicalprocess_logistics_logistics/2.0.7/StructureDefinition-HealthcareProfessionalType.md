# HealthcareProfessionalType - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HealthcareProfessionalType**

## Logical Model: HealthcareProfessionalType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/HealthcareProfessionalType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:HealthcareProfessionalType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
HealthcareProfessionalType enligt domänens schema: den gemensamma RIV-TA-typen HealthcareProfessionalType med snävare kardinalitet. 

**Usages:**

* Use this Logical Model: [GetCareContacts](StructureDefinition-getcarecontacts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-logistics-logistics|current/StructureDefinition/StructureDefinition-HealthcareProfessionalType.json)

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
  "url" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/HealthcareProfessionalType",
  "name" : "HealthcareProfessionalType",
  "title" : "HealthcareProfessionalType",
  "status" : "active",
  "date" : "2026-11-09T03:24:40+00:00",
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
  "type" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/HealthcareProfessionalType",
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
      "id" : "HealthcareProfessionalType.healthcareProfessionalName",
      "path" : "HealthcareProfessionalType.healthcareProfessionalName",
      "min" : 1
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalOrgUnit",
      "path" : "HealthcareProfessionalType.healthcareProfessionalOrgUnit",
      "min" : 1
    }]
  }
}

```
