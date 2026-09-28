# GetEmployeeIncludingProtectedPerson — Request - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEmployeeIncludingProtectedPerson — Request**

## Logical Model: GetEmployeeIncludingProtectedPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployeeincludingprotectedperson-request | *Version*:2.0.0-rc1 |
| Draft as of 2026-09-28 | *Computable Name*:GetEmployeeIncludingProtectedPersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetEmployeeIncludingProtectedPerson (urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-employee|current/StructureDefinition/StructureDefinition-getemployeeincludingprotectedperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getemployeeincludingprotectedperson-request.csv), [Excel](StructureDefinition-getemployeeincludingprotectedperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getemployeeincludingprotectedperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployeeincludingprotectedperson-request",
  "version" : "2.0.0-rc1",
  "name" : "GetEmployeeIncludingProtectedPersonRequest",
  "title" : "GetEmployeeIncludingProtectedPerson — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:22:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetEmployeeIncludingProtectedPerson\n(urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployeeincludingprotectedperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getemployeeincludingprotectedperson-request",
      "path" : "getemployeeincludingprotectedperson-request",
      "short" : "GetEmployeeIncludingProtectedPerson — Request",
      "definition" : "Logisk modell för begäran i GetEmployeeIncludingProtectedPerson\n(urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.logicalAddress",
      "path" : "getemployeeincludingprotectedperson-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The HSA-id of the source system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.personHsaId",
      "path" : "getemployeeincludingprotectedperson-request.personHsaId",
      "short" : "personHsaId",
      "definition" : "personHsaId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.personalIdentityNumber",
      "path" : "getemployeeincludingprotectedperson-request.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.searchBase",
      "path" : "getemployeeincludingprotectedperson-request.searchBase",
      "short" : "searchBase",
      "definition" : "searchBase",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getemployeeincludingprotectedperson-request.includeFeignedObject",
      "path" : "getemployeeincludingprotectedperson-request.includeFeignedObject",
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
