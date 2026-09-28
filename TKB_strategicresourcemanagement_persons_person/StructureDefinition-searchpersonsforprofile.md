# SearchPersonsForProfile — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchPersonsForProfile — Response**

## Logical Model: SearchPersonsForProfile — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/searchpersonsforprofile | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:SearchPersonsForProfile |
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
  "version" : "5.1.0",
  "name" : "SearchPersonsForProfile",
  "title" : "SearchPersonsForProfile — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
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
      "short" : "personRecord",
      "definition" : "Grupp för personpost",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentity",
      "path" : "searchpersonsforprofile.personRecord.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentity.root",
      "path" : "searchpersonsforprofile.personRecord.personalIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentity.iiExtension",
      "path" : "searchpersonsforprofile.personRecord.personalIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.identityLevel",
      "path" : "searchpersonsforprofile.personRecord.identityLevel",
      "short" : "identityLevel",
      "definition" : "identityLevel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.identityLevelDate",
      "path" : "searchpersonsforprofile.personRecord.identityLevelDate",
      "short" : "identityLevelDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.identityLevelDate.format",
      "path" : "searchpersonsforprofile.personRecord.identityLevelDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.identityLevelDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.identityLevelDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personRecordVersion",
      "path" : "searchpersonsforprofile.personRecord.personRecordVersion",
      "short" : "personRecordVersion",
      "definition" : "personRecordVersion Heter version i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personRecordName",
      "path" : "searchpersonsforprofile.personRecord.personRecordName",
      "short" : "personRecordName",
      "definition" : "Namn Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personRecordName.givenNameIndicator",
      "path" : "searchpersonsforprofile.personRecord.personRecordName.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personRecordName.givenName",
      "path" : "searchpersonsforprofile.personRecord.personRecordName.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personRecordName.middleName",
      "path" : "searchpersonsforprofile.personRecord.personRecordName.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personRecordName.surname",
      "path" : "searchpersonsforprofile.personRecord.personRecordName.surname",
      "short" : "surname",
      "definition" : "surname",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personRecordName.notificationName",
      "path" : "searchpersonsforprofile.personRecord.personRecordName.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity",
      "short" : "linkedIdentity",
      "definition" : "Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity.referredPersonalIdentity",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity.referredPersonalIdentity.root",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity.referredPersonalIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity.referredPersonalIdentity.iiExtension",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity.referredPersonalIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.linkedIdentity.assuranceLevel",
      "path" : "searchpersonsforprofile.personRecord.linkedIdentity.assuranceLevel",
      "short" : "assuranceLevel",
      "definition" : "assuranceLevel",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.referredPersonalIdentities",
      "path" : "searchpersonsforprofile.personRecord.referredPersonalIdentities",
      "short" : "referredPersonalIdentities",
      "definition" : "Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentity",
      "path" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentity.root",
      "path" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentity.iiExtension",
      "path" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentityStatus",
      "path" : "searchpersonsforprofile.personRecord.referredPersonalIdentities.referredPersonalIdentityStatus",
      "short" : "referredPersonalIdentityStatus",
      "definition" : "referredPersonalIdentityStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth",
      "path" : "searchpersonsforprofile.personRecord.birth",
      "short" : "birth",
      "definition" : "Uppgifter om födelse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.dateOfBirth",
      "path" : "searchpersonsforprofile.personRecord.birth.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.dateOfBirth.format",
      "path" : "searchpersonsforprofile.personRecord.birth.dateOfBirth.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.birth.dateOfBirth.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.birth.dateOfBirth.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden",
      "path" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden",
      "short" : "placeOfBirthSweden",
      "definition" : "Uppgifter om hemort i Sverige",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden.birthCountyCode",
      "path" : "searchpersonsforprofile.personRecord.birth.placeOfBirthSweden.birthCountyCode",
      "short" : "birthCountyCode",
      "definition" : "birthCountyCode",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.birthAbroad",
      "path" : "searchpersonsforprofile.personRecord.birth.birthAbroad",
      "short" : "birthAbroad",
      "definition" : "Uppgifter om födelse i utlandet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.birth.birthAbroad.placeOfBirthAbroad",
      "path" : "searchpersonsforprofile.personRecord.birth.birthAbroad.placeOfBirthAbroad",
      "short" : "placeOfBirthAbroad",
      "definition" : "placeOfBirthAbroad",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality",
      "short" : "populationRegistrationLocality",
      "definition" : "Uppgifter om folkbokföring",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate",
      "short" : "populationRegistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord",
      "short" : "populationRegistrationRecord",
      "definition" : "Folkbokföringspost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.syncronizationTime",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.syncronizationTime",
      "short" : "syncronizationTime",
      "definition" : "syncronizationTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase",
      "short" : "notificationCase",
      "definition" : "Ärendeuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.recordId",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.recordId",
      "short" : "recordId",
      "definition" : "recordId",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate",
      "short" : "notificationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate.format",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.notificationCase.notificationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords",
      "short" : "historicalRecords",
      "definition" : "Grupp för historik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality",
      "short" : "populationRegistrationLocality",
      "definition" : "Uppgifter om folkbokföring",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "short" : "populationRegistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress",
      "short" : "historicalAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation",
      "path" : "searchpersonsforprofile.personRecord.addressInformation",
      "short" : "addressInformation",
      "definition" : "Grupp för adressuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress",
      "short" : "residentialAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.residentialAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys",
      "short" : "nationalKeys",
      "definition" : "Riksnycklar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys.propertyId",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.nationalKeys.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.district",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.district",
      "short" : "district",
      "definition" : "Grupp för Distriktskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.district.districtCode",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.district.districtCode",
      "short" : "districtCode",
      "definition" : "districtCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress",
      "short" : "specialPostalAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.specialPostalAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad",
      "short" : "addressAbroad",
      "definition" : "Utlandsadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.postalAddress1",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate",
      "short" : "addressAbroadDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate.format",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate",
      "short" : "votingDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate.format",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.addressAbroad.votingDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress",
      "short" : "givenAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.givenAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.UUID",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.UUID",
      "short" : "UUID",
      "definition" : "UUID för fastighet, aderess och lägenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.addressInformation.UUID.propertyId",
      "path" : "searchpersonsforprofile.personRecord.addressInformation.UUID.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactInformation",
      "path" : "searchpersonsforprofile.personRecord.contactInformation",
      "short" : "contactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactInformation.contactType",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactInformation.contactInformationValue",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactInformation.period",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactInformation.period.start",
      "path" : "searchpersonsforprofile.personRecord.contactInformation.period.start",
      "short" : "start",
      "definition" : "start",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson",
      "path" : "searchpersonsforprofile.personRecord.contactPerson",
      "short" : "contactPerson",
      "definition" : "contactPerson",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactRelationshipType",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactRelationshipType",
      "short" : "contactRelationshipType",
      "definition" : "contactRelationshipType",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress",
      "short" : "contactPersonAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation",
      "short" : "contactPersonContactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "searchpersonsforprofile.personRecord.contactPerson.contactPersonContactInformation.period.start",
      "short" : "start",
      "definition" : "start",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity",
      "short" : "confirmedIdentity",
      "definition" : "Klass för hur reservidentitetsuppgifter är styrkta.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.typeOfIdentification",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.typeOfIdentification",
      "short" : "typeOfIdentification",
      "definition" : "typeOfIdentification",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod",
      "short" : "validDatePeriod",
      "definition" : "validDatePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod.start",
      "path" : "searchpersonsforprofile.personRecord.confirmedIdentity.validDatePeriod.start",
      "short" : "start",
      "definition" : "start",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.administrativeInformation",
      "path" : "searchpersonsforprofile.personRecord.administrativeInformation",
      "short" : "administrativeInformation",
      "definition" : "Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.administrativeInformation.categoryOfPerson",
      "path" : "searchpersonsforprofile.personRecord.administrativeInformation.categoryOfPerson",
      "short" : "categoryOfPerson",
      "definition" : "categoryOfPerson",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.deregistration",
      "path" : "searchpersonsforprofile.personRecord.deregistration",
      "short" : "deregistration",
      "definition" : "Uppgifter om avregistrering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.deregistration.deregistrationReasonCode",
      "path" : "searchpersonsforprofile.personRecord.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate",
      "path" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate",
      "short" : "deregistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.deregistration.deregistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate",
      "path" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate",
      "short" : "foundDeadAtDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate.format",
      "path" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.deregistration.foundDeadAtDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.maritalStatus",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus",
      "short" : "maritalStatus",
      "definition" : "Civistånd",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusCode",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusCode",
      "short" : "maritalStatusCode",
      "definition" : "maritalStatusCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate",
      "short" : "maritalStatusDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate.format",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.maritalStatus.maritalStatusDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration",
      "path" : "searchpersonsforprofile.personRecord.immigration",
      "short" : "immigration",
      "definition" : "Grupp för invandringsuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationDate",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationDate",
      "short" : "immigrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity",
      "short" : "immigrationIdentity",
      "definition" : "Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "path" : "searchpersonsforprofile.personRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship",
      "path" : "searchpersonsforprofile.personRecord.citizenship",
      "short" : "citizenship",
      "definition" : "Grupp för medborgarskap",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipCountryCode",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipCountryCode",
      "short" : "citizenshipCountryCode",
      "definition" : "citizenshipCountryCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate",
      "short" : "citizenshipDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate.format",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.citizenship.citizenshipStatus",
      "path" : "searchpersonsforprofile.personRecord.citizenship.citizenshipStatus",
      "short" : "citizenshipStatus",
      "definition" : "citizenshipStatus Heter status i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship",
      "path" : "searchpersonsforprofile.personRecord.relationship",
      "short" : "relationship",
      "definition" : "Grupp för relation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId",
      "short" : "relationshipId",
      "definition" : "Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.personalIdentity",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.personalIdentity.root",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.personalIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.personalIdentity.iiExtension",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.personalIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipId.dateOfBirth.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate",
      "short" : "relationshipFromDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipFromDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate",
      "short" : "relationshipToDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipToDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipName",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipName",
      "short" : "relationshipName",
      "definition" : "Namn Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipName.givenNameIndicator",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipName.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipName.givenName",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipName.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipName.middleName",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipName.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipName.surname",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipName.surname",
      "short" : "surname",
      "definition" : "surname",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipName.notificationName",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipName.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration",
      "short" : "deregistration",
      "definition" : "Uppgifter om avregistrering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationReasonCode",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate",
      "short" : "deregistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.deregistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate",
      "short" : "foundDeadAtDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate.format",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.relationship.deregistration.foundDeadAtDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.relationship.relationshipStatus",
      "path" : "searchpersonsforprofile.personRecord.relationship.relationshipStatus",
      "short" : "relationshipStatus",
      "definition" : "relationshipStatus Heter status i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData",
      "short" : "coOrdinationNumberData",
      "definition" : "Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate",
      "short" : "allocationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate.format",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.allocationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate",
      "short" : "preliminaryTransferDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate.format",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.preliminaryTransferDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate",
      "short" : "renewalDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate.format",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.renewalDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate",
      "short" : "deceasedDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate.format",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.coOrdinationNumberData.deceasedDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus",
      "short" : "personalIdentityStatus",
      "definition" : "Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatus",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatus",
      "short" : "identityStatus",
      "definition" : "identityStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate",
      "short" : "identityStatusDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate.format",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate.format",
      "short" : "format",
      "definition" : "format",
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
      "id" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate.partialDateValue",
      "path" : "searchpersonsforprofile.personRecord.personalIdentityStatus.identityStatusDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor",
      "short" : "updatePersonActor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.actorId",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.actorId.root",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.actorId.iiExtension",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.professional",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.professional.organizationId",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.professional.organizationId.root",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.professional.organizationId.iiExtension",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonActor.updateTime",
      "path" : "searchpersonsforprofile.personRecord.updatePersonActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor",
      "short" : "updatePersonContactInformationActor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.actorId",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.actorId.root",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.updateTime",
      "path" : "searchpersonsforprofile.personRecord.updatePersonContactInformationActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.attachment",
      "path" : "searchpersonsforprofile.personRecord.attachment",
      "short" : "attachment",
      "definition" : "Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.attachment.multimediaId",
      "path" : "searchpersonsforprofile.personRecord.attachment.multimediaId",
      "short" : "multimediaId",
      "definition" : "multimediaId Heter id i schemat.",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "searchpersonsforprofile.personRecord.attachment.multimediaValue",
      "path" : "searchpersonsforprofile.personRecord.attachment.multimediaValue",
      "short" : "multimediaValue",
      "definition" : "multimediaValue Heter value i schemat.",
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
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
