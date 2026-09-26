# GetTerminologySubset — Response - infrastructure: informationstructureservice: terminology v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTerminologySubset — Response**

## Logical Model: GetTerminologySubset — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubset | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetTerminologySubset |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetTerminologySubset (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-informationstructureservice-terminology|current/StructureDefinition/StructureDefinition-getterminologysubset.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getterminologysubset.csv), [Excel](StructureDefinition-getterminologysubset.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getterminologysubset",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubset",
  "version" : "1.0.0",
  "name" : "GetTerminologySubset",
  "title" : "GetTerminologySubset — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:32:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetTerminologySubset\n(urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubset",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getterminologysubset",
      "path" : "getterminologysubset",
      "short" : "GetTerminologySubset — Response",
      "definition" : "Logisk modell för svaret i GetTerminologySubset\n(urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetResponder:1, GetTerminologySubsetResponseType)."
    },
    {
      "id" : "getterminologysubset.Subset",
      "path" : "getterminologysubset.Subset",
      "short" : "Subset",
      "definition" : "Subset",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.SubsetInformation",
      "path" : "getterminologysubset.Subset.SubsetInformation",
      "short" : "SubsetInformation",
      "definition" : "Information om urval",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.SubsetInformation.SubsetIdentity",
      "path" : "getterminologysubset.Subset.SubsetInformation.SubsetIdentity",
      "short" : "SubsetIdentity",
      "definition" : "Identifierare av urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.SubsetInformation.Name",
      "path" : "getterminologysubset.Subset.SubsetInformation.Name",
      "short" : "Name",
      "definition" : "Namn som representerar urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.SubsetInformation.Version",
      "path" : "getterminologysubset.Subset.SubsetInformation.Version",
      "short" : "Version",
      "definition" : "Version för urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept",
      "path" : "getterminologysubset.Subset.Concept",
      "short" : "Concept",
      "definition" : "Lista med concepts",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept.Metadata",
      "path" : "getterminologysubset.Subset.Concept.Metadata",
      "short" : "Metadata",
      "definition" : "0..* Metadata",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept.Metadata.Name",
      "path" : "getterminologysubset.Subset.Concept.Metadata.Name",
      "short" : "Name",
      "definition" : "Identifierar typ av metadata (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept.Metadata.Value",
      "path" : "getterminologysubset.Subset.Concept.Metadata.Value",
      "short" : "Value",
      "definition" : "Metadatavärde (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept.Metadata.LocalOrganizationExtensionId",
      "path" : "getterminologysubset.Subset.Concept.Metadata.LocalOrganizationExtensionId",
      "short" : "LocalOrganizationExtensionId",
      "definition" : "Id för system eller organisation (XML-attribut.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept.CodeSystem",
      "path" : "getterminologysubset.Subset.Concept.CodeSystem",
      "short" : "CodeSystem",
      "definition" : "Identifierare av kodsystem (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept.Code",
      "path" : "getterminologysubset.Subset.Concept.Code",
      "short" : "Code",
      "definition" : "Kod för val i listan (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept.Term",
      "path" : "getterminologysubset.Subset.Concept.Term",
      "short" : "Term",
      "definition" : "Term som visas upp i vallistan (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.Subset.Concept.LocalOrganizationExtensionId",
      "path" : "getterminologysubset.Subset.Concept.LocalOrganizationExtensionId",
      "short" : "LocalOrganizationExtensionId",
      "definition" : "Id för system eller organisation (XML-attribut.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.ResultCode",
      "path" : "getterminologysubset.ResultCode",
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
      "id" : "getterminologysubset.comment",
      "path" : "getterminologysubset.comment",
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
