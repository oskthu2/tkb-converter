# GetAvailableFacilities — Request - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableFacilities — Request**

## Logical Model: GetAvailableFacilities — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getavailablefacilities-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAvailableFacilitiesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare). (RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-getavailablefacilities-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablefacilities-request.csv), [Excel](StructureDefinition-getavailablefacilities-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablefacilities-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getavailablefacilities-request",
  "version" : "1.0",
  "name" : "GetAvailableFacilitiesRequest",
  "title" : "GetAvailableFacilities — Request",
  "status" : "active",
  "date" : "2026-11-09T03:25:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare).\n(RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getavailablefacilities-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablefacilities-request",
      "path" : "getavailablefacilities-request",
      "short" : "GetAvailableFacilities — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare).\n(RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1)."
    },
    {
      "id" : "getavailablefacilities-request.countyCode",
      "path" : "getavailablefacilities-request.countyCode",
      "short" : "countyCode",
      "definition" : "Länskod (SCB-kod) för regionen vars tillgängliga vårdenheter söks.",
      "comment" : "TKB-fält: `countyCode` (`string (CountyCode)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablefacilities-request.healthcare-facilities",
      "path" : "getavailablefacilities-request.healthcare_facilities",
      "short" : "healthcare_facilities",
      "definition" : "Lista med HSA-ID:n för specifika vårdenheter att hämta information om. Tom lista = hämta alla.",
      "comment" : "TKB-fält: `healthcare_facilities` (`string (HsaIdType)`, kardinalitet 0..*).\n\n**Modellanteckning:** Lista med Vårdenheter som man önskar information om eller tom sträng \"\" om information om alla tillgängliga vårdenehter ska hämtas.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablefacilities-request.listingType",
      "path" : "getavailablefacilities-request.listingType",
      "short" : "Anger vilka typer av vårdenheter som skall sökas fram. Om inget anges så hämtas alla.",
      "definition" : "Anger vilka typer av vårdenheter som skall sökas fram. Om inget anges hämtas alla.",
      "comment" : "TKB-fält: `listingType` (`string (ListingType)`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
