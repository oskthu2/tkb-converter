# GetDispensedDrugsConsent - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDispensedDrugsConsent**

## Logical Model: GetDispensedDrugsConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugsConsent | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:GetDispensedDrugsConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetDispensedDrugsConsent (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2). Representerar responsens informationsstruktur — hämtar samtycke för åtkomst till uthämtade läkemedel. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-getdispenseddrugsConsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getdispenseddrugsConsent.csv), [Excel](StructureDefinition-getdispenseddrugsConsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getdispenseddrugsConsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugsConsent",
  "version" : "2",
  "name" : "GetDispensedDrugsConsent",
  "title" : "GetDispensedDrugsConsent",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur — hämtar samtycke för åtkomst till uthämtade läkemedel.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugsConsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getdispenseddrugsConsent",
      "path" : "getdispenseddrugsConsent",
      "short" : "GetDispensedDrugsConsent",
      "definition" : "Logisk modell för tjänstekontraktet GetDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur — hämtar samtycke för åtkomst till uthämtade läkemedel."
    },
    {
      "id" : "getdispenseddrugsConsent.hasConsent",
      "path" : "getdispenseddrugsConsent.hasConsent",
      "short" : "Sant om patienten har aktivt samtycke",
      "definition" : "Sant om patienten har aktivt samtycke",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getdispenseddrugsConsent.consentType",
      "path" : "getdispenseddrugsConsent.consentType",
      "short" : "Typ av samtycke (om hasConsent=true)",
      "definition" : "Typ av samtycke (om hasConsent=true)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/lfconsent-vs"
      }
    },
    {
      "id" : "getdispenseddrugsConsent.result",
      "path" : "getdispenseddrugsConsent.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugsConsent.result.resultCode",
      "path" : "getdispenseddrugsConsent.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getdispenseddrugsConsent.result.errorCode",
      "path" : "getdispenseddrugsConsent.result.errorCode",
      "short" : "Felkod",
      "definition" : "Felkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "getdispenseddrugsConsent.result.logId",
      "path" : "getdispenseddrugsConsent.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugsConsent.result.message",
      "path" : "getdispenseddrugsConsent.result.message",
      "short" : "Beskrivande text",
      "definition" : "Beskrivande text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
