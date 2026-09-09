# GetCareDocumentation — Request - clinicalprocess: healthcond: description v3.0.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareDocumentation — Request**

## Logical Model: GetCareDocumentation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getcaredocumentation-request | *Version*:3.0.5 |
| Draft as of 2026-09-09 | *Computable Name*:GetCareDocumentationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetCareDocumentation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3). Söker journalanteckningar för en patient med valfri filtrering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getcaredocumentation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcaredocumentation-request.csv), [Excel](StructureDefinition-getcaredocumentation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcaredocumentation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getcaredocumentation-request",
  "version" : "3.0.5",
  "name" : "GetCareDocumentationRequest",
  "title" : "GetCareDocumentation — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:47:19+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetCareDocumentation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).\nSöker journalanteckningar för en patient med valfri filtrering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getcaredocumentation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcaredocumentation-request",
      "path" : "getcaredocumentation-request",
      "short" : "GetCareDocumentation — Request",
      "definition" : "Logisk modell för requestparametrar i GetCareDocumentation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).\nSöker journalanteckningar för en patient med valfri filtrering."
    },
    {
      "id" : "getcaredocumentation-request.careUnit",
      "path" : "getcaredocumentation-request.careUnit",
      "short" : "Filtrering på vårdenhet",
      "definition" : "Filtrering på vårdenhet vilket motsvarar accountableCareUnit HSA-id i svaret.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.healthcareProvider",
      "path" : "getcaredocumentation-request.healthcareProvider",
      "short" : "Filtrering på vårdgivare",
      "definition" : "Filtrering på vårdgivare vilket motsvarar accountableHealthcareProvider HSA-id i svaret.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.patientId",
      "path" : "getcaredocumentation-request.patientId",
      "short" : "Patientens id",
      "definition" : "Id för patienten. extension sätts till personnummer eller samordningsnummer (12 tecken).\nroot sätts till OID för typ av identifierare.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.datePeriod",
      "path" : "getcaredocumentation-request.datePeriod",
      "short" : "Datumintervall för sökning",
      "definition" : "Begränsar sökningen till det angivna intervallet. start och end anges på formatet ÅÅÅÅMMDD.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getcaredocumentation-request.sourceSystemId",
      "path" : "getcaredocumentation-request.sourceSystemId",
      "short" : "Källsystem-id",
      "definition" : "Begränsar sökningen till anteckningar som är skapade i det angivna källsystemet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.hasMoreReference",
      "path" : "getcaredocumentation-request.hasMoreReference",
      "short" : "Referens för partiell hämtning",
      "definition" : "Kan anges av tjänstekonsument när man tidigare fått ett svar med hasMore.\nAnropet måste då vara direktadresserat till den logiska adressen som angavs i hasMore.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
