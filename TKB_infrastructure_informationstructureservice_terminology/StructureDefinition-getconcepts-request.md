# GetConcepts — Request - infrastructure: informationstructureservice: terminology v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConcepts — Request**

## Logical Model: GetConcepts — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getconcepts-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetConceptsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetConcepts (urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-informationstructureservice-terminology|current/StructureDefinition/StructureDefinition-getconcepts-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconcepts-request.csv), [Excel](StructureDefinition-getconcepts-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconcepts-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getconcepts-request",
  "version" : "1.0",
  "name" : "GetConceptsRequest",
  "title" : "GetConcepts — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:39:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetConcepts\n(urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getconcepts-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconcepts-request",
      "path" : "getconcepts-request",
      "short" : "GetConcepts — Request",
      "definition" : "Logisk modell för begäran i GetConcepts\n(urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getconcepts-request.SubsetIdentity",
      "path" : "getconcepts-request.SubsetIdentity",
      "short" : "Identifierare som representerar urvalet",
      "definition" : "Identifierare som representerar urvalet",
      "comment" : "TKB-fält: `SubsetIdentity` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts-request.LocalOrganizationExtensionId",
      "path" : "getconcepts-request.LocalOrganizationExtensionId",
      "short" : "Id för system eller organisation",
      "definition" : "Id för system eller organisation",
      "comment" : "TKB-fält: `LocalOrganizationExtensionId` (`LocalOrganizationExtensionIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts-request.CodeSystem",
      "path" : "getconcepts-request.CodeSystem",
      "short" : "Kodsystem som sökt concept tillhör",
      "definition" : "Kodsystem som sökt concept tillhör",
      "comment" : "TKB-fält: `CodeSystem` (`ConceptCodeSystemType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts-request.Code",
      "path" : "getconcepts-request.Code",
      "short" : "Kod för sökt concept",
      "definition" : "Kod för sökt concept",
      "comment" : "TKB-fält: `Code` (`ConceptCodeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts-request.Term",
      "path" : "getconcepts-request.Term",
      "short" : "Term för sökt concept",
      "definition" : "Term för sökt concept",
      "comment" : "TKB-fält: `Term` (`ConceptTermType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts-request.ConceptsResponseThreshold",
      "path" : "getconcepts-request.ConceptsResponseThreshold",
      "short" : "Antal concepts som maximalt returneras i svaret",
      "definition" : "Antal concepts som maximalt returneras i svaret",
      "comment" : "TKB-fält: `ConceptsResponseThreshold` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getconcepts-request.TermType",
      "path" : "getconcepts-request.TermType",
      "short" : "Type of term",
      "definition" : "Type of term",
      "comment" : "TKB-fält: `TermType` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
