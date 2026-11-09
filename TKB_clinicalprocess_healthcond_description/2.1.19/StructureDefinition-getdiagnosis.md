# GetDiagnosis - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDiagnosis**

## Logical Model: GetDiagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getdiagnosis | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetDiagnosis |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i tjänstekontraktet GetDiagnosis version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: diagnoser för en patient samt resultat. 

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
  "date" : "2026-11-09T03:22:46+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i tjänstekontraktet GetDiagnosis version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: diagnoser för en patient samt resultat.",
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
      "definition" : "Logisk modell för svaret i tjänstekontraktet GetDiagnosis version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: diagnoser för en patient samt resultat."
    },
    {
      "id" : "getdiagnosis.diagnosis",
      "path" : "getdiagnosis.diagnosis",
      "short" : "DiagnosisType",
      "definition" : "De diagnoser som matchar begäran.",
      "comment" : "TKB-fält: `diagnosis` (`DiagnosisType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader",
      "short" : "PatientSummaryHeaderType",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `../diagnosisHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.documentId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.documentId",
      "short" : "documentId",
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
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.documentTitle",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.documentTitle",
      "short" : "documentTitle",
      "definition" : "N/A",
      "comment" : "TKB-fält: `../../documentTitle` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.documentTime",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.documentTime",
      "short" : "documentTime",
      "definition" : "N/A",
      "comment" : "TKB-fält: `../../documentTime` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.patientId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.patientId",
      "short" : "patientId",
      "definition" : "Identifierare för patient.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional",
      "short" : "accountableHealthcareProfessional",
      "definition" : "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare.",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator",
      "short" : "LegalAuthenticatorType",
      "definition" : "Information om vem som signerat informationen i dokumentet.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.signatureTime",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.signatureTime",
      "short" : "signatureTime",
      "definition" : "Tidpunkt för signering.",
      "comment" : "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "legalAuthenticatorHSAId",
      "definition" : "HSA-id för person som signerat dokumentet",
      "comment" : "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "legalAuthenticatorName",
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
      "short" : "approvedForPatient",
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
      "short" : "careContactId",
      "definition" : "Identitetet för den hälso- och sjukvårds skontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.nullified",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.nullified",
      "short" : "nullified",
      "definition" : "N/A",
      "comment" : "TKB-fält: `../../nullified` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisHeader.nullifiedReason",
      "path" : "getdiagnosis.diagnosis.diagnosisHeader.nullifiedReason",
      "short" : "nullifiedReason",
      "definition" : "N/A",
      "comment" : "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody",
      "path" : "getdiagnosis.diagnosis.diagnosisBody",
      "short" : "DiagnosisBodyType",
      "definition" : "diagnosisBody",
      "comment" : "TKB-fält: `../diagnosisBody` (`DiagnosisBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.typeOfDiagnosis",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.typeOfDiagnosis",
      "short" : "typeOfDiagnosis",
      "definition" : "Anges som \"Huvuddiagnos\" eller \"Bidiagnos\".",
      "comment" : "TKB-fält: `../../typeOfDiagnosis` (`TypeOfDiagnosisEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/ValueSet/diagnosistype-vs"
      }
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.chronicDiagnosis",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.chronicDiagnosis",
      "short" : "chronicDiagnosis",
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
      "short" : "diagnosisTime",
      "definition" : "Tidpunkt då bedömningen gjordes.",
      "comment" : "TKB-fält: `../../diagnosisTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.diagnosisCode",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.diagnosisCode",
      "short" : "diagnosisCode",
      "definition" : "Diagnoskod.",
      "comment" : "TKB-fält: `../../diagnosisCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.relatedDiagnosis",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.relatedDiagnosis",
      "short" : "RelatedDiagnosisType",
      "definition" : "Relaterad diagnos.\n\nAssociationen används för att länka samman diagnoser som relaterar till varandra. Använd om möjligt detta för att länka t.ex. bidiagnos till huvuddiagnos eller orsakskod till diagnos.",
      "comment" : "TKB-fält: `../../relatedDiagnosis` (`RelatedDiagnosisType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getdiagnosis.diagnosis.diagnosisBody.relatedDiagnosis.documentId",
      "path" : "getdiagnosis.diagnosis.diagnosisBody.relatedDiagnosis.documentId",
      "short" : "documentId",
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
      "short" : "ResultType",
      "definition" : "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getdiagnosis.result.resultCode",
      "path" : "getdiagnosis.result.resultCode",
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
      "id" : "getdiagnosis.result.errorCode",
      "path" : "getdiagnosis.result.errorCode",
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
      "id" : "getdiagnosis.result.logId",
      "path" : "getdiagnosis.result.logId",
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
      "id" : "getdiagnosis.result.subCode",
      "path" : "getdiagnosis.result.subCode",
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
      "id" : "getdiagnosis.result.message",
      "path" : "getdiagnosis.result.message",
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
