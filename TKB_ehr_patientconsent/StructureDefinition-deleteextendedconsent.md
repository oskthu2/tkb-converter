# DeleteExtendedConsent - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteExtendedConsent**

## Logical Model: DeleteExtendedConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/deleteextendedconsent | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:DeleteExtendedConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DeleteExtendedConsent (RIV-TA urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1). Representerar responsens informationsstruktur. 
Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart för borttagning av felregistrerade samtycken. Samtycket raderas inte utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-deleteextendedconsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteextendedconsent.csv), [Excel](StructureDefinition-deleteextendedconsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteextendedconsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/deleteextendedconsent",
  "version" : "1.0.1",
  "name" : "DeleteExtendedConsent",
  "title" : "DeleteExtendedConsent",
  "status" : "draft",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DeleteExtendedConsent\n(RIV-TA urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart\nför borttagning av felregistrerade samtycken. Samtycket raderas inte utan markeras som makulerad\n(ej längre giltig) för historikens skull. En makulering kan ej återtas.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/deleteextendedconsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteextendedconsent",
      "path" : "deleteextendedconsent",
      "short" : "DeleteExtendedConsent",
      "definition" : "Logisk modell för tjänstekontraktet DeleteExtendedConsent\n(RIV-TA urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart\nför borttagning av felregistrerade samtycken. Samtycket raderas inte utan markeras som makulerad\n(ej längre giltig) för historikens skull. En makulering kan ej återtas."
    },
    {
      "id" : "deleteextendedconsent.result",
      "path" : "deleteextendedconsent.result",
      "short" : "Status för om makuleringen utfördes",
      "definition" : "Status för om makuleringen utfördes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteextendedconsent.result.resultCode",
      "path" : "deleteextendedconsent.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "deleteextendedconsent.result.resultText",
      "path" : "deleteextendedconsent.result.resultText",
      "short" : "Fritext beskrivning av resultatet",
      "definition" : "Fritext beskrivning av resultatet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
