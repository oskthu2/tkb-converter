# GetHsaUnitList — Request - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHsaUnitList — Request**

## Logical Model: GetHsaUnitList — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunitlist-request | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetHsaUnitListRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetHsaUnitList (urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1, GetHsaUnitListType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.orgmaster-hsa|current/StructureDefinition/StructureDefinition-gethsaunitlist-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethsaunitlist-request.csv), [Excel](StructureDefinition-gethsaunitlist-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethsaunitlist-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunitlist-request",
  "version" : "1.0",
  "name" : "GetHsaUnitListRequest",
  "title" : "GetHsaUnitList — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetHsaUnitList\n(urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1, GetHsaUnitListType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/orgmaster-hsa/StructureDefinition/gethsaunitlist-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethsaunitlist-request",
      "path" : "gethsaunitlist-request",
      "short" : "GetHsaUnitList — Request",
      "definition" : "Logisk modell för begäran i GetHsaUnitList\n(urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1, GetHsaUnitListType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "gethsaunitlist-request.logicalAddress",
      "path" : "gethsaunitlist-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. HSA identity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaunitlist-request.hsaIdentity",
      "path" : "gethsaunitlist-request.hsaIdentity",
      "short" : "hsaIdentity",
      "definition" : "hsaIdentity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethsaunitlist-request.searchBase",
      "path" : "gethsaunitlist-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
