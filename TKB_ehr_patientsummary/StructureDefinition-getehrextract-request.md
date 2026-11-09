# GetEhrExtract — Request - ehr: patientsummary v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEhrExtract — Request**

## Logical Model: GetEhrExtract — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/getehrextract-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetEhrExtractRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetEhrExtract (urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientsummary|current/StructureDefinition/StructureDefinition-getehrextract-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getehrextract-request.csv), [Excel](StructureDefinition-getehrextract-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getehrextract-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/getehrextract-request",
  "version" : "1.0",
  "name" : "GetEhrExtractRequest",
  "title" : "GetEhrExtract — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:31:00+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetEhrExtract\n(urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/getehrextract-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getehrextract-request",
      "path" : "getehrextract-request",
      "short" : "GetEhrExtract — Request",
      "definition" : "Logisk modell för begäran i GetEhrExtract\n(urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getehrextract-request.subject-of-care-id",
      "path" : "getehrextract-request.subject_of_care_id",
      "short" : "subject_of_care_id",
      "definition" : "subject_of_care_id",
      "comment" : "TKB-fält: `subject_of_care_id` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.purpose",
      "path" : "getehrextract-request.purpose",
      "short" : "purpose",
      "definition" : "Anger anledningen till anropet. Innehållet i detta fält kan användas/defineras per tjänstekonsument beroende på användningsområde. Vid användning av detta fält måste det finnas en överrenskommelse mellan tjästekonsumenten och tjänsteproducenten.",
      "comment" : "TKB-fält: `purpose` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.rc-ids",
      "path" : "getehrextract-request.rc_ids",
      "short" : "rc_ids",
      "definition" : "rc_ids",
      "comment" : "TKB-fält: `rc_ids` (`II`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.time-period",
      "path" : "getehrextract-request.time_period",
      "short" : "time_period",
      "definition" : "Begränsning av sökningen i tid, baserat på kliniskt relevanta datum. Händelser anses ligga inom intervallet, om de till någon del ligger inom intervallet. (Start- och slutpunkt inkluderas i intervallet.) Formatet för start- respektive slutdatum är ÅÅÅÅMMDD. (Exempel på när tidsintervall används är om NPÖs frågetjänst blir anropad med tidsintervall - då propageras intervallet ner till källsystemen.)",
      "comment" : "TKB-fält: `time_period` (`IVL_TS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.max-sensitivity",
      "path" : "getehrextract-request.max_sensitivity",
      "short" : "max_sensitivity",
      "definition" : "max_sensitivity",
      "comment" : "TKB-fält: `max_sensitivity` (`INT`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.all-versions",
      "path" : "getehrextract-request.all_versions",
      "short" : "all_versions",
      "definition" : "all_versions",
      "comment" : "TKB-fält: `all_versions` (`BL`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.multimedia-included",
      "path" : "getehrextract-request.multimedia_included",
      "short" : "multimedia_included",
      "definition" : "multimedia_included",
      "comment" : "TKB-fält: `multimedia_included` (`BL`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.archetype-ids",
      "path" : "getehrextract-request.archetype_ids",
      "short" : "archetype_ids",
      "definition" : "archetype_ids",
      "comment" : "TKB-fält: `archetype_ids` (`II`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.meanings",
      "path" : "getehrextract-request.meanings",
      "short" : "meanings",
      "definition" : "En av NPÖ definerad huvudinformationstyp.",
      "comment" : "TKB-fält: `meanings` (`CD`, kardinalitet 1..1).\n\nObs: modellen anger 0..* där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.max-records",
      "path" : "getehrextract-request.max_records",
      "short" : "max_records",
      "definition" : "max_records",
      "comment" : "TKB-fält: `max_records` (`INT`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.parameters",
      "path" : "getehrextract-request.parameters",
      "short" : "ParameterType",
      "definition" : "Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken.",
      "comment" : "TKB-fält: `parameters` (`ParameterType`, kardinalitet 1..1).\n\nObs: modellen anger 0..* där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract-request.parameters.code",
      "path" : "getehrextract-request.parameters.code",
      "short" : "code",
      "definition" : "code",
      "comment" : "TKB-fält: `../code` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.parameters.name",
      "path" : "getehrextract-request.parameters.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../name` (`ST`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract-request.parameters.value",
      "path" : "getehrextract-request.parameters.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../value` (`ST`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
