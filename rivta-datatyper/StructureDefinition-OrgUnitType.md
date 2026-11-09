# OrgUnitType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrgUnitType**

## Logical Model: OrgUnitType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/OrgUnitType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:OrgUnitType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Identitets-, kontakt- och adressuppgifter för en organisationsenhet. (xs:complexType.) 

**Usages:**

* Use this Logical Model: [HealthcareProfessionalType](StructureDefinition-HealthcareProfessionalType.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-OrgUnitType.json)

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
  }],
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/OrgUnitType",
  "version" : "1.0.0",
  "name" : "OrgUnitType",
  "title" : "OrgUnitType",
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
  "description" : "Identitets-, kontakt- och adressuppgifter för en organisationsenhet. (xs:complexType.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/OrgUnitType",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "OrgUnitType",
      "path" : "OrgUnitType",
      "short" : "OrgUnitType",
      "definition" : "Identitets-, kontakt- och adressuppgifter för en organisationsenhet. (xs:complexType.)"
    },
    {
      "id" : "OrgUnitType.orgUnitHSAId",
      "path" : "OrgUnitType.orgUnitHSAId",
      "short" : "orgUnitHSAId",
      "definition" : "orgUnitHSAId Typ i schemat: HSAIdType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "OrgUnitType.orgUnitName",
      "path" : "OrgUnitType.orgUnitName",
      "short" : "orgUnitName",
      "definition" : "orgUnitName Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OrgUnitType.orgUnitTelecom",
      "path" : "OrgUnitType.orgUnitTelecom",
      "short" : "orgUnitTelecom",
      "definition" : "orgUnitTelecom Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OrgUnitType.orgUnitEmail",
      "path" : "OrgUnitType.orgUnitEmail",
      "short" : "orgUnitEmail",
      "definition" : "orgUnitEmail Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OrgUnitType.orgUnitAddress",
      "path" : "OrgUnitType.orgUnitAddress",
      "short" : "orgUnitAddress",
      "definition" : "orgUnitAddress Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "OrgUnitType.orgUnitLocation",
      "path" : "OrgUnitType.orgUnitLocation",
      "short" : "orgUnitLocation",
      "definition" : "orgUnitLocation Typ i schemat: string.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
