# GetPersonQueueStatus - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonQueueStatus**

## Logical Model: GetPersonQueueStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getpersonqueuestatus | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetPersonQueueStatus |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetPersonQueueStatus (Visa köstatus) (RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1). Representerar responsens informationsstruktur. Hämtar köstatus för en person — returnerar om personen är i kö samt vilken vårdenhet köstatusen gäller för. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-getpersonqueuestatus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpersonqueuestatus.csv), [Excel](StructureDefinition-getpersonqueuestatus.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpersonqueuestatus",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getpersonqueuestatus",
  "version" : "1.0",
  "name" : "GetPersonQueueStatus",
  "title" : "GetPersonQueueStatus",
  "status" : "active",
  "date" : "2026-11-09T03:25:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetPersonQueueStatus (Visa köstatus)\n(RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1).\nRepresenterar responsens informationsstruktur.\nHämtar köstatus för en person — returnerar om personen är i kö samt\nvilken vårdenhet köstatusen gäller för.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getpersonqueuestatus",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpersonqueuestatus",
      "path" : "getpersonqueuestatus",
      "short" : "GetPersonQueueStatus",
      "definition" : "Logisk modell för tjänstekontraktet GetPersonQueueStatus (Visa köstatus)\n(RIV-TA urn:riv:crm:carelisting:GetPersonQueueStatusResponder:1).\nRepresenterar responsens informationsstruktur.\nHämtar köstatus för en person — returnerar om personen är i kö samt\nvilken vårdenhet köstatusen gäller för."
    },
    {
      "id" : "getpersonqueuestatus.queueStatus",
      "path" : "getpersonqueuestatus.queueStatus",
      "short" : "queueStatus",
      "definition" : "Köstatus: `inQueue` (i kö) eller `notInQueue` (inte i kö).",
      "comment" : "TKB-fält: `queueStatus` (`code (PersonQueueStatus)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/crm-carelisting/ValueSet/personqueuestatus-vs"
      }
    },
    {
      "id" : "getpersonqueuestatus.healthcare-facility",
      "path" : "getpersonqueuestatus.healthcare_facility",
      "short" : "Facility",
      "definition" : "Vårdenhet vars köstatus gäller.",
      "comment" : "TKB-fält: `healthcare_facility` (`Facility`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersonqueuestatus.healthcare-facility.facilityId",
      "path" : "getpersonqueuestatus.healthcare_facility.facilityId",
      "short" : "facilityId",
      "definition" : "HSA-ID för vårdenheten.",
      "comment" : "TKB-fält: `healthcare_facility.facilityId` (`string (HsaIdType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonqueuestatus.healthcare-facility.hasQueue",
      "path" : "getpersonqueuestatus.healthcare_facility.hasQueue",
      "short" : "Indikerar om vårdenheten har kö vid listningar. Kan utelämnas om information inte har någon betydelse i kontexten.",
      "definition" : "Indikerar om vårdenheten har kö.",
      "comment" : "TKB-fält: `healthcare_facility.hasQueue` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersonqueuestatus.healthcare-facility.supportedListingTypes",
      "path" : "getpersonqueuestatus.healthcare_facility.supportedListingTypes",
      "short" : "supportedListingTypes",
      "definition" : "Lista med listningstyper som vårdenheten stödjer.",
      "comment" : "TKB-fält: `healthcare_facility.supportedListingTypes` (`string (ListingType)`, kardinalitet 0..*).\n\n**Modellanteckning:** Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonqueuestatus.healthcare-facility.facilityName",
      "path" : "getpersonqueuestatus.healthcare_facility.facilityName",
      "short" : "Namn på vårdenheten.",
      "definition" : "Namn på vårdenheten.",
      "comment" : "TKB-fält: `healthcare_facility.facilityName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
