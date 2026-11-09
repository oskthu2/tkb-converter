# UpdatePersonContactInformationUnrestricted — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePersonContactInformationUnrestricted — Response**

## Logical Model: UpdatePersonContactInformationUnrestricted — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformationunrestricted | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:UpdatePersonContactInformationUnrestricted |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UpdatePersonContactInformationUnrestricted (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-updatepersoncontactinformationunrestricted.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatepersoncontactinformationunrestricted.csv), [Excel](StructureDefinition-updatepersoncontactinformationunrestricted.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatepersoncontactinformationunrestricted",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformationunrestricted",
  "version" : "4.0",
  "name" : "UpdatePersonContactInformationUnrestricted",
  "title" : "UpdatePersonContactInformationUnrestricted — Response",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UpdatePersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformationunrestricted",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatepersoncontactinformationunrestricted",
      "path" : "updatepersoncontactinformationunrestricted",
      "short" : "UpdatePersonContactInformationUnrestricted — Response",
      "definition" : "Logisk modell för svaret i UpdatePersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedResponseType)."
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult",
      "short" : "UpdatePersonContactInformationResultType",
      "definition" : "UpdatePersonContactInformationUnrestrictedResult",
      "comment" : "TKB-fält: `UpdatePersonContactInformationUnrestrictedResult` (`UpdatePersonContactInformationResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result",
      "short" : "ResultType",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes.",
      "comment" : "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result.resultCode",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Tillåtna värden: OK, ERROR.",
      "comment" : "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, ERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-resultcode-vs"
      }
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result.resultText",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result.resultText",
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
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord",
      "short" : "ContactInformationRecordType",
      "definition" : "Uppgifter om personens kontaktuppgifter och kontaktpersoner",
      "comment" : "TKB-fält: `../contactInformationRecord` (`ContactInformationRecordType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.version",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.version",
      "short" : "version",
      "definition" : "version",
      "comment" : "TKB-fält: `../../version` (`Timestamp`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.personId",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../personId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation",
      "short" : "ContactInformationType",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "comment" : "TKB-fält: `../../contactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.contactType",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "comment" : "TKB-fält: `../../../contactType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.use",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.use",
      "short" : "use",
      "definition" : "use",
      "comment" : "TKB-fält: `../../../use` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.value",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../value` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.rank",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "comment" : "TKB-fält: `../../../rank` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.comment",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "comment" : "TKB-fält: `../../../comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period",
      "short" : "DatePeriodType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../period` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period.start",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../start` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period.end",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../end` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.digitalNotification",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "comment" : "TKB-fält: `../../../digitalNotification` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson",
      "short" : "ContactPersonType",
      "definition" : "contactPerson",
      "comment" : "TKB-fält: `../../contactPerson` (`ContactPersonType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactRelationshipType",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactRelationshipType",
      "short" : "contactRelationshipType",
      "definition" : "contactRelationshipType",
      "comment" : "TKB-fält: `../../../contactRelationshipType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.priorityOrder",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.priorityOrder",
      "short" : "priorityOrder",
      "definition" : "priorityOrder",
      "comment" : "TKB-fält: `../../../priorityOrder` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.givenName",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "comment" : "TKB-fält: `../../../givenName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.surName",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.surName",
      "short" : "surName",
      "definition" : "surName",
      "comment" : "TKB-fält: `../../../surName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.middleName",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "comment" : "TKB-fält: `../../../middleName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress",
      "short" : "ResidentialAddressType",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../contactPersonAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "comment" : "TKB-fält: `../../../../careOf` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../../../../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../../../../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalCode",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "comment" : "TKB-fält: `../../../../postalCode` (`PostalCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.city",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.city",
      "short" : "city",
      "definition" : "city",
      "comment" : "TKB-fält: `../../../../city` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "short" : "ContactInformationType",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "comment" : "TKB-fält: `../../../contactPersonContactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "comment" : "TKB-fält: `../../../../contactType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.use",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.use",
      "short" : "use",
      "definition" : "use",
      "comment" : "TKB-fält: `../../../../use` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.value",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.rank",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "comment" : "TKB-fält: `../../../../rank` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.comment",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "comment" : "TKB-fält: `../../../../comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "short" : "DatePeriodType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../start` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../end` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "comment" : "TKB-fält: `../../../../digitalNotification` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.protectedPersonIndicator",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.protectedPersonIndicator",
      "short" : "protectedPersonIndicator",
      "definition" : "protectedPersonIndicator",
      "comment" : "TKB-fält: `../../protectedPersonIndicator` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.protectedPopulationRecord",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.protectedPopulationRecord",
      "short" : "protectedPopulationRecord",
      "definition" : "protectedPopulationRecord",
      "comment" : "TKB-fält: `../../protectedPopulationRecord` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.optoutPaperNotification",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.optoutPaperNotification",
      "short" : "optoutPaperNotification",
      "definition" : "optoutPaperNotification",
      "comment" : "TKB-fält: `../../optoutPaperNotification` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor",
      "short" : "ActorType",
      "definition" : "Datatyp som identifierar en aktör.",
      "comment" : "TKB-fält: `../../updatePersonContactInformationActor` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.id",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.id",
      "short" : "id",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional",
      "short" : "ProfessionalType",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "comment" : "TKB-fält: `../../../professional` (`ProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../../organizationId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.updateTime",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "comment" : "TKB-fält: `../../../updateTime` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
