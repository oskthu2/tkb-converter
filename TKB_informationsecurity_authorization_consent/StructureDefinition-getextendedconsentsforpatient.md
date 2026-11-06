# GetExtendedConsentsForPatient — Response - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetExtendedConsentsForPatient — Response**

## Logical Model: GetExtendedConsentsForPatient — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getextendedconsentsforpatient | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetExtendedConsentsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetExtendedConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatientResponder:2, GetExtendedConsentsForPatientResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-getextendedconsentsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getextendedconsentsforpatient.csv), [Excel](StructureDefinition-getextendedconsentsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getextendedconsentsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getextendedconsentsforpatient",
  "version" : "2.0",
  "name" : "GetExtendedConsentsForPatient",
  "title" : "GetExtendedConsentsForPatient — Response",
  "status" : "active",
  "date" : "2026-11-06T21:27:21+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetExtendedConsentsForPatient\n(urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatientResponder:2, GetExtendedConsentsForPatientResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getextendedconsentsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getextendedconsentsforpatient",
      "path" : "getextendedconsentsforpatient",
      "short" : "GetExtendedConsentsForPatient — Response",
      "definition" : "Logisk modell för svaret i GetExtendedConsentsForPatient\n(urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatientResponder:2, GetExtendedConsentsForPatientResponseType)."
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult",
      "short" : "getExtendedConsentsResult",
      "definition" : "Utökad information för samtycke.",
      "comment" : "TKB-fält: `getExtendedConsentsResult` (`urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType`, kardinalitet 1..1).\n\n**Modellanteckning:** Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.result",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "comment" : "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.result.resultCode",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "comment" : "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1).",
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
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.result.resultText",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "comment" : "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions",
      "short" : "pdlAssertions",
      "definition" : "Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion.",
      "comment" : "TKB-fält: `../pdlAssertions` (`ExtendedPDLAssertionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion",
      "short" : "pDLAssertion",
      "definition" : "Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.",
      "comment" : "TKB-fält: `../../pDLAssertion` (`PDLAssertionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionId",
      "short" : "assertionId",
      "definition" : "assertionId",
      "comment" : "TKB-fält: `../../../assertionId` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionType",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.assertionType",
      "short" : "assertionType",
      "definition" : "assertionType",
      "comment" : "TKB-fält: `../../../assertionType` (`AssertionTypeType`, kardinalitet 1..1).",
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
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.scope",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.scope",
      "short" : "scope",
      "definition" : "scope",
      "comment" : "TKB-fält: `../../../scope` (`ScopeType`, kardinalitet 1..1).",
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
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.careProviderId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "comment" : "TKB-fält: `../../../careProviderId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.careUnitId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "comment" : "TKB-fält: `../../../careUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.employeeId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../../employeeId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.startDate",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.startDate",
      "short" : "startDate",
      "definition" : "startDate",
      "comment" : "TKB-fält: `../../../startDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.endDate",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.endDate",
      "short" : "endDate",
      "definition" : "endDate",
      "comment" : "TKB-fält: `../../../endDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.ownerId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.ownerId",
      "short" : "ownerId",
      "definition" : "ownerId",
      "comment" : "TKB-fält: `../../../ownerId` (`OwnerId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../patientId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId.root",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId.iiExtension",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.pDLAssertion.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy",
      "short" : "representedBy",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../representedBy` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy.root",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy.iiExtension",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.representedBy.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo",
      "short" : "registrationInfo",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "comment" : "TKB-fält: `../../registrationInfo` (`ActionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestDate",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "comment" : "TKB-fält: `../../../requestDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../../../requestedBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.employeeId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentName",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registrationDate",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "comment" : "TKB-fält: `../../../registrationDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../../../registeredBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.employeeId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentName",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.reasonText",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.registrationInfo.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "comment" : "TKB-fält: `../../../reasonText` (`ReasonText`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo",
      "short" : "cancellationInfo",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "comment" : "TKB-fält: `../../cancellationInfo` (`ActionType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestDate",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "comment" : "TKB-fält: `../../../requestDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../../../requestedBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.employeeId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentName",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registrationDate",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "comment" : "TKB-fält: `../../../registrationDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../../../registeredBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.employeeId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentName",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.reasonText",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.cancellationInfo.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "comment" : "TKB-fält: `../../../reasonText` (`ReasonText`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo",
      "short" : "deletionInfo",
      "definition" : "Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext.",
      "comment" : "TKB-fält: `../../deletionInfo` (`ActionType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestDate",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "comment" : "TKB-fält: `../../../requestDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy",
      "short" : "requestedBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../../../requestedBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.employeeId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentName",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registrationDate",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "comment" : "TKB-fält: `../../../registrationDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy",
      "short" : "registeredBy",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../../../registeredBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.employeeId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentId",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentName",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.reasonText",
      "path" : "getextendedconsentsforpatient.getExtendedConsentsResult.pdlAssertions.deletionInfo.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "comment" : "TKB-fält: `../../../reasonText` (`ReasonText`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
