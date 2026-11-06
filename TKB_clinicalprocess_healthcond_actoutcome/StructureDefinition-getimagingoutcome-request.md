# GetImagingOutcome — Request - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetImagingOutcome — Request**

## Logical Model: GetImagingOutcome — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getimagingoutcome-request | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:GetImagingOutcomeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetImagingOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getimagingoutcome-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getimagingoutcome-request.csv), [Excel](StructureDefinition-getimagingoutcome-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getimagingoutcome-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getimagingoutcome-request",
  "version" : "1.0",
  "name" : "GetImagingOutcomeRequest",
  "title" : "GetImagingOutcome — Request",
  "status" : "active",
  "date" : "2026-11-06T21:02:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetImagingOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getimagingoutcome-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getimagingoutcome-request",
      "path" : "getimagingoutcome-request",
      "short" : "GetImagingOutcome — Request",
      "definition" : "Logisk modell för requestparametrar i GetImagingOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1)."
    },
    {
      "id" : "getimagingoutcome-request.careUnitHSAId",
      "path" : "getimagingoutcome-request.careUnitHSAId",
      "short" : "HSA-id för PDL-enhet (filter)",
      "definition" : "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType.",
      "comment" : "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*).\n\n**Modellanteckning:** Filtrering på PDL-enhet. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getimagingoutcome-request.patientId",
      "path" : "getimagingoutcome-request.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Id för patienten.\n\nid sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n\nType sätts till OID för typ av identifierare.\n\nFör personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).\n\nFör samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).\n\nFör reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** PersonIdType — id och type-OID. Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getimagingoutcome-request.datePeriod",
      "path" : "getimagingoutcome-request.datePeriod",
      "short" : "Datumperiod för sökning",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, resultTime samt remissens authorTime i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs.\n\ndet bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum,\n\ndet bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum,\n\ndet bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum.\n\nNotera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.",
      "comment" : "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getimagingoutcome-request.sourceSystemHSAId",
      "path" : "getimagingoutcome-request.sourceSystemHSAId",
      "short" : "HSA-id för källsystem (filter)",
      "definition" : "Begränsar sökningen till dokument som är skapade i angivet system. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nSka anges om careContactId angivits.\n\nSka anges vid begäran på reservnummer.\n\nOm sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST\n\nOm careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getimagingoutcome-request.careContactId",
      "path" : "getimagingoutcome-request.careContactId",
      "short" : "Vårdkontaktid (filter)",
      "definition" : "Begränsar sökningen till den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.",
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
