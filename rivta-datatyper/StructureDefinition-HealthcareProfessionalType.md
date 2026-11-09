# HealthcareProfessionalType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HealthcareProfessionalType**

## Logical Model: HealthcareProfessionalType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:HealthcareProfessionalType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Vård- och omsorgspersonal samt organisatorisk tillhörighet. (xs:complexType.) 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-HealthcareProfessionalType.json)

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
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType",
  "version" : "1.0.0",
  "name" : "HealthcareProfessionalType",
  "title" : "HealthcareProfessionalType",
  "status" : "active",
  "date" : "2026-11-09T03:12:38+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Vård- och omsorgspersonal samt organisatorisk tillhörighet. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HealthcareProfessionalType",
      "path" : "HealthcareProfessionalType",
      "short" : "HealthcareProfessionalType",
      "definition" : "Vård- och omsorgspersonal samt organisatorisk tillhörighet. (xs:complexType.)"
    },
    {
      "id" : "HealthcareProfessionalType.authorTime",
      "path" : "HealthcareProfessionalType.authorTime",
      "short" : "authorTime",
      "definition" : "authorTime Typ i schemat: TimeStampType.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalHSAId",
      "path" : "HealthcareProfessionalType.healthcareProfessionalHSAId",
      "short" : "healthcareProfessionalHSAId",
      "definition" : "healthcareProfessionalHSAId Typ i schemat: HSAIdType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalName",
      "path" : "HealthcareProfessionalType.healthcareProfessionalName",
      "short" : "healthcareProfessionalName",
      "definition" : "healthcareProfessionalName Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalRoleCode",
      "path" : "HealthcareProfessionalType.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "healthcareProfessionalRoleCode Typ i schemat: CVType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalOrgUnit",
      "path" : "HealthcareProfessionalType.healthcareProfessionalOrgUnit",
      "short" : "healthcareProfessionalOrgUnit",
      "definition" : "healthcareProfessionalOrgUnit Typ i schemat: OrgUnitType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/OrgUnitType"
      }]
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId",
      "path" : "HealthcareProfessionalType.healthcareProfessionalCareUnitHSAId",
      "short" : "healthcareProfessionalCareUnitHSAId",
      "definition" : "healthcareProfessionalCareUnitHSAId Typ i schemat: HSAIdType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId",
      "path" : "HealthcareProfessionalType.healthcareProfessionalCareGiverHSAId",
      "short" : "healthcareProfessionalCareGiverHSAId",
      "definition" : "healthcareProfessionalCareGiverHSAId Typ i schemat: HSAIdType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    }]
  }
}

```
