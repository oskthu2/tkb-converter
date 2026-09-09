# GetAvailableFacilities - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableFacilities**

## Logical Model: GetAvailableFacilities 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getavailablefacilities | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetAvailableFacilities |
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
  "version" : "1.0.0",
  "name" : "GetAvailableFacilities",
  "title" : "GetAvailableFacilities",
  "status" : "draft",
  "date" : "2026-09-09T16:48:50+00:00",
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
      "id" : "getavailablefacilities.healthcareFacilities",
      "path" : "getavailablefacilities.healthcareFacilities",
      "short" : "Lista med tillgängliga vårdenheter",
      "definition" : "Facility: lista med tillgängliga vårdenheter i regionen.\nKardinalitet: Obligatorisk, lista.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailablefacilities.healthcareFacilities.facilityId",
      "path" : "getavailablefacilities.healthcareFacilities.facilityId",
      "short" : "HSA-ID för vårdenheten",
      "definition" : "HSA-ID eller alternativt Orgnr+lokalt id för vårdenheten.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA-id).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getavailablefacilities.healthcareFacilities.facilityName",
      "path" : "getavailablefacilities.healthcareFacilities.facilityName",
      "short" : "Namn på vårdenheten",
      "definition" : "Enhetens officiella namn.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablefacilities.healthcareFacilities.hasQueue",
      "path" : "getavailablefacilities.healthcareFacilities.hasQueue",
      "short" : "Indikerar om vårdenheten har kö",
      "definition" : "Boolskt värde som indikerar om vårdenheten har kö vid listningar.\nKan utelämnas om information saknas eller inte behövs i kontexten.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailablefacilities.healthcareFacilities.supportedListingTypes",
      "path" : "getavailablefacilities.healthcareFacilities.supportedListingTypes",
      "short" : "Listningstyper som vårdenheten stödjer",
      "definition" : "Lista med listningstyper som vårdenheten stödjer.\nKan utelämnas om information saknas eller inte behövs.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
