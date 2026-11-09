# GetConcepts — Response - infrastructure: informationstructureservice: terminology v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConcepts — Response**

## Logical Model: GetConcepts — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getconcepts | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetConcepts |
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
  "version" : "1.0",
  "name" : "GetConcepts",
  "title" : "GetConcepts — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:39:25+00:00",
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
      "short" : "SubsetType",
      "definition" : "Subset",
      "comment" : "TKB-fält: `Subset` (`SubsetType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconcepts.Subset.SubsetInformation",
      "path" : "getconcepts.Subset.SubsetInformation",
      "short" : "SubsetInformationType",
      "definition" : "Information om urval",
      "comment" : "TKB-fält: `../SubsetInformation` (`SubsetInformationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconcepts.Subset.SubsetInformation.SubsetIdentity",
      "path" : "getconcepts.Subset.SubsetInformation.SubsetIdentity",
      "short" : "Identifierare av urval",
      "definition" : "Identifierare av urval (XML-attribut.)",
      "comment" : "TKB-fält: `../../SubsetIdentity` (`SubsetIdentityType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.SubsetInformation.Name",
      "path" : "getconcepts.Subset.SubsetInformation.Name",
      "short" : "Namn som representerar urval",
      "definition" : "Namn som representerar urval (XML-attribut.)",
      "comment" : "TKB-fält: `../../Name` (`SubsetNameType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.SubsetInformation.Version",
      "path" : "getconcepts.Subset.SubsetInformation.Version",
      "short" : "Version för urval",
      "definition" : "Version för urval (XML-attribut.)",
      "comment" : "TKB-fält: `../../Version` (`SubsetVersionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept",
      "path" : "getconcepts.Subset.Concept",
      "short" : "ConceptType",
      "definition" : "Lista med concepts",
      "comment" : "TKB-fält: `../Concept` (`ConceptType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Metadata",
      "path" : "getconcepts.Subset.Concept.Metadata",
      "short" : "MetadataType",
      "definition" : "0..* Metadata",
      "comment" : "TKB-fält: `../../Metadata` (`MetadataType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Metadata.Name",
      "path" : "getconcepts.Subset.Concept.Metadata.Name",
      "short" : "Identifierar typ av metadata",
      "definition" : "Identifierar typ av metadata (XML-attribut.)",
      "comment" : "TKB-fält: `../../../Name` (`MetadataNameType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Metadata.Value",
      "path" : "getconcepts.Subset.Concept.Metadata.Value",
      "short" : "Metadatavärde",
      "definition" : "Metadatavärde (XML-attribut.)",
      "comment" : "TKB-fält: `../../../Value` (`MetadataValueType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Metadata.LocalOrganizationExtensionId",
      "path" : "getconcepts.Subset.Concept.Metadata.LocalOrganizationExtensionId",
      "short" : "Id för system eller organisation",
      "definition" : "Id för system eller organisation (XML-attribut.)",
      "comment" : "TKB-fält: `../../../LocalOrganizationExtensionId` (`LocalOrganizationExtensionIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.CodeSystem",
      "path" : "getconcepts.Subset.Concept.CodeSystem",
      "short" : "Identifierare av kodsystem",
      "definition" : "Identifierare av kodsystem (XML-attribut.)",
      "comment" : "TKB-fält: `../../CodeSystem` (`ConceptCodeSystemType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Code",
      "path" : "getconcepts.Subset.Concept.Code",
      "short" : "Kod för val i listan",
      "definition" : "Kod för val i listan (XML-attribut.)",
      "comment" : "TKB-fält: `../../Code` (`ConceptCodeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.Term",
      "path" : "getconcepts.Subset.Concept.Term",
      "short" : "Term som visas upp i vallistan",
      "definition" : "Term som visas upp i vallistan (XML-attribut.)",
      "comment" : "TKB-fält: `../../Term` (`ConceptTermType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconcepts.Subset.Concept.LocalOrganizationExtensionId",
      "path" : "getconcepts.Subset.Concept.LocalOrganizationExtensionId",
      "short" : "Id för system eller organisation",
      "definition" : "Id för system eller organisation (XML-attribut.)",
      "comment" : "TKB-fält: `../../LocalOrganizationExtensionId` (`LocalOrganizationExtensionIdType`, kardinalitet 0..1).",
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
      "definition" : "ResultCode Tillåtna värden: OK, ERROR, INFO.",
      "comment" : "TKB-fält: `ResultCode` (`ResultCodeEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** ResultCode Tillåtna värden: OK, ERROR, INFO.",
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
      "comment" : "TKB-fält: `comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
