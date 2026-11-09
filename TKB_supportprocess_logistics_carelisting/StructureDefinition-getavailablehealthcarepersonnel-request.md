# GetAvailableHealthcarePersonnel — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableHealthcarePersonnel — Request**

## Logical Model: GetAvailableHealthcarePersonnel — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAvailableHealthcarePersonnelRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAvailableHealthcarePersonnel (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getavailablehealthcarepersonnel-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablehealthcarepersonnel-request.csv), [Excel](StructureDefinition-getavailablehealthcarepersonnel-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablehealthcarepersonnel-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request",
  "version" : "2.0",
  "name" : "GetAvailableHealthcarePersonnelRequest",
  "title" : "GetAvailableHealthcarePersonnel — Request",
  "status" : "active",
  "date" : "2026-11-09T03:52:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAvailableHealthcarePersonnel\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarepersonnel-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablehealthcarepersonnel-request",
      "path" : "getavailablehealthcarepersonnel-request",
      "short" : "GetAvailableHealthcarePersonnel — Request",
      "definition" : "Logisk modell för begäran i GetAvailableHealthcarePersonnel\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.personId",
      "path" : "getavailablehealthcarepersonnel-request.personId",
      "short" : "personId",
      "definition" : "Invånares personnummer",
      "comment" : "TKB-fält: `personId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.healthcareFacilityHSAId",
      "path" : "getavailablehealthcarepersonnel-request.healthcareFacilityHSAId",
      "short" : "healthcareFacilityHSAId",
      "definition" : "healthcareFacilityHSAId",
      "comment" : "TKB-fält: `healthcareFacilityHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getavailablehealthcarepersonnel-request.listingTypes",
      "path" : "getavailablehealthcarepersonnel-request.listingTypes",
      "short" : "listingTypes",
      "definition" : "Lista med listningstyper som konsument önskar filtrera på. Se listningstyper i referens [R3]",
      "comment" : "TKB-fält: `listingTypes` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/CVType"
      }]
    }]
  }
}

```
