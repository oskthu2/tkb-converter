# CancelTemporaryExtendedRevoke - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelTemporaryExtendedRevoke**

## Logical Model: CancelTemporaryExtendedRevoke 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/canceltemporaryextendedrevoke | *Version*:3.2.2 |
| Draft as of 2026-09-26 | *Computable Name*:CancelTemporaryExtendedRevoke |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CancelTemporaryExtendedRevoke (RIV-TA urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevokeResponder:2). Återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas. Tjänsten avregistrerar även den tillfälliga hävningen på nationell nivå. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-canceltemporaryextendedrevoke.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-canceltemporaryextendedrevoke.csv), [Excel](StructureDefinition-canceltemporaryextendedrevoke.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "canceltemporaryextendedrevoke",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/canceltemporaryextendedrevoke",
  "version" : "3.2.2",
  "name" : "CancelTemporaryExtendedRevoke",
  "title" : "CancelTemporaryExtendedRevoke",
  "status" : "draft",
  "date" : "2026-09-26T19:23:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CancelTemporaryExtendedRevoke\n(RIV-TA urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevokeResponder:2).\nÅterkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga\nhävningen finns. Denna återkallning kan inte återtas. Tjänsten avregistrerar\näven den tillfälliga hävningen på nationell nivå.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/canceltemporaryextendedrevoke",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "canceltemporaryextendedrevoke",
      "path" : "canceltemporaryextendedrevoke",
      "short" : "CancelTemporaryExtendedRevoke",
      "definition" : "Logisk modell för tjänstekontraktet CancelTemporaryExtendedRevoke\n(RIV-TA urn:riv:ehr:blocking:administration:CancelTemporaryExtendedRevokeResponder:2).\nÅterkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga\nhävningen finns. Denna återkallning kan inte återtas. Tjänsten avregistrerar\näven den tillfälliga hävningen på nationell nivå.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "canceltemporaryextendedrevoke.result",
      "path" : "canceltemporaryextendedrevoke.result",
      "short" : "Resultat av återkallningen",
      "definition" : "Resultat av återkallningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke.result.resultCode",
      "path" : "canceltemporaryextendedrevoke.result.resultCode",
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
      "id" : "canceltemporaryextendedrevoke.result.resultText",
      "path" : "canceltemporaryextendedrevoke.result.resultText",
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
