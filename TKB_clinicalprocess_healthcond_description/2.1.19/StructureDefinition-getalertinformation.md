# GetAlertInformation - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAlertInformation**

## Logical Model: GetAlertInformation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAlertInformation |
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
  "date" : "2026-11-09T03:22:46+00:00",
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
      "short" : "AlertInformationType",
      "definition" : "De diagnoser som matchar begäran.",
      "comment" : "TKB-fält: `alertInformation` (`AlertInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader",
      "path" : "getalertinformation.alertInformation.alertInformationHeader",
      "short" : "PatientSummaryHeaderType",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `../alertInformationHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.documentId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.documentId",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.sourceSystemHSAId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.sourceSystemHSAId",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.documentTitle",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.documentTitle",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.documentTime",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.documentTime",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.patientId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.patientId",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional",
      "short" : "accountableHealthcareProfessional",
      "definition" : "Information om den hälso- och sjukvårdsperson som verifierat informationen i dokumentet.",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.signatureTime",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.signatureTime",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.approvedForPatient",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.approvedForPatient",
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
      "id" : "getalertinformation.alertInformation.alertInformationHeader.careContactId",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.careContactId",
      "short" : "careContactId",
      "definition" : "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).",
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
      "definition" : "N/A",
      "comment" : "TKB-fält: `../../nullified` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationHeader.nullifiedReason",
      "path" : "getalertinformation.alertInformation.alertInformationHeader.nullifiedReason",
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
      "id" : "getalertinformation.alertInformation.alertInformationBody",
      "path" : "getalertinformation.alertInformation.alertInformationBody",
      "short" : "AlertInformationBodyType",
      "definition" : "alertInformationBody",
      "comment" : "TKB-fält: `../alertInformationBody` (`AlertInformation / BodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
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
      "short" : "typeOfAlertInformation",
      "definition" : "Kod som anger vilken typ av uppmärksamhetssignal som avses.\n\nAnvänd t.ex.  KV Uppmärksamhetstyp eller KV Informationstyp.\n\nSe regel 2",
      "comment" : "TKB-fält: `../../typeOfAlertInformation` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.ascertainedDate",
      "path" : "getalertinformation.alertInformation.alertInformationBody.ascertainedDate",
      "short" : "ascertainedDate",
      "definition" : "Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades. Om inget specifikt datum för detta finns i källsystemet används\n\nsamma tid som starttiden i attributet giltighetstid.",
      "comment" : "TKB-fält: `../../ascertainedDate` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.verifiedTime",
      "path" : "getalertinformation.alertInformation.alertInformationBody.verifiedTime",
      "short" : "verifiedTime",
      "definition" : "Den tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet",
      "comment" : "TKB-fält: `../../verifiedTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.validityTimePeriod",
      "path" : "getalertinformation.alertInformation.alertInformationBody.validityTimePeriod",
      "short" : "validityTimePeriod",
      "definition" : "Tidsintervallet inom vilket uppmärksamhetssignalen är giltig. Sluttidpunkt kan vara aktuellt att ange då man i förväg bedömer att uppmärksamhetssignalen har en sluttidpunkt (t.ex. för behandlingar).",
      "comment" : "TKB-fält: `../../validityTimePeriod` (`TimePeriodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.alertInformationComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.alertInformationComment",
      "short" : "alertInformationComment",
      "definition" : "Text som innehåller en kommentar av den ansvarige hälso- och sjukvårdspersonalen angående uppmärksamhetssignalen. Vid läkemedelsöverkänslighet kan kommentaren avse en anamnes,\n\nen beskrivning av den observerade reaktionen, en beskrivning av möjliga agens, föreliggande undersökningsresultat.",
      "comment" : "TKB-fält: `../../alertInformationComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.obsoleteTime",
      "path" : "getalertinformation.alertInformation.alertInformationBody.obsoleteTime",
      "short" : "obsoleteTime",
      "definition" : "Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet. Används exempelvis om det uppmärksammade förhållandet bedöms som inte längre aktuellt trots att tidigare angiven gilitighetstid ej gått ut.",
      "comment" : "TKB-fält: `../../obsoleteTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.obsoleteComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.obsoleteComment",
      "short" : "obsoleteComment",
      "definition" : "Text som innehåller information om varför uppmärksamhetssignalen gjorts inaktuell.",
      "comment" : "TKB-fält: `../../obsoleteComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity",
      "short" : "HyperSensitivityType",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges.",
      "comment" : "TKB-fält: `../../hypersensitivity` (`HyperSensitivityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity",
      "short" : "typeOfHypersensitivity",
      "definition" : "Kod som anger en precisering av vilken typ av överkänslighet som uppmärksamhetssignalen avser. Koden bör hämtas ur ICD10/SNOMED, [R13].\n\nExempel:\n\nLäkemedelsöverkänslighet\n\nÖverkänslighet avs. födoämne\n\nÖverkänslighet avs. djur\n\nÖverkänslighet avs. växt\n\nÖverkänslighet av kemikalie",
      "comment" : "TKB-fält: `../../../typeOfHypersensitivity` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity",
      "short" : "degreeOfSeverity",
      "definition" : "Kod som anger bedömning av överkänslighetens allvarlighet.\n\nKV Allvarlighetsgrad (1.2.752.129.2.2.3.3), [R13]",
      "comment" : "TKB-fält: `../../../degreeOfSeverity` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty",
      "short" : "degreeOfCertainty",
      "definition" : "Kod som innehåller en uppgift om med vilken visshet överkänsligheten är precis så som den har angivits.\n\nKV Visshetsgrad (1.2.752.129.2.2.3.11)",
      "comment" : "TKB-fält: `../../../degreeOfCertainty` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity",
      "short" : "PharmaceuticalHypersensitivityType",
      "definition" : "Mer detaljerad information om läkemedelsöverkänslighet.",
      "comment" : "TKB-fält: `../../../pharmaceuticalHypersensitivity` (`PharmaceuticalHypersensitivityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance",
      "short" : "atcSubstance",
      "definition" : "Kod och klartext som anger den substans, eller grupp av substanser, som kan förorsaka en överkänslighetsreaktion. ATC-kod på minst treställig nivå ska anges för en läkemedelsöverkänslighet med en allvarlighetsgrad livshotande eller skadande, [R13]. Om en ATC-kod ej kan anges ska attributen\n\n- substans ej enligt ATC\n\noch\n\n- ej ATC-kod kommentar\n\nanvändas",
      "comment" : "TKB-fält: `../../../../atcSubstance` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance",
      "short" : "nonATCSubstance",
      "definition" : "Text som anger benämning på aktiv substans som kan förorsaka en överkänslighetsreaktion",
      "comment" : "TKB-fält: `../../../../nonATCSubstance` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment",
      "short" : "nonATCSubstanceComment",
      "definition" : "Text som innehåller en förklaing till varför ej ATC-kod används.",
      "comment" : "TKB-fält: `../../../../nonATCSubstanceComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId",
      "short" : "pharmaceuticalProductId",
      "definition" : "Identifierare för aktuell läkemedelsprodukt som kan orsaka överkänslighet.\n\nNPL-id (1.2.752.129.2.1.5.1).",
      "comment" : "TKB-fält: `../../../../pharmaceuticalProductId` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity",
      "short" : "OtherHypersensitivityType",
      "definition" : "Mer detaljerad information om överkänsligheten. Kan användas för annan överkänslighet än läkemedelsöverkänslighet.",
      "comment" : "TKB-fält: `../../../otherHypersensitivity` (`OtherHypersensitivityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent",
      "short" : "hypersensitivityAgent",
      "definition" : "Text som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion.\n\nBör anges.",
      "comment" : "TKB-fält: `../../../../hypersensitivityAgent` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode",
      "path" : "getalertinformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode",
      "short" : "hypersensitivityAgentCode",
      "definition" : "Text som anger den kod som beskriver det agens som bedöms kunna orsaka en överkänslighetsreaktion. Exempelvis kan LMK-kod för överkänslighet födoämne eller CAS-kod för överkänslighet kemikalie användas. Kan användas för annan överkänslighet än läkemedelsöverkänslighet.",
      "comment" : "TKB-fält: `../../../../hypersensitivityAgentCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.seriousDisease",
      "path" : "getalertinformation.alertInformation.alertInformationBody.seriousDisease",
      "short" : "SeriousDiseaseType",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges.",
      "comment" : "TKB-fält: `../../seriousDisease` (`SeriousDiseaseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.seriousDisease.disease",
      "path" : "getalertinformation.alertInformation.alertInformationBody.seriousDisease.disease",
      "short" : "disease",
      "definition" : "Kod som beskriver en allvarlig sjukdom som hälso- och sjukvårdstagaren har och som en hälso- och sjukvårdspersonen vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna sjukdom skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren). Bör anges enligt ICD10/SNOMED, [R13].",
      "comment" : "TKB-fält: `../../../disease` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.treatment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.treatment",
      "short" : "TreatmentType",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)).",
      "comment" : "TKB-fält: `../../treatment` (`TreatmentType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.treatment.treatmentDescription",
      "path" : "getalertinformation.alertInformation.alertInformationBody.treatment.treatmentDescription",
      "short" : "treatmentDescription",
      "definition" : "Text som beskriver en allvarlig behandling som hälso- och sjukvårdstagaren genomgår och som en hälso- och sjukvårdspersonal vill göra andra uppmärksammade på (avsaknad av kunskap om att hälso- och sjukvårdstagaren har denna behandling skulle kunna innebära ett allvarligt hot för liv eller hälsa för hälso- och sjukvårdstagaren).",
      "comment" : "TKB-fält: `../../../treatmentDescription` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.treatment.treatmentCode",
      "path" : "getalertinformation.alertInformation.alertInformationBody.treatment.treatmentCode",
      "short" : "treatmentCode",
      "definition" : "En preciserad uppgift om behandlingen. Bör anges med KVÅ-kod (1.2.752.116.1.3.2.1.4)",
      "comment" : "TKB-fält: `../../../treatmentCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment",
      "short" : "pharmaceuticalTreatment",
      "definition" : "Kod och klartext som anger uppgift om den eller de läkemedel som används vid en uppmärksammad behandling.\n\nATC-kod (1.2.752.129.2.2.3.1.1), [R13].",
      "comment" : "TKB-fält: `../../../pharmaceuticalTreatment` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease",
      "path" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease",
      "short" : "CommunicableDiseaseType",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)).",
      "comment" : "TKB-fält: `../../communicableDisease` (`CommunicableDiseaseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode",
      "path" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode",
      "short" : "communicableDiseaseCode",
      "definition" : "Kod. Om code anges måste också codeSystem och displayName också anges.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease.routeOfTransmission",
      "path" : "getalertinformation.alertInformation.alertInformationBody.communicableDisease.routeOfTransmission",
      "short" : "routeOfTransmission",
      "definition" : "Kod som anger hur den uppmärksammade sjukdomen smittar. Obligatorisk uppgift om det styrs av författning. KV Smittväg.",
      "comment" : "TKB-fält: `../../../routeOfTransmission` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.restrictionOfCare",
      "path" : "getalertinformation.alertInformation.alertInformationBody.restrictionOfCare",
      "short" : "RestrictionOfCareType",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)). Denna klass skiljer sig sig något från motsvarigheten i Varning2-infospec.",
      "comment" : "TKB-fält: `../../restrictionOfCare` (`RestrictionOfCareType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment",
      "short" : "restrictionOfCareComment",
      "definition" : "Text som innehåller information om ett uppmärskammat förhållande som inte avser överkänslighet, annat medicinskt tillstånd, behandling eller arbetsmiljörisk.",
      "comment" : "TKB-fält: `../../../restrictionOfCareComment` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation",
      "path" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation",
      "short" : "UnstructuredAlertInformationType",
      "definition" : "En och endast en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare och unstructuredAlertInformation ska anges (den som motsvarar uppmärksamhetstyp (typeOfAlertInformation)).",
      "comment" : "TKB-fält: `../../unstructuredAlertInformation` (`UnstructuredAlertInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading",
      "path" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading",
      "short" : "unstructuredAlertInformationHeading",
      "definition" : "Text som innehåller en beskrivande rubrik för en tidigare utfärdad varning. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen.",
      "comment" : "TKB-fält: `../../../unstructuredAlertInformationHeading` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent",
      "path" : "getalertinformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent",
      "short" : "unstructuredAlertInformationContent",
      "definition" : "Text som beskriver vad varningen gäller, samt viss administrativ information. Ska anges om typ av uppmärksamhetssignal = historisk varning. Avser tidigare varningsinformation i systemet vilken inte har preciserats enligt NPÖ-strukturen.",
      "comment" : "TKB-fält: `../../../unstructuredAlertInformationContent` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation",
      "path" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation",
      "short" : "RelatedAlertInformationType",
      "definition" : "Information om samband uppmärksamhetssignal",
      "comment" : "TKB-fält: `../../relatedAlertInformation` (`RelatedAlertInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship",
      "path" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship",
      "short" : "typeOfAlertInformationRelationship",
      "definition" : "Text som anger vilken typ av samband som avses. KV Samband (1.2.752.129.2.2.2.4), [R13].",
      "comment" : "TKB-fält: `../../../typeOfAlertInformationRelationship` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.relationComment",
      "path" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.relationComment",
      "short" : "relationComment",
      "definition" : "Text som innehåller en kommentar till det aktuella sambandet",
      "comment" : "TKB-fält: `../../../relationComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.documentId",
      "path" : "getalertinformation.alertInformation.alertInformationBody.relatedAlertInformation.documentId",
      "short" : "documentId",
      "definition" : "Lokalt unik identitet för relaterad uppmärksamhetssignal",
      "comment" : "TKB-fält: `../../../documentId` (`string`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalertinformation.result",
      "path" : "getalertinformation.result",
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
      "id" : "getalertinformation.result.resultCode",
      "path" : "getalertinformation.result.resultCode",
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
      "id" : "getalertinformation.result.errorCode",
      "path" : "getalertinformation.result.errorCode",
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
      "id" : "getalertinformation.result.logId",
      "path" : "getalertinformation.result.logId",
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
      "id" : "getalertinformation.result.subCode",
      "path" : "getalertinformation.result.subCode",
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
      "id" : "getalertinformation.result.message",
      "path" : "getalertinformation.result.message",
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
