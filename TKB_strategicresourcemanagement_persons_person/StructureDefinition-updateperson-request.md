# UpdatePerson — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePerson — Request**

## Logical Model: UpdatePerson — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updateperson-request | *Version*:5.0 |
| Active as of 2026-11-09 | *Computable Name*:UpdatePersonRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UpdatePerson (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-updateperson-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updateperson-request.csv), [Excel](StructureDefinition-updateperson-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updateperson-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updateperson-request",
  "version" : "5.0",
  "name" : "UpdatePersonRequest",
  "title" : "UpdatePerson — Request",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UpdatePerson\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updateperson-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updateperson-request",
      "path" : "updateperson-request",
      "short" : "UpdatePerson — Request",
      "definition" : "Logisk modell för begäran i UpdatePerson\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "updateperson-request.actor",
      "path" : "updateperson-request.actor",
      "short" : "ActorType",
      "definition" : "Den som utför uppdateringen. Aktörens identitet ska även kompletteras med en organisatorisk identitet som kan peka ut PUA-ansvarig organisation. Se datatyp ActorType.",
      "comment" : "TKB-fält: `Actor` (`urn:riv:strategicresourcemanagement:persons:person:5:ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.actor.id",
      "path" : "updateperson-request.actor.id",
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
      "id" : "updateperson-request.actor.professional",
      "path" : "updateperson-request.actor.professional",
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
      "id" : "updateperson-request.actor.professional.organizationId",
      "path" : "updateperson-request.actor.professional.organizationId",
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
      "id" : "updateperson-request.actor.updateTime",
      "path" : "updateperson-request.actor.updateTime",
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
      "id" : "updateperson-request.personId",
      "path" : "updateperson-request.personId",
      "short" : "personId",
      "definition" : "Personens identitet",
      "comment" : "TKB-fält: `personId` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "updateperson-request.gender",
      "path" : "updateperson-request.gender",
      "short" : "gender",
      "definition" : "Kön (se kodverk, [R3])",
      "comment" : "TKB-fält: `gender` (`urn:riv:strategicresourcemanagement:persons:person:5:CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.versionToUpdate",
      "path" : "updateperson-request.versionToUpdate",
      "short" : "versionToUpdate",
      "definition" : "Håller reda på senast gällande version. Skall bifogas i de fall man genom en föregående läsning har erhållit detta attribut",
      "comment" : "TKB-fält: `versionToUpdate` (`urn:riv:strategicresourcemanagement:persons:person:5:Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.name",
      "path" : "updateperson-request.name",
      "short" : "NameType",
      "definition" : "Personens alla namn",
      "comment" : "TKB-fält: `Name` (`urn:riv:strategicresourcemanagement:persons:person:5:NameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.name.givenNameIndicator",
      "path" : "updateperson-request.name.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "comment" : "TKB-fält: `../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson-request.name.givenName",
      "path" : "updateperson-request.name.givenName",
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
      "id" : "updateperson-request.name.middleName",
      "path" : "updateperson-request.name.middleName",
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
      "id" : "updateperson-request.name.surname",
      "path" : "updateperson-request.name.surname",
      "short" : "surname",
      "definition" : "surname",
      "comment" : "TKB-fält: `../surname` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.name.notificationName",
      "path" : "updateperson-request.name.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "comment" : "TKB-fält: `../notificationName` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.birth",
      "path" : "updateperson-request.birth",
      "short" : "BirthType",
      "definition" : "Personens födelsedata",
      "comment" : "TKB-fält: `Birth` (`urn:riv:strategicresourcemanagement:persons:person:5:BirthType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.birth.dateOfBirth",
      "path" : "updateperson-request.birth.dateOfBirth",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../dateOfBirth` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.birth.dateOfBirth.format",
      "path" : "updateperson-request.birth.dateOfBirth.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.birth.dateOfBirth.value",
      "path" : "updateperson-request.birth.dateOfBirth.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.birth.placeOfBirthSweden",
      "path" : "updateperson-request.birth.placeOfBirthSweden",
      "short" : "PlaceOfBirthSwedenType",
      "definition" : "Uppgifter om hemort i Sverige",
      "comment" : "TKB-fält: `../placeOfBirthSweden` (`PlaceOfBirthSwedenType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.birth.placeOfBirthSweden.birthCountyCode",
      "path" : "updateperson-request.birth.placeOfBirthSweden.birthCountyCode",
      "short" : "birthCountyCode",
      "definition" : "birthCountyCode",
      "comment" : "TKB-fält: `../../birthCountyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.birth.placeOfBirthSweden.birthParish",
      "path" : "updateperson-request.birth.placeOfBirthSweden.birthParish",
      "short" : "birthParish",
      "definition" : "birthParish",
      "comment" : "TKB-fält: `../../birthParish` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.birth.birthAbroad",
      "path" : "updateperson-request.birth.birthAbroad",
      "short" : "BirthAbroadType",
      "definition" : "Uppgifter om födelse i utlandet",
      "comment" : "TKB-fält: `../birthAbroad` (`BirthAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.birth.birthAbroad.placeOfBirthAbroad",
      "path" : "updateperson-request.birth.birthAbroad.placeOfBirthAbroad",
      "short" : "placeOfBirthAbroad",
      "definition" : "placeOfBirthAbroad",
      "comment" : "TKB-fält: `../../placeOfBirthAbroad` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.birth.birthAbroad.countryOfBirth",
      "path" : "updateperson-request.birth.birthAbroad.countryOfBirth",
      "short" : "countryOfBirth",
      "definition" : "countryOfBirth",
      "comment" : "TKB-fält: `../../countryOfBirth` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship",
      "path" : "updateperson-request.relationship",
      "short" : "RelationshipType",
      "definition" : "Personens relationer",
      "comment" : "TKB-fält: `relationship` (`urn:riv:strategicresourcemanagement:persons:person:5:RelationshipType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipId",
      "path" : "updateperson-request.relationship.relationshipId",
      "short" : "RelationshipIdType",
      "definition" : "Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.",
      "comment" : "TKB-fält: `../relationshipId` (`RelationshipIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipId.personalIdentity",
      "path" : "updateperson-request.relationship.relationshipId.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../personalIdentity` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipId.dateOfBirth",
      "path" : "updateperson-request.relationship.relationshipId.dateOfBirth",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipId.dateOfBirth.format",
      "path" : "updateperson-request.relationship.relationshipId.dateOfBirth.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.relationship.relationshipId.dateOfBirth.value",
      "path" : "updateperson-request.relationship.relationshipId.dateOfBirth.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipType",
      "path" : "updateperson-request.relationship.relationshipType",
      "short" : "relationshipType",
      "definition" : "relationshipType",
      "comment" : "TKB-fält: `../relationshipType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipFromDate",
      "path" : "updateperson-request.relationship.relationshipFromDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../relationshipFromDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipFromDate.format",
      "path" : "updateperson-request.relationship.relationshipFromDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.relationship.relationshipFromDate.value",
      "path" : "updateperson-request.relationship.relationshipFromDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipToDate",
      "path" : "updateperson-request.relationship.relationshipToDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../relationshipToDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.relationshipToDate.format",
      "path" : "updateperson-request.relationship.relationshipToDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.relationship.relationshipToDate.value",
      "path" : "updateperson-request.relationship.relationshipToDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.name",
      "path" : "updateperson-request.relationship.name",
      "short" : "NameType",
      "definition" : "Namn",
      "comment" : "TKB-fält: `../name` (`NameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.name.givenNameIndicator",
      "path" : "updateperson-request.relationship.name.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "comment" : "TKB-fält: `../../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson-request.relationship.name.givenName",
      "path" : "updateperson-request.relationship.name.givenName",
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
      "id" : "updateperson-request.relationship.name.middleName",
      "path" : "updateperson-request.relationship.name.middleName",
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
      "id" : "updateperson-request.relationship.name.surname",
      "path" : "updateperson-request.relationship.name.surname",
      "short" : "surname",
      "definition" : "surname",
      "comment" : "TKB-fält: `../../surname` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.name.notificationName",
      "path" : "updateperson-request.relationship.name.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "comment" : "TKB-fält: `../../notificationName` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.deregistration",
      "path" : "updateperson-request.relationship.deregistration",
      "short" : "DeregistrationType",
      "definition" : "Uppgifter om avregistrering",
      "comment" : "TKB-fält: `../deregistration` (`DeregistrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.deregistration.deregistrationReasonCode",
      "path" : "updateperson-request.relationship.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "comment" : "TKB-fält: `../../deregistrationReasonCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.deregistration.deregistrationDate",
      "path" : "updateperson-request.relationship.deregistration.deregistrationDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../deregistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.deregistration.deregistrationDate.format",
      "path" : "updateperson-request.relationship.deregistration.deregistrationDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.relationship.deregistration.deregistrationDate.value",
      "path" : "updateperson-request.relationship.deregistration.deregistrationDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.deregistration.foundDeadAtDate",
      "path" : "updateperson-request.relationship.deregistration.foundDeadAtDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../foundDeadAtDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.relationship.deregistration.foundDeadAtDate.format",
      "path" : "updateperson-request.relationship.deregistration.foundDeadAtDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.relationship.deregistration.foundDeadAtDate.value",
      "path" : "updateperson-request.relationship.deregistration.foundDeadAtDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.relationship.status",
      "path" : "updateperson-request.relationship.status",
      "short" : "status",
      "definition" : "status",
      "comment" : "TKB-fält: `../status` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.givenAddress",
      "path" : "updateperson-request.givenAddress",
      "short" : "ResidentialAddressType",
      "definition" : "Personen adress",
      "comment" : "TKB-fält: `givenAddress` (`urn:riv:strategicresourcemanagement:persons:person:5:ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.givenAddress.careOf",
      "path" : "updateperson-request.givenAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "comment" : "TKB-fält: `../careOf` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.givenAddress.postalAddress1",
      "path" : "updateperson-request.givenAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.givenAddress.postalAddress2",
      "path" : "updateperson-request.givenAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.givenAddress.postalCode",
      "path" : "updateperson-request.givenAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "comment" : "TKB-fält: `../postalCode` (`PostalCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson-request.givenAddress.city",
      "path" : "updateperson-request.givenAddress.city",
      "short" : "city",
      "definition" : "city",
      "comment" : "TKB-fält: `../city` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.deregistration",
      "path" : "updateperson-request.deregistration",
      "short" : "DeregistrationType",
      "definition" : "Avregistreringsorsak",
      "comment" : "TKB-fält: `deregistration` (`urn:riv:strategicresourcemanagement:persons:person:5:DeregistrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.deregistration.deregistrationReasonCode",
      "path" : "updateperson-request.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "comment" : "TKB-fält: `../deregistrationReasonCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.deregistration.deregistrationDate",
      "path" : "updateperson-request.deregistration.deregistrationDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../deregistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.deregistration.deregistrationDate.format",
      "path" : "updateperson-request.deregistration.deregistrationDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.deregistration.deregistrationDate.value",
      "path" : "updateperson-request.deregistration.deregistrationDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.deregistration.foundDeadAtDate",
      "path" : "updateperson-request.deregistration.foundDeadAtDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../foundDeadAtDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.deregistration.foundDeadAtDate.format",
      "path" : "updateperson-request.deregistration.foundDeadAtDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.deregistration.foundDeadAtDate.value",
      "path" : "updateperson-request.deregistration.foundDeadAtDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.administrativeInformation",
      "path" : "updateperson-request.administrativeInformation",
      "short" : "AdministrativeInformationType",
      "definition" : "Administrativa uppgifter som normalt knyts till personer med reservidentitet",
      "comment" : "TKB-fält: `administrativeInformation` (`urn:riv:strategicresourcemanagement:persons:person:5:AdministrativeInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.administrativeInformation.categoryOfPerson",
      "path" : "updateperson-request.administrativeInformation.categoryOfPerson",
      "short" : "categoryOfPerson",
      "definition" : "categoryOfPerson",
      "comment" : "TKB-fält: `../categoryOfPerson` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.administrativeInformation.accountCode",
      "path" : "updateperson-request.administrativeInformation.accountCode",
      "short" : "accountCode",
      "definition" : "accountCode",
      "comment" : "TKB-fält: `../accountCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.administrativeInformation.comment",
      "path" : "updateperson-request.administrativeInformation.comment",
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
      "id" : "updateperson-request.confirmedIdentity",
      "path" : "updateperson-request.confirmedIdentity",
      "short" : "ConfirmedIdentityType",
      "definition" : "Anger på vilket sätt en (reserv)identitet har styrkts",
      "comment" : "TKB-fält: `confirmedIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:ConfirmedIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.confirmedIdentity.typeOfIdentification",
      "path" : "updateperson-request.confirmedIdentity.typeOfIdentification",
      "short" : "typeOfIdentification",
      "definition" : "typeOfIdentification",
      "comment" : "TKB-fält: `../typeOfIdentification` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.confirmedIdentity.identificationNumber",
      "path" : "updateperson-request.confirmedIdentity.identificationNumber",
      "short" : "identificationNumber",
      "definition" : "identificationNumber",
      "comment" : "TKB-fält: `../identificationNumber` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.confirmedIdentity.issuersOfId",
      "path" : "updateperson-request.confirmedIdentity.issuersOfId",
      "short" : "issuersOfId",
      "definition" : "issuersOfId",
      "comment" : "TKB-fält: `../issuersOfId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.confirmedIdentity.validDatePeriod",
      "path" : "updateperson-request.confirmedIdentity.validDatePeriod",
      "short" : "DatePeriodType",
      "definition" : "validDatePeriod",
      "comment" : "TKB-fält: `../validDatePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.confirmedIdentity.validDatePeriod.start",
      "path" : "updateperson-request.confirmedIdentity.validDatePeriod.start",
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
      "id" : "updateperson-request.confirmedIdentity.validDatePeriod.end",
      "path" : "updateperson-request.confirmedIdentity.validDatePeriod.end",
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
      "id" : "updateperson-request.confirmedIdentity.attachmentId",
      "path" : "updateperson-request.confirmedIdentity.attachmentId",
      "short" : "attachmentId",
      "definition" : "attachmentId",
      "comment" : "TKB-fält: `../attachmentId` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.confirmedIdentity.countryCode",
      "path" : "updateperson-request.confirmedIdentity.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "comment" : "TKB-fält: `../countryCode` (`CountryCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad",
      "path" : "updateperson-request.addressAbroad",
      "short" : "AddressAbroadType",
      "definition" : "Uppgiven utlandsadress",
      "comment" : "TKB-fält: `addressAbroad` (`urn:riv:strategicresourcemanagement:persons:person:5:AddressAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad.postalAddress1",
      "path" : "updateperson-request.addressAbroad.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "comment" : "TKB-fält: `../postalAddress1` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad.postalAddress2",
      "path" : "updateperson-request.addressAbroad.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "comment" : "TKB-fält: `../postalAddress2` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad.postalAddress3",
      "path" : "updateperson-request.addressAbroad.postalAddress3",
      "short" : "postalAddress3",
      "definition" : "postalAddress3",
      "comment" : "TKB-fält: `../postalAddress3` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad.countryCode",
      "path" : "updateperson-request.addressAbroad.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "comment" : "TKB-fält: `../countryCode` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad.addressAbroadDate",
      "path" : "updateperson-request.addressAbroad.addressAbroadDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../addressAbroadDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad.addressAbroadDate.format",
      "path" : "updateperson-request.addressAbroad.addressAbroadDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.addressAbroad.addressAbroadDate.value",
      "path" : "updateperson-request.addressAbroad.addressAbroadDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad.votingDate",
      "path" : "updateperson-request.addressAbroad.votingDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../votingDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "updateperson-request.addressAbroad.votingDate.format",
      "path" : "updateperson-request.addressAbroad.votingDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "updateperson-request.addressAbroad.votingDate.value",
      "path" : "updateperson-request.addressAbroad.votingDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
