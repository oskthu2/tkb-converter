# CancelTemporaryExtendedRevoke - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelTemporaryExtendedRevoke**

## Logical Model: CancelTemporaryExtendedRevoke 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/canceltemporaryextendedrevoke | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:CancelTemporaryExtendedRevoke |
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
  "version" : "2.0",
  "name" : "CancelTemporaryExtendedRevoke",
  "title" : "CancelTemporaryExtendedRevoke",
  "status" : "active",
  "date" : "2026-11-09T03:28:23+00:00",
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
      "id" : "canceltemporaryextendedrevoke.ResultType",
      "path" : "canceltemporaryextendedrevoke.ResultType",
      "short" : "ResultType",
      "definition" : "ResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "canceltemporaryextendedrevoke.ResultType.ResultCode",
      "path" : "canceltemporaryextendedrevoke.ResultType.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
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
      "id" : "canceltemporaryextendedrevoke.ResultType.ResultText",
      "path" : "canceltemporaryextendedrevoke.ResultType.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
