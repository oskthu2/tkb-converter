# GetAlertInformation — Request - clinicalprocess: healthcond: description v3.0.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAlertInformation — Request**

## Logical Model: GetAlertInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation-request | *Version*:3.0.5 |
| Draft as of 2026-09-09 | *Computable Name*:GetAlertInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAlertInformation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2). Söker uppmärksamhetsinformation för en patient med valfri filtrering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getalertinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getalertinformation-request.csv), [Excel](StructureDefinition-getalertinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getalertinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation-request",
  "version" : "3.0.5",
  "name" : "GetAlertInformationRequest",
  "title" : "GetAlertInformation — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:47:19+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAlertInformation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2).\nSöker uppmärksamhetsinformation för en patient med valfri filtrering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getalertinformation-request",
      "path" : "getalertinformation-request",
      "short" : "GetAlertInformation — Request",
      "definition" : "Logisk modell för requestparametrar i GetAlertInformation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2).\nSöker uppmärksamhetsinformation för en patient med valfri filtrering."
    },
    {
      "id" : "getalertinformation-request.careUnitHSAId",
      "path" : "getalertinformation-request.careUnitHSAId",
      "short" : "Filtrering på vårdenhet",
      "definition" : "Filtrering på vårdenhet (careUnitHSAId).\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation-request.patientId",
      "path" : "getalertinformation-request.patientId",
      "short" : "Patientens id",
      "definition" : "Id för patienten. id = personnummer/samordningsnummer. type = OID för identifierartyp.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation-request.timePeriod",
      "path" : "getalertinformation-request.timePeriod",
      "short" : "Tidsperiod för sökning",
      "definition" : "Begränsar sökningen till det angivna intervallet. start och end på formatet ÅÅÅÅMMDD.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getalertinformation-request.sourceSystemHSAId",
      "path" : "getalertinformation-request.sourceSystemHSAId",
      "short" : "Källsystem HSA-id",
      "definition" : "Begränsar sökning till uppmärksamhetsinformation från ett specifikt källsystem.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation-request.careContactId",
      "path" : "getalertinformation-request.careContactId",
      "short" : "Vårdkontakts-id",
      "definition" : "Begränsar sökning till uppmärksamhetsinformation kopplad till angiven vårdkontakt.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
