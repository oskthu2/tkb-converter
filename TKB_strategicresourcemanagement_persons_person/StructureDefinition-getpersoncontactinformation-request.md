# GetPersonContactInformation — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonContactInformation — Request**

## Logical Model: GetPersonContactInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformation-request | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetPersonContactInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetPersonContactInformation (urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-getpersoncontactinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpersoncontactinformation-request.csv), [Excel](StructureDefinition-getpersoncontactinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpersoncontactinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformation-request",
  "version" : "5.1.0",
  "name" : "GetPersonContactInformationRequest",
  "title" : "GetPersonContactInformation — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetPersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpersoncontactinformation-request",
      "path" : "getpersoncontactinformation-request",
      "short" : "GetPersonContactInformation — Request",
      "definition" : "Logisk modell för begäran i GetPersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getpersoncontactinformation-request.logicalAddress",
      "path" : "getpersoncontactinformation-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. http://tempuri.org",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation-request.personId",
      "path" : "getpersoncontactinformation-request.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformation-request.personId.root",
      "path" : "getpersoncontactinformation-request.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation-request.personId.iiExtension",
      "path" : "getpersoncontactinformation-request.personId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
