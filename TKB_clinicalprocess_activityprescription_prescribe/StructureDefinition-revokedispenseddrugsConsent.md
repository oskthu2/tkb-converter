# RevokeDispensedDrugsConsent - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeDispensedDrugsConsent**

## Logical Model: RevokeDispensedDrugsConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokedispenseddrugsConsent | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:RevokeDispensedDrugsConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RevokeDispensedDrugsConsent (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeDispensedDrugsConsent:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-revokedispenseddrugsConsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokedispenseddrugsConsent.csv), [Excel](StructureDefinition-revokedispenseddrugsConsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokedispenseddrugsConsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokedispenseddrugsConsent",
  "version" : "2",
  "name" : "RevokeDispensedDrugsConsent",
  "title" : "RevokeDispensedDrugsConsent",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RevokeDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/revokedispenseddrugsConsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokedispenseddrugsConsent",
      "path" : "revokedispenseddrugsConsent",
      "short" : "RevokeDispensedDrugsConsent",
      "definition" : "Logisk modell för tjänstekontraktet RevokeDispensedDrugsConsent\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RevokeDispensedDrugsConsent:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "revokedispenseddrugsConsent.result",
      "path" : "revokedispenseddrugsConsent.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokedispenseddrugsConsent.result.resultCode",
      "path" : "revokedispenseddrugsConsent.result.resultCode",
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
      "id" : "revokedispenseddrugsConsent.result.errorCode",
      "path" : "revokedispenseddrugsConsent.result.errorCode",
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
      "id" : "revokedispenseddrugsConsent.result.logId",
      "path" : "revokedispenseddrugsConsent.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokedispenseddrugsConsent.result.message",
      "path" : "revokedispenseddrugsConsent.result.message",
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
