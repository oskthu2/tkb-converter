# GetListingTypes — Response - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListingTypes — Response**

## Logical Model: GetListingTypes — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetListingTypes |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetListingTypes (urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-getlistingtypes.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlistingtypes.csv), [Excel](StructureDefinition-getlistingtypes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlistingtypes",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes",
  "version" : "2.0",
  "name" : "GetListingTypes",
  "title" : "GetListingTypes — Response",
  "status" : "active",
  "date" : "2026-11-09T03:52:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetListingTypes\n(urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/getlistingtypes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlistingtypes",
      "path" : "getlistingtypes",
      "short" : "GetListingTypes — Response",
      "definition" : "Logisk modell för svaret i GetListingTypes\n(urn:riv:supportprocess:logistics:carelisting:GetListingTypesResponder:2, GetListingTypesResponseType)."
    },
    {
      "id" : "getlistingtypes.listingTypes",
      "path" : "getlistingtypes.listingTypes",
      "short" : "listingTypes",
      "definition" : "Listningstyper som producent erbjuder.\n\nSe listningstyper i referens [R3]",
      "comment" : "TKB-fält: `listingTypes` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getlistingtypes.resultCode",
      "path" : "getlistingtypes.resultCode",
      "short" : "resultCode",
      "definition" : "Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket.",
      "comment" : "TKB-fält: `listingTypes.code`.\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR, INFO, ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED, ERROR_MAXIMUM_CITIZEN_REACHED_ON_CAREUNIT, ERROR_GUARDIAN_CONSENT_NEEDED, ERROR_AGE_LIMIT.",
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
      "id" : "getlistingtypes.resultText",
      "path" : "getlistingtypes.resultText",
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
