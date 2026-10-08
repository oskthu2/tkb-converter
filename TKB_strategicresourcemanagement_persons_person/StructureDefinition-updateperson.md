# UpdatePerson — Response - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePerson — Response**

## Logical Model: UpdatePerson — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updateperson | *Version*:5.0 |
| Active as of 2026-10-08 | *Computable Name*:UpdatePerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UpdatePerson (urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-updateperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updateperson.csv), [Excel](StructureDefinition-updateperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updateperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updateperson",
  "version" : "5.0",
  "name" : "UpdatePerson",
  "title" : "UpdatePerson — Response",
  "status" : "active",
  "date" : "2026-10-08T18:52:53+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UpdatePerson\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/updateperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updateperson",
      "path" : "updateperson",
      "short" : "UpdatePerson — Response",
      "definition" : "Logisk modell för svaret i UpdatePerson\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonResponseType)."
    },
    {
      "id" : "updateperson.updatePersonResult",
      "path" : "updateperson.updatePersonResult",
      "short" : "updatePersonResult",
      "definition" : "updatePersonResult",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.result",
      "path" : "updateperson.updatePersonResult.result",
      "short" : "result",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK betyder att åtgärden inte genomfördes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.result.resultCode",
      "path" : "updateperson.updatePersonResult.result.resultCode",
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
      "id" : "updateperson.updatePersonResult.result.resultText",
      "path" : "updateperson.updatePersonResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord",
      "path" : "updateperson.updatePersonResult.personRecord",
      "short" : "personRecord",
      "definition" : "Grupp för personpost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentity.root",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentity.iiExtension",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.identityLevel",
      "path" : "updateperson.updatePersonResult.personRecord.identityLevel",
      "short" : "identityLevel",
      "definition" : "identityLevel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.identityLevelDate",
      "path" : "updateperson.updatePersonResult.personRecord.identityLevelDate",
      "short" : "identityLevelDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.identityLevelDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.identityLevelDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.identityLevelDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.identityLevelDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.gender",
      "path" : "updateperson.updatePersonResult.personRecord.gender",
      "short" : "gender",
      "definition" : "gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.protectedPersonIndicator",
      "path" : "updateperson.updatePersonResult.personRecord.protectedPersonIndicator",
      "short" : "protectedPersonIndicator",
      "definition" : "protectedPersonIndicator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.testIndicator",
      "path" : "updateperson.updatePersonResult.personRecord.testIndicator",
      "short" : "testIndicator",
      "definition" : "testIndicator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.primaryIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.primaryIdentity",
      "short" : "primaryIdentity",
      "definition" : "primaryIdentity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personRecordVersion",
      "path" : "updateperson.updatePersonResult.personRecord.personRecordVersion",
      "short" : "personRecordVersion",
      "definition" : "personRecordVersion Heter version i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personRecordName",
      "path" : "updateperson.updatePersonResult.personRecord.personRecordName",
      "short" : "personRecordName",
      "definition" : "Namn Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personRecordName.givenNameIndicator",
      "path" : "updateperson.updatePersonResult.personRecord.personRecordName.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personRecordName.givenName",
      "path" : "updateperson.updatePersonResult.personRecord.personRecordName.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personRecordName.middleName",
      "path" : "updateperson.updatePersonResult.personRecord.personRecordName.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personRecordName.surname",
      "path" : "updateperson.updatePersonResult.personRecord.personRecordName.surname",
      "short" : "surname",
      "definition" : "surname",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personRecordName.notificationName",
      "path" : "updateperson.updatePersonResult.personRecord.personRecordName.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.linkedIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.linkedIdentity",
      "short" : "linkedIdentity",
      "definition" : "Klass för att koppla ihop 2 identiteter. Ex en nationell reservidentitet till ett PNR",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.linkedIdentity.referredPersonalIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.linkedIdentity.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.linkedIdentity.referredPersonalIdentity.root",
      "path" : "updateperson.updatePersonResult.personRecord.linkedIdentity.referredPersonalIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.linkedIdentity.referredPersonalIdentity.iiExtension",
      "path" : "updateperson.updatePersonResult.personRecord.linkedIdentity.referredPersonalIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.linkedIdentity.assuranceLevel",
      "path" : "updateperson.updatePersonResult.personRecord.linkedIdentity.assuranceLevel",
      "short" : "assuranceLevel",
      "definition" : "assuranceLevel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.linkedIdentity.primaryIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.linkedIdentity.primaryIdentity",
      "short" : "primaryIdentity",
      "definition" : "primaryIdentity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities",
      "path" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities",
      "short" : "referredPersonalIdentities",
      "definition" : "Klass för Hänvisningspersonnummer. För de personer som bytt personnummer anges tidigare personnummer/samordningsnummer som hänvisningspersonnummer. Det gamla personnumret/samordningsnumret utgör även det en egen personpost. I det fallet anges det nya personnumret som hänvisningspersonnummer. En person kan få nytt personnummer efter exempelvis ändring av en persons födelsetid eller vid beslut om ändrad könstillhörighet. Klassen håller ihop personidentiteter av typerna personnummer och samordningsnummer enligt Skatteverket till skillnad från klassen KoppladIdenitet som är Personuppgiftstjänstens egna klass för att kunna koppla ihop alla typer av personidentiteter (inkl. reservidentiteter).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities.referredPersonalIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities.referredPersonalIdentity",
      "short" : "referredPersonalIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities.referredPersonalIdentity.root",
      "path" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities.referredPersonalIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities.referredPersonalIdentity.iiExtension",
      "path" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities.referredPersonalIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities.referredPersonalIdentityStatus",
      "path" : "updateperson.updatePersonResult.personRecord.referredPersonalIdentities.referredPersonalIdentityStatus",
      "short" : "referredPersonalIdentityStatus",
      "definition" : "referredPersonalIdentityStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth",
      "path" : "updateperson.updatePersonResult.personRecord.birth",
      "short" : "birth",
      "definition" : "Uppgifter om födelse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth.dateOfBirth",
      "path" : "updateperson.updatePersonResult.personRecord.birth.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth.dateOfBirth.format",
      "path" : "updateperson.updatePersonResult.personRecord.birth.dateOfBirth.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.birth.dateOfBirth.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.birth.dateOfBirth.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth.placeOfBirthSweden",
      "path" : "updateperson.updatePersonResult.personRecord.birth.placeOfBirthSweden",
      "short" : "placeOfBirthSweden",
      "definition" : "Uppgifter om hemort i Sverige",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth.placeOfBirthSweden.birthCountyCode",
      "path" : "updateperson.updatePersonResult.personRecord.birth.placeOfBirthSweden.birthCountyCode",
      "short" : "birthCountyCode",
      "definition" : "birthCountyCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth.placeOfBirthSweden.birthParish",
      "path" : "updateperson.updatePersonResult.personRecord.birth.placeOfBirthSweden.birthParish",
      "short" : "birthParish",
      "definition" : "birthParish",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth.birthAbroad",
      "path" : "updateperson.updatePersonResult.personRecord.birth.birthAbroad",
      "short" : "birthAbroad",
      "definition" : "Uppgifter om födelse i utlandet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth.birthAbroad.placeOfBirthAbroad",
      "path" : "updateperson.updatePersonResult.personRecord.birth.birthAbroad.placeOfBirthAbroad",
      "short" : "placeOfBirthAbroad",
      "definition" : "placeOfBirthAbroad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.birth.birthAbroad.countryOfBirth",
      "path" : "updateperson.updatePersonResult.personRecord.birth.birthAbroad.countryOfBirth",
      "short" : "countryOfBirth",
      "definition" : "countryOfBirth",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality",
      "short" : "populationRegistrationLocality",
      "definition" : "Uppgifter om folkbokföring",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.populationRegistrationDate",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.populationRegistrationDate",
      "short" : "populationRegistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.populationRegistrationDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.countyCode",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.countyCode",
      "short" : "countyCode",
      "definition" : "countyCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.municipalityCode",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.municipalityCode",
      "short" : "municipalityCode",
      "definition" : "municipalityCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.parishCode",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.parishCode",
      "short" : "parishCode",
      "definition" : "parishCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.propertyDesignation",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.propertyDesignation",
      "short" : "propertyDesignation",
      "definition" : "propertyDesignation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.fictitiousPropertyNumber",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.fictitiousPropertyNumber",
      "short" : "fictitiousPropertyNumber",
      "definition" : "fictitiousPropertyNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.populationRegistrationType",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.populationRegistrationType",
      "short" : "populationRegistrationType",
      "definition" : "populationRegistrationType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.localRegistrationTime",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.localRegistrationTime",
      "short" : "localRegistrationTime",
      "definition" : "localRegistrationTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.localRegistrationEndTime",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationLocality.localRegistrationEndTime",
      "short" : "localRegistrationEndTime",
      "definition" : "localRegistrationEndTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord",
      "short" : "populationRegistrationRecord",
      "definition" : "Folkbokföringspost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.syncronizationTime",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.syncronizationTime",
      "short" : "syncronizationTime",
      "definition" : "syncronizationTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase",
      "short" : "notificationCase",
      "definition" : "Ärendeuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.recordId",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.recordId",
      "short" : "recordId",
      "definition" : "recordId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.notificationType",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.notificationType",
      "short" : "notificationType",
      "definition" : "notificationType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.modificationTime",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.modificationTime",
      "short" : "modificationTime",
      "definition" : "modificationTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.totalRecord",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.totalRecord",
      "short" : "totalRecord",
      "definition" : "totalRecord",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.notificationDate",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.notificationDate",
      "short" : "notificationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.notificationDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.notificationDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.notificationDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.notificationCase.notificationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords",
      "short" : "historicalRecords",
      "definition" : "Grupp för historik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality",
      "short" : "populationRegistrationLocality",
      "definition" : "Uppgifter om folkbokföring",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate",
      "short" : "populationRegistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.countyCode",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.countyCode",
      "short" : "countyCode",
      "definition" : "countyCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.municipalityCode",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.municipalityCode",
      "short" : "municipalityCode",
      "definition" : "municipalityCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.parishCode",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.parishCode",
      "short" : "parishCode",
      "definition" : "parishCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.propertyDesignation",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.propertyDesignation",
      "short" : "propertyDesignation",
      "definition" : "propertyDesignation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.fictitiousPropertyNumber",
      "short" : "fictitiousPropertyNumber",
      "definition" : "fictitiousPropertyNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationType",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.populationRegistrationType",
      "short" : "populationRegistrationType",
      "definition" : "populationRegistrationType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationTime",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationTime",
      "short" : "localRegistrationTime",
      "definition" : "localRegistrationTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationEndTime",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.populationRegistrationLocality.localRegistrationEndTime",
      "short" : "localRegistrationEndTime",
      "definition" : "localRegistrationEndTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress",
      "short" : "historicalAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.careOf",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress1",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress2",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalCode",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.city",
      "path" : "updateperson.updatePersonResult.personRecord.populationRegistrationRecord.historicalRecords.historicalAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation",
      "short" : "addressInformation",
      "definition" : "Grupp för adressuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress",
      "short" : "residentialAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.careOf",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.postalAddress1",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.postalAddress2",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.postalCode",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.city",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.residentialAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.nationalKeys",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.nationalKeys",
      "short" : "nationalKeys",
      "definition" : "Riksnycklar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.nationalKeys.propertyId",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.nationalKeys.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.nationalKeys.addressPlaceId",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.nationalKeys.addressPlaceId",
      "short" : "addressPlaceId",
      "definition" : "addressPlaceId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.nationalKeys.apartmentId",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.nationalKeys.apartmentId",
      "short" : "apartmentId",
      "definition" : "apartmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.district",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.district",
      "short" : "district",
      "definition" : "Grupp för Distriktskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.district.districtCode",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.district.districtCode",
      "short" : "districtCode",
      "definition" : "districtCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress",
      "short" : "specialPostalAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.careOf",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.postalAddress1",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.postalAddress2",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.postalCode",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.city",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.specialPostalAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad",
      "short" : "addressAbroad",
      "definition" : "Utlandsadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.postalAddress1",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.postalAddress2",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.postalAddress3",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.postalAddress3",
      "short" : "postalAddress3",
      "definition" : "postalAddress3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.countryCode",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.addressAbroadDate",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.addressAbroadDate",
      "short" : "addressAbroadDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.addressAbroadDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.addressAbroadDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.addressAbroadDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.votingDate",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.votingDate",
      "short" : "votingDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.votingDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.votingDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.votingDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.addressAbroad.votingDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress",
      "short" : "givenAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.careOf",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.postalAddress1",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.postalAddress2",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.postalCode",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.city",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.givenAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.UUID",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.UUID",
      "short" : "UUID",
      "definition" : "UUID för fastighet, aderess och lägenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.UUID.propertyId",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.UUID.propertyId",
      "short" : "propertyId",
      "definition" : "propertyId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.UUID.addressPlaceId",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.UUID.addressPlaceId",
      "short" : "addressPlaceId",
      "definition" : "addressPlaceId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.addressInformation.UUID.apartmentId",
      "path" : "updateperson.updatePersonResult.personRecord.addressInformation.UUID.apartmentId",
      "short" : "apartmentId",
      "definition" : "apartmentId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation",
      "short" : "contactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.contactType",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.use",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.use",
      "short" : "use",
      "definition" : "use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.contactInformationValue",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.rank",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.comment",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.period",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.period.start",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.period.end",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactInformation.digitalNotification",
      "path" : "updateperson.updatePersonResult.personRecord.contactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson",
      "short" : "contactPerson",
      "definition" : "contactPerson",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactRelationshipType",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactRelationshipType",
      "short" : "contactRelationshipType",
      "definition" : "contactRelationshipType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.priorityOrder",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.priorityOrder",
      "short" : "priorityOrder",
      "definition" : "priorityOrder",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.givenName",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.surName",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.surName",
      "short" : "surName",
      "definition" : "surName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.middleName",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress",
      "short" : "contactPersonAddress",
      "definition" : "Svensk adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.careOf",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.careOf",
      "short" : "careOf",
      "definition" : "careOf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.postalAddress1",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.postalAddress1",
      "short" : "postalAddress1",
      "definition" : "postalAddress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.postalAddress2",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.postalAddress2",
      "short" : "postalAddress2",
      "definition" : "postalAddress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.postalCode",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.city",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation",
      "short" : "contactPersonContactInformation",
      "definition" : "Klass för patientens egna angivna kontakuppgifter",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.contactType",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.use",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.use",
      "short" : "use",
      "definition" : "use",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.contactInformationValue",
      "short" : "contactInformationValue",
      "definition" : "contactInformationValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.rank",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.rank",
      "short" : "rank",
      "definition" : "rank",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.comment",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.period",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.period.start",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.period.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.period.end",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.period.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "path" : "updateperson.updatePersonResult.personRecord.contactPerson.contactPersonContactInformation.digitalNotification",
      "short" : "digitalNotification",
      "definition" : "digitalNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity",
      "short" : "confirmedIdentity",
      "definition" : "Klass för hur reservidentitetsuppgifter är styrkta.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.typeOfIdentification",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.typeOfIdentification",
      "short" : "typeOfIdentification",
      "definition" : "typeOfIdentification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.identificationNumber",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.identificationNumber",
      "short" : "identificationNumber",
      "definition" : "identificationNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.issuersOfId",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.issuersOfId",
      "short" : "issuersOfId",
      "definition" : "issuersOfId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.validDatePeriod",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.validDatePeriod",
      "short" : "validDatePeriod",
      "definition" : "validDatePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.validDatePeriod.start",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.validDatePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.validDatePeriod.end",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.validDatePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.attachmentId",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.attachmentId",
      "short" : "attachmentId",
      "definition" : "attachmentId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.countryCode",
      "path" : "updateperson.updatePersonResult.personRecord.confirmedIdentity.countryCode",
      "short" : "countryCode",
      "definition" : "countryCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.administrativeInformation",
      "path" : "updateperson.updatePersonResult.personRecord.administrativeInformation",
      "short" : "administrativeInformation",
      "definition" : "Klass för administrativa tilläggsuppgifter. Normalt tilläggsuppgifter kring en person med en reservidentitet som registreras i samband med uttag av reservidentitet (LRID/NRID).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.administrativeInformation.categoryOfPerson",
      "path" : "updateperson.updatePersonResult.personRecord.administrativeInformation.categoryOfPerson",
      "short" : "categoryOfPerson",
      "definition" : "categoryOfPerson",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.administrativeInformation.accountCode",
      "path" : "updateperson.updatePersonResult.personRecord.administrativeInformation.accountCode",
      "short" : "accountCode",
      "definition" : "accountCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.administrativeInformation.comment",
      "path" : "updateperson.updatePersonResult.personRecord.administrativeInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.deregistration",
      "path" : "updateperson.updatePersonResult.personRecord.deregistration",
      "short" : "deregistration",
      "definition" : "Uppgifter om avregistrering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.deregistration.deregistrationReasonCode",
      "path" : "updateperson.updatePersonResult.personRecord.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.deregistration.deregistrationDate",
      "path" : "updateperson.updatePersonResult.personRecord.deregistration.deregistrationDate",
      "short" : "deregistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.deregistration.deregistrationDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.deregistration.deregistrationDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.deregistration.deregistrationDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.deregistration.deregistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.deregistration.foundDeadAtDate",
      "path" : "updateperson.updatePersonResult.personRecord.deregistration.foundDeadAtDate",
      "short" : "foundDeadAtDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.deregistration.foundDeadAtDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.deregistration.foundDeadAtDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.deregistration.foundDeadAtDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.deregistration.foundDeadAtDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.maritalStatus",
      "path" : "updateperson.updatePersonResult.personRecord.maritalStatus",
      "short" : "maritalStatus",
      "definition" : "Civistånd",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.maritalStatus.maritalStatusCode",
      "path" : "updateperson.updatePersonResult.personRecord.maritalStatus.maritalStatusCode",
      "short" : "maritalStatusCode",
      "definition" : "maritalStatusCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.maritalStatus.maritalStatusDate",
      "path" : "updateperson.updatePersonResult.personRecord.maritalStatus.maritalStatusDate",
      "short" : "maritalStatusDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.maritalStatus.maritalStatusDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.maritalStatus.maritalStatusDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.maritalStatus.maritalStatusDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.maritalStatus.maritalStatusDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.immigration",
      "path" : "updateperson.updatePersonResult.personRecord.immigration",
      "short" : "immigration",
      "definition" : "Grupp för invandringsuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.immigration.immigrationDate",
      "path" : "updateperson.updatePersonResult.personRecord.immigration.immigrationDate",
      "short" : "immigrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.immigration.immigrationDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.immigration.immigrationDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.immigration.immigrationDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.immigration.immigrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.immigration.rightOfResidence",
      "path" : "updateperson.updatePersonResult.personRecord.immigration.rightOfResidence",
      "short" : "rightOfResidence",
      "definition" : "rightOfResidence",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.immigration.immigrationIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.immigration.immigrationIdentity",
      "short" : "immigrationIdentity",
      "definition" : "Grupp för personnummer och vilket land det är knutet till. Motsvarar skatteverkets NordisktPnrDa, NordisktPnrFi, NordisktPnrFo, NordisktPnrIs och NordisktPnrNo",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "path" : "updateperson.updatePersonResult.personRecord.immigration.immigrationIdentity.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "personalIdentityNumber",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.immigration.immigrationIdentity.country",
      "path" : "updateperson.updatePersonResult.personRecord.immigration.immigrationIdentity.country",
      "short" : "country",
      "definition" : "country",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.citizenship",
      "path" : "updateperson.updatePersonResult.personRecord.citizenship",
      "short" : "citizenship",
      "definition" : "Grupp för medborgarskap",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipCountryCode",
      "path" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipCountryCode",
      "short" : "citizenshipCountryCode",
      "definition" : "citizenshipCountryCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipDate",
      "path" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipDate",
      "short" : "citizenshipDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipStatus",
      "path" : "updateperson.updatePersonResult.personRecord.citizenship.citizenshipStatus",
      "short" : "citizenshipStatus",
      "definition" : "citizenshipStatus Heter status i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship",
      "path" : "updateperson.updatePersonResult.personRecord.relationship",
      "short" : "relationship",
      "definition" : "Grupp för relation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId",
      "short" : "relationshipId",
      "definition" : "Grupp för relationspersons identitet Antingen får man personnummer eller datum då personen föddes.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.personalIdentity",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.personalIdentity.root",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.personalIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.personalIdentity.iiExtension",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.personalIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.dateOfBirth",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.dateOfBirth.format",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.dateOfBirth.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.dateOfBirth.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipId.dateOfBirth.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipType",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipType",
      "short" : "relationshipType",
      "definition" : "relationshipType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipFromDate",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipFromDate",
      "short" : "relationshipFromDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipFromDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipFromDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipFromDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipFromDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipToDate",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipToDate",
      "short" : "relationshipToDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipToDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipToDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipToDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipToDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName",
      "short" : "relationshipName",
      "definition" : "Namn Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.givenNameIndicator",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.givenNameIndicator",
      "short" : "givenNameIndicator",
      "definition" : "givenNameIndicator",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.givenName",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.middleName",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.middleName",
      "short" : "middleName",
      "definition" : "middleName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.surname",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.surname",
      "short" : "surname",
      "definition" : "surname",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.notificationName",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipName.notificationName",
      "short" : "notificationName",
      "definition" : "notificationName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.deregistration",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.deregistration",
      "short" : "deregistration",
      "definition" : "Uppgifter om avregistrering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.deregistrationReasonCode",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.deregistrationReasonCode",
      "short" : "deregistrationReasonCode",
      "definition" : "deregistrationReasonCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.deregistrationDate",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.deregistrationDate",
      "short" : "deregistrationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.deregistrationDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.deregistrationDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.deregistrationDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.deregistrationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.foundDeadAtDate",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.foundDeadAtDate",
      "short" : "foundDeadAtDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.foundDeadAtDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.foundDeadAtDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.foundDeadAtDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.deregistration.foundDeadAtDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.relationship.relationshipStatus",
      "path" : "updateperson.updatePersonResult.personRecord.relationship.relationshipStatus",
      "short" : "relationshipStatus",
      "definition" : "relationshipStatus Heter status i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData",
      "short" : "coOrdinationNumberData",
      "definition" : "Grupp för de personer som ej är folkbokförda men som har tilldelats ett samordningsnummer för identifiering av personen. Syftet med samordningsnummer är att myndigheter och andra samhällsfunktioner ska kunna identifiera personer även om de inte är folkbokförda i Sverige.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.allocationDate",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.allocationDate",
      "short" : "allocationDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.allocationDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.allocationDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.allocationDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.allocationDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.preliminaryTransferDate",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.preliminaryTransferDate",
      "short" : "preliminaryTransferDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.preliminaryTransferDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.preliminaryTransferDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.preliminaryTransferDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.preliminaryTransferDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.renewalDate",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.renewalDate",
      "short" : "renewalDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.renewalDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.renewalDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.renewalDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.renewalDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.deceasedDate",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.deceasedDate",
      "short" : "deceasedDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.deceasedDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.deceasedDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.deceasedDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.coOrdinationNumberData.deceasedDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus",
      "short" : "personalIdentityStatus",
      "definition" : "Klass som beskriver status för ett samordningsnummer. Status, datum och orsak ska vara obligatoriska uppgifter, när de finns, för aviseringar innehållande samordningsnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatus",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatus",
      "short" : "identityStatus",
      "definition" : "identityStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatusDate",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatusDate",
      "short" : "identityStatusDate",
      "definition" : "Kan beskriva ett datum med variabel noggrannhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatusDate.format",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatusDate.format",
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
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatusDate.partialDateValue",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatusDate.partialDateValue",
      "short" : "partialDateValue",
      "definition" : "partialDateValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatusCause",
      "path" : "updateperson.updatePersonResult.personRecord.personalIdentityStatus.identityStatusCause",
      "short" : "identityStatusCause",
      "definition" : "identityStatusCause",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor",
      "short" : "updatePersonActor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor.actorId",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor.actorId.root",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor.actorId.iiExtension",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor.professional",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor.professional.organizationId",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor.professional.organizationId.root",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor.professional.organizationId.iiExtension",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonActor.updateTime",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor",
      "short" : "updatePersonContactInformationActor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.actorId",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.actorId.root",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.professional",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.professional.organizationId",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.updateTime",
      "path" : "updateperson.updatePersonResult.personRecord.updatePersonContactInformationActor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.attachment",
      "path" : "updateperson.updatePersonResult.personRecord.attachment",
      "short" : "attachment",
      "definition" : "Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.attachment.multimediaId",
      "path" : "updateperson.updatePersonResult.personRecord.attachment.multimediaId",
      "short" : "multimediaId",
      "definition" : "multimediaId Heter id i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.attachment.mediaType",
      "path" : "updateperson.updatePersonResult.personRecord.attachment.mediaType",
      "short" : "mediaType",
      "definition" : "mediaType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.attachment.multimediaValue",
      "path" : "updateperson.updatePersonResult.personRecord.attachment.multimediaValue",
      "short" : "multimediaValue",
      "definition" : "multimediaValue Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.attachment.reference",
      "path" : "updateperson.updatePersonResult.personRecord.attachment.reference",
      "short" : "reference",
      "definition" : "reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.optoutPaperNotification",
      "path" : "updateperson.updatePersonResult.personRecord.optoutPaperNotification",
      "short" : "optoutPaperNotification",
      "definition" : "optoutPaperNotification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updateperson.updatePersonResult.personRecord.protectedPopulationRecord",
      "path" : "updateperson.updatePersonResult.personRecord.protectedPopulationRecord",
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
