# GetAvailableFacilities - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableFacilities**

## Logical Model: GetAvailableFacilities 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getavailablefacilities | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAvailableFacilities |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare) (RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1). Representerar responsens informationsstruktur. Hämtar lista med tillgängliga vårdenheter (tjänsteutövare) inom en region. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-getavailablefacilities.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablefacilities.csv), [Excel](StructureDefinition-getavailablefacilities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablefacilities",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getavailablefacilities",
  "version" : "1.0",
  "name" : "GetAvailableFacilities",
  "title" : "GetAvailableFacilities",
  "status" : "active",
  "date" : "2026-11-09T03:25:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare)\n(RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1).\nRepresenterar responsens informationsstruktur.\nHämtar lista med tillgängliga vårdenheter (tjänsteutövare) inom en region.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getavailablefacilities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablefacilities",
      "path" : "getavailablefacilities",
      "short" : "GetAvailableFacilities",
      "definition" : "Logisk modell för tjänstekontraktet GetAvailableFacilities (Visa möjliga tjänsteutövare)\n(RIV-TA urn:riv:crm:carelisting:GetAvailableFacilitiesResponder:1).\nRepresenterar responsens informationsstruktur.\nHämtar lista med tillgängliga vårdenheter (tjänsteutövare) inom en region."
    },
    {
      "id" : "getavailablefacilities.healthcare-facilities",
      "path" : "getavailablefacilities.healthcare_facilities",
      "short" : "Facility",
      "definition" : "Lista med tillgängliga vårdenheter.",
      "comment" : "TKB-fält: `healthcare_facilities` (`Facility`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailablefacilities.healthcare-facilities.facilityId",
      "path" : "getavailablefacilities.healthcare_facilities.facilityId",
      "short" : "facilityId",
      "definition" : "HSA-ID för vårdenheten.",
      "comment" : "TKB-fält: `healthcare_facilities.facilityId` (`string (HsaIdType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablefacilities.healthcare-facilities.hasQueue",
      "path" : "getavailablefacilities.healthcare_facilities.hasQueue",
      "short" : "Indikerar om vårdenheten har kö vid listningar. Kan utelämnas om information inte har någon betydelse i kontexten.",
      "definition" : "Indikerar om vårdenheten har kö vid listningar.",
      "comment" : "TKB-fält: `healthcare_facilities.hasQueue` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailablefacilities.healthcare-facilities.supportedListingTypes",
      "path" : "getavailablefacilities.healthcare_facilities.supportedListingTypes",
      "short" : "supportedListingTypes",
      "definition" : "Lista med listningstyper som vårdenheten stödjer.",
      "comment" : "TKB-fält: `healthcare_facilities.supportedListingTypes` (`string (ListingType)`, kardinalitet 0..*).\n\n**Modellanteckning:** Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablefacilities.healthcare-facilities.facilityName",
      "path" : "getavailablefacilities.healthcare_facilities.facilityName",
      "short" : "Namn på vårdenheten.",
      "definition" : "Namn på vårdenheten.",
      "comment" : "TKB-fält: `healthcare_facilities.facilityName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
