# GetAvailableHealthcareFacilities — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableHealthcareFacilities — Request**

## Logical Model: GetAvailableHealthcareFacilities — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities-request | *Version*:2.1 |
| Active as of 2026-11-09 | *Computable Name*:GetAvailableHealthcareFacilitiesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetAvailableHealthcareFacilities (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getavailablehealthcarefacilities-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablehealthcarefacilities-request.csv), [Excel](StructureDefinition-getavailablehealthcarefacilities-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablehealthcarefacilities-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities-request",
  "version" : "2.1",
  "name" : "GetAvailableHealthcareFacilitiesRequest",
  "title" : "GetAvailableHealthcareFacilities — Request",
  "status" : "active",
  "date" : "2026-11-09T03:52:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetAvailableHealthcareFacilities\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablehealthcarefacilities-request",
      "path" : "getavailablehealthcarefacilities-request",
      "short" : "GetAvailableHealthcareFacilities — Request",
      "definition" : "Logisk modell för begäran i GetAvailableHealthcareFacilities\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getavailablehealthcarefacilities-request.healthcareFacilities",
      "path" : "getavailablehealthcarefacilities-request.healthcareFacilities",
      "short" : "healthcareFacilities",
      "definition" : "En lista med HSAId:n som tjänstekonsument önskar hämta/filtrera på.\n\nEn tjänsteproducent ska kunna hantera HSAId:n som uttrycks både med versaler eller gemener.\n\nExempelvis är:\n\n”se12345-xyz” = ”SE12345-XYZ”",
      "comment" : "TKB-fält: `healthcareFacilities` (`HSAIdType / (string)`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities-request.listingTypes",
      "path" : "getavailablehealthcarefacilities-request.listingTypes",
      "short" : "listingTypes",
      "definition" : "Lista med listningstyper som tjänstekonsument önskar filtrera listningsbara mottagningar på. Se listningstyper i referens [R3]",
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
