# GetAlertInformation - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAlertInformation**

## Logical Model: GetAlertInformation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:GetAlertInformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i tjänstekontraktet GetAlertInformation version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: uppmärksamhetsinformation för en patient samt resultat. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getalertinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getalertinformation.csv), [Excel](StructureDefinition-getalertinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getalertinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation",
  "version" : "2.0",
  "name" : "GetAlertInformation",
  "title" : "GetAlertInformation",
  "status" : "active",
  "date" : "2026-10-08T18:09:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i tjänstekontraktet GetAlertInformation version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: uppmärksamhetsinformation för en patient samt resultat.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getalertinformation",
      "path" : "getalertinformation",
      "short" : "GetAlertInformation",
      "definition" : "Logisk modell för svaret i tjänstekontraktet GetAlertInformation version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: uppmärksamhetsinformation för en patient samt resultat."
    },
    {
      "id" : "getalertinformation.alertInformation",
      "path" : "getalertinformation.alertInformation",
      "short" : "De diagnoser som matchar begäran",
      "definition" : "De diagnoser som matchar begäran. TKB-typ: AlertInformationType. Kardinalitet: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader",
      "path" : "getalertinformation.alertInformation.alertInformationHeader",
      "short" : "Innehåller basinformation om dokumentet",
      "definition" : "Innehåller basinformation om dokumentet. TKB-typ: PatientSummaryHeaderType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.documentId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.documentId",
      "short" : "Dokumentets identitet som är unik inom källsystemet",
      "definition" : "Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. TKB-typ: string. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.sourceSystemHSAId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.sourceSystemHSAId",
      "short" : "HSA-id för det system som dokumentet är skapat i",
      "definition" : "HSA-id för det system som dokumentet är skapat i. TKB-typ: HSAIdType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.documentTitle",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.documentTitle",
      "short" : "documentTitle",
      "definition" : "Används ej. TKB-typ: -. Kardinalitet: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.documentTime",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.documentTime",
      "short" : "documentTime",
      "definition" : "Används ej. TKB-typ: -. Kardinalitet: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.patientId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.patientId",
      "short" : "Identifierare för patient",
      "definition" : "Identifierare för patient. TKB-typ: PersonIdType. Kardinalitet: 1..1. Underelement i PersonIdType: id (string, 1..1): Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | type (string, 1..1): Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14]. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14]. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional",
      "short" : "Information om den hälso- och sjukvårdsperson som verifierat informationen i dokumentet",
      "definition" : "Information om den hälso- och sjukvårdsperson som verifierat informationen i dokumentet. TKB-typ: HealthcareProfessionalType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.authorTime",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt då informationen registrerades",
      "definition" : "Tidpunkt då informationen registrerades. TKB-typ: TimeStampType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "hälso- och sjukvårdspersonalens HSA-id",
      "definition" : "hälso- och sjukvårdspersonalens HSA-id. TKB-typ: HSAIdType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn på hälso- och sjukvårdspersonal",
      "definition" : "Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Information om personens befattning",
      "definition" : "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13]. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Befattningskod. Om code anges ska också codeSystem samt displayName anges. | codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för befattningskod. | codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod. | displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på",
      "definition" : "Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). TKB-typ: OrgUnitType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). TKB-typ: HSAIdType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på",
      "definition" : "Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. TKB-typ: string. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenhet",
      "definition" : "Telefon till organisationsenhet. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "Epost till organisationsenhet",
      "definition" : "Epost till organisationsenhet. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress för den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på",
      "definition" : "Postadress för den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Text som anger namnet på plats eller ort för organisationens fysiska placering",
      "definition" : "Text som anger namnet på plats eller ort för organisationens fysiska placering. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet. / (Regel:1) TKB-typ: HSAIdType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalen är …",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalen är uppdragstagare för. / (Regel:1) TKB-typ: HSAIdType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator",
      "short" : "Information om vem som signerat informationen i dokumentet",
      "definition" : "Information om vem som signerat informationen i dokumentet. TKB-typ: LegalAuthenticatorType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.signatureTime",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering",
      "definition" : "Tidpunkt för signering. TKB-typ: TimeStampType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för person som signerat dokumentet",
      "definition" : "HSA-id för person som signerat dokumentet. TKB-typ: HSAIdType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namnen i klartext för signerande person",
      "definition" : "Namnen i klartext för signerande person. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.approvedForPatient",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.approvedForPatient",
      "short" : "Anger om information får delas till patient",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. TKB-typ: boolean. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.careContactId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.careContactId",
      "short" : "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet",
      "definition" : "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.nullified",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.nullified",
      "short" : "nullified",
      "definition" : "Används ej. TKB-typ: -. Kardinalitet: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.nullifiedReason",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.nullifiedReason",
      "short" : "nullifiedReason",
      "definition" : "Används ej. TKB-typ: -. Kardinalitet: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody",
      "path" : "getalertinformation.alertInformation.alertInformationBody",
      "short" : "alertInformationBody",
      "definition" : "alertInformationBody. TKB-typ: AlertInformation/BodyType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getalertinformation-exactly-one-alert-type",
        "severity" : "error",
        "human" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (TKB 7.3.3).",
        "expression" : "(hypersensitivity.count() + seriousDisease.count() + treatment.count() + communicableDisease.count() + restrictionOfCare.count() + unstructuredAlertInformation.count()) = 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.typeOfAlertInformation",
      "path" : "getalertinformation.alertInformation.alertInformationBody.typeOfAlertInformation",
      "short" : "Kod som anger vilken typ av uppmärksamhetssignal som avses",
      "definition" : "Kod som anger vilken typ av uppmärksamhetssignal som avses. / Använd t.ex.  KV Uppmärksamhetstyp eller KV Informationstyp. / Se regel 2. TKB-typ: CVType. Kardinalitet: 1..1. Underelement i CVType: code (string, 0..1): Kod som anger typ av uppmärksamhetssignal. Om code anges ska även codeSystem samt displayName anges. | displayName (string, 0..1): Koden i klartext. Om displayName anges ska även code samt codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. / KV Uppmärksamhetstyp 1.2.752.129.5.1.49 / KV Informationstyp: 1.2.752.129.2.2.2.1 / Om codeSystem anges ska även code samt displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystemet angivet i codeSystem. | codeSystemVersion (string, 0..1): Version på kodsystem, om tillgängligt. | originalText (string, 0..1): Om typ av uppmärksamhetssignal är beskriven i ett lokalt kodsystem, eller ett kodsystem utan OID ska typ av uppmärksamhetssignal anges här. / Om originalText anges ska inget annat värde i typeOfAlertInformation anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.ascertainedDate",
      "path" : "getalertinformation.alertInformation.alertInformationBody.ascertainedDate",
      "short" : "Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades",
      "definition" : "Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades. Om inget specifikt datum för detta finns i källsystemet används / samma tid som starttiden i attributet giltighetstid. TKB-typ: DateType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.verifiedTime",
      "path" : "getalertinformation.alertInformation.alertInformationBody.verifiedTime",
      "short" : "Den tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet",
      "definition" : "Den tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet. TKB-typ: TimeStampType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.validityTimePeriod",
      "path" : "getalertinformation.alertInformation.alertInformationBody.validityTimePeriod",
      "short" : "Tidsintervallet inom vilket uppmärksamhetssignalen är giltig",
      "definition" : "Tidsintervallet inom vilket uppmärksamhetssignalen är giltig. Sluttidpunkt kan vara aktuellt att ange då man i förväg bedömer att uppmärksamhetssignalen har en sluttidpunkt (t.ex. för behandlingar). TKB-typ: TimePeriodType. Kardinalitet: 1..1. Underelement i TimePeriodType: start (TimeStampType, 1..1): Format ÅÅÅÅMMDDhhmmss. | end (TimeStampType, 0..1): Format ÅÅÅÅMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.validityTimePeriod.start",
      "path" : "getalertinformation.alertInformation.alertInformationBody.validityTimePeriod.start",
      "min" : 1
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.alertInformationComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.alertInformationComment",
      "short" : "Text som innehåller en kommentar av den ansvarige hälso- och sjukvårdspersonalen angående …",
      "definition" : "Text som innehåller en kommentar av den ansvarige hälso- och sjukvårdspersonalen angående uppmärksamhetssignalen. Vid läkemedelsöverkänslighet kan kommentaren avse en anamnes, / en beskrivning av den observerade reaktionen, en beskrivning av möjliga agens, föreliggande undersökningsresultat. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.obsoleteTime",
      "path" : "getalertinformation.alertInformation.alertInformationBody.obsoleteTime",
      "short" : "Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet",
      "definition" : "Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet. Används exempelvis om det uppmärksammade förhållandet bedöms som inte längre aktuellt trots att tidigare angiven gilitighetstid ej gått ut. TKB-typ: TimeStampType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.obsoleteComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.obsoleteComment",
      "short" : "Text som innehåller information om varför uppmärksamhetssignalen gjorts inaktuell",
      "definition" : "Text som innehåller information om varför uppmärksamhetssignalen gjorts inaktuell. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity",
      "short" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare …",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges. TKB-typ: HyperSensitivityType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity",
      "short" : "Kod som anger en precisering av vilken typ av överkänslighet som uppmärksamhetssignalen avser",
      "definition" : "Kod som anger en precisering av vilken typ av överkänslighet som uppmärksamhetssignalen avser. Koden bör hämtas ur ICD10/SNOMED, [R13]. / Exempel: / Läkemedelsöverkänslighet / Överkänslighet avs. födoämne / Överkänslighet avs. djur / Överkänslighet avs. växt / Överkänslighet av kemikalie. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i typeOfHypersensitivity anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity",
      "short" : "Kod som anger bedömning av överkänslighetens allvarlighet",
      "definition" : "Kod som anger bedömning av överkänslighetens allvarlighet. / KV Allvarlighetsgrad (1.2.752.129.2.2.3.3), [R13]. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i degreeOfSeverity anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty",
      "short" : "Kod som innehåller en uppgift om med vilken visshet överkänsligheten är precis så som den har angivits",
      "definition" : "Kod som innehåller en uppgift om med vilken visshet överkänsligheten är precis så som den har angivits. / KV Visshetsgrad (1.2.752.129.2.2.3.11) TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i degreeOfCertainty anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity",
      "short" : "Mer detaljerad information om läkemedelsöverkänslighet",
      "definition" : "Mer detaljerad information om läkemedelsöverkänslighet. TKB-typ: PharmaceuticalHypersensitivityType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance",
      "short" : "Kod och klartext som anger den substans, eller grupp av substanser, som kan förorsaka en …",
      "definition" : "Kod och klartext som anger den substans, eller grupp av substanser, som kan förorsaka en överkänslighetsreaktion. ATC-kod på minst treställig nivå ska anges för en läkemedelsöverkänslighet med en allvarlighetsgrad livshotande eller skadande, [R13]. Om en ATC-kod ej kan anges ska attributen / - substans ej enligt ATC / och / - ej ATC-kod kommentar / användas. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 1..1): Substansens ATC-kod. | displayName (string, 1..1): Klartext för substans (substansnamn) | codeSystem (string, 1..1): 1.2.752.129.2.2.3.1.1 | codeSystemName (string, 0..0): Används ej | codeSystemVersion (string, 0..0): Används ej | originalText (string, 0..0): Används ej",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance",
      "short" : "Text som anger benämning på aktiv substans som kan förorsaka en överkänslighetsreaktion",
      "definition" : "Text som anger benämning på aktiv substans som kan förorsaka en överkänslighetsreaktion. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment",
      "short" : "Text som innehåller en förklaing till varför ej ATC-kod används",
      "definition" : "Text som innehåller en förklaing till varför ej ATC-kod används. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId",
      "short" : "Identifierare för aktuell läkemedelsprodukt som kan orsaka överkänslighet",
      "definition" : "Identifierare för aktuell läkemedelsprodukt som kan orsaka överkänslighet. / NPL-id (1.2.752.129.2.1.5.1). TKB-typ: CVType. Kardinalitet: 0..*. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i pharmaceuticalProductId anges.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity",
      "short" : "Mer detaljerad information om överkänsligheten",
      "definition" : "Mer detaljerad information om överkänsligheten. Kan användas för annan överkänslighet än läkemedelsöverkänslighet. TKB-typ: OtherHypersensitivityType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent",
      "short" : "Text som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion",
      "definition" : "Text som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. / Bör anges. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode",
      "short" : "Text som anger den kod som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion",
      "definition" : "Text som anger den kod som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. Exempelvis kan LMK-kod för överkänslighet födoämne eller CAS-kod för överkänslighet kemikalie användas. Kan användas för annan överkänslighet än läkemedelsöverkänslighet. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i hypersensitivityAgentCode anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.seriousDisease",
      "path" : "getalertinformation.alertInformation.alertInformationBody.seriousDisease",
      "short" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare …",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges. TKB-typ: SeriousDiseaseType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.seriousDisease.disease",
      "path" : "getalertinformation.alertInformation.alertInformationBody.seriousDisease.disease",
      "short" : "Kod som beskriver en allvarlig sjukdom som hälso- och sjukvårdstagaren har och som en hälso- och …",
      "definition" : "Kod som beskriver en allvarlig sjukdom som hälso- och sjukvårdstagaren har och som en hälso- och sjukvårdspersonen vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna sjukdom skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren). Bör anges enligt ICD10/SNOMED, [R13]. TKB-typ: CVType. Kardinalitet: 1..1. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i disease anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.treatment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.treatment",
      "short" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare …",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). TKB-typ: TreatmentType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.treatment.treatmentDescription",
      "path" : "getalertinformation.alertInformation.alertInformationBody.treatment.treatmentDescription",
      "short" : "Text som beskriver en allvarlig behandling som hälso- och sjukvårdstagaren genomgår och som en hälso- och …",
      "definition" : "Text som beskriver en allvarlig behandling som hälso- och sjukvårdstagaren genomgår och som en hälso- och sjukvårdspersonal vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna behandling skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren). TKB-typ: string. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.treatment.treatmentCode",
      "path" : "getalertinformation.alertInformation.alertInformationBody.treatment.treatmentCode",
      "short" : "En preciserad uppgift om behandlingen",
      "definition" : "En preciserad uppgift om behandlingen. Bör anges med KVÅ-kod (1.2.752.116.1.3.2.1.4) TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i treatmentCode anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment",
      "short" : "Kod och klartext som anger uppgift om den eller de läkemedel som används vid en uppmärksammad behandling",
      "definition" : "Kod och klartext som anger uppgift om den eller de läkemedel som används vid en uppmärksammad behandling. / ATC-kod (1.2.752.129.2.2.3.1.1), [R13]. TKB-typ: CVType. Kardinalitet: 0..*. Underelement i CVType: code (string, 0..1): Läkemedlets (ATC-)kod. Om code anges måste också codeSystem och displayName anges. | displayName (string, 0..1): Klartext för läkemedel (namn på läkemedel). Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i pharmaceuticalTreatment anges.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease",
      "path" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease",
      "short" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare …",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). TKB-typ: CommunicableDiseaseType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode",
      "path" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode",
      "short" : "Kod som anger en precisering av vilken smittsam sjukdom som hälso- och sjukvårdstagaren har",
      "definition" : "Kod som anger en precisering av vilken smittsam sjukdom som hälso- och sjukvårdstagaren har. Bör anges som ICD10-kod, [R13]. TKB-typ: CVType. Kardinalitet: 1..1. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i communicableDiseaseCode anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease.routeOfTransmission",
      "path" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease.routeOfTransmission",
      "short" : "Kod som anger hur den uppmärksammade sjukdomen smittar",
      "definition" : "Kod som anger hur den uppmärksammade sjukdomen smittar. Obligatorisk uppgift om det styrs av författning. KV Smittväg. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Kod. Om code anges måste också codeSystem och displayName också anges. | displayName (string, 0..1): Klartext. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): OID för kodsystem. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem. | codeSystemVersion (string, 0..1): Kodsystemsversion. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i routeOfTransmission anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.restrictionOfCare",
      "path" : "getalertinformation.alertInformation.alertInformationBody.restrictionOfCare",
      "short" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare …",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). Denna klass skiljer sig sig något från motsvarigheten i Varning2-infospec. TKB-typ: RestrictionOfCareType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment",
      "short" : "Text som innehåller information om ett uppmärskammat förhållande som inte avser överkänslighet, annat …",
      "definition" : "Text som innehåller information om ett uppmärskammat förhållande som inte avser överkänslighet, annat medicinskt tillstånd, behandling eller arbetsmiljörisk. TKB-typ: string. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation",
      "path" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation",
      "short" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare …",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). TKB-typ: UnstructuredAlertInformationType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading",
      "path" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading",
      "short" : "Text som innehåller en beskrivande rubrik för en tidigare utfärdad varning",
      "definition" : "Text som innehåller en beskrivande rubrik för en tidigare utfärdad varning. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen. TKB-typ: string. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent",
      "path" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent",
      "short" : "Text som beskriver vad varningen gäller, samt viss administrativ information",
      "definition" : "Text som beskriver vad varningen gäller, samt viss administrativ information. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen. TKB-typ: string. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation",
      "path" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation",
      "short" : "Information om samband uppmärksamhetssignal",
      "definition" : "Information om samband uppmärksamhetssignal. TKB-typ: RelatedAlertInformationType. Kardinalitet: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship",
      "path" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship",
      "short" : "Text som anger vilken typ av samband som avses",
      "definition" : "Text som anger vilken typ av samband som avses. KV Samband (1.2.752.129.2.2.2.4), [R13]. TKB-typ: CVType. Kardinalitet: 1..1. Underelement i CVType: code (string, 0..1): Kod för samband uppmärksamhetssignal. Om code anges måste också displayName och codeSystem anges. | displayName (string, 0..1): Klartext för samband uppmärksamhetssignal. Om displayName anges måste också code och codeSystem anges. | codeSystem (string, 0..1): Kodsystem för samband uppmärksamhetssignal. Om codeSystem anges måste också code och displayName anges. | codeSystemName (string, 0..1): Klartext för kodsystem för samband uppmärksamhetssignal. | codeSystemVersion (string, 0..1): Version för kodsystem för samband uppmärksamhetssignal. | originalText (string, 0..1): Används i de fall kod finns i ett lokalt kodverk som ej är identifierat med OID eller när kod helt saknas. I sådana fall ska en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i typeOfAlertInformationRelationship anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.relationComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.relationComment",
      "short" : "Text som innehåller en kommentar till det aktuella sambandet",
      "definition" : "Text som innehåller en kommentar till det aktuella sambandet. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.documentId",
      "path" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.documentId",
      "short" : "Lokalt unik identitet för relaterad uppmärksamhetssignal",
      "definition" : "Lokalt unik identitet för relaterad uppmärksamhetssignal. TKB-typ: string. Kardinalitet: 1..*.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.result",
      "path" : "getalertinformation.result",
      "short" : "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för …",
      "definition" : "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl. TKB-typ: ResultType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalertinformation.result.resultCode",
      "path" : "getalertinformation.result.resultCode",
      "short" : "Kan endast vara OK, INFO eller ERROR",
      "definition" : "Kan endast vara OK, INFO eller ERROR. TKB-typ: ResultCodeEnum. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getalertinformation.result.errorCode",
      "path" : "getalertinformation.result.errorCode",
      "short" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. TKB-typ: ErrorCodeEnum. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getalertinformation.result.subcode",
      "path" : "getalertinformation.result.subcode",
      "short" : "Inga subkoder är specificerade",
      "definition" : "Inga subkoder är specificerade. TKB-typ: string. Kardinalitet: 0..1. OBS: elementet heter subCode i XSD:n.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.result.logId",
      "path" : "getalertinformation.result.logId",
      "short" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. TKB-typ: string. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.result.message",
      "path" : "getalertinformation.result.message",
      "short" : "En beskrivande text som kan visas för användaren",
      "definition" : "En beskrivande text som kan visas för användaren. TKB-typ: string. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
