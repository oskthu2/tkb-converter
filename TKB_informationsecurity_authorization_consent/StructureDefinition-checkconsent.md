# CheckConsent — Response - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckConsent — Response**

## Logical Model: CheckConsent — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/checkconsent | *Version*:2.0.4 |
| Draft as of 2026-09-28 | *Computable Name*:CheckConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i CheckConsent (urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-checkconsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkconsent.csv), [Excel](StructureDefinition-checkconsent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkconsent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/checkconsent",
  "version" : "2.0.4",
  "name" : "CheckConsent",
  "title" : "CheckConsent — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:03:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i CheckConsent\n(urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/checkconsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkconsent",
      "path" : "checkconsent",
      "short" : "CheckConsent — Response",
      "definition" : "Logisk modell för svaret i CheckConsent\n(urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2, CheckConsentResponseType)."
    },
    {
      "id" : "checkconsent.checkResult",
      "path" : "checkconsent.checkResult",
      "short" : "checkResult",
      "definition" : "Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör. Datatypen utökar datatypen Result.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkconsent.checkResult.result",
      "path" : "checkconsent.checkResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkconsent.checkResult.result.resultCode",
      "path" : "checkconsent.checkResult.result.resultCode",
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
      "id" : "checkconsent.checkResult.result.resultText",
      "path" : "checkconsent.checkResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkconsent.checkResult.hasConsent",
      "path" : "checkconsent.checkResult.hasConsent",
      "short" : "hasConsent",
      "definition" : "hasConsent",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "checkconsent.checkResult.assertionType",
      "path" : "checkconsent.checkResult.assertionType",
      "short" : "assertionType",
      "definition" : "assertionType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/ValueSet/authorization-consent-assertiontype-vs"
      }
    }]
  }
}

```
