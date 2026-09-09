# CancelExtendedConsent - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelExtendedConsent**

## Logical Model: CancelExtendedConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/cancelextendedconsent | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:CancelExtendedConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CancelExtendedConsent (RIV-TA urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1). Representerar responsens informationsstruktur. 
Tjänst som återkallar ett samtycke i samtyckestjänsten. Intyget raderas inte utan markeras som återkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-cancelextendedconsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelextendedconsent.csv), [Excel](StructureDefinition-cancelextendedconsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelextendedconsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/cancelextendedconsent",
  "version" : "1.0.1",
  "name" : "CancelExtendedConsent",
  "title" : "CancelExtendedConsent",
  "status" : "draft",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CancelExtendedConsent\n(RIV-TA urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som återkallar ett samtycke i samtyckestjänsten. Intyget raderas inte utan markeras som\nåterkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/cancelextendedconsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelextendedconsent",
      "path" : "cancelextendedconsent",
      "short" : "CancelExtendedConsent",
      "definition" : "Logisk modell för tjänstekontraktet CancelExtendedConsent\n(RIV-TA urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som återkallar ett samtycke i samtyckestjänsten. Intyget raderas inte utan markeras som\nåterkallad (ej längre giltig) för historikens skull. En återkallan kan ej återtas."
    },
    {
      "id" : "cancelextendedconsent.result",
      "path" : "cancelextendedconsent.result",
      "short" : "Status för om återkallningen utfördes",
      "definition" : "Status för om återkallningen utfördes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "cancelextendedconsent.result.resultCode",
      "path" : "cancelextendedconsent.result.resultCode",
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
      "id" : "cancelextendedconsent.result.resultText",
      "path" : "cancelextendedconsent.result.resultText",
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
