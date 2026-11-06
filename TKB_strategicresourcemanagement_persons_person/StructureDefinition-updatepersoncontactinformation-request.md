# UpdatePersonContactInformation — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePersonContactInformation — Request**

## Logical Model: UpdatePersonContactInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformation-request | *Version*:4.0 |
| Active as of 2026-11-06 | *Computable Name*:UpdatePersonContactInformationRequest |
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
  "version" : "4.0",
  "name" : "UpdatePersonContactInformationRequest",
  "title" : "UpdatePersonContactInformation — Request",
  "status" : "active",
  "date" : "2026-11-06T21:50:57+00:00",
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
      "definition" : "Den som utför uppdateringen.",
      "comment" : "TKB-fält: `actor` (`urn:riv:strategicresourcemanagement:persons:person:5:ActorType`, kardinalitet 1..1).\n\n**Modellanteckning:** Datatyp som identifierar en aktör.",
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
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../id` (`IIType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../root` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
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
      "comment" : "TKB-fält: `../professional` (`ProfessionalType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../organizationId` (`IIType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../root` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
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
      "comment" : "TKB-fält: `../updateTime` (`Timestamp`, kardinalitet 0..1).",
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
      "definition" : "Id på personen vars kontaktuppgifter ska uppdateras",
      "comment" : "TKB-fält: `personId` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** En universellt unik identifierare.",
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
      "comment" : "TKB-fält: `../root` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
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
      "definition" : "Den version av personposten som skall uppdateras. Se även Övriga regler.\n\nTjänstekonsumenten får värdet genom en föregående hämtning av detta attribut (version i datatypen ContactInformationRecordType).",
      "comment" : "TKB-fält: `versionToUpdate` (`urn:riv:strategicresourcemanagement:persons:person:5:Timestamp`, kardinalitet 0..1).",
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
      "definition" : "Personens kontaktuppgifter",
      "comment" : "TKB-fält: `contactInformation` (`urn:riv:strategicresourcemanagement:persons:person:5:ContactInformationType`, kardinalitet 0..*).\n\n**Modellanteckning:** Klass för patientens egna angivna kontakuppgifter",
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
      "comment" : "TKB-fält: `../contactType` (`CodedValue`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../use` (`CodedValue`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../value` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** contactInformationValue Heter value i schemat.",
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
      "comment" : "TKB-fält: `../rank` (`int`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../comment` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../period` (`DatePeriodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../start` (`date`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../end` (`date`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../digitalNotification` (`boolean`, kardinalitet 0..1).",
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
      "definition" : "Uppgifter om personens kontaktpersoner",
      "comment" : "TKB-fält: `contactPerson` (`urn:riv:strategicresourcemanagement:persons:person:5:ContactPersonType`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../contactRelationshipType` (`CodedValue`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../priorityOrder` (`int`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../givenName` (`String80`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../surName` (`String80`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../middleName` (`String80`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../contactPersonAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../careOf` (`String40`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../postalAddress1` (`String40`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../postalAddress2` (`String40`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../postalCode` (`PostalCode`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../city` (`String40`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../contactPersonContactInformation` (`ContactInformationType`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../contactType` (`CodedValue`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../use` (`CodedValue`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../value` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** contactInformationValue Heter value i schemat.",
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
      "comment" : "TKB-fält: `../../rank` (`int`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../comment` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../period` (`DatePeriodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../start` (`date`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../end` (`date`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../digitalNotification` (`boolean`, kardinalitet 0..1).",
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
      "definition" : "Sätts till true om personen ej önskar pappersavisering",
      "comment" : "TKB-fält: `optoutPaperNotification*` (`Xs:Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
