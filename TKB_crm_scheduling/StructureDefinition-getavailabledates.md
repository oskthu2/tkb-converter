# GetAvailableDates - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAvailableDates**

## Logical Model: GetAvailableDates 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabledates | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetAvailableDates |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAvailableDates (RIV-TA urn:riv:crm:scheduling:GetAvailableDates:1). Representerar responsens informationsstruktur. Tjänsten hämtar datum med lediga tider för angivet datumintervall. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getavailabledates.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getavailabledates.csv), [Excel](StructureDefinition-getavailabledates.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getavailabledates",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabledates",
  "version" : "1.1",
  "name" : "GetAvailableDates",
  "title" : "GetAvailableDates",
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAvailableDates\n(RIV-TA urn:riv:crm:scheduling:GetAvailableDates:1).\nRepresenterar responsens informationsstruktur.\nTjänsten hämtar datum med lediga tider för angivet datumintervall.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getavailabledates",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getavailabledates",
      "path" : "getavailabledates",
      "short" : "GetAvailableDates",
      "definition" : "Logisk modell för tjänstekontraktet GetAvailableDates\n(RIV-TA urn:riv:crm:scheduling:GetAvailableDates:1).\nRepresenterar responsens informationsstruktur.\nTjänsten hämtar datum med lediga tider för angivet datumintervall."
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate",
      "path" : "getavailabledates.performerAvailabilityByDate",
      "short" : "Lista med tillgängliga tider per datum",
      "definition" : "Lista med tillgängliga tider (PerformerAvailabilityByDateType).\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate.healthcare-facility",
      "path" : "getavailabledates.performerAvailabilityByDate.healthcare_facility",
      "short" : "HSA-id för mottagning/vårdenhet",
      "definition" : "HSA-id för mottagning/vårdenhet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate.performer",
      "path" : "getavailabledates.performerAvailabilityByDate.performer",
      "short" : "HSA-id för HoS-personal",
      "definition" : "HSA-id för HoS-personal.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate.date",
      "path" : "getavailabledates.performerAvailabilityByDate.date",
      "short" : "Datum där lediga tider finns (ÅÅÅÅMMDD)",
      "definition" : "Ett datum där lediga tider finns, på formatet ÅÅÅÅMMDD.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate.resourceName",
      "path" : "getavailabledates.performerAvailabilityByDate.resourceName",
      "short" : "Namn på resurs",
      "definition" : "Namn på resurs.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate.resourceID",
      "path" : "getavailabledates.performerAvailabilityByDate.resourceID",
      "short" : "Identifierare för resurs",
      "definition" : "Identifierare för resurs.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate.timeTypeName",
      "path" : "getavailabledates.performerAvailabilityByDate.timeTypeName",
      "short" : "Namn på tidstyp",
      "definition" : "Namn på tidstyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate.timeTypeID",
      "path" : "getavailabledates.performerAvailabilityByDate.timeTypeID",
      "short" : "Identifierare för tidstyp",
      "definition" : "Identifierare för tidstyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getavailabledates.performerAvailabilityByDate.careTypeName",
      "path" : "getavailabledates.performerAvailabilityByDate.careTypeName",
      "short" : "Namn på vårdtyp",
      "definition" : "Namn på vårdtyp.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
