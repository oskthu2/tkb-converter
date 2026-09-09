# UnregisterTemporaryRevoke - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UnregisterTemporaryRevoke**

## Logical Model: UnregisterTemporaryRevoke 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregistertemporaryrevoke | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:UnregisterTemporaryRevoke |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet UnregisterTemporaryRevoke (RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2). Avregistrerar en tillfällig hävning från nationell spärrtjänst. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-unregistertemporaryrevoke.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-unregistertemporaryrevoke.csv), [Excel](StructureDefinition-unregistertemporaryrevoke.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "unregistertemporaryrevoke",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregistertemporaryrevoke",
  "version" : "3.2.2",
  "name" : "UnregisterTemporaryRevoke",
  "title" : "UnregisterTemporaryRevoke",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet UnregisterTemporaryRevoke\n(RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2).\nAvregistrerar en tillfällig hävning från nationell spärrtjänst.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/unregistertemporaryrevoke",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "unregistertemporaryrevoke",
      "path" : "unregistertemporaryrevoke",
      "short" : "UnregisterTemporaryRevoke",
      "definition" : "Logisk modell för tjänstekontraktet UnregisterTemporaryRevoke\n(RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2).\nAvregistrerar en tillfällig hävning från nationell spärrtjänst.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "unregistertemporaryrevoke.result",
      "path" : "unregistertemporaryrevoke.result",
      "short" : "Resultat av avregistreringen",
      "definition" : "Resultat av avregistreringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unregistertemporaryrevoke.result.resultCode",
      "path" : "unregistertemporaryrevoke.result.resultCode",
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
      "id" : "unregistertemporaryrevoke.result.resultText",
      "path" : "unregistertemporaryrevoke.result.resultText",
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
