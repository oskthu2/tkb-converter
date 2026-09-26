# GetTerminologySubset — Request - infrastructure: informationstructureservice: terminology v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTerminologySubset — Request**

## Logical Model: GetTerminologySubset — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubset-request | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetTerminologySubsetRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetTerminologySubset (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-informationstructureservice-terminology|current/StructureDefinition/StructureDefinition-getterminologysubset-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getterminologysubset-request.csv), [Excel](StructureDefinition-getterminologysubset-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getterminologysubset-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubset-request",
  "version" : "1.0.0",
  "name" : "GetTerminologySubsetRequest",
  "title" : "GetTerminologySubset — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:32:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetTerminologySubset\n(urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubset-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getterminologysubset-request",
      "path" : "getterminologysubset-request",
      "short" : "GetTerminologySubset — Request",
      "definition" : "Logisk modell för begäran i GetTerminologySubset\n(urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getterminologysubset-request.logicalAddress",
      "path" : "getterminologysubset-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. HSA-id for the entity responsible for the subset",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset-request.SubsetIdentity",
      "path" : "getterminologysubset-request.SubsetIdentity",
      "short" : "SubsetIdentity",
      "definition" : "Identifierare som representerar urvalet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset-request.LocalOrganizationExtensionId",
      "path" : "getterminologysubset-request.LocalOrganizationExtensionId",
      "short" : "LocalOrganizationExtensionId",
      "definition" : "Id för system eller organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset-request.TermType",
      "path" : "getterminologysubset-request.TermType",
      "short" : "TermType",
      "definition" : "Type of term",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
