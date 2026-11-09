# HSAIdType - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HSAIdType**

## Data Type Profile: HSAIdType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:HSAIdType |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
HSA-id: identifierare i HSA-katalogen för en person, organisation, enhet eller funktion. (xs:simpleType, restriktion av xs:string.) 

**Usages:**

* Use this Primitive Type Profile: [ActorType](StructureDefinition-ActorType.md), [HealthcareProfessionalType](StructureDefinition-HealthcareProfessionalType.md), [LegalAuthenticatorType](StructureDefinition-LegalAuthenticatorType.md) and [OrgUnitType](StructureDefinition-OrgUnitType.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.rivta.datatypes|current/StructureDefinition/StructureDefinition-HSAIdType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HSAIdType.csv), [Excel](StructureDefinition-HSAIdType.xlsx), [Schematron](StructureDefinition-HSAIdType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HSAIdType",
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType",
  "version" : "1.0.0",
  "name" : "HSAIdType",
  "title" : "HSAIdType",
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
  "description" : "HSA-id: identifierare i HSA-katalogen för en person, organisation, enhet eller funktion. (xs:simpleType, restriktion av xs:string.)",
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "primitive-type",
  "abstract" : false,
  "type" : "string",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/string",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "string",
      "path" : "string"
    }]
  }
}

```
