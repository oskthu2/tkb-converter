# GetTerminologySubsetInformation — Response - infrastructure: informationstructureservice: terminology v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTerminologySubsetInformation — Response**

## Logical Model: GetTerminologySubsetInformation — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubsetinformation | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetTerminologySubsetInformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetTerminologySubsetInformation (urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-informationstructureservice-terminology|current/StructureDefinition/StructureDefinition-getterminologysubsetinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getterminologysubsetinformation.csv), [Excel](StructureDefinition-getterminologysubsetinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getterminologysubsetinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubsetinformation",
  "version" : "1.0.0",
  "name" : "GetTerminologySubsetInformation",
  "title" : "GetTerminologySubsetInformation — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:32:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetTerminologySubsetInformation\n(urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-informationstructureservice-terminology/StructureDefinition/getterminologysubsetinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getterminologysubsetinformation",
      "path" : "getterminologysubsetinformation",
      "short" : "GetTerminologySubsetInformation — Response",
      "definition" : "Logisk modell för svaret i GetTerminologySubsetInformation\n(urn:riv:infrastructure:informationstructureservice:terminology:GetTerminologySubsetInformationResponder:1, GetTerminologySubsetInformationResponseType)."
    },
    {
      "id" : "getterminologysubsetinformation.SubsetInformation",
      "path" : "getterminologysubsetinformation.SubsetInformation",
      "short" : "SubsetInformation",
      "definition" : "SubsetInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getterminologysubsetinformation.SubsetInformation.SubsetIdentity",
      "path" : "getterminologysubsetinformation.SubsetInformation.SubsetIdentity",
      "short" : "SubsetIdentity",
      "definition" : "Identifierare av urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubsetinformation.SubsetInformation.Name",
      "path" : "getterminologysubsetinformation.SubsetInformation.Name",
      "short" : "Name",
      "definition" : "Namn som representerar urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubsetinformation.SubsetInformation.Version",
      "path" : "getterminologysubsetinformation.SubsetInformation.Version",
      "short" : "Version",
      "definition" : "Version för urval (XML-attribut.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubsetinformation.ResultCode",
      "path" : "getterminologysubsetinformation.ResultCode",
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
      "id" : "getterminologysubsetinformation.comment",
      "path" : "getterminologysubsetinformation.comment",
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
