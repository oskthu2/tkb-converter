# GetCareContacts - clinicalprocess: logistics: logistics v3.0.13

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareContacts**

## Logical Model: GetCareContacts 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts | *Version*:3.0 |
| Active as of 2026-11-09 | *Computable Name*:GetCareContacts |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetCareContacts (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3). Representerar responsens informationsstruktur (GetCareContactsResponseType). En lista med CareContactType returneras, var och en med ett header och ett body. 

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
  "version" : "3.0",
  "name" : "GetCareContacts",
  "title" : "GetCareContacts",
  "status" : "active",
  "date" : "2026-11-09T03:24:16+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetCareContacts\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).\nRepresenterar responsens informationsstruktur (GetCareContactsResponseType).\nEn lista med CareContactType returneras, var och en med ett header och ett body.",
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
      "definition" : "Logisk modell för tjänstekontraktet GetCareContacts\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).\nRepresenterar responsens informationsstruktur (GetCareContactsResponseType).\nEn lista med CareContactType returneras, var och en med ett header och ett body."
    },
    {
      "id" : "getcarecontacts.careContact",
      "path" : "getcarecontacts.careContact",
      "short" : "CareContactType",
      "definition" : "De vårdkontakter som matchar begäran.",
      "comment" : "TKB-fält: `careContact` (`CareContactType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader",
      "path" : "getcarecontacts.careContact.careContactHeader",
      "short" : "PatientSummaryHeaderType",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `../careContactHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.documentId",
      "path" : "getcarecontacts.careContact.careContactHeader.documentId",
      "short" : "documentId",
      "definition" : "Vårdkontaktens identitet som är unik inom källsystemet.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.sourceSystemHSAId",
      "path" : "getcarecontacts.careContact.careContactHeader.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "HSA-id för det system som dokumentet är skapat i.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.documentTitle",
      "path" : "getcarecontacts.careContact.careContactHeader.documentTitle",
      "short" : "documentTitle",
      "definition" : "Ska ej anges",
      "comment" : "TKB-fält: `../../documentTitle` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.documentTime",
      "path" : "getcarecontacts.careContact.careContactHeader.documentTime",
      "short" : "documentTime",
      "definition" : "Ska ej anges",
      "comment" : "TKB-fält: `../../documentTime` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.patientId",
      "path" : "getcarecontacts.careContact.careContactHeader.patientId",
      "short" : "patientId",
      "definition" : "Id för patienten.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional",
      "path" : "getcarecontacts.careContact.careContactHeader.accountableHealthcareProfessional",
      "short" : "accountableHealthcareProfessional",
      "definition" : "Hälso- och sjukvårdspersonalen som ansvarar för vårdkontakten.",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.legalAuthenticator",
      "path" : "getcarecontacts.careContact.careContactHeader.legalAuthenticator",
      "short" : "LegalAuthenticatorType",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.legalAuthenticator.signatureTime",
      "path" : "getcarecontacts.careContact.careContactHeader.legalAuthenticator.signatureTime",
      "short" : "signatureTime",
      "definition" : "signatureTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getcarecontacts.careContact.careContactHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "legalAuthenticatorHSAId",
      "definition" : "legalAuthenticatorHSAId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getcarecontacts.careContact.careContactHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "legalAuthenticatorName",
      "definition" : "legalAuthenticatorName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.approvedForPatient",
      "path" : "getcarecontacts.careContact.careContactHeader.approvedForPatient",
      "short" : "approvedForPatient",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.\n\nRegel: Regel 3",
      "comment" : "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.nullified",
      "path" : "getcarecontacts.careContact.careContactHeader.nullified",
      "short" : "nullified",
      "definition" : "nullified",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.nullifiedReason",
      "path" : "getcarecontacts.careContact.careContactHeader.nullifiedReason",
      "short" : "nullifiedReason",
      "definition" : "nullifiedReason",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactHeader.careContactId",
      "path" : "getcarecontacts.careContact.careContactHeader.careContactId",
      "short" : "careContactId",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../careContactId` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody",
      "path" : "getcarecontacts.careContact.careContactBody",
      "short" : "CareContactBodyType",
      "definition" : "careContactBody",
      "comment" : "TKB-fält: `../careContactBody` (`CareContactBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactCode",
      "path" : "getcarecontacts.careContact.careContactBody.careContactCode",
      "short" : "careContactCode",
      "definition" : "Kod som anger på vilket sätt vårdkontakten är planerad att ske, alternativt skedde. KV Vårdkontakttyp (1.2.752.129.2.2.2.25) ska användas. Se referens [R6].\n\nUtelämnat värde betyder att värdet är okänt.",
      "comment" : "TKB-fält: `../../careContactCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactReason",
      "path" : "getcarecontacts.careContact.careContactBody.careContactReason",
      "short" : "careContactReason",
      "definition" : "Text som beskriver orsaken till vårdkontakt som patienten själv eller dess företrädare anger.",
      "comment" : "TKB-fält: `../../careContactReason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit",
      "path" : "getcarecontacts.careContact.careContactBody.careContactOrgUnit",
      "short" : "careContactOrgUnit",
      "definition" : "Den enhet som vårdkontakten utfördes vid eller planeras utföras vid.\n\nRegel: Regel 5",
      "comment" : "TKB-fält: `../../careContactOrgUnit` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/OrgUnitType"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactTimePeriod",
      "path" : "getcarecontacts.careContact.careContactBody.careContactTimePeriod",
      "short" : "careContactTimePeriod",
      "definition" : "Tidsintervall för vårdkontakt. Vid besök i öppenvård sätts careContactTimePeriod.start och careContactTimePeriod.end till samma tidpunkt (besökets startidpunkt).",
      "comment" : "TKB-fält: `../../careContactTimePeriod` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType"
      }],
      "constraint" : [{
        "key" : "getcarecontacts-timeperiod-start-or-end",
        "severity" : "error",
        "human" : "Minst ett av start och end ska anges i careContactTimePeriod.",
        "expression" : "start.exists() or end.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.careContactStatus",
      "path" : "getcarecontacts.careContact.careContactBody.careContactStatus",
      "short" : "careContactStatus",
      "definition" : "Kod som anger aktuell status för vårdkontakten.\n\nKodverket är definierat i SNOMED CT-SE med SCTID: 53761000052103 (Snomed CT finns tillgängligt via R11 där man kan se de publicerade koderna som är refererade)",
      "comment" : "TKB-fält: `../../careContactStatus` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.additionalPatientInformation",
      "path" : "getcarecontacts.careContact.careContactBody.additionalPatientInformation",
      "short" : "AdditionalPatientInformationType",
      "definition" : "Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning.",
      "comment" : "TKB-fält: `../../additionalPatientInformation` (`AdditionalPatientInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.additionalPatientInformation.dateOfBirth",
      "path" : "getcarecontacts.careContact.careContactBody.additionalPatientInformation.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Patientens födelsedatum.",
      "comment" : "TKB-fält: `../../../dateOfBirth` (`PartialDateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PartialDateType"
      }]
    },
    {
      "id" : "getcarecontacts.careContact.careContactBody.additionalPatientInformation.gender",
      "path" : "getcarecontacts.careContact.careContactBody.additionalPatientInformation.gender",
      "short" : "gender",
      "definition" : "Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas. Se referens [R6].",
      "comment" : "TKB-fält: `../../../gender` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcarecontacts.result",
      "path" : "getcarecontacts.result",
      "short" : "ResultType",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcarecontacts.result.resultCode",
      "path" : "getcarecontacts.result.resultCode",
      "short" : "resultCode",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getcarecontacts.result.errorCode",
      "path" : "getcarecontacts.result.errorCode",
      "short" : "errorCode",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** errorCode Tillåtna värden: INVALID_REQUEST.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getcarecontacts.result.logId",
      "path" : "getcarecontacts.result.logId",
      "short" : "logId",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.result.subCode",
      "path" : "getcarecontacts.result.subCode",
      "short" : "subCode",
      "definition" : "Inga subkoder är specificerade.",
      "comment" : "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts.result.message",
      "path" : "getcarecontacts.result.message",
      "short" : "message",
      "definition" : "En beskrivande text som kan visas för användaren.",
      "comment" : "TKB-fält: `../message` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
