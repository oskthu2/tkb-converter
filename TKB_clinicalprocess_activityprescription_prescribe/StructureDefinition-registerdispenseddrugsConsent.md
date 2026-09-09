# RegisterDispensedDrugsConsent - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterDispensedDrugsConsent**

## Logical Model: RegisterDispensedDrugsConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registerdispenseddrugsConsent | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterDispensedDrugsConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterDispensedDrugsConsent (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registerdispenseddrugsConsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerdispenseddrugsConsent.csv), [Excel](StructureDefinition-registerdispenseddrugsConsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerdispenseddrugsConsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registerdispenseddrugsConsent",
  "version" : "2",
  "name" : "RegisterDispensedDrugsConsent",
  "title" : "RegisterDispensedDrugsConsent",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registerdispenseddrugsConsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerdispenseddrugsConsent",
      "path" : "registerdispenseddrugsConsent",
      "short" : "RegisterDispensedDrugsConsent",
      "definition" : "Logisk modell för tjänstekontraktet RegisterDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "registerdispenseddrugsConsent.result",
      "path" : "registerdispenseddrugsConsent.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerdispenseddrugsConsent.result.resultCode",
      "path" : "registerdispenseddrugsConsent.result.resultCode",
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
      "id" : "registerdispenseddrugsConsent.result.errorCode",
      "path" : "registerdispenseddrugsConsent.result.errorCode",
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
      "id" : "registerdispenseddrugsConsent.result.logId",
      "path" : "registerdispenseddrugsConsent.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerdispenseddrugsConsent.result.message",
      "path" : "registerdispenseddrugsConsent.result.message",
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
