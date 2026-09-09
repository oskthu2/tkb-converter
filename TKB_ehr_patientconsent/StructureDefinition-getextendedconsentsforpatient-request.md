# GetExtendedConsentsForPatient — Request - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetExtendedConsentsForPatient — Request**

## Logical Model: GetExtendedConsentsForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getextendedconsentsforpatient-request | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetExtendedConsentsForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetExtendedConsentsForPatient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-getextendedconsentsforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getextendedconsentsforpatient-request.csv), [Excel](StructureDefinition-getextendedconsentsforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getextendedconsentsforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getextendedconsentsforpatient-request",
  "version" : "1.0.1",
  "name" : "GetExtendedConsentsForPatientRequest",
  "title" : "GetExtendedConsentsForPatient — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetExtendedConsentsForPatient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getextendedconsentsforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getextendedconsentsforpatient-request",
      "path" : "getextendedconsentsforpatient-request",
      "short" : "GetExtendedConsentsForPatient — Request",
      "definition" : "Logisk modell för requestparametrar i GetExtendedConsentsForPatient."
    },
    {
      "id" : "getextendedconsentsforpatient-request.careProviderId",
      "path" : "getextendedconsentsforpatient-request.careProviderId",
      "short" : "HSA-id på den vårdgivare vars samtycken skall hämtas",
      "definition" : "Identifierare för vårdgivare. system = urn:oid:1.2.752.129.2.1.4.1. Max 32 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient-request.patientId",
      "path" : "getextendedconsentsforpatient-request.patientId",
      "short" : "Patientens personnummer alternativt samordningsnummer vars samtycken skall hämtas",
      "definition" : "PersonIdValue — personnummer, samordningsnummer eller reservnummer. Max 12 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient-request.getCancelledFlag",
      "path" : "getextendedconsentsforpatient-request.getCancelledFlag",
      "short" : "Flagga som avgör om ogiltiga samtyckesintyg skall returneras",
      "definition" : "Om true returneras även makulerade, återkallade och utgångna intyg.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
