# UpdatePatientContactInformation — Response - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePatientContactInformation — Response**

## Logical Model: UpdatePatientContactInformation — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/updatepatientcontactinformation | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:UpdatePatientContactInformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UpdatePatientContactInformation (urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-citizen-patient|current/StructureDefinition/StructureDefinition-updatepatientcontactinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatepatientcontactinformation.csv), [Excel](StructureDefinition-updatepatientcontactinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatepatientcontactinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/updatepatientcontactinformation",
  "version" : "1.0",
  "name" : "UpdatePatientContactInformation",
  "title" : "UpdatePatientContactInformation — Response",
  "status" : "draft",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UpdatePatientContactInformation\n(urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/updatepatientcontactinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatepatientcontactinformation",
      "path" : "updatepatientcontactinformation",
      "short" : "UpdatePatientContactInformation — Response",
      "definition" : "Logisk modell för svaret i UpdatePatientContactInformation\n(urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationResponseType)."
    },
    {
      "id" : "updatepatientcontactinformation.message",
      "path" : "updatepatientcontactinformation.message",
      "short" : "message",
      "definition" : "message",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation.resultCode",
      "path" : "updatepatientcontactinformation.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-resultcodeenum-vs"
      }
    }]
  }
}

```
