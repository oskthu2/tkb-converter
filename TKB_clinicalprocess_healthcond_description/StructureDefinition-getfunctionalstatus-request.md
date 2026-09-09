# GetFunctionalStatus — Request - clinicalprocess: healthcond: description v3.0.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFunctionalStatus — Request**

## Logical Model: GetFunctionalStatus — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus-request | *Version*:3.0.5 |
| Draft as of 2026-09-09 | *Computable Name*:GetFunctionalStatusRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFunctionalStatus (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2). Söker funktionsstatusbedömningar för en patient med valfri filtrering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getfunctionalstatus-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getfunctionalstatus-request.csv), [Excel](StructureDefinition-getfunctionalstatus-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getfunctionalstatus-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus-request",
  "version" : "3.0.5",
  "name" : "GetFunctionalStatusRequest",
  "title" : "GetFunctionalStatus — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:47:19+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFunctionalStatus\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2).\nSöker funktionsstatusbedömningar för en patient med valfri filtrering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getfunctionalstatus-request",
      "path" : "getfunctionalstatus-request",
      "short" : "GetFunctionalStatus — Request",
      "definition" : "Logisk modell för requestparametrar i GetFunctionalStatus\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2).\nSöker funktionsstatusbedömningar för en patient med valfri filtrering."
    },
    {
      "id" : "getfunctionalstatus-request.careUnitHSAId",
      "path" : "getfunctionalstatus-request.careUnitHSAId",
      "short" : "Filtrering på vårdenhet",
      "definition" : "Filtrering på vårdenhet (careUnitHSAId).\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.patientId",
      "path" : "getfunctionalstatus-request.patientId",
      "short" : "Patientens id",
      "definition" : "Id för patienten. id = personnummer/samordningsnummer. type = OID för identifierartyp.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.datePeriod",
      "path" : "getfunctionalstatus-request.datePeriod",
      "short" : "Datumperiod för sökning",
      "definition" : "Begränsar sökningen till det angivna intervallet. start och end på formatet ÅÅÅÅMMDD.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.sourceSystemHSAId",
      "path" : "getfunctionalstatus-request.sourceSystemHSAId",
      "short" : "Källsystem HSA-id",
      "definition" : "Begränsar sökning till information om funktionsstatus från ett specifikt källsystem.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.careContactId",
      "path" : "getfunctionalstatus-request.careContactId",
      "short" : "Vårdkontakts-id",
      "definition" : "Begränsar sökning till funktionsstatusobjekt kopplade till angiven vårdkontakt.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
