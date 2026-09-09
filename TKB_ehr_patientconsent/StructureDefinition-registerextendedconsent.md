# RegisterExtendedConsent - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterExtendedConsent**

## Logical Model: RegisterExtendedConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/registerextendedconsent | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterExtendedConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterExtendedConsent (RIV-TA urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1). Representerar responsens informationsstruktur. 
Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens information från andra vårdgivare enligt PDL. Intyget avser patientens aktiva medgivande (samtycke), alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-registerextendedconsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerextendedconsent.csv), [Excel](StructureDefinition-registerextendedconsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerextendedconsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/registerextendedconsent",
  "version" : "1.0.1",
  "name" : "RegisterExtendedConsent",
  "title" : "RegisterExtendedConsent",
  "status" : "draft",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterExtendedConsent\n(RIV-TA urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens\ninformation från andra vårdgivare enligt PDL. Intyget avser patientens aktiva medgivande (samtycke),\nalternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/registerextendedconsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerextendedconsent",
      "path" : "registerextendedconsent",
      "short" : "RegisterExtendedConsent",
      "definition" : "Logisk modell för tjänstekontraktet RegisterExtendedConsent\n(RIV-TA urn:riv:ehr:patientconsent:administration:RegisterExtendedConsentResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens\ninformation från andra vårdgivare enligt PDL. Intyget avser patientens aktiva medgivande (samtycke),\nalternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård."
    },
    {
      "id" : "registerextendedconsent.result",
      "path" : "registerextendedconsent.result",
      "short" : "Status för om registreringen utfördes",
      "definition" : "Status för om registreringen utfördes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerextendedconsent.result.resultCode",
      "path" : "registerextendedconsent.result.resultCode",
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
      "id" : "registerextendedconsent.result.resultText",
      "path" : "registerextendedconsent.result.resultText",
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
