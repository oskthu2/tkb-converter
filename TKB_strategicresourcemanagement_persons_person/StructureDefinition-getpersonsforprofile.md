# GetPersonsForProfile — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPersonsForProfile — Response**

## Logical Model: GetPersonsForProfile — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersonsforprofile | *Version*:5.0 |
| Active as of 2026-11-06 | *Computable Name*:GetPersonsForProfile |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetPersonsForProfile (urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileResponder:5, GetPersonsForProfileResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-getpersonsforprofile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpersonsforprofile.csv), [Excel](StructureDefinition-getpersonsforprofile.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpersonsforprofile",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersonsforprofile",
  "version" : "5.0",
  "name" : "GetPersonsForProfile",
  "title" : "GetPersonsForProfile — Response",
  "status" : "active",
  "date" : "2026-11-06T21:50:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileResponder:5, GetPersonsForProfileResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/getpersonsforprofile",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpersonsforprofile",
      "path" : "getpersonsforprofile",
      "short" : "GetPersonsForProfile — Response",
      "definition" : "Logisk modell för svaret i GetPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileResponder:5, GetPersonsForProfileResponseType)."
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord",
      "path" : "getpersonsforprofile.requestedPersonRecord",
      "short" : "requestedPersonRecord",
      "definition" : "1..* RequestedPersonRecord innehållande eventuella personposter för efterfrågade personidentiteter",
      "comment" : "TKB-fält: `requestedPersonRecord` (`urn:riv:strategicresourcemanagement:persons:person:5:RequestedPersonRecordType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.requestedPersonalIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.requestedPersonalIdentity",
      "short" : "requestedPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../requestedPersonalIdentity` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.requestedPersonalIdentity.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.requestedPersonalIdentity.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.requestedPersonalIdentity.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.requestedPersonalIdentity.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord",
      "short" : "personRecord",
      "definition" : "Grupp för personpost",
      "comment" : "TKB-fält: `../personRecord` (`PersonRecordType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../personalIdentity` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentity.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentity.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentity.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentity.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.identityLevel",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.identityLevel",
      "short" : "identityLevel",
      "definition" : "identityLevel",
      "comment" : "TKB-fält: `../../identityLevel` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.identityLevelDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.identityLevelDate",
      "short" : "identityLevelDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../identityLevelDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.identityLevelDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.identityLevelDate.format",
      "short" : "format",
      "definition" : "format",
      "comment" : "TKB-fält: `../../../format` (`DateTypeFormatType`, kardinalitet 1..1).",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.identityLevelDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.identityLevelDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../value` (`PartialDateValue`, kardinalitet 1..1).\n\n**Modellanteckning:** partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.gender",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.gender",
      "short" : "gender",
      "definition" : "gender",
      "comment" : "TKB-fält: `../../gender` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.protectedPersonIndicator",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.protectedPersonIndicator",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.testIndicator",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.testIndicator",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.primaryIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.primaryIdentity",
      "short" : "primaryIdentity",
      "definition" : "primaryIdentity",
      "comment" : "TKB-fält: `../../primaryIdentity` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordVersion",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordVersion",
      "short" : "personRecordVersion",
      "definition" : "personRecordVersion Heter version i schemat.",
      "comment" : "TKB-fält: `../../version` (`Timestamp`, kardinalitet 0..1).\n\n**Modellanteckning:** personRecordVersion Heter version i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName",
      "short" : "personRecordName",
      "definition" : "Namn",
      "comment" : "TKB-fält: `../../name` (`NameType`, kardinalitet 0..1).\n\n**Modellanteckning:** Namn Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.givenNameIndicator",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "comment" : "TKB-fält: `../../../givenNameIndicator` (`GivenNameIndicator`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.givenName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.givenName",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.middleName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.middleName",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.surname",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.surname",
      "short" : "surname",
      "definition" : "surname",
      "comment" : "TKB-fält: `../../../surname` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.notificationName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personRecordName.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "comment" : "TKB-fält: `../../../notificationName` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity",
      "short" : "linkedIdentity",
      "definition" : "Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR",
      "comment" : "TKB-fält: `../../linkedIdentity` (`LinkedIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.referredPersonalIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../referredPersonalIdentity` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.referredPersonalIdentity.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.referredPersonalIdentity.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.referredPersonalIdentity.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.referredPersonalIdentity.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.assuranceLevel",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.assuranceLevel",
      "short" : "assuranceLevel",
      "definition" : "assuranceLevel",
      "comment" : "TKB-fält: `../../../assuranceLevel` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.primaryIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.linkedIdentity.primaryIdentity",
      "short" : "primaryIdentity",
      "definition" : "primaryIdentity",
      "comment" : "TKB-fält: `../../../primaryIdentity` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities",
      "short" : "referredPersonalIdentities",
      "definition" : "Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter).",
      "comment" : "TKB-fält: `../../referredPersonalIdentities` (`ReferredPersonalIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities.referredPersonalIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../referredPersonalIdentity` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities.referredPersonalIdentity.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities.referredPersonalIdentity.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities.referredPersonalIdentity.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities.referredPersonalIdentity.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities.referredPersonalIdentityStatus",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.referredPersonalIdentities.referredPersonalIdentityStatus",
      "short" : "referredPersonalIdentityStatus",
      "definition" : "referredPersonalIdentityStatus",
      "comment" : "TKB-fält: `../../../referredPersonalIdentityStatus` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth",
      "short" : "birth",
      "definition" : "Uppgifter om födelse",
      "comment" : "TKB-fält: `../../birth` (`BirthType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.dateOfBirth",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.dateOfBirth.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.dateOfBirth.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.dateOfBirth.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.dateOfBirth.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.placeOfBirthSweden",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.placeOfBirthSweden",
      "short" : "placeOfBirthSweden",
      "definition" : "Uppgifter om hemort i Sverige",
      "comment" : "TKB-fält: `../../../placeOfBirthSweden` (`PlaceOfBirthSwedenType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.placeOfBirthSweden.birthCountyCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.placeOfBirthSweden.birthCountyCode",
      "short" : "birthCountyCode",
      "definition" : "birthCountyCode",
      "comment" : "TKB-fält: `../../../../birthCountyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.placeOfBirthSweden.birthParish",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.placeOfBirthSweden.birthParish",
      "short" : "birthParish",
      "definition" : "birthParish",
      "comment" : "TKB-fält: `../../../../birthParish` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.birthAbroad",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.birthAbroad",
      "short" : "birthAbroad",
      "definition" : "Uppgifter om födelse i utlandet",
      "comment" : "TKB-fält: `../../../birthAbroad` (`BirthAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.birthAbroad.placeOfBirthAbroad",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.birthAbroad.placeOfBirthAbroad",
      "short" : "placeOfBirthAbroad",
      "definition" : "placeOfBirthAbroad",
      "comment" : "TKB-fält: `../../../../placeOfBirthAbroad` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.birthAbroad.countryOfBirth",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.birth.birthAbroad.countryOfBirth",
      "short" : "countryOfBirth",
      "definition" : "countryOfBirth",
      "comment" : "TKB-fält: `../../../../countryOfBirth` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality",
      "short" : "populationRegistrationLocality",
      "definition" : "Uppgifter om folkbokföring",
      "comment" : "TKB-fält: `../../populationRegistrationLocality` (`PopulationRegistrationLocalityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.populationRegistrationDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.populationRegistrationDate",
      "short" : "populationRegistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../populationRegistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.populationRegistrationDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.countyCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.countyCode",
      "short" : "countyCode",
      "definition" : "countyCode",
      "comment" : "TKB-fält: `../../../countyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.municipalityCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.municipalityCode",
      "short" : "municipalityCode",
      "definition" : "municipalityCode",
      "comment" : "TKB-fält: `../../../municipalityCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.parishCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.parishCode",
      "short" : "parishCode",
      "definition" : "parishCode",
      "comment" : "TKB-fält: `../../../parishCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.propertyDesignation",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.propertyDesignation",
      "short" : "propertyDesignation",
      "definition" : "propertyDesignation",
      "comment" : "TKB-fält: `../../../propertyDesignation` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.fictitiousPropertyNumber",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.fictitiousPropertyNumber",
      "short" : "fictitiousPropertyNumber",
      "definition" : "fictitiousPropertyNumber",
      "comment" : "TKB-fält: `../../../fictitiousPropertyNumber` (`FictitiousPropertyNumber`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.populationRegistrationType",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.populationRegistrationType",
      "short" : "populationRegistrationType",
      "definition" : "populationRegistrationType",
      "comment" : "TKB-fält: `../../../populationRegistrationType` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.localRegistrationTime",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.localRegistrationTime",
      "short" : "localRegistrationTime",
      "definition" : "localRegistrationTime",
      "comment" : "TKB-fält: `../../../localRegistrationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.localRegistrationEndTime",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationLocality.localRegistrationEndTime",
      "short" : "localRegistrationEndTime",
      "definition" : "localRegistrationEndTime",
      "comment" : "TKB-fält: `../../../localRegistrationEndTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord",
      "short" : "populationRegistrationRecord",
      "definition" : "Folkbokföringspost",
      "comment" : "TKB-fält: `../../populationRegistrationRecord` (`PopulationRegistrationRecordType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.syncronizationTime",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.syncronizationTime",
      "short" : "syncronizationTime",
      "definition" : "syncronizationTime",
      "comment" : "TKB-fält: `../../../syncronizationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase",
      "short" : "notificationCase",
      "definition" : "Ärendeuppgifter",
      "comment" : "TKB-fält: `../../../notificationCase` (`NotificationCaseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.recordId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.recordId",
      "short" : "recordId",
      "definition" : "recordId",
      "comment" : "TKB-fält: `../../../../recordId` (`RecordId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.notificationType",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.notificationType",
      "short" : "notificationType",
      "definition" : "notificationType",
      "comment" : "TKB-fält: `../../../../notificationType` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.modificationTime",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.modificationTime",
      "short" : "modificationTime",
      "definition" : "modificationTime",
      "comment" : "TKB-fält: `../../../../modificationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.totalRecord",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.totalRecord",
      "short" : "totalRecord",
      "definition" : "totalRecord",
      "comment" : "TKB-fält: `../../../../totalRecord` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.notificationDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.notificationDate",
      "short" : "notificationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../notificationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.notificationDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.notificationDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.notificationDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.notificationCase.notificationDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords",
      "short" : "historicalRecords",
      "definition" : "Grupp för historik",
      "comment" : "TKB-fält: `../../../historicalRecords` (`HistoricalRecordsType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality",
      "short" : "populationRegistrationLocality",
      "definition" : "Uppgifter om folkbokföring",
      "comment" : "TKB-fält: `../../../../populationRegistrationLocality` (`PopulationRegistrationLocalityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "short" : "populationRegistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../../populationRegistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.countyCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.countyCode",
      "short" : "countyCode",
      "definition" : "countyCode",
      "comment" : "TKB-fält: `../../../../../countyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.municipalityCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.municipalityCode",
      "short" : "municipalityCode",
      "definition" : "municipalityCode",
      "comment" : "TKB-fält: `../../../../../municipalityCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.parishCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.parishCode",
      "short" : "parishCode",
      "definition" : "parishCode",
      "comment" : "TKB-fält: `../../../../../parishCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.propertyDesignation",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.propertyDesignation",
      "short" : "propertyDesignation",
      "definition" : "propertyDesignation",
      "comment" : "TKB-fält: `../../../../../propertyDesignation` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber",
      "short" : "fictitiousPropertyNumber",
      "definition" : "fictitiousPropertyNumber",
      "comment" : "TKB-fält: `../../../../../fictitiousPropertyNumber` (`FictitiousPropertyNumber`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationType",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationType",
      "short" : "populationRegistrationType",
      "definition" : "populationRegistrationType",
      "comment" : "TKB-fält: `../../../../../populationRegistrationType` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationTime",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationTime",
      "short" : "localRegistrationTime",
      "definition" : "localRegistrationTime",
      "comment" : "TKB-fält: `../../../../../localRegistrationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationEndTime",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationEndTime",
      "short" : "localRegistrationEndTime",
      "definition" : "localRegistrationEndTime",
      "comment" : "TKB-fält: `../../../../../localRegistrationEndTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress",
      "short" : "historicalAddress",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../../historicalAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.careOf",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.careOf",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress1",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress1",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress2",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress2",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalCode",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.city",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.city",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation",
      "short" : "addressInformation",
      "definition" : "Grupp för adressuppgifter",
      "comment" : "TKB-fält: `../../addressInformation` (`AddressInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress",
      "short" : "residentialAddress",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../residentialAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.careOf",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.careOf",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.postalAddress1",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.postalAddress1",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.postalAddress2",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.postalAddress2",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.postalCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.postalCode",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.city",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.residentialAddress.city",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.nationalKeys",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.nationalKeys",
      "short" : "nationalKeys",
      "definition" : "Riksnycklar",
      "comment" : "TKB-fält: `../../../nationalKeys` (`NationalKeysType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.nationalKeys.propertyId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.nationalKeys.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
      "comment" : "TKB-fält: `../../../../propertyId` (`PropertyId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.nationalKeys.addressPlaceId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.nationalKeys.addressPlaceId",
      "short" : "addressPlaceId",
      "definition" : "addressPlaceId",
      "comment" : "TKB-fält: `../../../../addressPlaceId` (`AddressPlaceId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.nationalKeys.apartmentId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.nationalKeys.apartmentId",
      "short" : "apartmentId",
      "definition" : "apartmentId",
      "comment" : "TKB-fält: `../../../../apartmentId` (`ApartmentId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.district",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.district",
      "short" : "district",
      "definition" : "Grupp för Distriktskod",
      "comment" : "TKB-fält: `../../../district` (`DistrictType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.district.districtCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.district.districtCode",
      "short" : "districtCode",
      "definition" : "districtCode",
      "comment" : "TKB-fält: `../../../../districtCode` (`DistrictCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress",
      "short" : "specialPostalAddress",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../specialPostalAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.careOf",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.careOf",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.postalAddress1",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.postalAddress1",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.postalAddress2",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.postalAddress2",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.postalCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.postalCode",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.city",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.specialPostalAddress.city",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad",
      "short" : "addressAbroad",
      "definition" : "Utlandsadress",
      "comment" : "TKB-fält: `../../../addressAbroad` (`AddressAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.postalAddress1",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.postalAddress1",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.postalAddress2",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.postalAddress2",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.postalAddress3",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.postalAddress3",
      "short" : "postalAddress3",
      "definition" : "postalAddress3",
      "comment" : "TKB-fält: `../../../../postalAddress3` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.countryCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "comment" : "TKB-fält: `../../../../countryCode` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.addressAbroadDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.addressAbroadDate",
      "short" : "addressAbroadDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../addressAbroadDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.addressAbroadDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.addressAbroadDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.votingDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.votingDate",
      "short" : "votingDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../votingDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.votingDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.votingDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.votingDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.addressAbroad.votingDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress",
      "short" : "givenAddress",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../givenAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.careOf",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.careOf",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.postalAddress1",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.postalAddress1",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.postalAddress2",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.postalAddress2",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.postalCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.postalCode",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.city",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.givenAddress.city",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.UUID",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.UUID",
      "short" : "UUID",
      "definition" : "UUID för fastighet, aderess och lägenhet",
      "comment" : "TKB-fält: `../../../UUID` (`UUIDType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.UUID.propertyId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.UUID.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
      "comment" : "TKB-fält: `../../../../propertyId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.UUID.addressPlaceId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.UUID.addressPlaceId",
      "short" : "addressPlaceId",
      "definition" : "addressPlaceId",
      "comment" : "TKB-fält: `../../../../addressPlaceId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.UUID.apartmentId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.addressInformation.UUID.apartmentId",
      "short" : "apartmentId",
      "definition" : "apartmentId",
      "comment" : "TKB-fält: `../../../../apartmentId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.contactType",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.contactType",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.use",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.use",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.contactInformationValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.contactInformationValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.rank",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.rank",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.comment",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.comment",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.period",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.period",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.period.start",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.period.start",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.period.end",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.period.end",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.digitalNotification",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactInformation.digitalNotification",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactRelationshipType",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactRelationshipType",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.priorityOrder",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.priorityOrder",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.givenName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.givenName",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.surName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.surName",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.middleName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.middleName",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.careOf",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.postalAddress1",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.postalAddress2",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.postalCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.postalCode",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.city",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonAddress.city",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.contactType",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.use",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.use",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.rank",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.rank",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.comment",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.comment",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.period",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.period.start",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.period.end",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.period.end",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.contactPerson.contactPersonContactInformation.digitalNotification",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity",
      "short" : "confirmedIdentity",
      "definition" : "Klass för hur reservidentitetsuppgifter är styrkta.",
      "comment" : "TKB-fält: `../../confirmedIdentity` (`ConfirmedIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.typeOfIdentification",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.typeOfIdentification",
      "short" : "typeOfIdentification",
      "definition" : "typeOfIdentification",
      "comment" : "TKB-fält: `../../../typeOfIdentification` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.identificationNumber",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.identificationNumber",
      "short" : "identificationNumber",
      "definition" : "identificationNumber",
      "comment" : "TKB-fält: `../../../identificationNumber` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.issuersOfId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.issuersOfId",
      "short" : "issuersOfId",
      "definition" : "issuersOfId",
      "comment" : "TKB-fält: `../../../issuersOfId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.validDatePeriod",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.validDatePeriod",
      "short" : "validDatePeriod",
      "definition" : "validDatePeriod",
      "comment" : "TKB-fält: `../../../validDatePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.validDatePeriod.start",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.validDatePeriod.start",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.validDatePeriod.end",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.validDatePeriod.end",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.attachmentId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.attachmentId",
      "short" : "attachmentId",
      "definition" : "attachmentId",
      "comment" : "TKB-fält: `../../../attachmentId` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.countryCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.confirmedIdentity.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "comment" : "TKB-fält: `../../../countryCode` (`CountryCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.administrativeInformation",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.administrativeInformation",
      "short" : "administrativeInformation",
      "definition" : "Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID).",
      "comment" : "TKB-fält: `../../administrativeInformation` (`AdministrativeInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.administrativeInformation.categoryOfPerson",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.administrativeInformation.categoryOfPerson",
      "short" : "categoryOfPerson",
      "definition" : "categoryOfPerson",
      "comment" : "TKB-fält: `../../../categoryOfPerson` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.administrativeInformation.accountCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.administrativeInformation.accountCode",
      "short" : "accountCode",
      "definition" : "accountCode",
      "comment" : "TKB-fält: `../../../accountCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.administrativeInformation.comment",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.administrativeInformation.comment",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration",
      "short" : "deregistration",
      "definition" : "Uppgifter om avregistrering",
      "comment" : "TKB-fält: `../../deregistration` (`DeregistrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.deregistrationReasonCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "comment" : "TKB-fält: `../../../deregistrationReasonCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.deregistrationDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.deregistrationDate",
      "short" : "deregistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../deregistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.deregistrationDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.deregistrationDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.deregistrationDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.deregistrationDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.foundDeadAtDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.foundDeadAtDate",
      "short" : "foundDeadAtDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../foundDeadAtDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.foundDeadAtDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.foundDeadAtDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.foundDeadAtDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.deregistration.foundDeadAtDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus",
      "short" : "maritalStatus",
      "definition" : "Civistånd",
      "comment" : "TKB-fält: `../../maritalStatus` (`MaritalStatusType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus.maritalStatusCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus.maritalStatusCode",
      "short" : "maritalStatusCode",
      "definition" : "maritalStatusCode",
      "comment" : "TKB-fält: `../../../maritalStatusCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus.maritalStatusDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus.maritalStatusDate",
      "short" : "maritalStatusDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../maritalStatusDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus.maritalStatusDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus.maritalStatusDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus.maritalStatusDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.maritalStatus.maritalStatusDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration",
      "short" : "immigration",
      "definition" : "Grupp för invandringsuppgifter",
      "comment" : "TKB-fält: `../../immigration` (`ImmigrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationDate",
      "short" : "immigrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../immigrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.rightOfResidence",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.rightOfResidence",
      "short" : "rightOfResidence",
      "definition" : "rightOfResidence",
      "comment" : "TKB-fält: `../../../rightOfResidence` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationIdentity",
      "short" : "immigrationIdentity",
      "definition" : "Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo",
      "comment" : "TKB-fält: `../../../immigrationIdentity` (`ImmigrationIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
      "comment" : "TKB-fält: `../../../../personalIdentityNumber` (`PersonalIdentityNumber`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationIdentity.country",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.immigration.immigrationIdentity.country",
      "short" : "country",
      "definition" : "country",
      "comment" : "TKB-fält: `../../../../country` (`CountryCode`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship",
      "short" : "citizenship",
      "definition" : "Grupp för medborgarskap",
      "comment" : "TKB-fält: `../../citizenship` (`CitizenshipType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipCountryCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipCountryCode",
      "short" : "citizenshipCountryCode",
      "definition" : "citizenshipCountryCode",
      "comment" : "TKB-fält: `../../../citizenshipCountryCode` (`CountryCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipDate",
      "short" : "citizenshipDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../citizenshipDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipStatus",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.citizenship.citizenshipStatus",
      "short" : "citizenshipStatus",
      "definition" : "citizenshipStatus Heter status i schemat.",
      "comment" : "TKB-fält: `../../../status` (`CodedValue`, kardinalitet 0..1).\n\n**Modellanteckning:** citizenshipStatus Heter status i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship",
      "short" : "relationship",
      "definition" : "Grupp för relation",
      "comment" : "TKB-fält: `../../relationship` (`RelationshipType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId",
      "short" : "relationshipId",
      "definition" : "Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.",
      "comment" : "TKB-fält: `../../../relationshipId` (`RelationshipIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.personalIdentity",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../../personalIdentity` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.personalIdentity.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.personalIdentity.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.personalIdentity.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.personalIdentity.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.dateOfBirth",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.dateOfBirth.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.dateOfBirth.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.dateOfBirth.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipId.dateOfBirth.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipType",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipType",
      "short" : "relationshipType",
      "definition" : "relationshipType",
      "comment" : "TKB-fält: `../../../relationshipType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipFromDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipFromDate",
      "short" : "relationshipFromDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../relationshipFromDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipFromDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipFromDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipFromDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipFromDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipToDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipToDate",
      "short" : "relationshipToDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../relationshipToDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipToDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipToDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipToDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipToDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName",
      "short" : "relationshipName",
      "definition" : "Namn",
      "comment" : "TKB-fält: `../../../name` (`NameType`, kardinalitet 0..1).\n\n**Modellanteckning:** Namn Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.givenNameIndicator",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.givenNameIndicator",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.givenName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "comment" : "TKB-fält: `../../../../givenName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.middleName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "comment" : "TKB-fält: `../../../../middleName` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.surname",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.surname",
      "short" : "surname",
      "definition" : "surname",
      "comment" : "TKB-fält: `../../../../surname` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.notificationName",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipName.notificationName",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.deregistrationReasonCode",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "comment" : "TKB-fält: `../../../../deregistrationReasonCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.deregistrationDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.deregistrationDate",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.deregistrationDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.deregistrationDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.deregistrationDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.deregistrationDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.foundDeadAtDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.foundDeadAtDate",
      "short" : "foundDeadAtDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../foundDeadAtDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.foundDeadAtDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.foundDeadAtDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.foundDeadAtDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.deregistration.foundDeadAtDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipStatus",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.relationship.relationshipStatus",
      "short" : "relationshipStatus",
      "definition" : "relationshipStatus Heter status i schemat.",
      "comment" : "TKB-fält: `../../../status` (`CodedValue`, kardinalitet 0..1).\n\n**Modellanteckning:** relationshipStatus Heter status i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData",
      "short" : "coOrdinationNumberData",
      "definition" : "Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige.",
      "comment" : "TKB-fält: `../../coOrdinationNumberData` (`CoOrdinationNumberDataType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.allocationDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.allocationDate",
      "short" : "allocationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../allocationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.allocationDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.allocationDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.allocationDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.allocationDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.preliminaryTransferDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.preliminaryTransferDate",
      "short" : "preliminaryTransferDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../preliminaryTransferDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.preliminaryTransferDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.preliminaryTransferDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.preliminaryTransferDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.preliminaryTransferDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.renewalDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.renewalDate",
      "short" : "renewalDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../renewalDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.renewalDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.renewalDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.renewalDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.renewalDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.deceasedDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.deceasedDate",
      "short" : "deceasedDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../deceasedDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.deceasedDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.deceasedDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.deceasedDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.coOrdinationNumberData.deceasedDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus",
      "short" : "personalIdentityStatus",
      "definition" : "Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer.",
      "comment" : "TKB-fält: `../../personalIdentityStatus` (`PersonalIdentityStatusType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatus",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatus",
      "short" : "identityStatus",
      "definition" : "identityStatus",
      "comment" : "TKB-fält: `../../../identityStatus` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatusDate",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatusDate",
      "short" : "identityStatusDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../identityStatusDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatusDate.format",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatusDate.format",
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
        "valueSet" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ValueSet/SPP-datetypeformat-vs"
      }
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatusDate.partialDateValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatusDate.partialDateValue",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatusCause",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.personalIdentityStatus.identityStatusCause",
      "short" : "identityStatusCause",
      "definition" : "identityStatusCause",
      "comment" : "TKB-fält: `../../../identityStatusCause` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor",
      "short" : "updatePersonActor",
      "definition" : "Datatyp som identifierar en aktör.",
      "comment" : "TKB-fält: `../../updatePersonActor` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.actorId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.actorId",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.actorId.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.actorId.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.actorId.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.actorId.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.professional",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.professional",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.professional.organizationId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.professional.organizationId",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.professional.organizationId.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.professional.organizationId.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.professional.organizationId.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.professional.organizationId.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.updateTime",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "comment" : "TKB-fält: `../../../updateTime` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.actorId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.actorId",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.actorId.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.actorId.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.actorId.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.professional",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.professional",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.professional.organizationId",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.professional.organizationId.root",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.updateTime",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.updatePersonContactInformationActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "comment" : "TKB-fält: `../../../updateTime` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment",
      "short" : "attachment",
      "definition" : "Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.",
      "comment" : "TKB-fält: `../../attachment` (`MultimediaType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment.multimediaId",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment.multimediaId",
      "short" : "multimediaId",
      "definition" : "multimediaId Heter id i schemat.",
      "comment" : "TKB-fält: `../../../id` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** multimediaId Heter id i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment.mediaType",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment.mediaType",
      "short" : "mediaType",
      "definition" : "mediaType",
      "comment" : "TKB-fält: `../../../mediaType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment.multimediaValue",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment.multimediaValue",
      "short" : "multimediaValue",
      "definition" : "multimediaValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../../value` (`base64Binary`, kardinalitet 0..1).\n\n**Modellanteckning:** multimediaValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment.reference",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.attachment.reference",
      "short" : "reference",
      "definition" : "reference",
      "comment" : "TKB-fält: `../../../reference` (`anyURI`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.optoutPaperNotification",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.optoutPaperNotification",
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
      "id" : "getpersonsforprofile.requestedPersonRecord.personRecord.protectedPopulationRecord",
      "path" : "getpersonsforprofile.requestedPersonRecord.personRecord.protectedPopulationRecord",
      "short" : "protectedPopulationRecord",
      "definition" : "protectedPopulationRecord",
      "comment" : "TKB-fält: `../../protectedPopulationRecord` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
