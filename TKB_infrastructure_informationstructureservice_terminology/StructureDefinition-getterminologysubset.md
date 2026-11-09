# GetTerminologySubset — Response - infrastructure: informationstructureservice: terminology v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTerminologySubset — Response**

## Logical Model: GetTerminologySubset — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubset | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetTerminologySubset |
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
  "version" : "1.0",
  "name" : "GetTerminologySubset",
  "title" : "GetTerminologySubset — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:39:25+00:00",
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
      "id" : "getterminologysubset.Subset.SubsetInformation",
      "path" : "getterminologysubset.Subset.SubsetInformation",
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
      "id" : "getterminologysubset.Subset.SubsetInformation.SubsetIdentity",
      "path" : "getterminologysubset.Subset.SubsetInformation.SubsetIdentity",
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
      "id" : "getterminologysubset.Subset.SubsetInformation.Name",
      "path" : "getterminologysubset.Subset.SubsetInformation.Name",
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
      "id" : "getterminologysubset.Subset.SubsetInformation.Version",
      "path" : "getterminologysubset.Subset.SubsetInformation.Version",
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
      "id" : "getterminologysubset.Subset.Concept",
      "path" : "getterminologysubset.Subset.Concept",
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
      "id" : "getterminologysubset.Subset.Concept.Metadata",
      "path" : "getterminologysubset.Subset.Concept.Metadata",
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
      "id" : "getterminologysubset.Subset.Concept.Metadata.Name",
      "path" : "getterminologysubset.Subset.Concept.Metadata.Name",
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
      "id" : "getterminologysubset.Subset.Concept.Metadata.Value",
      "path" : "getterminologysubset.Subset.Concept.Metadata.Value",
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
      "id" : "getterminologysubset.Subset.Concept.Metadata.LocalOrganizationExtensionId",
      "path" : "getterminologysubset.Subset.Concept.Metadata.LocalOrganizationExtensionId",
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
      "id" : "getterminologysubset.Subset.Concept.CodeSystem",
      "path" : "getterminologysubset.Subset.Concept.CodeSystem",
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
      "id" : "getterminologysubset.Subset.Concept.Code",
      "path" : "getterminologysubset.Subset.Concept.Code",
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
      "id" : "getterminologysubset.Subset.Concept.Term",
      "path" : "getterminologysubset.Subset.Concept.Term",
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
      "id" : "getterminologysubset.Subset.Concept.LocalOrganizationExtensionId",
      "path" : "getterminologysubset.Subset.Concept.LocalOrganizationExtensionId",
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
      "id" : "getterminologysubset.ResultCode",
      "path" : "getterminologysubset.ResultCode",
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
      "id" : "getterminologysubset.comment",
      "path" : "getterminologysubset.comment",
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
