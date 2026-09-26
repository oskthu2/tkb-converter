# GetConcepts — Response - infrastructure: informationstructureservice: terminology v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConcepts — Response**

## Logical Model: GetConcepts — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getconcepts | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetConcepts |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetConcepts (urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-informationstructureservice-terminology|current/StructureDefinition/StructureDefinition-getconcepts.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconcepts.csv), [Excel](StructureDefinition-getconcepts.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconcepts",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getconcepts",
  "version" : "1.0.0",
  "name" : "GetConcepts",
  "title" : "GetConcepts — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:32:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetConcepts\n(urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getconcepts",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconcepts",
      "path" : "getconcepts",
      "short" : "GetConcepts — Response",
      "definition" : "Logisk modell för svaret i GetConcepts\n(urn:riv:infrastructure:informationstructureservice:terminology:GetConceptsResponder:1, GetConceptsResponseType)."
    },
    {
      "id" : "getconcepts.Subset",
      "path" : "getconcepts.Subset",
      "short" : "Subset",
      "definition" : "Subset",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconcepts.Subset.SubsetInformation",
      "path" : "getconcepts.Subset.SubsetInformation",
      "short" : "SubsetInformation",
      "definition" : "Information om urval",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconcepts.Subset.SubsetInformation.SubsetIdentity",
      "path" : "getconcepts.Subset.SubsetInformation.SubsetIdentity",
      "short" : "SubsetIdentity",
      "definition" : "Identifierare av urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.SubsetInformation.Name",
      "path" : "getconcepts.Subset.SubsetInformation.Name",
      "short" : "Name",
      "definition" : "Namn som representerar urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.SubsetInformation.Version",
      "path" : "getconcepts.Subset.SubsetInformation.Version",
      "short" : "Version",
      "definition" : "Version för urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept",
      "path" : "getconcepts.Subset.Concept",
      "short" : "Concept",
      "definition" : "Lista med concepts",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Metadata",
      "path" : "getconcepts.Subset.Concept.Metadata",
      "short" : "Metadata",
      "definition" : "0..* Metadata",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Metadata.Name",
      "path" : "getconcepts.Subset.Concept.Metadata.Name",
      "short" : "Name",
      "definition" : "Identifierar typ av metadata (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Metadata.Value",
      "path" : "getconcepts.Subset.Concept.Metadata.Value",
      "short" : "Value",
      "definition" : "Metadatavärde (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Metadata.LocalOrganizationExtensionId",
      "path" : "getconcepts.Subset.Concept.Metadata.LocalOrganizationExtensionId",
      "short" : "LocalOrganizationExtensionId",
      "definition" : "Id för system eller organisation (XML-attribut.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.CodeSystem",
      "path" : "getconcepts.Subset.Concept.CodeSystem",
      "short" : "CodeSystem",
      "definition" : "Identifierare av kodsystem (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Code",
      "path" : "getconcepts.Subset.Concept.Code",
      "short" : "Code",
      "definition" : "Kod för val i listan (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Term",
      "path" : "getconcepts.Subset.Concept.Term",
      "short" : "Term",
      "definition" : "Term som visas upp i vallistan (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.LocalOrganizationExtensionId",
      "path" : "getconcepts.Subset.Concept.LocalOrganizationExtensionId",
      "short" : "LocalOrganizationExtensionId",
      "definition" : "Id för system eller organisation (XML-attribut.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.ResultCode",
      "path" : "getconcepts.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/ValueSet/terminology-resultcode-vs"
      }
    },
    {
      "id" : "getconcepts.comment",
      "path" : "getconcepts.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
