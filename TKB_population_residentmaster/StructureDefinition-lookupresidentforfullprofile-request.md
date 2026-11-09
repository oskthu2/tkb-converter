# LookupResidentForFullProfile — Request - population: residentmaster v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LookupResidentForFullProfile — Request**

## Logical Model: LookupResidentForFullProfile — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/lookupresidentforfullprofile-request | *Version*:1.2 |
| Active as of 2026-11-09 | *Computable Name*:LookupResidentForFullProfileRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i LookupResidentForFullProfile (RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.population-residentmaster|current/StructureDefinition/StructureDefinition-lookupresidentforfullprofile-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lookupresidentforfullprofile-request.csv), [Excel](StructureDefinition-lookupresidentforfullprofile-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lookupresidentforfullprofile-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/lookupresidentforfullprofile-request",
  "version" : "1.2",
  "name" : "LookupResidentForFullProfileRequest",
  "title" : "LookupResidentForFullProfile — Request",
  "status" : "active",
  "date" : "2026-11-09T03:46:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i LookupResidentForFullProfile\n(RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/lookupresidentforfullprofile-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lookupresidentforfullprofile-request",
      "path" : "lookupresidentforfullprofile-request",
      "short" : "LookupResidentForFullProfile — Request",
      "definition" : "Logisk modell för requestparametrar i LookupResidentForFullProfile\n(RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1)."
    },
    {
      "id" : "lookupresidentforfullprofile-request.personId",
      "path" : "lookupresidentforfullprofile-request.personId",
      "short" : "personId",
      "definition" : "Personnummer på format ÅÅÅÅMMDDNNNN. Flera personnummer kan anges i samma fråga. `personId` kan även vara reservnummer i det fall tjänstekonsumenten är en regional/lokal instans (format specifikt för aktuellt reservnummerkodverk). Se begränsning på antal `personId` enl. SLA-krav (avsnitt 4.6, max 1000/anrop)",
      "comment" : "TKB-fält: `personId` (`Text`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification",
      "short" : "LookUpSpecificationType",
      "definition" : "Urvalsbegränsning. Se datatypbeskrivning i avsnitt 5.2. _Obligatoriskt element enligt XSD, även om samtliga dess underfält är valfria — se ASSUME-PRM-001_",
      "comment" : "TKB-fält: `lookUpSpecification` (`LookUpSpecificationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification.Avregistreringsorsak",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification.Avregistreringsorsak",
      "short" : "Avregistreringsorsak",
      "definition" : "Avregistreringsorsak",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification.Sekretessmarkering",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification.Sekretessmarkering",
      "short" : "Sekretessmarkering",
      "definition" : "Sekretessmarkering Tillåtna värden: J, N.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification.SenasteAndringFolkbokforing",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification.SenasteAndringFolkbokforing",
      "short" : "SenasteAndringFolkbokforing",
      "definition" : "SenasteAndringFolkbokforing",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/DT"]
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification.historiskTidpunkt",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification.historiskTidpunkt",
      "short" : "historiskTidpunkt",
      "definition" : "historiskTidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/TS"]
      }]
    }]
  }
}

```
