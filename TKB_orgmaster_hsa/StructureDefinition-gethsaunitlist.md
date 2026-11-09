# GetHsaUnitList — Response - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHsaUnitList — Response**

## Logical Model: GetHsaUnitList — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunitlist | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetHsaUnitList |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetHsaUnitList (urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1, GetHsaUnitListResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.orgmaster-hsa|current/StructureDefinition/StructureDefinition-gethsaunitlist.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethsaunitlist.csv), [Excel](StructureDefinition-gethsaunitlist.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethsaunitlist",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunitlist",
  "version" : "1.0",
  "name" : "GetHsaUnitList",
  "title" : "GetHsaUnitList — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:45:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetHsaUnitList\n(urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1, GetHsaUnitListResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunitlist",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethsaunitlist",
      "path" : "gethsaunitlist",
      "short" : "GetHsaUnitList — Response",
      "definition" : "Logisk modell för svaret i GetHsaUnitList\n(urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1, GetHsaUnitListResponseType)."
    },
    {
      "id" : "gethsaunitlist.UnitList",
      "path" : "gethsaunitlist.UnitList",
      "short" : "(anonym typ)",
      "definition" : "UnitList",
      "comment" : "TKB-fält: `UnitList` (`UnitList`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethsaunitlist.UnitList.unitListUnit",
      "path" : "gethsaunitlist.UnitList.unitListUnit",
      "short" : "UnitListUnit",
      "definition" : "unitListUnit",
      "comment" : "TKB-fält: `../unitListUnit` (`UnitListUnit`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethsaunitlist.UnitList.unitListUnit.hsaIdentity",
      "path" : "gethsaunitlist.UnitList.unitListUnit.hsaIdentity",
      "short" : "hsaIdentity",
      "definition" : "hsaIdentity",
      "comment" : "TKB-fält: `../../hsaIdentity` (`HsaIdentityType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaunitlist.UnitList.unitListUnit.name",
      "path" : "gethsaunitlist.UnitList.unitListUnit.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../name` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaunitlist.UnitList.unitListUnit.parentHsaIdentity",
      "path" : "gethsaunitlist.UnitList.unitListUnit.parentHsaIdentity",
      "short" : "parentHsaIdentity",
      "definition" : "parentHsaIdentity",
      "comment" : "TKB-fält: `../../parentHsaIdentity` (`HsaIdentityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
