# GetReferralOutcome — Begäran - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetReferralOutcome — Begäran**

## Logical Model: GetReferralOutcome — Begäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome-request | *Version*:3.1 |
| Active as of 2026-10-08 | *Computable Name*:GetReferralOutcomeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetReferralOutcome 3.1 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3). Representerar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.1. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getreferraloutcome-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getreferraloutcome-request.csv), [Excel](StructureDefinition-getreferraloutcome-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getreferraloutcome-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome-request",
  "version" : "3.1",
  "name" : "GetReferralOutcomeRequest",
  "title" : "GetReferralOutcome — Begäran",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetReferralOutcome 3.1\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3).\nRepresenterar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.1.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getreferraloutcome-request",
      "path" : "getreferraloutcome-request",
      "short" : "GetReferralOutcome — Begäran",
      "definition" : "Logisk modell för tjänstekontraktet GetReferralOutcome 3.1\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3).\nRepresenterar begärans (request) parametrar enligt fältreglerna i TKB 3.1.10, avsnitt 7.1.",
      "constraint" : [{
        "key" : "getreferraloutcome-request-sourcesystem-if-carecontact",
        "severity" : "error",
        "human" : "sourceSystemHSAId ska anges om careContactId angivits.",
        "expression" : "careContactId.exists() implies sourceSystemHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome-request"
      }]
    },
    {
      "id" : "getreferraloutcome-request.careUnitHSAid",
      "path" : "getreferraloutcome-request.careUnitHSAid",
      "short" : "Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfession",
      "definition" : "Filtrering på Vårdenhet vilket motsvarar healthcareProfessionalCareUnitHSAId i accountableHealthcareProfessional.\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome-request.patientId",
      "path" : "getreferraloutcome-request.patientId",
      "short" : "Id för patienten där fältet id sätts till patientens identifierare",
      "definition" : "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. / 1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3). / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent.\nRIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome-request.datePeriod",
      "path" : "getreferraloutcome-request.datePeriod",
      "short" : "Begränsar sökningen till det angivna intervallet",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime och signatureTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs. / det bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum / det bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. / Om signatureTime inte är angiven ersätts den med dagens datum.\nRIV-TA-typ: DatePeriodType. Kardinalitet i TKB: 0..1.\nDelelement enligt TKB:\n- start (string, 1..1): Startdatum. Format ÅÅÅÅMMDD.\n- end (string, 1..1): Slutdatum. Format ÅÅÅÅMMDD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getreferraloutcome-request.sourceSystemHSAId",
      "path" : "getreferraloutcome-request.sourceSystemHSAId",
      "short" : "Begränsar sökningen till remissvar som är skapat i det angivna källsystemet",
      "definition" : "Begränsar sökningen till remissvar som är skapat i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST.\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome-request.careContactId",
      "path" : "getreferraloutcome-request.careContactId",
      "short" : "Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumen",
      "definition" : "Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet\nRIV-TA-typ: string. Kardinalitet i TKB: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
