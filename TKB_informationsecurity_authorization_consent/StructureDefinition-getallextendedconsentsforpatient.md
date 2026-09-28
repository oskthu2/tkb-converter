# GetAllExtendedConsentsForPatient — Response - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllExtendedConsentsForPatient — Response**

## Logical Model: GetAllExtendedConsentsForPatient — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getallextendedconsentsforpatient | *Version*:2.0.4 |
| Draft as of 2026-09-28 | *Computable Name*:GetAllExtendedConsentsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetAllExtendedConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1, GetAllExtendedConsentsForPatientResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-getallextendedconsentsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallextendedconsentsforpatient.csv), [Excel](StructureDefinition-getallextendedconsentsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallextendedconsentsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getallextendedconsentsforpatient",
  "version" : "2.0.4",
  "name" : "GetAllExtendedConsentsForPatient",
  "title" : "GetAllExtendedConsentsForPatient — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:03:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetAllExtendedConsentsForPatient\n(urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1, GetAllExtendedConsentsForPatientResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getallextendedconsentsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallextendedconsentsforpatient",
      "path" : "getallextendedconsentsforpatient",
      "short" : "GetAllExtendedConsentsForPatient — Response",
      "definition" : "Logisk modell för svaret i GetAllExtendedConsentsForPatient\n(urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1, GetAllExtendedConsentsForPatientResponseType)."
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult",
      "short" : "getExtendedConsentsResult",
      "definition" : "Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.result",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.result.resultCode",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.result.resultCode",
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
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.result.resultText",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions",
      "short" : "pdlAssertions",
      "definition" : "Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion",
      "short" : "pDLAssertion",
      "definition" : "Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionId",
      "short" : "assertionId",
      "definition" : "assertionId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionType",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionType",
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
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.scope",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.scope",
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
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.careProviderId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.careUnitId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.employeeId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.startDate",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.startDate",
      "short" : "startDate",
      "definition" : "startDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.endDate",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.endDate",
      "short" : "endDate",
      "definition" : "endDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.ownerId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.ownerId",
      "short" : "ownerId",
      "definition" : "ownerId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId.root",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId.iiExtension",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy",
      "short" : "representedBy",
      "definition" : "En universellt unik identifierare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy.root",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy.iiExtension",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo",
      "short" : "registrationInfo",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestDate",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.employeeId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentName",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registrationDate",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.employeeId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentName",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.reasonText",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo",
      "short" : "cancellationInfo",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestDate",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.employeeId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentName",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registrationDate",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.employeeId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentName",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.reasonText",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo",
      "short" : "deletionInfo",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestDate",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.employeeId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentName",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registrationDate",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.employeeId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentId",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentName",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.reasonText",
      "path" : "getallextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
