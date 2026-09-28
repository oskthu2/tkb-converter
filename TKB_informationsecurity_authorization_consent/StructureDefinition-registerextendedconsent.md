# RegisterExtendedConsent — Response - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterExtendedConsent — Response**

## Logical Model: RegisterExtendedConsent — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/registerextendedconsent | *Version*:2.0.4 |
| Draft as of 2026-09-28 | *Computable Name*:RegisterExtendedConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i RegisterExtendedConsent (urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2, RegisterExtendedConsentResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-registerextendedconsent.json)

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
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/registerextendedconsent",
  "version" : "2.0.4",
  "name" : "RegisterExtendedConsent",
  "title" : "RegisterExtendedConsent — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:03:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i RegisterExtendedConsent\n(urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2, RegisterExtendedConsentResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/registerextendedconsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerextendedconsent",
      "path" : "registerextendedconsent",
      "short" : "RegisterExtendedConsent — Response",
      "definition" : "Logisk modell för svaret i RegisterExtendedConsent\n(urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2, RegisterExtendedConsentResponseType)."
    },
    {
      "id" : "registerextendedconsent.result",
      "path" : "registerextendedconsent.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registerextendedconsent.result.resultCode",
      "path" : "registerextendedconsent.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/ValueSet/authorization-consent-resultcode-vs"
      }
    },
    {
      "id" : "registerextendedconsent.result.resultText",
      "path" : "registerextendedconsent.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
