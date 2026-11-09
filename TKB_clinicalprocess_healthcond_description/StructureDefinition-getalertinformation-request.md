# GetAlertInformation — Request - clinicalprocess: healthcond: description v3.0.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAlertInformation — Request**

## Logical Model: GetAlertInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAlertInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetAlertInformation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2). Söker uppmärksamhetsinformation för en patient med valfri filtrering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getalertinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getalertinformation-request.csv), [Excel](StructureDefinition-getalertinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getalertinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation-request",
  "version" : "2.0",
  "name" : "GetAlertInformationRequest",
  "title" : "GetAlertInformation — Request",
  "status" : "active",
  "date" : "2026-11-09T03:22:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetAlertInformation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2).\nSöker uppmärksamhetsinformation för en patient med valfri filtrering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getalertinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getalertinformation-request",
      "path" : "getalertinformation-request",
      "short" : "GetAlertInformation — Request",
      "definition" : "Logisk modell för requestparametrar i GetAlertInformation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2).\nSöker uppmärksamhetsinformation för en patient med valfri filtrering."
    },
    {
      "id" : "getalertinformation-request.careUnitHSAId",
      "path" : "getalertinformation-request.careUnitHSAId",
      "short" : "careUnitHSAId",
      "definition" : "Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType.",
      "comment" : "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getalertinformation-request.patientId",
      "path" : "getalertinformation-request.patientId",
      "short" : "patientId",
      "definition" : "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n\nFältet type sätts till OID för typ av identifierare.\n\n1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14].\n\n2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14].\n\n3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14].\n\nOBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer.\n\nEn tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent.",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getalertinformation-request.timePeriod",
      "path" : "getalertinformation-request.timePeriod",
      "short" : "timePeriod",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som startar vid validityTimePeriod.start och slutar vid obsoleteTime eller validityTimePeriod.end om någon av dessa är satta, annars tills vidare, helt eller delvis överlappar med det angivna sökintervallet, dvs.\n\ndet bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum\n\ndet bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum\n\ndet bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum\n\nNotera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.",
      "comment" : "TKB-fält: `timePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getalertinformation-request.sourceSystemHSAId",
      "path" : "getalertinformation-request.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "Begränsar sökningen till uppmärksamhetsinformation som tillgängliggörs av angivet källsystem.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nSka anges om careContactId angivits.\n\nSka anges vid begäran på reservnummer.\n\nOm sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST\n\nOm careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getalertinformation-request.careContactId",
      "path" : "getalertinformation-request.careContactId",
      "short" : "careContactId",
      "definition" : "Begränsar sökningen till den uppmärksamhetsinformation som dokumenterades vid hälso- och sjukvårds kontakt.",
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
