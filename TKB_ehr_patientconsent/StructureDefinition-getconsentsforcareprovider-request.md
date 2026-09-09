# GetConsentsForCareProvider — Request - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConsentsForCareProvider — Request**

## Logical Model: GetConsentsForCareProvider — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforcareprovider-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetConsentsForCareProviderRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetConsentsForCareProvider. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-getconsentsforcareprovider-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconsentsforcareprovider-request.csv), [Excel](StructureDefinition-getconsentsforcareprovider-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconsentsforcareprovider-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforcareprovider-request",
  "version" : "1.0.1",
  "name" : "GetConsentsForCareProviderRequest",
  "title" : "GetConsentsForCareProvider — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetConsentsForCareProvider.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforcareprovider-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconsentsforcareprovider-request",
      "path" : "getconsentsforcareprovider-request",
      "short" : "GetConsentsForCareProvider — Request",
      "definition" : "Logisk modell för requestparametrar i GetConsentsForCareProvider."
    },
    {
      "id" : "getconsentsforcareprovider-request.careProviderId",
      "path" : "getconsentsforcareprovider-request.careProviderId",
      "short" : "HSA-id på den vårdgivare vars samtycken skall hämtas",
      "definition" : "Identifierare för vårdgivare. system = urn:oid:1.2.752.129.2.1.4.1. Max 32 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getconsentsforcareprovider-request.createdOnOrAfter",
      "path" : "getconsentsforcareprovider-request.createdOnOrAfter",
      "short" : "Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas",
      "definition" : "Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt.\nAnvändbart vid upprepande förfrågningar för att undvika att data som redan inhämtats returneras.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforcareprovider-request.getCancelledFlag",
      "path" : "getconsentsforcareprovider-request.getCancelledFlag",
      "short" : "Flagga som avgör om makulerade och återkallade samtyckesintyg skall returneras",
      "definition" : "Om true returneras även makulerade och återkallade intyg som inte är utgångna.\nUtgångna intyg (giltigt t o m har passerats) returneras ej oavsett makulering eller återkallning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
