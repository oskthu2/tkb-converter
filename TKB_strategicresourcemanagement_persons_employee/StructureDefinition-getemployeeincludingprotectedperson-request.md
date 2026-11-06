# GetEmployeeIncludingProtectedPerson — Request - strategicresourcemanagement: persons: employee v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEmployeeIncludingProtectedPerson — Request**

## Logical Model: GetEmployeeIncludingProtectedPerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployeeincludingprotectedperson-request | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetEmployeeIncludingProtectedPersonRequest |
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
  "version" : "2.0",
  "name" : "GetEmployeeIncludingProtectedPersonRequest",
  "title" : "GetEmployeeIncludingProtectedPerson — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:49:54+00:00",
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
      "definition" : "Logisk modell för begäran i GetEmployeeIncludingProtectedPerson\n(urn:riv:strategicresourcemanagement:persons:employee:GetEmployeeIncludingProtectedPersonResponder:2, GetEmployeeIncludingProtectedPersonType), inklusive SOAP-huvuden enligt WSDL.",
      "constraint" : [{
        "key" : "getemployeeprotected-request-hsaid-xor-pnr",
        "severity" : "error",
        "human" : "Exakt ett av personHsaId och personalIdentityNumber ska anges (xs:choice i schemat).",
        "expression" : "personHsaId.exists() xor personalIdentityNumber.exists()",
        "source" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-employee/StructureDefinition/getemployeeincludingprotectedperson-request"
      }]
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
      "definition" : "Sökt persons HSA-id.",
      "comment" : "TKB-fält: `personHsaId *1)` (`String`, kardinalitet 0..1).",
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
      "definition" : "Sökt persons Person-id (personnummer eller samordningsnummer)",
      "comment" : "TKB-fält: `personalIdentityNumber *1)` (`String`, kardinalitet 0..1).",
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
      "definition" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas.",
      "comment" : "TKB-fält: `searchBase *2)` (`DN`, kardinalitet 0..1).",
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
      "definition" : "true: om metoden ska leverera svar med fingerade objekt. Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras.",
      "comment" : "TKB-fält: `includeFeignedObject` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
