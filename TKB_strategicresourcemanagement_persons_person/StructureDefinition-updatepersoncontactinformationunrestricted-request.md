# UpdatePersonContactInformationUnrestricted — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePersonContactInformationUnrestricted — Request**

## Logical Model: UpdatePersonContactInformationUnrestricted — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformationunrestricted-request | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:UpdatePersonContactInformationUnrestrictedRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UpdatePersonContactInformationUnrestricted (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-updatepersoncontactinformationunrestricted-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatepersoncontactinformationunrestricted-request.csv), [Excel](StructureDefinition-updatepersoncontactinformationunrestricted-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatepersoncontactinformationunrestricted-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformationunrestricted-request",
  "version" : "4.0",
  "name" : "UpdatePersonContactInformationUnrestrictedRequest",
  "title" : "UpdatePersonContactInformationUnrestricted — Request",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UpdatePersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformationunrestricted-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatepersoncontactinformationunrestricted-request",
      "path" : "updatepersoncontactinformationunrestricted-request",
      "short" : "UpdatePersonContactInformationUnrestricted — Request",
      "definition" : "Logisk modell för begäran i UpdatePersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.actor",
      "path" : "updatepersoncontactinformationunrestricted-request.actor",
      "short" : "ActorType",
      "definition" : "Datatyp som identifierar en aktör.",
      "comment" : "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.actor.id",
      "path" : "updatepersoncontactinformationunrestricted-request.actor.id",
      "short" : "id",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.actor.professional",
      "path" : "updatepersoncontactinformationunrestricted-request.actor.professional",
      "short" : "ProfessionalType",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "comment" : "TKB-fält: `../professional` (`ProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.actor.professional.organizationId",
      "path" : "updatepersoncontactinformationunrestricted-request.actor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../organizationId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.actor.updateTime",
      "path" : "updatepersoncontactinformationunrestricted-request.actor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "comment" : "TKB-fält: `../updateTime` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.personId",
      "path" : "updatepersoncontactinformationunrestricted-request.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `personId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.versionToUpdate",
      "path" : "updatepersoncontactinformationunrestricted-request.versionToUpdate",
      "short" : "versionToUpdate",
      "definition" : "versionToUpdate",
      "comment" : "TKB-fält: `versionToUpdate` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation",
      "short" : "ContactInformationType",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "comment" : "TKB-fält: `contactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.contactType",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "comment" : "TKB-fält: `../contactType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.use",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.use",
      "short" : "use",
      "definition" : "use",
      "comment" : "TKB-fält: `../use` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.value",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../value` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.rank",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "comment" : "TKB-fält: `../rank` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.comment",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "comment" : "TKB-fält: `../comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.period",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.period",
      "short" : "DatePeriodType",
      "definition" : "period",
      "comment" : "TKB-fält: `../period` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.period.start",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../start` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.period.end",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../end` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactInformation.digitalNotification",
      "path" : "updatepersoncontactinformationunrestricted-request.contactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "comment" : "TKB-fält: `../digitalNotification` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson",
      "short" : "ContactPersonType",
      "definition" : "contactPerson",
      "comment" : "TKB-fält: `contactPerson` (`ContactPersonType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactRelationshipType",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactRelationshipType",
      "short" : "contactRelationshipType",
      "definition" : "contactRelationshipType",
      "comment" : "TKB-fält: `../contactRelationshipType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.priorityOrder",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.priorityOrder",
      "short" : "priorityOrder",
      "definition" : "priorityOrder",
      "comment" : "TKB-fält: `../priorityOrder` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.givenName",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "comment" : "TKB-fält: `../givenName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.surName",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.surName",
      "short" : "surName",
      "definition" : "surName",
      "comment" : "TKB-fält: `../surName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.middleName",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "comment" : "TKB-fält: `../middleName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress",
      "short" : "ResidentialAddressType",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../contactPersonAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.careOf",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "comment" : "TKB-fält: `../../careOf` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.postalCode",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "comment" : "TKB-fält: `../../postalCode` (`PostalCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.city",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonAddress.city",
      "short" : "city",
      "definition" : "city",
      "comment" : "TKB-fält: `../../city` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation",
      "short" : "ContactInformationType",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "comment" : "TKB-fält: `../contactPersonContactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.contactType",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.contactType",
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
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.use",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.use",
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
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.value",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.value",
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
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.rank",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.rank",
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
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.comment",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.comment",
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
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.period",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.period",
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
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.period.start",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.period.start",
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
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.period.end",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.period.end",
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
      "id" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "updatepersoncontactinformationunrestricted-request.contactPerson.contactPersonContactInformation.digitalNotification",
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
      "id" : "updatepersoncontactinformationunrestricted-request.optoutPaperNotification",
      "path" : "updatepersoncontactinformationunrestricted-request.optoutPaperNotification",
      "short" : "optoutPaperNotification",
      "definition" : "optoutPaperNotification",
      "comment" : "TKB-fält: `optoutPaperNotification` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
