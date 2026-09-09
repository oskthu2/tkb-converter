# RegisterTemporaryExtendedRevoke - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterTemporaryExtendedRevoke**

## Logical Model: RegisterTemporaryExtendedRevoke 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryextendedrevoke | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterTemporaryExtendedRevoke |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterTemporaryExtendedRevoke (RIV-TA urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2). Registrerar en tillfällig hävning med utökad information i lokal spärrtjänst. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-registertemporaryextendedrevoke.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registertemporaryextendedrevoke.csv), [Excel](StructureDefinition-registertemporaryextendedrevoke.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registertemporaryextendedrevoke",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryextendedrevoke",
  "version" : "3.2.2",
  "name" : "RegisterTemporaryExtendedRevoke",
  "title" : "RegisterTemporaryExtendedRevoke",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterTemporaryExtendedRevoke\n(RIV-TA urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2).\nRegistrerar en tillfällig hävning med utökad information i lokal spärrtjänst.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryextendedrevoke",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registertemporaryextendedrevoke",
      "path" : "registertemporaryextendedrevoke",
      "short" : "RegisterTemporaryExtendedRevoke",
      "definition" : "Logisk modell för tjänstekontraktet RegisterTemporaryExtendedRevoke\n(RIV-TA urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2).\nRegistrerar en tillfällig hävning med utökad information i lokal spärrtjänst.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "registertemporaryextendedrevoke.result",
      "path" : "registertemporaryextendedrevoke.result",
      "short" : "Resultat av registreringen",
      "definition" : "Resultat av registreringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke.result.resultCode",
      "path" : "registertemporaryextendedrevoke.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "registertemporaryextendedrevoke.result.resultText",
      "path" : "registertemporaryextendedrevoke.result.resultText",
      "short" : "Beskrivande text till svarskoden",
      "definition" : "Beskrivande text till svarskoden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
