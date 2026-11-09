# GetAvailableHealthcareFacilities — Response - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableHealthcareFacilities — Response**

## Logical Model: GetAvailableHealthcareFacilities — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities | *Version*:2.1 |
| Active as of 2026-11-09 | *Computable Name*:GetAvailableHealthcareFacilities |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetAvailableHealthcareFacilities (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getavailablehealthcarefacilities.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailablehealthcarefacilities.csv), [Excel](StructureDefinition-getavailablehealthcarefacilities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailablehealthcarefacilities",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities",
  "version" : "2.1",
  "name" : "GetAvailableHealthcareFacilities",
  "title" : "GetAvailableHealthcareFacilities — Response",
  "status" : "active",
  "date" : "2026-11-09T03:52:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetAvailableHealthcareFacilities\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getavailablehealthcarefacilities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailablehealthcarefacilities",
      "path" : "getavailablehealthcarefacilities",
      "short" : "GetAvailableHealthcareFacilities — Response",
      "definition" : "Logisk modell för svaret i GetAvailableHealthcareFacilities\n(urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcareFacilitiesResponder:2, GetAvailableHealthcareFacilitiesResponseType)."
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities",
      "short" : "HealthcareFacilityType",
      "definition" : "Lista med de listningsbara mottagningarna, baserat på filtervärden i begäran.",
      "comment" : "TKB-fält: `healthcareFacilities` (`HealthcareFacilityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.id",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.id",
      "short" : "id",
      "definition" : "HSAId för mottagningen\n\nEn tjänstekonsument bör kunna hantera HSAId:n som uttrycks både med versaler och gemener.\n\nExempelvis är:\n\n”se12345-xyz” = ”SE12345-XYZ”",
      "comment" : "TKB-fält: `healthcareFacilities.id` (`HSAIdType / (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.name",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.name",
      "short" : "Namn på vårdenheten.",
      "definition" : "Namn på vårdenheten",
      "comment" : "TKB-fält: `healthcareFacilities.name` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.hasQueue",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.hasQueue",
      "short" : "hasQueue",
      "definition" : "Visar huruvida mottagningen erbjuder kö när mottagningens maximala kvot av listade invånare har nåtts.\n\nSkall endast sättas till TRUE om mottagningens maximala kvot uppnåtts och mottagningen erbjuder kö till listning, således:\n\nTRUE = Maximala antalet invånare som mottagningen får lista är uppnått samt listningskö erbjuds\n\nFALSE = För övrigt",
      "comment" : "TKB-fält: `healthcareFacilities.hasQueue` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportedListingTypes",
      "short" : "supportedListingTypes",
      "definition" : "Lista med olika listningstyper som mottagningen erbjuder.\n\nOm attributet är utelämnat innebär det att mottagningen endast erbjuder listning av typen öppenvårdsmottagning/primärvård. Se listningstyper i Informationsspecifikationen R3.",
      "comment" : "TKB-fält: `healthcareFacilities.supportedListingTypes` (`CVType`, kardinalitet 0..1).\n\nObs: modellen anger 0..* där TKB:n anger 0..1.\n\n**Modellanteckning:** Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.supportsHealthcarePersonnel",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.supportsHealthcarePersonnel",
      "short" : "supportsHealthcarePersonnel",
      "definition" : "Visar huruvida mottagningen erbjuder möjlighet att i samband med listning även välja specifik vårdpersonal, d v s ”fast läkarkontakt\".\n\nDet är frivilligt för region att erbjuda denna möjlighet. Om möjligheten erbjuds behöver regionens listningssystem även stödja tjänstekontraktet GetAvailableHealthcarePersonnel som producent.\n\nTRUE = mottagningen erbjuder fast läkarkontakt.\n\nUtelämnas eller sätts till FALSE om mottagningen inte erbjuder fast läkarkontakt.",
      "comment" : "TKB-fält: `healthcareFacilities.supportsHealthcarePersonnel` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.queueLength",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.queueLength",
      "short" : "queueLength",
      "definition" : "Nytt attribut fr o m version 2.1.\n\nOm mottagningens maxtak på antalet listade invånare har uppnåtts kan mottagningen meddela hur lång kön är just nu.",
      "comment" : "TKB-fält: `healthcareFacilities.queueLength` (`integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.healthcareFacilities.estimatedWaitInQueue",
      "path" : "getavailablehealthcarefacilities.healthcareFacilities.estimatedWaitInQueue",
      "short" : "estimatedWaitInQueue",
      "definition" : "Nytt attribut fr o m version 2.1.\n\nOm mottagningens maxtak på antalet listade invånare har uppnåtts kan mottagningen meddela hur lång den uppskattade väntetiden är tills invånare kan få en listningsplats. Uppskattad väntetid anges i antal dagar och sätts frivilligt av listningssystemet endast då mpttagningens maxtak har uppnåtts och att mottagningen erbjuder kö.",
      "comment" : "TKB-fält: `healthcareFacilities.estimatedWaitInQueue` (`integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getavailablehealthcarefacilities.resultCode",
      "path" : "getavailablehealthcarefacilities.resultCode",
      "short" : "resultCode",
      "definition" : "Kod för listningstypen som mottagningen stödjer.",
      "comment" : "TKB-fält: `healthcareFacilities.supportedListingTypes.code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED, ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT, ERROR_GUARDIAN_CONSENT_NEEDED, ERROR_AGE_LIMIT.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-resultcode-vs"
      }
    },
    {
      "id" : "getavailablehealthcarefacilities.resultText",
      "path" : "getavailablehealthcarefacilities.resultText",
      "short" : "resultText",
      "definition" : "Kan utelämnas om resultCode = OK.\n\nProducent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR",
      "comment" : "TKB-fält: `resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
