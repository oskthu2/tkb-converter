# LookupResidentForFullProfile — Request - population: residentmaster v1.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LookupResidentForFullProfile — Request**

## Logical Model: LookupResidentForFullProfile — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/lookupresidentforfullprofile-request | *Version*:1.2 |
| Active as of 2026-11-06 | *Computable Name*:LookupResidentForFullProfileRequest |
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
  "date" : "2026-11-06T21:42:05+00:00",
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
      "short" : "Personnummer att slå upp",
      "definition" : "Personnummer på format ÅÅÅÅMMDDNNNN. Flera personnummer kan anges i samma fråga. `personId` kan även vara reservnummer i det fall tjänstekonsumenten är en regional/lokal instans (format specifikt för aktuellt reservnummerkodverk). Se begränsning på antal `personId` enl. SLA-krav (avsnitt 4.6, max 1000/anrop)",
      "comment" : "TKB-fält: `personId` (`Text`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification",
      "short" : "Uppslagsbegränsning",
      "definition" : "Urvalsbegränsning. Se datatypbeskrivning i avsnitt 5.2. _Obligatoriskt element enligt XSD, även om samtliga dess underfält är valfria — se ASSUME-PRM-001_",
      "comment" : "TKB-fält: `lookUpSpecification` (`LookUpSpecificationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Urvalsbegränsning enligt datatypen LookUpSpecificationType (avsnitt 5.2).\nElementet är enligt käll-XSD:t obligatoriskt även om samtliga dess underfält är\nvalfria — se ASSUME-PRM-001 i QUESTIONS.md.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification.avregistreringsorsak",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification.avregistreringsorsak",
      "short" : "Begränsning på avregistreringsorsak",
      "definition" : "2 tecken per värde. Ett eller flera värden ur AvregistreringsorsakKodKomplettTYPE\nbegränsar svaret till personer med någon av angivna avregistreringsorsaker.\nVärdet \"  \" (två blanktecken) begränsar svaret till personer utan\navregistreringsorsak. Värdet \"OO\" begränsar svaret till personer med\navregistreringskod som avviker från \"AV\" och \"GN\" (bakåtkompatibilitet med 1.0).\nUtelämnat fält innebär ingen begränsning.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification.sekretessmarkeringFilter",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification.sekretessmarkeringFilter",
      "short" : "Begränsning på sekretessmarkering",
      "definition" : "true (J) = returnera endast poster med sekretessmarkering. false (N) =\nreturnera endast poster utan sekretessmarkering (eller utan angiven\nsekretessmarkering).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification.senasteAndringFolkbokforingFilter",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification.senasteAndringFolkbokforingFilter",
      "short" : "Begränsning på senaste ändringsdatum",
      "definition" : "Endast poster med senare datum i fältet SenasteAndringFolkbokforing än angivet\ndatum returneras. Strikt olikhet används — poster med samma datum returneras\ninte.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile-request.lookUpSpecification.historiskTidpunkt",
      "path" : "lookupresidentforfullprofile-request.lookUpSpecification.historiskTidpunkt",
      "short" : "Historisk tidpunkt",
      "definition" : "Anger historisk tidpunkt i syfte att svaret ska spegla personuppgifternas\nvärden vid denna tidpunkt. Kan inte kombineras med\nsenasteAndringFolkbokforingFilter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
