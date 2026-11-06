# GetCareContacts - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareContacts**

## Logical Model: GetCareContacts 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetCareContacts |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetCareContacts 2.0 (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2). Representerar svarets informationsstruktur (GetCareContactsResponseType): noll eller flera vårdkontakter, var och en med ett huvud (careContactHeader) och en kropp (careContactBody). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-logistics-logistics|current/StructureDefinition/StructureDefinition-getcarecontacts.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcarecontacts.csv), [Excel](StructureDefinition-getcarecontacts.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcarecontacts",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts",
  "version" : "2.0",
  "name" : "GetCareContacts",
  "title" : "GetCareContacts",
  "status" : "active",
  "date" : "2026-11-06T21:09:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetCareContacts 2.0\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2).\nRepresenterar svarets informationsstruktur (GetCareContactsResponseType):\nnoll eller flera vårdkontakter, var och en med ett huvud (careContactHeader) och en kropp (careContactBody).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcarecontacts",
      "path" : "getcarecontacts",
      "short" : "GetCareContacts",
      "definition" : "Logisk modell för tjänstekontraktet GetCareContacts 2.0\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2).\nRepresenterar svarets informationsstruktur (GetCareContactsResponseType):\nnoll eller flera vårdkontakter, var och en med ett huvud (careContactHeader) och en kropp (careContactBody)."
    },
    {
      "id" : "getcarecontacts.careContact",
      "path" : "getcarecontacts.careContact",
      "short" : "De hälso- och sjukvårdskontakter som matchar begäran",
      "definition" : "De hälso- och sjukvårdskontakter som matchar begäran.",
      "comment" : "TKB-fält: `careContact` (`CareContactType`, kardinalitet 0..*).\n\n**Modellanteckning:** Typ CareContactType.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader",
      "path" : "getcarecontacts.careContact.careContactHeader",
      "short" : "Basinformation om dokumentet",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `.careContactHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).\n\n**Modellanteckning:** Typ PatientSummaryHeaderType.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.documentId",
      "path" : "getcarecontacts.careContact.careContactHeader.documentId",
      "short" : "Vårdkontaktens identitet",
      "definition" : "Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `..documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.sourceSystemHSAId",
      "path" : "getcarecontacts.careContact.careContactHeader.sourceSystemHSAId",
      "short" : "HSA-id för det system som dokumentet är skapat i",
      "definition" : "HSA-id för det system som dokumentet är skapat i.",
      "comment" : "TKB-fält: `..sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.patientId",
      "path" : "getcarecontacts.careContact.careContactHeader.patientId",
      "short" : "Identifierare för patient",
      "definition" : "Identifierare för patient.",
      "comment" : "TKB-fält: `..patientId` (`PersonIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** Typ PersonIdType. value (id i schemat) = patientens identifierare med 12 tecken utan avskiljare.\nsystem (type i schemat) = OID för typ av identifierare: personnummer 1.2.752.129.2.1.3.1,\nsamordningsnummer 1.2.752.129.2.1.3.3, reservnummer lokalt definierad OID (t.ex. SLL 1.2.752.97.3.1.3).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional",
      "short" : "Hälso- och sjukvårdsperson som ansvarar för vårdkontakten",
      "definition" : "Hälso- och sjukvårdsperson som ansvarar för vårdkontakten. Ska anges om tillgänglig.",
      "comment" : "TKB-fält: `..accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.authorTime",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt då dokumentet skapades",
      "definition" : "Den tidpunkt då dokumentet skapades.",
      "comment" : "TKB-fält i HealthcareProfessionalType: `authorTime` (`TimeStampType`, kardinalitet 1..1).\n\n**Modellanteckning:** Typ TimeStampType (ÅÅÅÅMMDDttmmss, svensk lokal tid). Den senaste tidpunkten då informationen\nuppdaterades i systemet ska anges om informationen ändrats efter att den skapades. Regel 2.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "HSA-id för hälso- och sjukvårdsperson som ansvarar för vårdkontakten",
      "definition" : "HSA-id för hälso- och sjukvårdspersonal. Ska anges om tillgänglig.",
      "comment" : "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn på hälso- och sjukvårdsperson",
      "definition" : "Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalName` (`string`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Hälso- och sjukvårdspersonens befattning",
      "definition" : "Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas.",
      "comment" : "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** Typ CVType. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas [R9].\noriginalText används för lokalt kodverk utan OID eller när kod saknas; då anges inget annat värde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på",
      "definition" : "Den organisation som angiven hälso- och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.\n\n**Modellanteckning:** Typ OrgUnitType. Regel 4.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet (Regel 4)",
      "definition" : "HSA-id för organisationsenhet (Regel 4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namn på organisationsenheten (Regel 4)",
      "definition" : "Namn på organisationsenheten (Regel 4)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenhet",
      "definition" : "Telefon till organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "Epost till enhet",
      "definition" : "Epost till enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress för organisationen",
      "definition" : "Postadress för organisationen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Namn på plats eller ort för organisationens fysiska placering",
      "definition" : "Namn på plats eller ort för organisationens fysiska placering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet (Regel 1)",
      "definition" : "HSA-id för vårdenhet som hälso- och sjukvårdspersonen är uppdragstagare för. Ska anges om tillgänglig.",
      "comment" : "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).\n\n**Modellanteckning:** TKB-tabellen anger 1..1, schemat 0..1. Modellen följer schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivaren (Regel 1)",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig.",
      "comment" : "TKB-fält i HealthcareProfessionalType: `healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).\n\n**Modellanteckning:** Vårdgivare för den enhet som hälso- och sjukvårdspersonen är uppdragstagare för.\nTKB-tabellen anger 1..1, schemat 0..1. Modellen följer schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.approvedForPatient",
      "path" : "getcarecontacts.careContact.careContactHeader.approvedForPatient",
      "short" : "Anger om information får delas till patient (Regel 3)",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.",
      "comment" : "TKB-fält i PatientSummaryHeaderType: `approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.nullified",
      "path" : "getcarecontacts.careContact.careContactHeader.nullified",
      "short" : "Anger om dokumentet makulerats i källsystemet",
      "definition" : "Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten.",
      "comment" : "TKB-fält i PatientSummaryHeaderType: `nullified` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.nullifiedReason",
      "path" : "getcarecontacts.careContact.careContactHeader.nullifiedReason",
      "short" : "Orsak till makulering",
      "definition" : "Anger orsak till makulering.",
      "comment" : "TKB-fält i PatientSummaryHeaderType: `nullifiedReason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody",
      "path" : "getcarecontacts.careContact.careContactBody",
      "short" : "Vårdkontaktens innehåll",
      "definition" : "Typ CareContactBodyType.",
      "comment" : "TKB-fält: `.careContactBody` (`CareContactBodyType`, kardinalitet 1..1).\n\n**Modellanteckning:** Typ CareContactBodyType.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactCode",
      "path" : "getcarecontacts.careContact.careContactBody.careContactCode",
      "short" : "Typ av vårdkontakt",
      "definition" : "Typ av hälso- och sjukvårdsdokumentation. Tillåtna värden är:\n\n1 = Besök\n\n2 = Telefon\n\n3 = Vårdtillfälle\n\n4 = Dagsjukvård\n\n5 = Annan\n\nUtelämnat värde betyder att värdet är okänt.",
      "comment" : "TKB-fält: `..careContactCode` (`integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/ValueSet/carecontactcode-vs"
      }
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactReason",
      "path" : "getcarecontacts.careContact.careContactBody.careContactReason",
      "short" : "Orsak till kontakten enligt patienten eller dess företrädare",
      "definition" : "Text som beskriver orsaken till hälso- och sjukvårdskontakt som hälso- och sjukvårdstagaren själv eller dess företrädare anger.",
      "comment" : "TKB-fält: `..careContactReason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit",
      "path" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit",
      "short" : "Den enhet som kontakten utfördes vid",
      "definition" : "Den enhet som kontakten utfördes vid",
      "comment" : "TKB-fält: `..careContactOrgUnit` (`OrgUnitType`, kardinalitet 1..1).\n\n**Modellanteckning:** Typ OrgUnitType.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitHSAId",
      "path" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet. Regel 4.",
      "comment" : "TKB-fält: `….orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitName",
      "path" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitName",
      "short" : "Namn på organisationsenheten",
      "definition" : "Namnet på den organisation som hälso- och sjukvårdsperson enär uppdragstagare på. Regel 4.",
      "comment" : "TKB-fält: `….orgUnitName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitTelecom",
      "path" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenheten",
      "definition" : "Telefon till organisationsenhet",
      "comment" : "TKB-fält: `….orgUnitTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitEmail",
      "path" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitEmail",
      "short" : "Epost till organisationsenheten",
      "definition" : "Epost till enhet",
      "comment" : "TKB-fält: `….orgUnitEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitAddress",
      "path" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitAddress",
      "short" : "Postadress till organisationsenheten",
      "definition" : "Postadress för den organisation som hälso- och sjukvårdsperson en är uppdragstagare på",
      "comment" : "TKB-fält: `….orgUnitAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitLocation",
      "path" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit.orgUnitLocation",
      "short" : "Namn på plats eller ort för organisationsenhetens fysiska placering",
      "definition" : "Text som anger namnet på plats eller ort för organisationens fysiska placering",
      "comment" : "TKB-fält: `….orgUnitLocation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactTimePeriod",
      "path" : "getcarecontacts.careContact.careContactBody.careContactTimePeriod",
      "short" : "Vårdkontaktens tidsperiod",
      "definition" : "För besök sätts sluttidpunken till samma tid som anges som starttidpunkt.\n\nFör planerade kontakter sätts ingen sluttidpunkt.\n\nPågående vårdtillfälle ska anges på samma sätt som en planerad vårdkontakt, dvs med angivet startdatum, men utan slutdatum.",
      "comment" : "TKB-fält: `..careContactTimePeriod` (`TimePeriodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactTimePeriod.start",
      "path" : "getcarecontacts.careContact.careContactBody.careContactTimePeriod.start",
      "short" : "Starttidpunkt",
      "definition" : "Periodens starttid. Minst ett av start och end ska anges.",
      "comment" : "TKB-fält i TimePeriodType: `start` (`TimeStampType`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactTimePeriod.end",
      "path" : "getcarecontacts.careContact.careContactBody.careContactTimePeriod.end",
      "short" : "Sluttidpunkt",
      "definition" : "Periodens sluttid. Minst ett av start och end ska anges.",
      "comment" : "TKB-fält i TimePeriodType: `end` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactStatus",
      "path" : "getcarecontacts.careContact.careContactBody.careContactStatus",
      "short" : "Status på vårdkontakten",
      "definition" : "Tillåtna värden är:\n\n1 = Ej påbörjad\n\n2 = Inställd\n\n3 = Pågående\n\n4 = Avbruten\n\n5 = Avslutad",
      "comment" : "TKB-fält: `..careContactStatus` (`integer`, kardinalitet 0..1).\n\n**Modellanteckning:** CareContactStatusEnum (kodverk ur NPÖ RIV-spec 2.2): 1 = Ej påbörjad, 2 = Inställd,\n3 = Pågående, 4 = Avbruten, 5 = Avslutad.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/ValueSet/carecontactstatus-vs"
      }
    }]
  }
}

```
