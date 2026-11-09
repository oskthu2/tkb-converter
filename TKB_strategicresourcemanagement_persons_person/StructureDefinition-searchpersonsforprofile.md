# SearchPersonsForProfile — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchPersonsForProfile — Response**

## Logical Model: SearchPersonsForProfile — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofile | *Version*:5.0 |
| Active as of 2026-11-09 | *Computable Name*:SearchPersonsForProfile |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SearchPersonsForProfile (urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5, SearchPersonsForProfileResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-searchpersonsforprofile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-searchpersonsforprofile.csv), [Excel](StructureDefinition-searchpersonsforprofile.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "searchpersonsforprofile",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofile",
  "version" : "5.0",
  "name" : "SearchPersonsForProfile",
  "title" : "SearchPersonsForProfile — Response",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SearchPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5, SearchPersonsForProfileResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofile",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "searchpersonsforprofile",
      "path" : "searchpersonsforprofile",
      "short" : "SearchPersonsForProfile — Response",
      "definition" : "Logisk modell för svaret i SearchPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5, SearchPersonsForProfileResponseType)."
    },
    {
      "id" : "searchpersonsforprofile.personRecord",
      "path" : "searchpersonsforprofile.personRecord",
      "short" : "PersonRecordType",
      "definition" : "LookupResidentsResponse innehållande folkbokföringsposter för efterfrågat sökdata",
      "comment" : "TKB-fält: `personRecord` (`urn:riv:strategicresourcemanagement:persons:person:5:PersonRecordType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentity",
      "path" : "searchpersonsforprofile.personRecord.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../personalIdentity` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.identityLevel",
      "path" : "searchpersonsforprofile.personRecord.identityLevel",
      "short" : "identityLevel",
      "definition" : "identityLevel",
      "comment" : "TKB-fält: `../identityLevel` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.identityLevelDate",
      "path" : "searchpersonsforprofile.personRecord.identityLevelDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../identityLevelDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.identityLevelDate.format",
      "path" : "searchpersonsforprofile.personRecord.identityLevelDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.identityLevelDate.value",
      "path" : "searchpersonsforprofile.personRecord.identityLevelDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.gender",
      "path" : "searchpersonsforprofile.personRecord.gender",
      "short" : "gender",
      "definition" : "gender",
      "comment" : "TKB-fält: `../gender` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.protectedPersonIndicator",
      "path" : "searchpersonsforprofile.personRecord.protectedPersonIndicator",
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
      "id" : "searchpersonsforprofile.personRecord.testIndicator",
      "path" : "searchpersonsforprofile.personRecord.testIndicator",
      "short" : "testIndicator",
      "definition" : "testIndicator",
      "comment" : "TKB-fält: `../testIndicator` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.primaryIdentity",
      "path" : "searchpersonsforprofile.personRecord.primaryIdentity",
      "short" : "primaryIdentity",
      "definition" : "primaryIdentity",
      "comment" : "TKB-fält: `../primaryIdentity` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.version",
      "path" : "searchpersonsforprofile.personRecord.version",
      "short" : "version",
      "definition" : "version",
      "comment" : "TKB-fält: `../version` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.name",
      "path" : "searchpersonsforprofile.personRecord.name",
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
      "id" : "searchpersonsforprofile.personRecord.name.givenNameIndicator",
      "path" : "searchpersonsforprofile.personRecord.name.givenNameIndicator",
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
      "id" : "searchpersonsforprofile.personRecord.name.givenName",
      "path" : "searchpersonsforprofile.personRecord.name.givenName",
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
      "id" : "searchpersonsforprofile.personRecord.name.middleName",
      "path" : "searchpersonsforprofile.personRecord.name.middleName",
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
      "id" : "searchpersonsforprofile.personRecord.name.surname",
      "path" : "searchpersonsforprofile.personRecord.name.surname",
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
      "id" : "searchpersonsforprofile.personRecord.name.notificationName",
      "path" : "searchpersonsforprofile.personRecord.name.notificationName",
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
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity",
      "short" : "LinkedIdentityType",
      "definition" : "Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR",
      "comment" : "TKB-fält: `../linkedIdentity` (`LinkedIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity.referredPersonalIdentity",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../referredPersonalIdentity` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity.assuranceLevel",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity.assuranceLevel",
      "short" : "assuranceLevel",
      "definition" : "assuranceLevel",
      "comment" : "TKB-fält: `../../assuranceLevel` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity.primaryIdentity",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity.primaryIdentity",
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
      "id" : "searchpersonsforprofile.personRecord.referredPersonalIdentities",
      "path" : "searchpersonsforprofile.personRecord.referredPersonalIdentities",
      "short" : "ReferredPersonalIdentityType",
      "definition" : "Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter).",
      "comment" : "TKB-fält: `../referredPersonalIdentities` (`ReferredPersonalIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentity",
      "path" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../referredPersonalIdentity` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentityStatus",
      "path" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentityStatus",
      "short" : "referredPersonalIdentityStatus",
      "definition" : "referredPersonalIdentityStatus",
      "comment" : "TKB-fält: `../../referredPersonalIdentityStatus` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth",
      "path" : "searchpersonsforprofile.personRecord.birth",
      "short" : "BirthType",
      "definition" : "Uppgifter om födelse",
      "comment" : "TKB-fält: `../birth` (`BirthType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.dateOfBirth",
      "path" : "searchpersonsforprofile.personRecord.birth.dateOfBirth",
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
      "id" : "searchpersonsforprofile.personRecord.birth.dateOfBirth.format",
      "path" : "searchpersonsforprofile.personRecord.birth.dateOfBirth.format",
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
      "id" : "searchpersonsforprofile.personRecord.birth.dateOfBirth.value",
      "path" : "searchpersonsforprofile.personRecord.birth.dateOfBirth.value",
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
      "id" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden",
      "path" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden",
      "short" : "PlaceOfBirthSwedenType",
      "definition" : "Uppgifter om hemort i Sverige",
      "comment" : "TKB-fält: `../../placeOfBirthSweden` (`PlaceOfBirthSwedenType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden.birthCountyCode",
      "path" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden.birthCountyCode",
      "short" : "birthCountyCode",
      "definition" : "birthCountyCode",
      "comment" : "TKB-fält: `../../../birthCountyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden.birthParish",
      "path" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden.birthParish",
      "short" : "birthParish",
      "definition" : "birthParish",
      "comment" : "TKB-fält: `../../../birthParish` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.birthAbroad",
      "path" : "searchpersonsforprofile.personRecord.birth.birthAbroad",
      "short" : "BirthAbroadType",
      "definition" : "Uppgifter om födelse i utlandet",
      "comment" : "TKB-fält: `../../birthAbroad` (`BirthAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.birthAbroad.placeOfBirthAbroad",
      "path" : "searchpersonsforprofile.personRecord.birth.birthAbroad.placeOfBirthAbroad",
      "short" : "placeOfBirthAbroad",
      "definition" : "placeOfBirthAbroad",
      "comment" : "TKB-fält: `../../../placeOfBirthAbroad` (`String80`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.birthAbroad.countryOfBirth",
      "path" : "searchpersonsforprofile.personRecord.birth.birthAbroad.countryOfBirth",
      "short" : "countryOfBirth",
      "definition" : "countryOfBirth",
      "comment" : "TKB-fält: `../../../countryOfBirth` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality",
      "short" : "PopulationRegistrationLocalityType",
      "definition" : "Uppgifter om folkbokföring",
      "comment" : "TKB-fält: `../populationRegistrationLocality` (`PopulationRegistrationLocalityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../populationRegistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate.value",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.countyCode",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.countyCode",
      "short" : "countyCode",
      "definition" : "countyCode",
      "comment" : "TKB-fält: `../../countyCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.municipalityCode",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.municipalityCode",
      "short" : "municipalityCode",
      "definition" : "municipalityCode",
      "comment" : "TKB-fält: `../../municipalityCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.parishCode",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.parishCode",
      "short" : "parishCode",
      "definition" : "parishCode",
      "comment" : "TKB-fält: `../../parishCode` (`String2`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.propertyDesignation",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.propertyDesignation",
      "short" : "propertyDesignation",
      "definition" : "propertyDesignation",
      "comment" : "TKB-fält: `../../propertyDesignation` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.fictitiousPropertyNumber",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.fictitiousPropertyNumber",
      "short" : "fictitiousPropertyNumber",
      "definition" : "fictitiousPropertyNumber",
      "comment" : "TKB-fält: `../../fictitiousPropertyNumber` (`FictitiousPropertyNumber`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationType",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationType",
      "short" : "populationRegistrationType",
      "definition" : "populationRegistrationType",
      "comment" : "TKB-fält: `../../populationRegistrationType` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.localRegistrationTime",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.localRegistrationTime",
      "short" : "localRegistrationTime",
      "definition" : "localRegistrationTime",
      "comment" : "TKB-fält: `../../localRegistrationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.localRegistrationEndTime",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.localRegistrationEndTime",
      "short" : "localRegistrationEndTime",
      "definition" : "localRegistrationEndTime",
      "comment" : "TKB-fält: `../../localRegistrationEndTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord",
      "short" : "PopulationRegistrationRecordType",
      "definition" : "Folkbokföringspost",
      "comment" : "TKB-fält: `../populationRegistrationRecord` (`PopulationRegistrationRecordType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.syncronizationTime",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.syncronizationTime",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase",
      "short" : "NotificationCaseType",
      "definition" : "Ärendeuppgifter",
      "comment" : "TKB-fält: `../../notificationCase` (`NotificationCaseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.recordId",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.recordId",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationType",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationType",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.modificationTime",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.modificationTime",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.totalRecord",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.totalRecord",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../notificationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate.format",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate.value",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords",
      "short" : "HistoricalRecordsType",
      "definition" : "Grupp för historik",
      "comment" : "TKB-fält: `../../historicalRecords` (`HistoricalRecordsType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality",
      "short" : "PopulationRegistrationLocalityType",
      "definition" : "Uppgifter om folkbokföring",
      "comment" : "TKB-fält: `../../../populationRegistrationLocality` (`PopulationRegistrationLocalityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../../populationRegistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.value",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.countyCode",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.countyCode",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.municipalityCode",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.municipalityCode",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.parishCode",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.parishCode",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.propertyDesignation",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.propertyDesignation",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationType",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationType",
      "short" : "populationRegistrationType",
      "definition" : "populationRegistrationType",
      "comment" : "TKB-fält: `../../../../populationRegistrationType` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationTime",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationTime",
      "short" : "localRegistrationTime",
      "definition" : "localRegistrationTime",
      "comment" : "TKB-fält: `../../../../localRegistrationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationEndTime",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationEndTime",
      "short" : "localRegistrationEndTime",
      "definition" : "localRegistrationEndTime",
      "comment" : "TKB-fält: `../../../../localRegistrationEndTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress",
      "short" : "ResidentialAddressType",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../../historicalAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.careOf",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress1",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress1",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress2",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress2",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalCode",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalCode",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.city",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.city",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation",
      "path" : "searchpersonsforprofile.personRecord.addressInformation",
      "short" : "AddressInformationType",
      "definition" : "Grupp för adressuppgifter",
      "comment" : "TKB-fält: `../addressInformation` (`AddressInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress",
      "short" : "ResidentialAddressType",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../residentialAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.careOf",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.postalAddress1",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.postalAddress1",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.postalAddress2",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.postalAddress2",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.postalCode",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.postalCode",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.city",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.city",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys",
      "short" : "NationalKeysType",
      "definition" : "Riksnycklar",
      "comment" : "TKB-fält: `../../nationalKeys` (`NationalKeysType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys.propertyId",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
      "comment" : "TKB-fält: `../../../propertyId` (`PropertyId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys.addressPlaceId",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys.addressPlaceId",
      "short" : "addressPlaceId",
      "definition" : "addressPlaceId",
      "comment" : "TKB-fält: `../../../addressPlaceId` (`AddressPlaceId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys.apartmentId",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys.apartmentId",
      "short" : "apartmentId",
      "definition" : "apartmentId",
      "comment" : "TKB-fält: `../../../apartmentId` (`ApartmentId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.district",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.district",
      "short" : "DistrictType",
      "definition" : "Grupp för Distriktskod",
      "comment" : "TKB-fält: `../../district` (`DistrictType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.district.districtCode",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.district.districtCode",
      "short" : "districtCode",
      "definition" : "districtCode",
      "comment" : "TKB-fält: `../../../districtCode` (`DistrictCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress",
      "short" : "ResidentialAddressType",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../specialPostalAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.careOf",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.postalAddress1",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.postalAddress1",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.postalAddress2",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.postalAddress2",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.postalCode",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.postalCode",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.city",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.city",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad",
      "short" : "AddressAbroadType",
      "definition" : "Utlandsadress",
      "comment" : "TKB-fält: `../../addressAbroad` (`AddressAbroadType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.postalAddress1",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.postalAddress1",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.postalAddress2",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.postalAddress2",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.postalAddress3",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.postalAddress3",
      "short" : "postalAddress3",
      "definition" : "postalAddress3",
      "comment" : "TKB-fält: `../../../postalAddress3` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.countryCode",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "comment" : "TKB-fält: `../../../countryCode` (`String40`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../addressAbroadDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate.format",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate.value",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../votingDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate.format",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate.value",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress",
      "short" : "ResidentialAddressType",
      "definition" : "Svensk adress",
      "comment" : "TKB-fält: `../../givenAddress` (`ResidentialAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.careOf",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.postalAddress1",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.postalAddress1",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.postalAddress2",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.postalAddress2",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.postalCode",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.postalCode",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.city",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.city",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.UUID",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.UUID",
      "short" : "UUIDType",
      "definition" : "UUID för fastighet, aderess och lägenhet",
      "comment" : "TKB-fält: `../../UUID` (`UUIDType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.UUID.propertyId",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.UUID.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
      "comment" : "TKB-fält: `../../../propertyId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.UUID.addressPlaceId",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.UUID.addressPlaceId",
      "short" : "addressPlaceId",
      "definition" : "addressPlaceId",
      "comment" : "TKB-fält: `../../../addressPlaceId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.UUID.apartmentId",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.UUID.apartmentId",
      "short" : "apartmentId",
      "definition" : "apartmentId",
      "comment" : "TKB-fält: `../../../apartmentId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactInformation",
      "path" : "searchpersonsforprofile.personRecord.contactInformation",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.contactType",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.contactType",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.use",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.use",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.value",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.value",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.rank",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.rank",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.comment",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.comment",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.period",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.period",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.period.start",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.period.start",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.period.end",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.period.end",
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
      "id" : "searchpersonsforprofile.personRecord.contactInformation.digitalNotification",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.digitalNotification",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson",
      "path" : "searchpersonsforprofile.personRecord.contactPerson",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactRelationshipType",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactRelationshipType",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.priorityOrder",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.priorityOrder",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.givenName",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.givenName",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.surName",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.surName",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.middleName",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.middleName",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.careOf",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.postalAddress1",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.postalAddress2",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.postalCode",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.postalCode",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.city",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.city",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.contactType",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.use",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.use",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.value",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.value",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.rank",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.rank",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.comment",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.comment",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period.start",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period.end",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period.end",
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
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.digitalNotification",
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
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity",
      "short" : "ConfirmedIdentityType",
      "definition" : "Klass för hur reservidentitetsuppgifter är styrkta.",
      "comment" : "TKB-fält: `../confirmedIdentity` (`ConfirmedIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.typeOfIdentification",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.typeOfIdentification",
      "short" : "typeOfIdentification",
      "definition" : "typeOfIdentification",
      "comment" : "TKB-fält: `../../typeOfIdentification` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.identificationNumber",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.identificationNumber",
      "short" : "identificationNumber",
      "definition" : "identificationNumber",
      "comment" : "TKB-fält: `../../identificationNumber` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.issuersOfId",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.issuersOfId",
      "short" : "issuersOfId",
      "definition" : "issuersOfId",
      "comment" : "TKB-fält: `../../issuersOfId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod",
      "short" : "DatePeriodType",
      "definition" : "validDatePeriod",
      "comment" : "TKB-fält: `../../validDatePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod.start",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod.start",
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
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod.end",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod.end",
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
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.attachmentId",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.attachmentId",
      "short" : "attachmentId",
      "definition" : "attachmentId",
      "comment" : "TKB-fält: `../../attachmentId` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.countryCode",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "comment" : "TKB-fält: `../../countryCode` (`CountryCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.administrativeInformation",
      "path" : "searchpersonsforprofile.personRecord.administrativeInformation",
      "short" : "AdministrativeInformationType",
      "definition" : "Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID).",
      "comment" : "TKB-fält: `../administrativeInformation` (`AdministrativeInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.administrativeInformation.categoryOfPerson",
      "path" : "searchpersonsforprofile.personRecord.administrativeInformation.categoryOfPerson",
      "short" : "categoryOfPerson",
      "definition" : "categoryOfPerson",
      "comment" : "TKB-fält: `../../categoryOfPerson` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.administrativeInformation.accountCode",
      "path" : "searchpersonsforprofile.personRecord.administrativeInformation.accountCode",
      "short" : "accountCode",
      "definition" : "accountCode",
      "comment" : "TKB-fält: `../../accountCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.administrativeInformation.comment",
      "path" : "searchpersonsforprofile.personRecord.administrativeInformation.comment",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration",
      "path" : "searchpersonsforprofile.personRecord.deregistration",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.deregistrationReasonCode",
      "path" : "searchpersonsforprofile.personRecord.deregistration.deregistrationReasonCode",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate",
      "path" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate.value",
      "path" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate",
      "path" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate.format",
      "path" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate.value",
      "path" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.maritalStatus",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus",
      "short" : "MaritalStatusType",
      "definition" : "Civistånd",
      "comment" : "TKB-fält: `../maritalStatus` (`MaritalStatusType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusCode",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusCode",
      "short" : "maritalStatusCode",
      "definition" : "maritalStatusCode",
      "comment" : "TKB-fält: `../../maritalStatusCode` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../maritalStatusDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate.format",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate.value",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.immigration",
      "path" : "searchpersonsforprofile.personRecord.immigration",
      "short" : "ImmigrationType",
      "definition" : "Grupp för invandringsuppgifter",
      "comment" : "TKB-fält: `../immigration` (`ImmigrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationDate",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../immigrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationDate.value",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.immigration.rightOfResidence",
      "path" : "searchpersonsforprofile.personRecord.immigration.rightOfResidence",
      "short" : "rightOfResidence",
      "definition" : "rightOfResidence",
      "comment" : "TKB-fält: `../../rightOfResidence` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity",
      "short" : "ImmigrationIdentityType",
      "definition" : "Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo",
      "comment" : "TKB-fält: `../../immigrationIdentity` (`ImmigrationIdentityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
      "comment" : "TKB-fält: `../../../personalIdentityNumber` (`PersonalIdentityNumber`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity.country",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity.country",
      "short" : "country",
      "definition" : "country",
      "comment" : "TKB-fält: `../../../country` (`CountryCode`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship",
      "path" : "searchpersonsforprofile.personRecord.citizenship",
      "short" : "CitizenshipType",
      "definition" : "Grupp för medborgarskap",
      "comment" : "TKB-fält: `../citizenship` (`CitizenshipType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipCountryCode",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipCountryCode",
      "short" : "citizenshipCountryCode",
      "definition" : "citizenshipCountryCode",
      "comment" : "TKB-fält: `../../citizenshipCountryCode` (`CountryCode`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../citizenshipDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate.format",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate.value",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.citizenship.status",
      "path" : "searchpersonsforprofile.personRecord.citizenship.status",
      "short" : "status",
      "definition" : "status",
      "comment" : "TKB-fält: `../../status` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship",
      "path" : "searchpersonsforprofile.personRecord.relationship",
      "short" : "RelationshipType",
      "definition" : "Grupp för relation",
      "comment" : "TKB-fält: `../relationship` (`RelationshipType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId",
      "short" : "RelationshipIdType",
      "definition" : "Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.",
      "comment" : "TKB-fält: `../../relationshipId` (`RelationshipIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.personalIdentity",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../../personalIdentity` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth.value",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipType",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipType",
      "short" : "relationshipType",
      "definition" : "relationshipType",
      "comment" : "TKB-fält: `../../relationshipType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../relationshipFromDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate.value",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../relationshipToDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate.value",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.name",
      "path" : "searchpersonsforprofile.personRecord.relationship.name",
      "short" : "NameType",
      "definition" : "Namn",
      "comment" : "TKB-fält: `../../name` (`NameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.name.givenNameIndicator",
      "path" : "searchpersonsforprofile.personRecord.relationship.name.givenNameIndicator",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.name.givenName",
      "path" : "searchpersonsforprofile.personRecord.relationship.name.givenName",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.name.middleName",
      "path" : "searchpersonsforprofile.personRecord.relationship.name.middleName",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.name.surname",
      "path" : "searchpersonsforprofile.personRecord.relationship.name.surname",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.name.notificationName",
      "path" : "searchpersonsforprofile.personRecord.relationship.name.notificationName",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration",
      "short" : "DeregistrationType",
      "definition" : "Uppgifter om avregistrering",
      "comment" : "TKB-fält: `../../deregistration` (`DeregistrationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationReasonCode",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationReasonCode",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../deregistrationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate.value",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../../foundDeadAtDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
      "comment" : "TKB-fält: `../../../../format` (`DateTypeFormatType`, kardinalitet 1..1).\n\n**Modellanteckning:** format Tillåtna värden: YYYY, YYYY-MM, YYYY-MM-DD.",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate.value",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`PartialDateValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.status",
      "path" : "searchpersonsforprofile.personRecord.relationship.status",
      "short" : "status",
      "definition" : "status",
      "comment" : "TKB-fält: `../../status` (`CodedValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData",
      "short" : "CoOrdinationNumberDataType",
      "definition" : "Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige.",
      "comment" : "TKB-fält: `../coOrdinationNumberData` (`CoOrdinationNumberDataType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../allocationDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate.format",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate.value",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../preliminaryTransferDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate.format",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate.value",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../renewalDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate.format",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate.value",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../deceasedDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate.format",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate.value",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus",
      "short" : "PersonalIdentityStatusType",
      "definition" : "Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer.",
      "comment" : "TKB-fält: `../personalIdentityStatus` (`PersonalIdentityStatusType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatus",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatus",
      "short" : "identityStatus",
      "definition" : "identityStatus",
      "comment" : "TKB-fält: `../../identityStatus` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate",
      "short" : "PartialDateType",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "comment" : "TKB-fält: `../../identityStatusDate` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate.format",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate.format",
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
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate.value",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate.value",
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
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusCause",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusCause",
      "short" : "identityStatusCause",
      "definition" : "identityStatusCause",
      "comment" : "TKB-fält: `../../identityStatusCause` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor",
      "short" : "ActorType",
      "definition" : "Datatyp som identifierar en aktör.",
      "comment" : "TKB-fält: `../updatePersonActor` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.id",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.id",
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
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.professional",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.professional",
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
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.professional.organizationId",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.professional.organizationId",
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
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.updateTime",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "comment" : "TKB-fält: `../../updateTime` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor",
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
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.id",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.id",
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
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional",
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
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional.organizationId",
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
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.updateTime",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "comment" : "TKB-fält: `../../updateTime` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.attachment",
      "path" : "searchpersonsforprofile.personRecord.attachment",
      "short" : "MultimediaType",
      "definition" : "Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.",
      "comment" : "TKB-fält: `../attachment` (`MultimediaType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.attachment.id",
      "path" : "searchpersonsforprofile.personRecord.attachment.id",
      "short" : "id",
      "definition" : "id",
      "comment" : "TKB-fält: `../../id` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.attachment.mediaType",
      "path" : "searchpersonsforprofile.personRecord.attachment.mediaType",
      "short" : "mediaType",
      "definition" : "mediaType",
      "comment" : "TKB-fält: `../../mediaType` (`CodedValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.attachment.value",
      "path" : "searchpersonsforprofile.personRecord.attachment.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../value` (`base64Binary`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.attachment.reference",
      "path" : "searchpersonsforprofile.personRecord.attachment.reference",
      "short" : "reference",
      "definition" : "reference",
      "comment" : "TKB-fält: `../../reference` (`anyURI`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.optoutPaperNotification",
      "path" : "searchpersonsforprofile.personRecord.optoutPaperNotification",
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
      "id" : "searchpersonsforprofile.personRecord.protectedPopulationRecord",
      "path" : "searchpersonsforprofile.personRecord.protectedPopulationRecord",
      "short" : "protectedPopulationRecord",
      "definition" : "protectedPopulationRecord",
      "comment" : "TKB-fält: `../protectedPopulationRecord` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
