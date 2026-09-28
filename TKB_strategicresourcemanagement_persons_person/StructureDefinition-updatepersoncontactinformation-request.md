# UpdatePersonContactInformation — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePersonContactInformation — Request**

## Logical Model: UpdatePersonContactInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformation-request | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:UpdatePersonContactInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UpdatePersonContactInformation (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-updatepersoncontactinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatepersoncontactinformation-request.csv), [Excel](StructureDefinition-updatepersoncontactinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatepersoncontactinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformation-request",
  "version" : "5.1.0",
  "name" : "UpdatePersonContactInformationRequest",
  "title" : "UpdatePersonContactInformation — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UpdatePersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatepersoncontactinformation-request",
      "path" : "updatepersoncontactinformation-request",
      "short" : "UpdatePersonContactInformation — Request",
      "definition" : "Logisk modell för begäran i UpdatePersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "updatepersoncontactinformation-request.logicalAddress",
      "path" : "updatepersoncontactinformation-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. http://tempuri.org",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor",
      "path" : "updatepersoncontactinformation-request.actor",
      "short" : "actor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor.actorId",
      "path" : "updatepersoncontactinformation-request.actor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor.actorId.root",
      "path" : "updatepersoncontactinformation-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor.actorId.iiExtension",
      "path" : "updatepersoncontactinformation-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor.professional",
      "path" : "updatepersoncontactinformation-request.actor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor.professional.organizationId",
      "path" : "updatepersoncontactinformation-request.actor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor.professional.organizationId.root",
      "path" : "updatepersoncontactinformation-request.actor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor.professional.organizationId.iiExtension",
      "path" : "updatepersoncontactinformation-request.actor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.actor.updateTime",
      "path" : "updatepersoncontactinformation-request.actor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.personId",
      "path" : "updatepersoncontactinformation-request.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.personId.root",
      "path" : "updatepersoncontactinformation-request.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.personId.iiExtension",
      "path" : "updatepersoncontactinformation-request.personId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.versionToUpdate",
      "path" : "updatepersoncontactinformation-request.versionToUpdate",
      "short" : "versionToUpdate",
      "definition" : "versionToUpdate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation",
      "path" : "updatepersoncontactinformation-request.contactInformation",
      "short" : "contactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.contactType",
      "path" : "updatepersoncontactinformation-request.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.use",
      "path" : "updatepersoncontactinformation-request.contactInformation.use",
      "short" : "use",
      "definition" : "use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.contactInformationValue",
      "path" : "updatepersoncontactinformation-request.contactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.rank",
      "path" : "updatepersoncontactinformation-request.contactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.comment",
      "path" : "updatepersoncontactinformation-request.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.period",
      "path" : "updatepersoncontactinformation-request.contactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.period.start",
      "path" : "updatepersoncontactinformation-request.contactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.period.end",
      "path" : "updatepersoncontactinformation-request.contactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactInformation.digitalNotification",
      "path" : "updatepersoncontactinformation-request.contactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson",
      "path" : "updatepersoncontactinformation-request.contactPerson",
      "short" : "contactPerson",
      "definition" : "contactPerson",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactRelationshipType",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactRelationshipType",
      "short" : "contactRelationshipType",
      "definition" : "contactRelationshipType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.priorityOrder",
      "path" : "updatepersoncontactinformation-request.contactPerson.priorityOrder",
      "short" : "priorityOrder",
      "definition" : "priorityOrder",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.givenName",
      "path" : "updatepersoncontactinformation-request.contactPerson.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.surName",
      "path" : "updatepersoncontactinformation-request.contactPerson.surName",
      "short" : "surName",
      "definition" : "surName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.middleName",
      "path" : "updatepersoncontactinformation-request.contactPerson.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress",
      "short" : "contactPersonAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.careOf",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.postalCode",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.city",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation",
      "short" : "contactPersonContactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.contactType",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.use",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.use",
      "short" : "use",
      "definition" : "use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.contactInformationValue",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.rank",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.comment",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.period",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.period.start",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.period.end",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "updatepersoncontactinformation-request.contactPerson.contactPersonContactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformation-request.optoutPaperNotification",
      "path" : "updatepersoncontactinformation-request.optoutPaperNotification",
      "short" : "optoutPaperNotification",
      "definition" : "optoutPaperNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
