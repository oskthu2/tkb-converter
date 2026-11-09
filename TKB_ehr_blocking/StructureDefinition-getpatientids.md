# GetPatientIds - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPatientIds**

## Logical Model: GetPatientIds 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getpatientids | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetPatientIds |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetPatientIds (RIV-TA urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2). Läser alla patienter med minst en aktiv spärr för en viss organisation. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getpatientids.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpatientids.csv), [Excel](StructureDefinition-getpatientids.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpatientids",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getpatientids",
  "version" : "2.0",
  "name" : "GetPatientIds",
  "title" : "GetPatientIds",
  "status" : "active",
  "date" : "2026-11-09T03:28:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetPatientIds\n(RIV-TA urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2).\nLäser alla patienter med minst en aktiv spärr för en viss organisation.\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getpatientids",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpatientids",
      "path" : "getpatientids",
      "short" : "GetPatientIds",
      "definition" : "Logisk modell för tjänstekontraktet GetPatientIds\n(RIV-TA urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2).\nLäser alla patienter med minst en aktiv spärr för en viss organisation.\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "getpatientids.GetPatientIdResultType",
      "path" : "getpatientids.GetPatientIdResultType",
      "short" : "GetPatientIdResultType",
      "definition" : "GetPatientIdResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientids.GetPatientIdResultType.Result",
      "path" : "getpatientids.GetPatientIdResultType.Result",
      "short" : "ResultType",
      "definition" : "Result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpatientids.GetPatientIdResultType.Result.ResultCode",
      "path" : "getpatientids.GetPatientIdResultType.Result.ResultCode",
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
      "id" : "getpatientids.GetPatientIdResultType.Result.ResultText",
      "path" : "getpatientids.GetPatientIdResultType.Result.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientids.GetPatientIdResultType.PatientIds",
      "path" : "getpatientids.GetPatientIdResultType.PatientIds",
      "short" : "PatientIds",
      "definition" : "PatientIds",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
