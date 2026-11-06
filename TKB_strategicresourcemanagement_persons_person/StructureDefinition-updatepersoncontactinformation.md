# UpdatePersonContactInformation — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePersonContactInformation — Response**

## Logical Model: UpdatePersonContactInformation — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformation | *Version*:4.0 |
| Active as of 2026-11-06 | *Computable Name*:UpdatePersonContactInformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UpdatePersonContactInformation (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-updatepersoncontactinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatepersoncontactinformation.csv), [Excel](StructureDefinition-updatepersoncontactinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatepersoncontactinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformation",
  "version" : "4.0",
  "name" : "UpdatePersonContactInformation",
  "title" : "UpdatePersonContactInformation — Response",
  "status" : "active",
  "date" : "2026-11-06T21:50:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UpdatePersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatepersoncontactinformation",
      "path" : "updatepersoncontactinformation",
      "short" : "UpdatePersonContactInformation — Response",
      "definition" : "Logisk modell för svaret i UpdatePersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationResponseType)."
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult",
      "short" : "updatePersonContactInformationResult",
      "definition" : "UpdatePersonContactInformationResult med status för om tjänsten utfördes, samt eventuellt resultat av uppdateringen. Se datatyp resultType för gällande felkoder",
      "comment" : "TKB-fält: `updatePersonContactInformationResult` (`urn:riv:strategicresourcemanagement:persons:person:5:UpdatePersonContactInformationResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.result",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes.",
      "comment" : "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.result.resultCode",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.result.resultCode",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-resultcode-vs"
      }
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.result.resultText",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.result.resultText",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord",
      "short" : "contactInformationRecord",
      "definition" : "Uppgifter om personens kontaktuppgifter och kontaktpersoner",
      "comment" : "TKB-fält: `../contactInformationRecord` (`ContactInformationRecordType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformationRecordVersion",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformationRecordVersion",
      "short" : "contactInformationRecordVersion",
      "definition" : "contactInformationRecordVersion Heter version i schemat.",
      "comment" : "TKB-fält: `../../version` (`Timestamp`, kardinalitet 1..1).\n\n**Modellanteckning:** contactInformationRecordVersion Heter version i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.personId",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../personId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.personId.root",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.personId.root",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.personId.iiExtension",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.personId.iiExtension",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation",
      "short" : "contactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "comment" : "TKB-fält: `../../contactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.contactType",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.contactType",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.use",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.use",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.contactInformationValue",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../value` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** contactInformationValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.rank",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.rank",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.comment",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.comment",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.period",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.period",
      "short" : "period",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../period` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.period.start",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.period.start",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.period.end",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.period.end",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.digitalNotification",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactInformation.digitalNotification",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson",
      "short" : "contactPerson",
      "definition" : "contactPerson",
      "comment" : "TKB-fält: `../../contactPerson` (`ContactPersonType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactRelationshipType",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactRelationshipType",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.priorityOrder",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.priorityOrder",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.givenName",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.givenName",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.surName",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.surName",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.middleName",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.middleName",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress",
      "short" : "contactPersonAddress",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../contactPersonAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalCode",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.postalCode",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.city",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonAddress.city",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "short" : "contactPersonContactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "comment" : "TKB-fält: `../../../contactPersonContactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.use",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.use",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../value` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** contactInformationValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.rank",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.rank",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.comment",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.comment",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "short" : "period",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.protectedPersonIndicator",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.protectedPersonIndicator",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.protectedPopulationRecord",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.protectedPopulationRecord",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.optoutPaperNotification",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.optoutPaperNotification",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor",
      "short" : "updatePersonContactInformationActor",
      "definition" : "Datatyp som identifierar en aktör.",
      "comment" : "TKB-fält: `../../updatePersonContactInformationActor` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.actorId",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.actorId.root",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.actorId.root",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.actorId.iiExtension",
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
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "comment" : "TKB-fält: `../../../professional` (`ProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../../organizationId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.updateTime",
      "path" : "updatepersoncontactinformation.updatePersonContactInformationResult.contactInformationRecord.updatePersonContactInformationActor.updateTime",
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
