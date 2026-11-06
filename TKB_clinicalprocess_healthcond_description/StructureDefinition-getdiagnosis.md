# GetDiagnosis - clinicalprocess: healthcond: description v3.0.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDiagnosis**

## Logical Model: GetDiagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getdiagnosis | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetDiagnosis |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetDiagnosis (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2). Representerar responsens informationsstruktur: registrerade diagnoser för en patient inklusive diagnoskod per ursprungligt diagnosticeringstillfälle. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getdiagnosis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getdiagnosis.csv), [Excel](StructureDefinition-getdiagnosis.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getdiagnosis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getdiagnosis",
  "version" : "2.0",
  "name" : "GetDiagnosis",
  "title" : "GetDiagnosis",
  "status" : "active",
  "date" : "2026-11-06T21:05:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetDiagnosis\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2).\nRepresenterar responsens informationsstruktur: registrerade diagnoser för en patient\ninklusive diagnoskod per ursprungligt diagnosticeringstillfälle.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getdiagnosis",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getdiagnosis",
      "path" : "getdiagnosis",
      "short" : "GetDiagnosis",
      "definition" : "Logisk modell för tjänstekontraktet GetDiagnosis\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2).\nRepresenterar responsens informationsstruktur: registrerade diagnoser för en patient\ninklusive diagnoskod per ursprungligt diagnosticeringstillfälle."
    },
    {
      "id" : "getdiagnosis.diagnosis",
      "path" : "getdiagnosis.diagnosis",
      "short" : "Diagnos",
      "definition" : "De diagnoser som matchar begäran.",
      "comment" : "TKB-fält: `diagnosis` (`DiagnosisType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader",
      "short" : "Dokumenthuvud (PatientSummaryHeader)",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `../diagnosisHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.documentId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.documentId",
      "short" : "Dokumentets identitet",
      "definition" : "Dokumentets identitet som är unik inom källsystemet.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.sourceSystemHSAId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.sourceSystemHSAId",
      "short" : "HSA-id för källsystem",
      "definition" : "HSA-id för det system tillgängliggör informationen.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.patientId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.patientId",
      "short" : "Patientidentifierare",
      "definition" : "Identifierare för patient.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** Identifierare för patient. id = patientens identifierare (12 tecken).\ntype = OID för typ av identifierare. För personnummer: 1.2.752.129.2.1.3.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional",
      "short" : "Ansvarig hälso- och sjukvårdsperson",
      "definition" : "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare.",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getdiagnosis-pdl-careunit-caregiver",
        "severity" : "warning",
        "human" : "Regel 1: HSA-id för vårdenhet och vårdgivare krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL. Saknas de visas elementet inte av konsumenter inom sammanhållen journalföring.",
        "expression" : "healthcareProfessionalCareUnitHSAId.exists() and healthcareProfessionalCareGiverHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getdiagnosis"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt för registrering",
      "definition" : "Tidpunkt då informationen registrerades.",
      "comment" : "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "Författarens HSA-id",
      "definition" : "Författarens HSA-id.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn på hälso- och sjukvårdspersonal",
      "definition" : "Namn på författaren. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Befattning",
      "definition" : "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]",
      "comment" : "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).",
      "comment" : "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).\n\n**Modellanteckning:** Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).",
      "comment" : "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namnet på den organisation som författaren är uppdragstagare på.",
      "comment" : "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet\n\n(Regel: 1)",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivare",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel: 1)",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).\n\n**Modellanteckning:** HSA-id för vårdgivaren, som är vårdgivare för den vårdenhet där personalen verkar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator",
      "short" : "Signerande person",
      "definition" : "Information om vem som signerat informationen i dokumentet.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.signatureTime",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering",
      "definition" : "Tidpunkt för signering.",
      "comment" : "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).\n\n**Modellanteckning:** Tidpunkt för signering. Format: YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för signerande person",
      "definition" : "HSA-id för person som signerat dokumentet",
      "comment" : "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn på signerande person",
      "definition" : "Namnen i klartext för signerande person.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.approvedForPatient",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.approvedForPatient",
      "short" : "Godkänd för visning till patient",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.",
      "comment" : "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.careContactId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.careContactId",
      "short" : "Vårdkontakts-id",
      "definition" : "Identitetet för den hälso- och sjukvårds skontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Identitet för den hälso- och sjukvårdskontakt som diagnosen dokumenterades vid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody",
      "path" : "getdiagnosis.diagnosis.diagnosisBody",
      "short" : "Diagnosens innehåll",
      "definition" : "DiagnosisBodyType — diagnosens informationsinnehåll.\nKardinalitet: Obligatorisk.",
      "comment" : "TKB-fält: `../diagnosisBody` (`DiagnosisBodyType`, kardinalitet 1..1).\n\n**Modellanteckning:** DiagnosisBodyType — diagnosens informationsinnehåll.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.typeOfDiagnosis",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.typeOfDiagnosis",
      "short" : "Typ av diagnos",
      "definition" : "Anges som \"Huvuddiagnos\" eller \"Bidiagnos\".",
      "comment" : "TKB-fält: `../../typeOfDiagnosis` (`TypeOfDiagnosisEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/ValueSet/diagnosistype-vs"
      }
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.chronicDiagnosis",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.chronicDiagnosis",
      "short" : "Kronisk diagnos",
      "definition" : "Sätts till true om diagnosen är kronisk, false om diagnosen inte är kronisk, och används inte om okänt.",
      "comment" : "TKB-fält: `../../chronicDiagnosis` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.diagnosisTime",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.diagnosisTime",
      "short" : "Tidpunkt för diagnos",
      "definition" : "Tidpunkt då bedömningen gjordes.",
      "comment" : "TKB-fält: `../../diagnosisTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.diagnosisCode",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.diagnosisCode",
      "short" : "Diagnoskod",
      "definition" : "Diagnoskod.",
      "comment" : "TKB-fält: `../../diagnosisCode` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** Diagnoskod. Normalt ICD-10-SE (OID okänt — se ASSUME-001 i QUESTIONS.md).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.relatedDiagnosis",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.relatedDiagnosis",
      "short" : "Relaterad diagnos",
      "definition" : "Relaterad diagnos.\n\nAssociationen används för att länka samman diagnoser som relaterar till varandra. Använd om möjligt detta för att länka t.ex. bidiagnos till huvuddiagnos eller orsakskod till diagnos.",
      "comment" : "TKB-fält: `../../relatedDiagnosis` (`RelatedDiagnosisType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.relatedDiagnosis.documentId",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.relatedDiagnosis.documentId",
      "short" : "Relaterad diagnos dokumentid",
      "definition" : "Unik identitet för diagnosen.",
      "comment" : "TKB-fält: `../../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.result",
      "path" : "getdiagnosis.result",
      "short" : "Resultat",
      "definition" : "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosis.result.resultCode",
      "path" : "getdiagnosis.result.resultCode",
      "short" : "Resultatkod",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getdiagnosis.result.errorCode",
      "path" : "getdiagnosis.result.errorCode",
      "short" : "Felkod",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** Sätts endast om resultCode är ERROR. Tillåtna värden: INVALID_REQUEST.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getdiagnosis.result.logId",
      "path" : "getdiagnosis.result.logId",
      "short" : "Log-id",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.result.message",
      "path" : "getdiagnosis.result.message",
      "short" : "Meddelande",
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
