# GetUnit — Request - infrastructure: directory: organization v5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetUnit — Request**

## Logical Model: GetUnit — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/getunit-request | *Version*:5 |
| Draft as of 2026-09-09 | *Computable Name*:GetUnitRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetUnit:5). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-getunit-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getunit-request.csv), [Excel](StructureDefinition-getunit-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getunit-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/getunit-request",
  "version" : "5",
  "name" : "GetUnitRequest",
  "title" : "GetUnit — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:00:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetUnit:5).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/getunit-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getunit-request",
      "path" : "getunit-request",
      "short" : "GetUnit — Request",
      "definition" : "Logisk modell för requestparametrar i GetUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetUnit:5)."
    },
    {
      "id" : "getunit-request.unitHsaId",
      "path" : "getunit-request.unitHsaId",
      "short" : "HSA-id för sökt organisatorisk enhet. Ref. hsaIdentity [R5].",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit-request.searchBase",
      "path" : "getunit-request.searchBase",
      "short" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas.",
      "definition" : "DN-format.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit-request.includeFeignedObject",
      "path" : "getunit-request.includeFeignedObject",
      "short" : "true: om metoden ska leverera svar med fingerade objekt.",
      "definition" : "Uteblivet värde tolkas som false.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getunit-request.profile",
      "path" : "getunit-request.profile",
      "short" : "Anger hur mycket information om enheten som begärs.",
      "definition" : "Tillåtna värden: basic, extended, extended2, all (default).\nbasic: bara grundläggande information (*b).\nextended: grundläggande + vård- och omsorgsinformation (*b, *e).\nextended2: även nonPublicTelephoneNumber (*f), måste kombineras med annat profilvärde.\nall: all tillgänglig information (*b, *e, *a) förutom nonPublicTelephoneNumber.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
