# UpdatePersonContactInformationUnrestricted — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePersonContactInformationUnrestricted — Response**

## Logical Model: UpdatePersonContactInformationUnrestricted — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updatepersoncontactinformationunrestricted | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:UpdatePersonContactInformationUnrestricted |
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
  "version" : "5.1.0",
  "name" : "UpdatePersonContactInformationUnrestricted",
  "title" : "UpdatePersonContactInformationUnrestricted — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
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
      "short" : "UpdatePersonContactInformationUnrestrictedResult",
      "definition" : "UpdatePersonContactInformationUnrestrictedResult",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result.resultCode",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord",
      "short" : "contactInformationRecord",
      "definition" : "Uppgifter om personens kontaktuppgifter och kontaktpersoner",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformationRecordVersion",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformationRecordVersion",
      "short" : "contactInformationRecordVersion",
      "definition" : "contactInformationRecordVersion Heter version i schemat.",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.personId.root",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.personId.iiExtension",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.personId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation",
      "short" : "contactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.contactType",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.contactInformationValue",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period.start",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactInformation.period.start",
      "short" : "start",
      "definition" : "start",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson",
      "short" : "contactPerson",
      "definition" : "contactPerson",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactRelationshipType",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactRelationshipType",
      "short" : "contactRelationshipType",
      "definition" : "contactRelationshipType",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress",
      "short" : "contactPersonAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation",
      "short" : "contactPersonContactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.contactPerson.contactPersonContactInformation.period.start",
      "short" : "start",
      "definition" : "start",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor",
      "short" : "updatePersonContactInformationActor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.actorId",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.actorId.root",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.updateTime",
      "path" : "updatepersoncontactinformationunrestricted.UpdatePersonContactInformationUnrestrictedResult.contactInformationRecord.updatePersonContactInformationActor.updateTime",
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
