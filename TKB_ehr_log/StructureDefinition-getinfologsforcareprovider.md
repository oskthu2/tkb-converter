# GetInfoLogsForCareProvider - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetInfoLogsForCareProvider**

## Logical Model: GetInfoLogsForCareProvider 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforcareprovider | *Version*:1.2.3 |
| Draft as of 2026-09-09 | *Computable Name*:GetInfoLogsForCareProvider |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetInfoLogsForCareProvider (RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForCareProviderResponder:1). Representerar responsens informationsstruktur (log.querying:InfoLogsResult). Returnerar lista för angiven informationsägande vårdgivare med vilka externa vårdgivare som har haft åtkomst till vårdgivarens information. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-getinfologsforcareprovider.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getinfologsforcareprovider.csv), [Excel](StructureDefinition-getinfologsforcareprovider.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getinfologsforcareprovider",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforcareprovider",
  "version" : "1.2.3",
  "name" : "GetInfoLogsForCareProvider",
  "title" : "GetInfoLogsForCareProvider",
  "status" : "draft",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetInfoLogsForCareProvider\n(RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForCareProviderResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:InfoLogsResult).\nReturnerar lista för angiven informationsägande vårdgivare med vilka externa\nvårdgivare som har haft åtkomst till vårdgivarens information.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/getinfologsforcareprovider",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getinfologsforcareprovider",
      "path" : "getinfologsforcareprovider",
      "short" : "GetInfoLogsForCareProvider",
      "definition" : "Logisk modell för tjänstekontraktet GetInfoLogsForCareProvider\n(RIV-TA urn:riv:ehr:log:querying:GetInfoLogsForCareProviderResponder:1).\nRepresenterar responsens informationsstruktur (log.querying:InfoLogsResult).\nReturnerar lista för angiven informationsägande vårdgivare med vilka externa\nvårdgivare som har haft åtkomst till vårdgivarens information."
    },
    {
      "id" : "getinfologsforcareprovider.result",
      "path" : "getinfologsforcareprovider.result",
      "short" : "Resultatkontainer",
      "definition" : "Resultatkontainer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.result.resultCode",
      "path" : "getinfologsforcareprovider.result.resultCode",
      "short" : "Statuskod",
      "definition" : "Statuskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-log/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getinfologsforcareprovider.result.resultText",
      "path" : "getinfologsforcareprovider.result.resultText",
      "short" : "Beskrivande text",
      "definition" : "Beskrivande text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.result.startInterval",
      "path" : "getinfologsforcareprovider.result.startInterval",
      "short" : "Start på tillgängligt datumintervall",
      "definition" : "Start på tillgängligt datumintervall",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.result.endInterval",
      "path" : "getinfologsforcareprovider.result.endInterval",
      "short" : "Slut på tillgängligt datumintervall",
      "definition" : "Slut på tillgängligt datumintervall",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.result.queuedReportId",
      "path" : "getinfologsforcareprovider.result.queuedReportId",
      "short" : "Id för pågående rapport (UUID)",
      "definition" : "Id för pågående rapport (UUID)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.result.queueTime",
      "path" : "getinfologsforcareprovider.result.queueTime",
      "short" : "Uppskattad väntetid i sekunder",
      "definition" : "Uppskattad väntetid i sekunder",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.careProviders",
      "path" : "getinfologsforcareprovider.careProviders",
      "short" : "Samling av externa vårdgivare med åtkomst",
      "definition" : "Samling av externa vårdgivare med åtkomst",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.careProviders.careProvider",
      "path" : "getinfologsforcareprovider.careProviders.careProvider",
      "short" : "En extern vårdgivare",
      "definition" : "En extern vårdgivare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.careProviders.careProvider.careProviderId",
      "path" : "getinfologsforcareprovider.careProviders.careProvider.careProviderId",
      "short" : "HSA-id för den externa vårdgivaren",
      "definition" : "HSA-id för den externa vårdgivaren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getinfologsforcareprovider.careProviders.careProvider.careProviderName",
      "path" : "getinfologsforcareprovider.careProviders.careProvider.careProviderName",
      "short" : "Den externa vårdgivarens namn",
      "definition" : "Den externa vårdgivarens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
