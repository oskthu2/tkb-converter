# CheckConsent - ehr: patientconsent — Samtyckeshantering v1.0.1-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckConsent**

## Logical Model: CheckConsent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/checkconsent | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:CheckConsent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CheckConsent (RIV-TA urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1). Representerar responsens informationsstruktur. 
Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vårdenhet eller medarbetare). Med giltigt samtycke avses ett samtycke som fortfarande är giltigt, ej makulerat eller återkallat. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-checkconsent.json)

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
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/checkconsent",
  "version" : "1.0",
  "name" : "CheckConsent",
  "title" : "CheckConsent",
  "status" : "draft",
  "date" : "2026-11-09T03:30:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CheckConsent\n(RIV-TA urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation,\ngällande åtkomst för viss aktör (vårdenhet eller medarbetare). Med giltigt samtycke avses ett\nsamtycke som fortfarande är giltigt, ej makulerat eller återkallat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/checkconsent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkconsent",
      "path" : "checkconsent",
      "short" : "CheckConsent",
      "definition" : "Logisk modell för tjänstekontraktet CheckConsent\n(RIV-TA urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation,\ngällande åtkomst för viss aktör (vårdenhet eller medarbetare). Med giltigt samtycke avses ett\nsamtycke som fortfarande är giltigt, ej makulerat eller återkallat."
    },
    {
      "id" : "checkconsent.CheckResultType",
      "path" : "checkconsent.CheckResultType",
      "short" : "CheckResultType",
      "definition" : "CheckResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "checkconsent.CheckResultType.Result",
      "path" : "checkconsent.CheckResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "checkconsent.CheckResultType.Result.ResultCode",
      "path" : "checkconsent.CheckResultType.Result.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "checkconsent.CheckResultType.Result.ResultText",
      "path" : "checkconsent.CheckResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkconsent.CheckResultType.HasConsent",
      "path" : "checkconsent.CheckResultType.HasConsent",
      "short" : "HasConsent",
      "definition" : "HasConsent",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "checkconsent.CheckResultType.AssertionType",
      "path" : "checkconsent.CheckResultType.AssertionType",
      "short" : "AssertionType",
      "definition" : "AssertionType Tillåtna värden: Consent, Emergency.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/assertiontype-vs"
      }
    }]
  }
}

```
