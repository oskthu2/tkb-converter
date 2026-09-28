# GetConsentsForPatient — Response - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConsentsForPatient — Response**

## Logical Model: GetConsentsForPatient — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforpatient | *Version*:2.0.4 |
| Draft as of 2026-09-28 | *Computable Name*:GetConsentsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-getconsentsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconsentsforpatient.csv), [Excel](StructureDefinition-getconsentsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconsentsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforpatient",
  "version" : "2.0.4",
  "name" : "GetConsentsForPatient",
  "title" : "GetConsentsForPatient — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:03:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetConsentsForPatient\n(urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconsentsforpatient",
      "path" : "getconsentsforpatient",
      "short" : "GetConsentsForPatient — Response",
      "definition" : "Logisk modell för svaret i GetConsentsForPatient\n(urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientResponseType)."
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult",
      "path" : "getconsentsforpatient.getConsentsResult",
      "short" : "getConsentsResult",
      "definition" : "Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.result",
      "path" : "getconsentsforpatient.getConsentsResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.result.resultCode",
      "path" : "getconsentsforpatient.getConsentsResult.result.resultCode",
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
      "id" : "getconsentsforpatient.getConsentsResult.result.resultText",
      "path" : "getconsentsforpatient.getConsentsResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions",
      "short" : "pdlAssertions",
      "definition" : "Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.assertionId",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.assertionId",
      "short" : "assertionId",
      "definition" : "assertionId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.assertionType",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.assertionType",
      "short" : "assertionType",
      "definition" : "assertionType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/ValueSet/authorization-consent-assertiontype-vs"
      }
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.scope",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.scope",
      "short" : "scope",
      "definition" : "scope",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/ValueSet/authorization-consent-scope-vs"
      }
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.careProviderId",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.careUnitId",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.employeeId",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.startDate",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.startDate",
      "short" : "startDate",
      "definition" : "startDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.endDate",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.endDate",
      "short" : "endDate",
      "definition" : "endDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.ownerId",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.ownerId",
      "short" : "ownerId",
      "definition" : "ownerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.patientId",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.patientId.root",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.getConsentsResult.pdlAssertions.patientId.iiExtension",
      "path" : "getconsentsforpatient.getConsentsResult.pdlAssertions.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
