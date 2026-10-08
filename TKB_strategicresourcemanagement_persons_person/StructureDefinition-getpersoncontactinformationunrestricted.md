# GetPersonContactInformationUnrestricted — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonContactInformationUnrestricted — Response**

## Logical Model: GetPersonContactInformationUnrestricted — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformationunrestricted | *Version*:4.0 |
| Active as of 2026-10-08 | *Computable Name*:GetPersonContactInformationUnrestricted |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetPersonContactInformationUnrestricted (urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4, GetPersonContactInformationUnrestrictedResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-getpersoncontactinformationunrestricted.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpersoncontactinformationunrestricted.csv), [Excel](StructureDefinition-getpersoncontactinformationunrestricted.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpersoncontactinformationunrestricted",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformationunrestricted",
  "version" : "4.0",
  "name" : "GetPersonContactInformationUnrestricted",
  "title" : "GetPersonContactInformationUnrestricted — Response",
  "status" : "active",
  "date" : "2026-10-08T18:52:53+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetPersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4, GetPersonContactInformationUnrestrictedResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersoncontactinformationunrestricted",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpersoncontactinformationunrestricted",
      "path" : "getpersoncontactinformationunrestricted",
      "short" : "GetPersonContactInformationUnrestricted — Response",
      "definition" : "Logisk modell för svaret i GetPersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4, GetPersonContactInformationUnrestrictedResponseType)."
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord",
      "short" : "contactInformationRecord",
      "definition" : "Uppgifter om personens kontaktuppgifter och kontaktpersoner",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformationRecordVersion",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformationRecordVersion",
      "short" : "contactInformationRecordVersion",
      "definition" : "contactInformationRecordVersion Heter version i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.personId",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.personId.root",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.personId.iiExtension",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.personId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation",
      "short" : "contactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.contactType",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.use",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.use",
      "short" : "use",
      "definition" : "use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.contactInformationValue",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.rank",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.comment",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.period",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.period.start",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.period.end",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.digitalNotification",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson",
      "short" : "contactPerson",
      "definition" : "contactPerson",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactRelationshipType",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactRelationshipType",
      "short" : "contactRelationshipType",
      "definition" : "contactRelationshipType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.priorityOrder",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.priorityOrder",
      "short" : "priorityOrder",
      "definition" : "priorityOrder",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.givenName",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.surName",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.surName",
      "short" : "surName",
      "definition" : "surName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.middleName",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress",
      "short" : "contactPersonAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.postalCode",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.city",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "short" : "contactPersonContactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.use",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.use",
      "short" : "use",
      "definition" : "use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.rank",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.comment",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.protectedPersonIndicator",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.protectedPersonIndicator",
      "short" : "protectedPersonIndicator",
      "definition" : "protectedPersonIndicator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.protectedPopulationRecord",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.protectedPopulationRecord",
      "short" : "protectedPopulationRecord",
      "definition" : "protectedPopulationRecord",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.optoutPaperNotification",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.optoutPaperNotification",
      "short" : "optoutPaperNotification",
      "definition" : "optoutPaperNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor",
      "short" : "updatePersonContactInformationActor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.actorId",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.actorId.root",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.professional",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.updateTime",
      "path" : "getpersoncontactinformationunrestricted.contactInformationRecord.updatePersonContactInformationActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
