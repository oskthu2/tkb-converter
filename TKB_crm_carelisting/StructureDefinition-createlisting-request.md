# CreateListing — Request - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateListing — Request**

## Logical Model: CreateListing — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting-request | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:CreateListingRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet CreateListing (Göra tjänsteval). (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-createlisting-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createlisting-request.csv), [Excel](StructureDefinition-createlisting-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createlisting-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting-request",
  "version" : "1.0",
  "name" : "CreateListingRequest",
  "title" : "CreateListing — Request",
  "status" : "active",
  "date" : "2026-11-09T03:25:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet CreateListing (Göra tjänsteval).\n(RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createlisting-request",
      "path" : "createlisting-request",
      "short" : "CreateListing — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet CreateListing (Göra tjänsteval).\n(RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1)."
    },
    {
      "id" : "createlisting-request.personId",
      "path" : "createlisting-request.personId",
      "short" : "personId",
      "definition" : "Personnummer för den person som önskar göra ett tjänsteval.",
      "comment" : "TKB-fält: `personId` (`string (SubjectOfCareIdType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/SubjectOfCareIdType"]
      }]
    },
    {
      "id" : "createlisting-request.listingType",
      "path" : "createlisting-request.listingType",
      "short" : "Typ av listning som man önskar göra, t.ex BVC.",
      "definition" : "Typ av listning som önskas, t.ex. BVC.",
      "comment" : "TKB-fält: `listingType` (`string (ListingType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.healthcare-facility",
      "path" : "createlisting-request.healthcare_facility",
      "short" : "Vårdenhet",
      "definition" : "HSA-ID för den vårdenhet som personen önskar lista sig på.",
      "comment" : "TKB-fält: `healthcare_facility` (`string (HsaIdType)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.healthcare-professional",
      "path" : "createlisting-request.healthcare_professional",
      "short" : "resurs att lista sig på",
      "definition" : "HSA-ID för specifik resurs (läkare/husläkarteam) att lista sig på.",
      "comment" : "TKB-fält: `healthcare_professional` (`string (HsaIdType)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.addToQueue",
      "path" : "createlisting-request.addToQueue",
      "short" : "Anger om personen vill ställa sig i kö om det är kö på vårdenheten/resursen.",
      "definition" : "Anger om personen vill ställa sig i kö om det är kö på vårdenheten/resursen.",
      "comment" : "TKB-fält: `addToQueue` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
