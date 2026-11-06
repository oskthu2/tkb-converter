# GetPersonQueueStatus - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonQueueStatus**

## Logical Model: GetPersonQueueStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getpersonqueuestatus | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:GetPersonQueueStatus |
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
  "date" : "2026-11-06T21:10:46+00:00",
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
      "short" : "Köstatus: inQueue eller notInQueue",
      "definition" : "Köstatus: `inQueue` (i kö) eller `notInQueue` (inte i kö).",
      "comment" : "TKB-fält: `queueStatus` (`code (PersonQueueStatus)`, kardinalitet 1..1).\n\n**Modellanteckning:** Köstatus för personen i fråga.\nTillåtna värden: inQueue (i kö) eller notInQueue (inte i kö).\nKodverk: PersonQueueStatusVS.",
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
      "id" : "getpersonqueuestatus.healthcareFacility",
      "path" : "getpersonqueuestatus.healthcareFacility",
      "short" : "Vårdenhet vars köstatus gäller",
      "definition" : "Vårdenhet vars köstatus gäller.",
      "comment" : "TKB-fält: `healthcare_facility` (`Facility`, kardinalitet 0..1).\n\n**Modellanteckning:** Facility: vårdenhet där eventuell köstatus föreligger.\nUtelämnas om personen inte är i kö.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonqueuestatus.healthcareFacility.facilityId",
      "path" : "getpersonqueuestatus.healthcareFacility.facilityId",
      "short" : "HSA-ID för vårdenheten",
      "definition" : "HSA-ID för vårdenheten.",
      "comment" : "TKB-fält: `healthcare_facility.facilityId` (`string (HsaIdType)`, kardinalitet 1..1).\n\n**Modellanteckning:** HSA-ID för vårdenheten.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA-id).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getpersonqueuestatus.healthcareFacility.facilityName",
      "path" : "getpersonqueuestatus.healthcareFacility.facilityName",
      "short" : "Namn på vårdenheten",
      "definition" : "Namn på vårdenheten.",
      "comment" : "TKB-fält: `healthcare_facility.facilityName` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Enhetens officiella namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonqueuestatus.healthcareFacility.hasQueue",
      "path" : "getpersonqueuestatus.healthcareFacility.hasQueue",
      "short" : "Indikerar om vårdenheten har kö",
      "definition" : "Indikerar om vårdenheten har kö.",
      "comment" : "TKB-fält: `healthcare_facility.hasQueue` (`boolean`, kardinalitet 0..1).\n\n**Modellanteckning:** Boolskt värde som indikerar om vårdenheten har kö.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersonqueuestatus.healthcareFacility.supportedListingTypes",
      "path" : "getpersonqueuestatus.healthcareFacility.supportedListingTypes",
      "short" : "Listningstyper som vårdenheten stödjer",
      "definition" : "Lista med listningstyper som vårdenheten stödjer.",
      "comment" : "TKB-fält: `healthcare_facility.supportedListingTypes` (`string (ListingType)`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
