# OrgUnitType - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrgUnitType**

## Logical Model: OrgUnitType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/OrgUnitType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:OrgUnitType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
OrgUnitType enligt domänens schema: den gemensamma RIV-TA-typen OrgUnitType med snävare kardinalitet. 

**Usages:**

* Use this Logical Model: [GetCareContacts](StructureDefinition-getcarecontacts.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-logistics-logistics|current/StructureDefinition/StructureDefinition-OrgUnitType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OrgUnitType.csv), [Excel](StructureDefinition-OrgUnitType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OrgUnitType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/OrgUnitType",
  "name" : "OrgUnitType",
  "title" : "OrgUnitType",
  "status" : "active",
  "date" : "2026-11-09T03:24:40+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "OrgUnitType enligt domänens schema: den gemensamma RIV-TA-typen OrgUnitType med snävare kardinalitet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/OrgUnitType",
  "baseDefinition" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/OrgUnitType",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "OrgUnitType",
      "path" : "OrgUnitType",
      "definition" : "OrgUnitType enligt domänens schema: den gemensamma RIV-TA-typen OrgUnitType med snävare kardinalitet."
    },
    {
      "id" : "OrgUnitType.orgUnitHSAId",
      "path" : "OrgUnitType.orgUnitHSAId",
      "min" : 1
    },
    {
      "id" : "OrgUnitType.orgUnitName",
      "path" : "OrgUnitType.orgUnitName",
      "min" : 1
    }]
  }
}

```
