# LookupResidentsForProfile — Response - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LookupResidentsForProfile — Response**

## Logical Model: LookupResidentsForProfile — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-citizen-citizen/StructureDefinition/lookupresidentsforprofile | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:LookupResidentsForProfile |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i LookupResidentsForProfile (urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2, LookupResidentsForProfileResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-citizen-citizen|current/StructureDefinition/StructureDefinition-lookupresidentsforprofile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lookupresidentsforprofile.csv), [Excel](StructureDefinition-lookupresidentsforprofile.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lookupresidentsforprofile",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/StructureDefinition/lookupresidentsforprofile",
  "version" : "2.0",
  "name" : "LookupResidentsForProfile",
  "title" : "LookupResidentsForProfile — Response",
  "status" : "active",
  "date" : "2026-11-06T21:39:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i LookupResidentsForProfile\n(urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2, LookupResidentsForProfileResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/StructureDefinition/lookupresidentsforprofile",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lookupresidentsforprofile",
      "path" : "lookupresidentsforprofile",
      "short" : "LookupResidentsForProfile — Response",
      "definition" : "Logisk modell för svaret i LookupResidentsForProfile\n(urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2, LookupResidentsForProfileResponseType)."
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType",
      "short" : "lookupResidentsResponseType",
      "definition" : "Returtyp för operationen lookupResidentsForProfile",
      "comment" : "TKB-fält: `lookupResidentsResponseType` (`LookupResidentsResponseType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords",
      "short" : "populationRegistrationRecords",
      "definition" : "Folkbokföringspost",
      "comment" : "TKB-fält: `../populationRegistrationRecords` (`PopulationRegistrationRecordType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.protectedPersonIndicator",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.protectedPersonIndicator",
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
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.testIndicator",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.testIndicator",
      "short" : "testIndicator",
      "definition" : "testIndicator",
      "comment" : "TKB-fält: `../../testIndicator` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.syncronizationTime",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.syncronizationTime",
      "short" : "syncronizationTime",
      "definition" : "syncronizationTime",
      "comment" : "TKB-fält: `../../syncronizationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase",
      "short" : "notificationCase",
      "definition" : "Ärendeuppgifter",
      "comment" : "TKB-fält: `../../notificationCase` (`NotificationCaseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.recordId",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.recordId",
      "short" : "recordId",
      "definition" : "recordId",
      "comment" : "TKB-fält: `../../../recordId` (`RecordId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationType",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationType",
      "short" : "notificationType",
      "definition" : "notificationType",
      "comment" : "TKB-fält: `../../../notificationType` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.modificationTime",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.modificationTime",
      "short" : "modificationTime",
      "definition" : "modificationTime",
      "comment" : "TKB-fält: `../../../modificationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.totalRecord",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.totalRecord",
      "short" : "totalRecord",
      "definition" : "totalRecord",
      "comment" : "TKB-fält: `../../../totalRecord` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate",
      "short" : "notificationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../notificationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.notificationCase.notificationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord",
      "short" : "personalRecord",
      "definition" : "Grupp för personpost",
      "comment" : "TKB-fält: `../../personalRecord` (`PersonalRecordType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "Personidentitet",
      "comment" : "TKB-fält: `../../../personalIdentity` (`PersonalIdentityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity.personalIdentityId",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity.personalIdentityId",
      "short" : "personalIdentityId",
      "definition" : "personalIdentityId Heter id i schemat.",
      "comment" : "TKB-fält: `../../../../id` (`PersonalIdentityNumber`, kardinalitet 1..1).\n\n**Modellanteckning:** personalIdentityId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity.personalIdentityType",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalIdentity.personalIdentityType",
      "short" : "personalIdentityType",
      "definition" : "personalIdentityType Heter type i schemat.",
      "comment" : "TKB-fält: `../../../../type` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** personalIdentityType Heter type i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "Personidentitet",
      "comment" : "TKB-fält: `../../../referredPersonalIdentity` (`PersonalIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity.personalIdentityId",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity.personalIdentityId",
      "short" : "personalIdentityId",
      "definition" : "personalIdentityId Heter id i schemat.",
      "comment" : "TKB-fält: `../../../../id` (`PersonalIdentityNumber`, kardinalitet 1..1).\n\n**Modellanteckning:** personalIdentityId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity.personalIdentityType",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.referredPersonalIdentity.personalIdentityType",
      "short" : "personalIdentityType",
      "definition" : "personalIdentityType Heter type i schemat.",
      "comment" : "TKB-fält: `../../../../type` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** personalIdentityType Heter type i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration",
      "short" : "deregistration",
      "definition" : "Uppgifter om avregistrering",
      "comment" : "TKB-fält: `../../../deregistration` (`DeregistrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationReasonCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "comment" : "TKB-fält: `../../../../deregistrationReasonCode` (`DeregistrationReasonCodeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-deregistrationreasoncode-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate",
      "short" : "deregistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../deregistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.deregistration.deregistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName",
      "short" : "personalRecordName",
      "definition" : "Namn",
      "comment" : "TKB-fält: `../../../name` (`NameType`, kardinalitet 0..1).\n\n**Modellanteckning:** Namn Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenNameIndicator",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "comment" : "TKB-fält: `../../../../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName",
      "short" : "givenName",
      "definition" : "Grupp för del av namn där delen kan vara styrkt eller ej",
      "comment" : "TKB-fält: `../../../../givenName` (`NamePartType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName.namePartName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName.namePartName",
      "short" : "namePartName",
      "definition" : "namePartName Heter name i schemat.",
      "comment" : "TKB-fält: `../../../../../name` (`String80`, kardinalitet 0..1).\n\n**Modellanteckning:** namePartName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName.attested",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.givenName.attested",
      "short" : "attested",
      "definition" : "attested",
      "comment" : "TKB-fält: `../../../../../attested` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName",
      "short" : "middleName",
      "definition" : "Grupp för del av namn där delen kan vara styrkt eller ej",
      "comment" : "TKB-fält: `../../../../middleName` (`NamePartType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName.namePartName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName.namePartName",
      "short" : "namePartName",
      "definition" : "namePartName Heter name i schemat.",
      "comment" : "TKB-fält: `../../../../../name` (`String80`, kardinalitet 0..1).\n\n**Modellanteckning:** namePartName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName.attested",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.middleName.attested",
      "short" : "attested",
      "definition" : "attested",
      "comment" : "TKB-fält: `../../../../../attested` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname",
      "short" : "surname",
      "definition" : "Grupp för del av namn där delen kan vara styrkt eller ej",
      "comment" : "TKB-fält: `../../../../surname` (`NamePartType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname.namePartName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname.namePartName",
      "short" : "namePartName",
      "definition" : "namePartName Heter name i schemat.",
      "comment" : "TKB-fält: `../../../../../name` (`String80`, kardinalitet 0..1).\n\n**Modellanteckning:** namePartName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname.attested",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.surname.attested",
      "short" : "attested",
      "definition" : "attested",
      "comment" : "TKB-fält: `../../../../../attested` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.notificationName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.personalRecordName.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "comment" : "TKB-fält: `../../../../notificationName` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality",
      "short" : "populationRegistrationLocality",
      "definition" : "Uppgifter om folkbokföring",
      "comment" : "TKB-fält: `../../../populationRegistrationLocality` (`PopulationRegistrationLocalityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate",
      "short" : "populationRegistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../populationRegistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.countyCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.countyCode",
      "short" : "countyCode",
      "definition" : "countyCode",
      "comment" : "TKB-fält: `../../../../countyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.municipalityCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.municipalityCode",
      "short" : "municipalityCode",
      "definition" : "municipalityCode",
      "comment" : "TKB-fält: `../../../../municipalityCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.parishCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.parishCode",
      "short" : "parishCode",
      "definition" : "parishCode",
      "comment" : "TKB-fält: `../../../../parishCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.propertyDesignation",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.propertyDesignation",
      "short" : "propertyDesignation",
      "definition" : "propertyDesignation",
      "comment" : "TKB-fält: `../../../../propertyDesignation` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.fictitiousPropertyNumber",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.fictitiousPropertyNumber",
      "short" : "fictitiousPropertyNumber",
      "definition" : "fictitiousPropertyNumber",
      "comment" : "TKB-fält: `../../../../fictitiousPropertyNumber` (`FictitiousPropertyNumber`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationType",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.populationRegistrationLocality.populationRegistrationType",
      "short" : "populationRegistrationType",
      "definition" : "populationRegistrationType",
      "comment" : "TKB-fält: `../../../../populationRegistrationType` (`PopulationRegistrationTypeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-populationregistrationtype-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation",
      "short" : "addressInformation",
      "definition" : "Grupp för adressuppgifter",
      "comment" : "TKB-fält: `../../../addressInformation` (`AddressInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress",
      "short" : "residentialAddress",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../../residentialAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.careOf",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "comment" : "TKB-fält: `../../../../../careOf` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalAddress1",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../../../../../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalAddress2",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../../../../../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "comment" : "TKB-fält: `../../../../../postalCode` (`PostalCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.city",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.residentialAddress.city",
      "short" : "city",
      "definition" : "city",
      "comment" : "TKB-fält: `../../../../../city` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys",
      "short" : "nationalKeys",
      "definition" : "Riksnycklar",
      "comment" : "TKB-fält: `../../../../nationalKeys` (`NationalKeysType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.propertyId",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
      "comment" : "TKB-fält: `../../../../../propertyId` (`PropertyId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.addressPlaceId",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.addressPlaceId",
      "short" : "addressPlaceId",
      "definition" : "addressPlaceId",
      "comment" : "TKB-fält: `../../../../../addressPlaceId` (`AddressPlaceId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.apartmentId",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.nationalKeys.apartmentId",
      "short" : "apartmentId",
      "definition" : "apartmentId",
      "comment" : "TKB-fält: `../../../../../apartmentId` (`ApartmentId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.district",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.district",
      "short" : "district",
      "definition" : "Grupp för Distriktskod",
      "comment" : "TKB-fält: `../../../../district` (`DistrictType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.district.districtCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.district.districtCode",
      "short" : "districtCode",
      "definition" : "districtCode",
      "comment" : "TKB-fält: `../../../../../districtCode` (`DistrictCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress",
      "short" : "specialPostalAddress",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../../specialPostalAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.careOf",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "comment" : "TKB-fält: `../../../../../careOf` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalAddress1",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../../../../../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalAddress2",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../../../../../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "comment" : "TKB-fält: `../../../../../postalCode` (`PostalCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.city",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.specialPostalAddress.city",
      "short" : "city",
      "definition" : "city",
      "comment" : "TKB-fält: `../../../../../city` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad",
      "short" : "addressAbroad",
      "definition" : "Utlandsadress",
      "comment" : "TKB-fält: `../../../../addressAbroad` (`AddressAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress1",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../../../../../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress2",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../../../../../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress3",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.postalAddress3",
      "short" : "postalAddress3",
      "definition" : "postalAddress3",
      "comment" : "TKB-fält: `../../../../../postalAddress3` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.country",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.country",
      "short" : "country",
      "definition" : "country",
      "comment" : "TKB-fält: `../../../../../country` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate",
      "short" : "addressAbroadDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../../addressAbroadDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate",
      "short" : "votingDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../../votingDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.addressInformation.addressAbroad.votingDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus",
      "short" : "maritalStatus",
      "definition" : "Civistånd",
      "comment" : "TKB-fält: `../../../maritalStatus` (`MaritalStatusType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusCode",
      "short" : "maritalStatusCode",
      "definition" : "maritalStatusCode",
      "comment" : "TKB-fält: `../../../../maritalStatusCode` (`MaritalStatusCodeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-maritalstatuscode-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate",
      "short" : "maritalStatusDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../maritalStatusDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.maritalStatus.maritalStatusDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth",
      "short" : "birth",
      "definition" : "Uppgifter om födelse",
      "comment" : "TKB-fält: `../../../birth` (`BirthType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden",
      "short" : "placeOfBirthSweden",
      "definition" : "Uppgifter om hemort i Sverige",
      "comment" : "TKB-fält: `../../../../placeOfBirthSweden` (`PlaceOfBirthSwedenType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden.birthCountyCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden.birthCountyCode",
      "short" : "birthCountyCode",
      "definition" : "birthCountyCode",
      "comment" : "TKB-fält: `../../../../../birthCountyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden.birthParish",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.placeOfBirthSweden.birthParish",
      "short" : "birthParish",
      "definition" : "birthParish",
      "comment" : "TKB-fält: `../../../../../birthParish` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad",
      "short" : "birthAbroad",
      "definition" : "Uppgifter om födelse i utlandet",
      "comment" : "TKB-fält: `../../../../birthAbroad` (`BirthAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad",
      "short" : "placeOfBirthAbroad",
      "definition" : "Födelseort utland",
      "comment" : "TKB-fält: `../../../../../placeOfBirthAbroad` (`PlaceOfBirthAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad.placeOfBirthAbroad",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad.placeOfBirthAbroad",
      "short" : "placeOfBirthAbroad",
      "definition" : "placeOfBirthAbroad",
      "comment" : "TKB-fält: `../../../../../../placeOfBirthAbroad` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad.attested",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.placeOfBirthAbroad.attested",
      "short" : "attested",
      "definition" : "attested",
      "comment" : "TKB-fält: `../../../../../../attested` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.countryOfBirth",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.birth.birthAbroad.countryOfBirth",
      "short" : "countryOfBirth",
      "definition" : "countryOfBirth",
      "comment" : "TKB-fält: `../../../../../countryOfBirth` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration",
      "short" : "immigration",
      "definition" : "Grupp för invandringsuppgifter",
      "comment" : "TKB-fält: `../../../immigration` (`ImmigrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate",
      "short" : "immigrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../immigrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.rightOfResidence",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.rightOfResidence",
      "short" : "rightOfResidence",
      "definition" : "rightOfResidence",
      "comment" : "TKB-fält: `../../../../rightOfResidence` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity",
      "short" : "immigrationIdentity",
      "definition" : "Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo",
      "comment" : "TKB-fält: `../../../../immigrationIdentity` (`ImmigrationIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
      "comment" : "TKB-fält: `../../../../../personalIdentityNumber` (`PersonalIdentityNumber`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity.country",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.immigration.immigrationIdentity.country",
      "short" : "country",
      "definition" : "country",
      "comment" : "TKB-fält: `../../../../../country` (`CountryCode`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships",
      "short" : "relationships",
      "definition" : "Grupp för relation",
      "comment" : "TKB-fält: `../../../relationships` (`RelationshipType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId",
      "short" : "relationshipId",
      "definition" : "Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.",
      "comment" : "TKB-fält: `../../../../relationshipId` (`RelationshipIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "Personidentitet",
      "comment" : "TKB-fält: `../../../../../personalIdentity` (`PersonalIdentityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity.personalIdentityId",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity.personalIdentityId",
      "short" : "personalIdentityId",
      "definition" : "personalIdentityId Heter id i schemat.",
      "comment" : "TKB-fält: `../../../../../../id` (`PersonalIdentityNumber`, kardinalitet 1..1).\n\n**Modellanteckning:** personalIdentityId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity.personalIdentityType",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.personalIdentity.personalIdentityType",
      "short" : "personalIdentityType",
      "definition" : "personalIdentityType Heter type i schemat.",
      "comment" : "TKB-fält: `../../../../../../type` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** personalIdentityType Heter type i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipId.dateOfBirth.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipType",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipType",
      "short" : "relationshipType",
      "definition" : "relationshipType",
      "comment" : "TKB-fält: `../../../../relationshipType` (`RelationshipTypeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-relationshiptype-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate",
      "short" : "relationshipFromDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../relationshipFromDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipFromDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate",
      "short" : "relationshipToDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../relationshipToDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipToDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName",
      "short" : "relationshipName",
      "definition" : "Namn",
      "comment" : "TKB-fält: `../../../../name` (`NameType`, kardinalitet 0..1).\n\n**Modellanteckning:** Namn Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenNameIndicator",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "comment" : "TKB-fält: `../../../../../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName",
      "short" : "givenName",
      "definition" : "Grupp för del av namn där delen kan vara styrkt eller ej",
      "comment" : "TKB-fält: `../../../../../givenName` (`NamePartType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName.namePartName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName.namePartName",
      "short" : "namePartName",
      "definition" : "namePartName Heter name i schemat.",
      "comment" : "TKB-fält: `../../../../../../name` (`String80`, kardinalitet 0..1).\n\n**Modellanteckning:** namePartName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName.attested",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.givenName.attested",
      "short" : "attested",
      "definition" : "attested",
      "comment" : "TKB-fält: `../../../../../../attested` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName",
      "short" : "middleName",
      "definition" : "Grupp för del av namn där delen kan vara styrkt eller ej",
      "comment" : "TKB-fält: `../../../../../middleName` (`NamePartType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName.namePartName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName.namePartName",
      "short" : "namePartName",
      "definition" : "namePartName Heter name i schemat.",
      "comment" : "TKB-fält: `../../../../../../name` (`String80`, kardinalitet 0..1).\n\n**Modellanteckning:** namePartName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName.attested",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.middleName.attested",
      "short" : "attested",
      "definition" : "attested",
      "comment" : "TKB-fält: `../../../../../../attested` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname",
      "short" : "surname",
      "definition" : "Grupp för del av namn där delen kan vara styrkt eller ej",
      "comment" : "TKB-fält: `../../../../../surname` (`NamePartType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname.namePartName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname.namePartName",
      "short" : "namePartName",
      "definition" : "namePartName Heter name i schemat.",
      "comment" : "TKB-fält: `../../../../../../name` (`String80`, kardinalitet 0..1).\n\n**Modellanteckning:** namePartName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname.attested",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.surname.attested",
      "short" : "attested",
      "definition" : "attested",
      "comment" : "TKB-fält: `../../../../../../attested` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.notificationName",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipName.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "comment" : "TKB-fält: `../../../../../notificationName` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration",
      "short" : "deregistration",
      "definition" : "Uppgifter om avregistrering",
      "comment" : "TKB-fält: `../../../../deregistration` (`DeregistrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationReasonCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "comment" : "TKB-fält: `../../../../../deregistrationReasonCode` (`DeregistrationReasonCodeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-deregistrationreasoncode-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate",
      "short" : "deregistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../../deregistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.deregistration.deregistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipStatus",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.relationships.relationshipStatus",
      "short" : "relationshipStatus",
      "definition" : "relationshipStatus Heter status i schemat.",
      "comment" : "TKB-fält: `../../../../status` (`RelationshipStatusType`, kardinalitet 0..1).\n\n**Modellanteckning:** relationshipStatus Heter status i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-relationshipstatus-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship",
      "short" : "citizenship",
      "definition" : "Grupp för medborgarskap",
      "comment" : "TKB-fält: `../../../citizenship` (`CitizenshipType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode",
      "short" : "citizenshipCountryCode",
      "definition" : "Grupp för medborgarskapslandkod",
      "comment" : "TKB-fält: `../../../../citizenshipCountryCode` (`CitizenshipCountryCodeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode.countryCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "comment" : "TKB-fält: `../../../../../countryCode` (`CountryCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode.attested",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipCountryCode.attested",
      "short" : "attested",
      "definition" : "attested",
      "comment" : "TKB-fält: `../../../../../attested` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate",
      "short" : "citizenshipDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../citizenshipDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipStatus",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.personalRecord.citizenship.citizenshipStatus",
      "short" : "citizenshipStatus",
      "definition" : "citizenshipStatus Heter status i schemat.",
      "comment" : "TKB-fält: `../../../../status` (`CitizenshipStatusType`, kardinalitet 0..1).\n\n**Modellanteckning:** citizenshipStatus Heter status i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-citizenshipstatus-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords",
      "short" : "historicalRecords",
      "definition" : "Grupp för historik",
      "comment" : "TKB-fält: `../../historicalRecords` (`HistoricalRecordsType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality",
      "short" : "populationRegistrationLocality",
      "definition" : "Uppgifter om folkbokföring",
      "comment" : "TKB-fält: `../../../populationRegistrationLocality` (`PopulationRegistrationLocalityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "short" : "populationRegistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../populationRegistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-datetypeformat-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.countyCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.countyCode",
      "short" : "countyCode",
      "definition" : "countyCode",
      "comment" : "TKB-fält: `../../../../countyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.municipalityCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.municipalityCode",
      "short" : "municipalityCode",
      "definition" : "municipalityCode",
      "comment" : "TKB-fält: `../../../../municipalityCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.parishCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.parishCode",
      "short" : "parishCode",
      "definition" : "parishCode",
      "comment" : "TKB-fält: `../../../../parishCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.propertyDesignation",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.propertyDesignation",
      "short" : "propertyDesignation",
      "definition" : "propertyDesignation",
      "comment" : "TKB-fält: `../../../../propertyDesignation` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber",
      "short" : "fictitiousPropertyNumber",
      "definition" : "fictitiousPropertyNumber",
      "comment" : "TKB-fält: `../../../../fictitiousPropertyNumber` (`FictitiousPropertyNumber`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationType",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.populationRegistrationLocality.populationRegistrationType",
      "short" : "populationRegistrationType",
      "definition" : "populationRegistrationType",
      "comment" : "TKB-fält: `../../../../populationRegistrationType` (`PopulationRegistrationTypeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-populationregistrationtype-vs"
      }
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress",
      "short" : "historicalAddress",
      "definition" : "Grupp för historik adress",
      "comment" : "TKB-fält: `../../../historicalAddress` (`HistoricalAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress",
      "short" : "residentialAddress",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../../residentialAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.careOf",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "comment" : "TKB-fält: `../../../../../careOf` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalAddress1",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../../../../../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalAddress2",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../../../../../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalCode",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "comment" : "TKB-fält: `../../../../../postalCode` (`PostalCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.city",
      "path" : "lookupresidentsforprofile.lookupResidentsResponseType.populationRegistrationRecords.historicalRecords.historicalAddress.residentialAddress.city",
      "short" : "city",
      "definition" : "city",
      "comment" : "TKB-fält: `../../../../../city` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
