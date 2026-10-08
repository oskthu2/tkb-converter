# GetHealthCareUnitIncludingManager — Request - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitIncludingManager — Request**

## Logical Model: GetHealthCareUnitIncludingManager — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitincludingmanager-request | *Version*:2.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetHealthCareUnitIncludingManagerRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetHealthCareUnitIncludingManager (urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2, GetHealthCareUnitIncludingManagerType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-organizational-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitincludingmanager-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunitincludingmanager-request.csv), [Excel](StructureDefinition-gethealthcareunitincludingmanager-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunitincludingmanager-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitincludingmanager-request",
  "version" : "2.0",
  "name" : "GetHealthCareUnitIncludingManagerRequest",
  "title" : "GetHealthCareUnitIncludingManager — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:51:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetHealthCareUnitIncludingManager\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2, GetHealthCareUnitIncludingManagerType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/gethealthcareunitincludingmanager-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitincludingmanager-request",
      "path" : "gethealthcareunitincludingmanager-request",
      "short" : "GetHealthCareUnitIncludingManager — Request",
      "definition" : "Logisk modell för begäran i GetHealthCareUnitIncludingManager\n(urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2, GetHealthCareUnitIncludingManagerType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "gethealthcareunitincludingmanager-request.logicalAddress",
      "path" : "gethealthcareunitincludingmanager-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The HSA-id of the source system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitincludingmanager-request.healthCareUnitMemberHsaId",
      "path" : "gethealthcareunitincludingmanager-request.healthCareUnitMemberHsaId",
      "short" : "healthCareUnitMemberHsaId",
      "definition" : "healthCareUnitMemberHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitincludingmanager-request.searchBase",
      "path" : "gethealthcareunitincludingmanager-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitincludingmanager-request.includeFeignedObject",
      "path" : "gethealthcareunitincludingmanager-request.includeFeignedObject",
      "short" : "includeFeignedObject",
      "definition" : "includeFeignedObject",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
