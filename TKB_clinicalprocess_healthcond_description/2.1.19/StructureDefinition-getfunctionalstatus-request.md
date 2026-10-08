# GetFunctionalStatus — Request - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFunctionalStatus — Request**

## Logical Model: GetFunctionalStatus — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus-request | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:GetFunctionalStatusRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i tjänstekontraktet GetFunctionalStatus version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getfunctionalstatus-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getfunctionalstatus-request.csv), [Excel](StructureDefinition-getfunctionalstatus-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getfunctionalstatus-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus-request",
  "version" : "2.0",
  "name" : "GetFunctionalStatusRequest",
  "title" : "GetFunctionalStatus — Request",
  "status" : "active",
  "date" : "2026-10-08T18:09:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i tjänstekontraktet GetFunctionalStatus version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getfunctionalstatus-request",
      "path" : "getfunctionalstatus-request",
      "short" : "GetFunctionalStatus — Request",
      "definition" : "Logisk modell för begäran i tjänstekontraktet GetFunctionalStatus version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18.",
      "constraint" : [{
        "key" : "getfunctionalstatus-request-carecontact-requires-sourcesystem",
        "severity" : "error",
        "human" : "sourceSystemHSAId ska anges om careContactId angivits (TKB, fältregler för begäran).",
        "expression" : "careContactId.exists() implies sourceSystemHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus-request"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.careUnitHSAId",
      "path" : "getfunctionalstatus-request.careUnitHSAId",
      "short" : "Filtrering på vårdenhet vilket motsvarar careUnitHSAId i healthcareProfessionalType",
      "definition" : "Filtrering på vårdenhet vilket motsvarar careUnitHSAId i healthcareProfessionalType. TKB-typ: HSAIdType. Kardinalitet: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.patientId",
      "path" : "getfunctionalstatus-request.patientId",
      "short" : "Id för patienten där fältet id sätts till patientens identifierare",
      "definition" : "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. / Fältet type sätts till OID för typ av identifierare. / 1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14]. / 2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14]. / 3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]. / OBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer. / En tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent. TKB-typ: PersonIdType. Kardinalitet: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.datePeriod",
      "path" : "getfunctionalstatus-request.datePeriod",
      "short" : "Begränsar sökningen till det angivna intervallet",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där documentTime i svaret ligger inom sökintervallets start- och slutdatumet. / Notera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum. TKB-typ: DatePeriodType. Kardinalitet: 0..1. Underelement i DatePeriodType: start (string, 1..1): Startdatum. Format ÅÅÅÅMMDD. | end (string, 1..1): Slutdatum. Format ÅÅÅÅMMDD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.datePeriod.start",
      "path" : "getfunctionalstatus-request.datePeriod.start",
      "min" : 1
    },
    {
      "id" : "getfunctionalstatus-request.datePeriod.end",
      "path" : "getfunctionalstatus-request.datePeriod.end",
      "min" : 1
    },
    {
      "id" : "getfunctionalstatus-request.sourceSystemHSAId",
      "path" : "getfunctionalstatus-request.sourceSystemHSAId",
      "short" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet",
      "definition" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. / Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header). / Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges. / Ska anges om careContactId angivits. / Ska anges vid begäran på reservnummer. / Om sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST / Om careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST. TKB-typ: HSAIdType. Kardinalitet: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus-request.careContactId",
      "path" : "getfunctionalstatus-request.careContactId",
      "short" : "Begränsar sökningen till de funktionsstatusobjekt som dokumenterades vid angiven hälso- och sjukvårdskontakt",
      "definition" : "Begränsar sökningen till de funktionsstatusobjekt som dokumenterades vid angiven hälso- och sjukvårdskontakt. TKB-typ: string. Kardinalitet: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
