# GetReferralOutcome - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetReferralOutcome**

## Logical Model: GetReferralOutcome 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome | *Version*:3.1 |
| Active as of 2026-11-09 | *Computable Name*:GetReferralOutcome |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetReferralOutcome 3.1 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3). Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.1. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getreferraloutcome.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getreferraloutcome.csv), [Excel](StructureDefinition-getreferraloutcome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getreferraloutcome",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome",
  "version" : "3.1",
  "name" : "GetReferralOutcome",
  "title" : "GetReferralOutcome",
  "status" : "active",
  "date" : "2026-11-09T03:20:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetReferralOutcome 3.1\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3).\nRepresenterar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.1.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getreferraloutcome",
      "path" : "getreferraloutcome",
      "short" : "GetReferralOutcome",
      "definition" : "Logisk modell för tjänstekontraktet GetReferralOutcome 3.1\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3).\nRepresenterar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.1."
    },
    {
      "id" : "getreferraloutcome.referralOutcome",
      "path" : "getreferraloutcome.referralOutcome",
      "short" : "ReferralOutcomeType",
      "definition" : "Returnerar en patients konsultationsremissvar.",
      "comment" : "TKB-fält: `referralOutcome` (`ReferralOutcomeType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader",
      "short" : "PatientSummaryHeaderType",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `../referralOutcomeHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentId",
      "short" : "documentId",
      "definition" : "Dokumentets identitet som är unik inom källsystemet\n\nIdentifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.sourceSystemHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "HSAid för det system som dokumentet är skapat i.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentTitle",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentTitle",
      "short" : "documentTitle",
      "definition" : "Titel som beskriver den information som sänds i dokumentet.",
      "comment" : "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentTime",
      "short" : "documentTime",
      "definition" : "Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem.",
      "comment" : "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.patientId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.patientId",
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
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional",
      "short" : "accountableHealthcareProfessional",
      "definition" : "Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator",
      "short" : "legalAuthenticator",
      "definition" : "Information om vem som signerat informationen i dokumentet. Signering = signering av remissvar. Information om vidimering sker i attributet attested i bodyn.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/LegalAuthenticatorType"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.approvedForPatient",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.approvedForPatient",
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
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.careContactId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.careContactId",
      "short" : "careContactId",
      "definition" : "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.nullified",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.nullified",
      "short" : "nullified",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../nullified` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.nullifiedReason",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.nullifiedReason",
      "short" : "nullifiedReason",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody",
      "short" : "ReferralOutcomeBodyType",
      "definition" : "referralOutcomeBody",
      "comment" : "TKB-fält: `../referralOutcomeBody` (`ReferralOutcomeBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeTypeCode",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeTypeCode",
      "short" : "referralOutcomeTypeCode",
      "definition" : "Anger typ av svar.\n\nGiltiga koder:\n\nSR, svar på remissfråga\n\nSS, slutsvar på remissfråga",
      "comment" : "TKB-fält: `../../referralOutcomeTypeCode` (`referralOutcomeTypeCodeEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** referralOutcomeTypeCode Tillåtna värden: SS, SR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/referraloutcometypecode-vs"
      }
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeTitle",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeTitle",
      "short" : "referralOutcomeTitle",
      "definition" : "Text som beskriver vilken specialitet som utlåtandet gäller. Typen av specialitet som anlitats anges i text.\n\nExempel:\n\nPatologi\n\nKlinisk fysik\n\nLogopedi",
      "comment" : "TKB-fält: `../../referralOutcomeTitle` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeText",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeText",
      "short" : "referralOutcomeText",
      "definition" : "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet.",
      "comment" : "TKB-fält: `../../referralOutcomeText` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation",
      "short" : "ClinicalInformationType",
      "definition" : "Klinisk information för remissvaret. Dessa kliniska data är direkt kopplat till svaret.",
      "comment" : "TKB-fält: `../../clinicalInformation` (`ClinicalInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode",
      "short" : "ClinicalInformationCodeType",
      "definition" : "Kod för åtgärd.\n\nKoden anges i code.\n\nKodverkets OID i codeSystem.",
      "comment" : "TKB-fält: `../../../clinicalInformationCode` (`ClinicalInformationCodeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.code",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.code",
      "short" : "code",
      "definition" : "Kod.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.codeSystem",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "Kod kan komma från kodverket ICD-10 (1.2.752.116.1.1.1.1.3) men andra kodverk kan  förekomma.",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** codeSystem Tillåtna värden: 1.2.752.116.1.1.1.1.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText",
      "short" : "clinicalInformationText",
      "definition" : "Beskrivning av klinisk information",
      "comment" : "TKB-fält: `../../../clinicalInformationText` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act",
      "short" : "ActType",
      "definition" : "Utförd åtgärd",
      "comment" : "TKB-fält: `../../act` (`ActType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actId",
      "short" : "actId",
      "definition" : "Åtgärdens identitet som är unik inom det lokala avsändande systemet",
      "comment" : "TKB-fält: `../../../actId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actCode",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actCode",
      "short" : "ActCodeType",
      "definition" : "Kod för åtgärd.\n\nKoden anges i code.\n\nKodverkets OID anges i codeSystem.",
      "comment" : "TKB-fält: `../../../actCode` (`ActCodeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actCode.code",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actCode.code",
      "short" : "code",
      "definition" : "Nullvärde är tillåtet om kod ej är tillgänglig, och åtgärdskodstext ska då skrivas i `<actText>`.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actCode.codeSystem",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "Lämpliga kodverk kan vara: KVÅ (1.2.752.116.1.3.2.1.4) men andra kodverk kan förekomma.",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actText",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actText",
      "short" : "actText",
      "definition" : "Text som anger namnet på den kod som anges i attributet åtgärdskod. Beskrivning av åtgärd anges här om ingen kod har angetts i attributet åtgärdskod.",
      "comment" : "TKB-fält: `../../../actText` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actTime",
      "short" : "actTime",
      "definition" : "Tidpunkt då åtgärd genomfördes",
      "comment" : "TKB-fält: `../../../actTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult",
      "short" : "actResult",
      "definition" : "Resultat av åtgärd. Data i form av bifogade bilder eller liknande",
      "comment" : "TKB-fält: `../../../actResult` (`MultimediaType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/MultimediaType"
      }],
      "constraint" : [{
        "key" : "getreferraloutcome-actresult-value-xor-reference",
        "severity" : "error",
        "human" : "actResult: ett och endast ett av value och reference ska anges.",
        "expression" : "actResultValue.exists() xor reference.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral",
      "short" : "ReferralType",
      "definition" : "Information om den vårdbegäran som ligger till grund för svaret",
      "comment" : "TKB-fält: `../../referral` (`ReferralType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralId",
      "short" : "referralId",
      "definition" : "Remissens identitet som är unik inom det lokala avsändade systemet",
      "comment" : "TKB-fält: `../../../referralId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralReason",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralReason",
      "short" : "referralReason",
      "definition" : "Text som anger aktuell frågeställning.",
      "comment" : "TKB-fält: `../../../referralReason` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralTime",
      "short" : "referralTime",
      "definition" : "Tid då vårdbegäran framställdes.",
      "comment" : "TKB-fält: `../../../referralTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor",
      "short" : "referralAuthor",
      "definition" : "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallas författare.",
      "comment" : "TKB-fält: `../../../referralAuthor` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.careContactId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.careContactId",
      "short" : "careContactId",
      "definition" : "Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. Detta ID kan användas för att genom tjänstekontaktet GetCareContacts (annan tjänstedomän) hämta kompletterandekontaktinformation.",
      "comment" : "TKB-fält: `../../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested",
      "short" : "(anonym typ)",
      "definition" : "Information om vidimering av enskild utförd åtgärd med tillhörande resultat. Finns attester är åtgärden vidimerad. Med vidimerat menas att information om åtgärden har lästs och den som läst har tagit ansvar.",
      "comment" : "TKB-fält: `../../attested` (`AttestedType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attestedTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attestedTime",
      "short" : "attestedTime",
      "definition" : "Tidpunkten för vidimering",
      "comment" : "TKB-fält: `../../../attestedTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attesterHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attesterHSAId",
      "short" : "attesterHSAId",
      "definition" : "HSA-id för person som vidimerat",
      "comment" : "TKB-fält: `../../../attesterHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attesterName",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attesterName",
      "short" : "attesterName",
      "definition" : "Namn på person som vidimerat",
      "comment" : "TKB-fält: `../../../attesterName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.result",
      "path" : "getreferraloutcome.result",
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
      "id" : "getreferraloutcome.result.resultCode",
      "path" : "getreferraloutcome.result.resultCode",
      "short" : "resultCode",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getreferraloutcome.result.errorCode",
      "path" : "getreferraloutcome.result.errorCode",
      "short" : "errorCode",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** errorCode Tillåtna värden: INVALID_REQUEST.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "getreferraloutcome.result.logId",
      "path" : "getreferraloutcome.result.logId",
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
      "id" : "getreferraloutcome.result.subCode",
      "path" : "getreferraloutcome.result.subCode",
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
      "id" : "getreferraloutcome.result.message",
      "path" : "getreferraloutcome.result.message",
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
