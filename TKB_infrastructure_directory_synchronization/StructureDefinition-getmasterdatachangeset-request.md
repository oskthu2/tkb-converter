# GetMasterDataChangeSet — Request - infrastructure: directory: synchronization v1.0.0-rc3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMasterDataChangeSet — Request**

## Logical Model: GetMasterDataChangeSet — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset-request | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetMasterDataChangeSetRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetMasterDataChangeSet (urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-synchronization|current/StructureDefinition/StructureDefinition-getmasterdatachangeset-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmasterdatachangeset-request.csv), [Excel](StructureDefinition-getmasterdatachangeset-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmasterdatachangeset-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset-request",
  "version" : "1.0",
  "name" : "GetMasterDataChangeSetRequest",
  "title" : "GetMasterDataChangeSet — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:33:41+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetMasterDataChangeSet\n(urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmasterdatachangeset-request",
      "path" : "getmasterdatachangeset-request",
      "short" : "GetMasterDataChangeSet — Request",
      "definition" : "Logisk modell för begäran i GetMasterDataChangeSet\n(urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getmasterdatachangeset-request.logicalAddress",
      "path" : "getmasterdatachangeset-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the careservice provider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity",
      "path" : "getmasterdatachangeset-request.masterDataEntity",
      "short" : "masterDataEntity",
      "definition" : "masterDataEntity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.cvCode",
      "path" : "getmasterdatachangeset-request.masterDataEntity.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.codeSystem",
      "path" : "getmasterdatachangeset-request.masterDataEntity.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.codeSystemName",
      "path" : "getmasterdatachangeset-request.masterDataEntity.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.codeSystemVersion",
      "path" : "getmasterdatachangeset-request.masterDataEntity.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.displayName",
      "path" : "getmasterdatachangeset-request.masterDataEntity.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.originalText",
      "path" : "getmasterdatachangeset-request.masterDataEntity.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.category",
      "path" : "getmasterdatachangeset-request.category",
      "short" : "category",
      "definition" : "category",
      "min" : 0,
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
      "id" : "getmasterdatachangeset-request.timePeriod",
      "path" : "getmasterdatachangeset-request.timePeriod",
      "short" : "timePeriod",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.timePeriod.start",
      "path" : "getmasterdatachangeset-request.timePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.timePeriod.end",
      "path" : "getmasterdatachangeset-request.timePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
