# RegisterTemporaryRevoke - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterTemporaryRevoke**

## Logical Model: RegisterTemporaryRevoke 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryrevoke | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterTemporaryRevoke |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterTemporaryRevoke (RIV-TA urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2). Registrerar en tillfällig hävning av en spärr i nationell spärrtjänst. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-registertemporaryrevoke.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registertemporaryrevoke.csv), [Excel](StructureDefinition-registertemporaryrevoke.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registertemporaryrevoke",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryrevoke",
  "version" : "3.2.2",
  "name" : "RegisterTemporaryRevoke",
  "title" : "RegisterTemporaryRevoke",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterTemporaryRevoke\n(RIV-TA urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2).\nRegistrerar en tillfällig hävning av en spärr i nationell spärrtjänst.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryrevoke",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registertemporaryrevoke",
      "path" : "registertemporaryrevoke",
      "short" : "RegisterTemporaryRevoke",
      "definition" : "Logisk modell för tjänstekontraktet RegisterTemporaryRevoke\n(RIV-TA urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2).\nRegistrerar en tillfällig hävning av en spärr i nationell spärrtjänst.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "registertemporaryrevoke.result",
      "path" : "registertemporaryrevoke.result",
      "short" : "Resultat av registreringen",
      "definition" : "Resultat av registreringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registertemporaryrevoke.result.resultCode",
      "path" : "registertemporaryrevoke.result.resultCode",
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
      "id" : "registertemporaryrevoke.result.resultText",
      "path" : "registertemporaryrevoke.result.resultText",
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
