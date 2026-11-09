# GetMaternityMedicalHistory — Begäran - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMaternityMedicalHistory — Begäran**

## Logical Model: GetMaternityMedicalHistory — Begäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getmaternitymedicalhistory-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetMaternityMedicalHistoryRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2). Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.2. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getmaternitymedicalhistory-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmaternitymedicalhistory-request.csv), [Excel](StructureDefinition-getmaternitymedicalhistory-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmaternitymedicalhistory-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getmaternitymedicalhistory-request",
  "version" : "2.0",
  "name" : "GetMaternityMedicalHistoryRequest",
  "title" : "GetMaternityMedicalHistory — Begäran",
  "status" : "active",
  "date" : "2026-11-09T03:20:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2).\nRepresenterar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.2.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getmaternitymedicalhistory-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmaternitymedicalhistory-request",
      "path" : "getmaternitymedicalhistory-request",
      "short" : "GetMaternityMedicalHistory — Begäran",
      "definition" : "Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2).\nRepresenterar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.2.",
      "constraint" : [{
        "key" : "getmaternitymedicalhistory-request-sourcesystem-if-carecontact",
        "severity" : "error",
        "human" : "sourceSystemHSAId ska anges om careContactId angivits.",
        "expression" : "careContactId.exists() implies sourceSystemHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getmaternitymedicalhistory-request"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory-request.careUnitHSAid",
      "path" : "getmaternitymedicalhistory-request.careUnitHSAid",
      "short" : "careUnitHSAid",
      "definition" : "Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional.",
      "comment" : "TKB-fält: `careUnitHSAid` (`HSAIdType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getmaternitymedicalhistory-request.patientId",
      "path" : "getmaternitymedicalhistory-request.patientId",
      "short" : "patientId",
      "definition" : "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n\nFältet type sätts till OID för typ av identifierare.\n\n1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\n2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\n3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3).\n\nOBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer.\n\nEn tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent.",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory-request.timePeriod",
      "path" : "getmaternitymedicalhistory-request.timePeriod",
      "short" : "timePeriod",
      "definition" : "timePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory-request.sourceSystemHSAId",
      "path" : "getmaternitymedicalhistory-request.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "Begränsar sökningen till mödravårdsjournal som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nSka anges om careContactId angivits.\n\nSka anges vid begäran på reservnummer.\n\nOm sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST\n\nOm careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getmaternitymedicalhistory-request.careContactId",
      "path" : "getmaternitymedicalhistory-request.careContactId",
      "short" : "careContactId",
      "definition" : "Begränsar sökningen till hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet",
      "comment" : "TKB-fält: `careContactId` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
