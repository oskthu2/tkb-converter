# GetPersonContactInformation — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonContactInformation — Response**

## Logical Model: GetPersonContactInformation — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformation | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:GetPersonContactInformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetPersonContactInformation (urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-getpersoncontactinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpersoncontactinformation.csv), [Excel](StructureDefinition-getpersoncontactinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpersoncontactinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformation",
  "version" : "4.0",
  "name" : "GetPersonContactInformation",
  "title" : "GetPersonContactInformation — Response",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetPersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpersoncontactinformation",
      "path" : "getpersoncontactinformation",
      "short" : "GetPersonContactInformation — Response",
      "definition" : "Logisk modell för svaret i GetPersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationResponseType)."
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord",
      "path" : "getpersoncontactinformation.contactInformationRecord",
      "short" : "ContactInformationRecordType",
      "definition" : "PersonContactInformationRecordResponse innehållande den efterfrågade personidentitetens kontaktinformation och/eller kontaktpersoner",
      "comment" : "TKB-fält: `contactInformationRecord` (`urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationRecordType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.version",
      "path" : "getpersoncontactinformation.contactInformationRecord.version",
      "short" : "version",
      "definition" : "version",
      "comment" : "TKB-fält: `../version` (`Timestamp`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.personId",
      "path" : "getpersoncontactinformation.contactInformationRecord.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../personId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation",
      "short" : "ContactInformationType",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "comment" : "TKB-fält: `../contactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.contactType",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "comment" : "TKB-fält: `../../contactType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.use",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.use",
      "short" : "use",
      "definition" : "use",
      "comment" : "TKB-fält: `../../use` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.value",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.rank",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "comment" : "TKB-fält: `../../rank` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.comment",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "comment" : "TKB-fält: `../../comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.period",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.period",
      "short" : "DatePeriodType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../period` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.period.start",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../start` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.period.end",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../end` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactInformation.digitalNotification",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "comment" : "TKB-fält: `../../digitalNotification` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson",
      "short" : "ContactPersonType",
      "definition" : "contactPerson",
      "comment" : "TKB-fält: `../contactPerson` (`ContactPersonType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactRelationshipType",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactRelationshipType",
      "short" : "contactRelationshipType",
      "definition" : "contactRelationshipType",
      "comment" : "TKB-fält: `../../contactRelationshipType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.priorityOrder",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.priorityOrder",
      "short" : "priorityOrder",
      "definition" : "priorityOrder",
      "comment" : "TKB-fält: `../../priorityOrder` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.givenName",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "comment" : "TKB-fält: `../../givenName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.surName",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.surName",
      "short" : "surName",
      "definition" : "surName",
      "comment" : "TKB-fält: `../../surName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.middleName",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "comment" : "TKB-fält: `../../middleName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress",
      "short" : "ResidentialAddressType",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../contactPersonAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "comment" : "TKB-fält: `../../../careOf` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../../../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../../../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.postalCode",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "comment" : "TKB-fält: `../../../postalCode` (`PostalCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.city",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonAddress.city",
      "short" : "city",
      "definition" : "city",
      "comment" : "TKB-fält: `../../../city` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "short" : "ContactInformationType",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "comment" : "TKB-fält: `../../contactPersonContactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.use",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.use",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.value",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.value",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.rank",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.rank",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.comment",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.comment",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "getpersoncontactinformation.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification",
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
      "id" : "getpersoncontactinformation.contactInformationRecord.protectedPersonIndicator",
      "path" : "getpersoncontactinformation.contactInformationRecord.protectedPersonIndicator",
      "short" : "protectedPersonIndicator",
      "definition" : "protectedPersonIndicator",
      "comment" : "TKB-fält: `../protectedPersonIndicator` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.protectedPopulationRecord",
      "path" : "getpersoncontactinformation.contactInformationRecord.protectedPopulationRecord",
      "short" : "protectedPopulationRecord",
      "definition" : "protectedPopulationRecord",
      "comment" : "TKB-fält: `../protectedPopulationRecord` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.optoutPaperNotification",
      "path" : "getpersoncontactinformation.contactInformationRecord.optoutPaperNotification",
      "short" : "optoutPaperNotification",
      "definition" : "optoutPaperNotification",
      "comment" : "TKB-fält: `../optoutPaperNotification` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor",
      "path" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor",
      "short" : "ActorType",
      "definition" : "Datatyp som identifierar en aktör.",
      "comment" : "TKB-fält: `../updatePersonContactInformationActor` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor.id",
      "path" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor.id",
      "short" : "id",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor.professional",
      "path" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor.professional",
      "short" : "ProfessionalType",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "comment" : "TKB-fält: `../../professional` (`ProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../organizationId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor.updateTime",
      "path" : "getpersoncontactinformation.contactInformationRecord.updatePersonContactInformationActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "comment" : "TKB-fält: `../../updateTime` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
