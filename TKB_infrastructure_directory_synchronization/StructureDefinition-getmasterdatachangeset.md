# GetMasterDataChangeSet — Response - infrastructure: directory: synchronization v1.0.0-rc3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMasterDataChangeSet — Response**

## Logical Model: GetMasterDataChangeSet — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset | *Version*:1.0.0-rc3 |
| Draft as of 2026-09-28 | *Computable Name*:GetMasterDataChangeSet |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetMasterDataChangeSet (urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-synchronization|current/StructureDefinition/StructureDefinition-getmasterdatachangeset.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmasterdatachangeset.csv), [Excel](StructureDefinition-getmasterdatachangeset.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmasterdatachangeset",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset",
  "version" : "1.0.0-rc3",
  "name" : "GetMasterDataChangeSet",
  "title" : "GetMasterDataChangeSet — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetMasterDataChangeSet\n(urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmasterdatachangeset",
      "path" : "getmasterdatachangeset",
      "short" : "GetMasterDataChangeSet — Response",
      "definition" : "Logisk modell för svaret i GetMasterDataChangeSet\n(urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetResponseType)."
    },
    {
      "id" : "getmasterdatachangeset.masterDataChangeSet",
      "path" : "getmasterdatachangeset.masterDataChangeSet",
      "short" : "masterDataChangeSet",
      "definition" : "masterDataChangeSet",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmasterdatachangeset.masterDataChangeSet.masterDataChangeSetId",
      "path" : "getmasterdatachangeset.masterDataChangeSet.masterDataChangeSetId",
      "short" : "masterDataChangeSetId",
      "definition" : "masterDataChangeSetId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmasterdatachangeset.masterDataChangeSet.masterDataChangeSetId.root",
      "path" : "getmasterdatachangeset.masterDataChangeSet.masterDataChangeSetId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset.masterDataChangeSet.masterDataChangeSetId.iiExtension",
      "path" : "getmasterdatachangeset.masterDataChangeSet.masterDataChangeSetId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset.masterDataChangeSet.category",
      "path" : "getmasterdatachangeset.masterDataChangeSet.category",
      "short" : "category",
      "definition" : "category",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-directory-synchronization/ValueSet/directory-synchronization-category-vs"
      }
    },
    {
      "id" : "getmasterdatachangeset.masterDataChangeSet.changeTime",
      "path" : "getmasterdatachangeset.masterDataChangeSet.changeTime",
      "short" : "changeTime",
      "definition" : "changeTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset.masterDataChangeSet.attributes",
      "path" : "getmasterdatachangeset.masterDataChangeSet.attributes",
      "short" : "attributes",
      "definition" : "attributes",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmasterdatachangeset.masterDataChangeSet.attributes.masterDataAttribute",
      "path" : "getmasterdatachangeset.masterDataChangeSet.attributes.masterDataAttribute",
      "short" : "masterDataAttribute",
      "definition" : "masterDataAttribute",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
