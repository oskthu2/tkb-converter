# GetLaboratoryOrderOutcome — Request - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLaboratoryOrderOutcome — Request**

## Logical Model: GetLaboratoryOrderOutcome — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome-request | *Version*:4.2 |
| Active as of 2026-11-09 | *Computable Name*:GetLaboratoryOrderOutcomeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetLaboratoryOrderOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4). Representerar de sökparametrar som tjänstekonsumenten skickar in. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getlaboratoryorderoutcome-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlaboratoryorderoutcome-request.csv), [Excel](StructureDefinition-getlaboratoryorderoutcome-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlaboratoryorderoutcome-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome-request",
  "version" : "4.2",
  "name" : "GetLaboratoryOrderOutcomeRequest",
  "title" : "GetLaboratoryOrderOutcome — Request",
  "status" : "active",
  "date" : "2026-11-09T03:19:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetLaboratoryOrderOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).\nRepresenterar de sökparametrar som tjänstekonsumenten skickar in.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlaboratoryorderoutcome-request",
      "path" : "getlaboratoryorderoutcome-request",
      "short" : "GetLaboratoryOrderOutcome — Request",
      "definition" : "Logisk modell för requestparametrar i GetLaboratoryOrderOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).\nRepresenterar de sökparametrar som tjänstekonsumenten skickar in."
    },
    {
      "id" : "getlaboratoryorderoutcome-request.careUnitHSAId",
      "path" : "getlaboratoryorderoutcome-request.careUnitHSAId",
      "short" : "careUnitHSAId",
      "definition" : "Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret.\n\nroot sätts till OID (1.2.752.129.2.1.4.1) för HSA\n\nextension sätts till HSA-id på vårdenhet",
      "comment" : "TKB-fält: `//*:careUnitHSAId` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.careGiverHSAId",
      "path" : "getlaboratoryorderoutcome-request.careGiverHSAId",
      "short" : "careGiverHSAId",
      "definition" : "Filtrering på vårdgivare vilket motsvarar accountableCareGiver i svaret.\n\nroot sätts till OID (1.2.752.129.2.1.4.1) för HSA\n\nextension sätts till HSA-id på vårdgivare",
      "comment" : "TKB-fält: `//*:careGiverHSAId` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.patientId",
      "path" : "getlaboratoryorderoutcome-request.patientId",
      "short" : "patientId",
      "definition" : "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.\n\nroot sätts till OID för typ av personidentifierare.\n\nFör personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\nFör samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\nFör andra typer av personidentifierare sätts root till aktuell OID.\n\nextension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n\nOBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet.\n\nEn tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent.",
      "comment" : "TKB-fält: `//*:patientId` (`IIType`, kardinalitet 1..1).\n\n**Regel 1.1:** När patientId.root är satt till OID för personnummer eller samordningsnummer så ska patientId.extension vara 12 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.datePeriod",
      "path" : "getlaboratoryorderoutcome-request.datePeriod",
      "short" : "datePeriod",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där provtagningstidpunkten (`//*:body/*:groupOfAnalyses/*:analysis/*:specimen/*:timestamp`) i svaret ligger inom sökintervallets start- och slutdatumet.\n\nNotera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse med tidpunkter ska hela det dygn som anges i slutdatum betraktas som en del av sökintervallet.\n\nOm svaret omfattar analyser på flera prover tagna vid olika tidpunkter räcker det om någon av dessa ligger inom sökintervallet.",
      "comment" : "TKB-fält: `//*:datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.sourceSystemHSAId",
      "path" : "getlaboratoryorderoutcome-request.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "Begränsar sökningen till anteckningar som är skapade i angivet system.\n\nroot sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)\n\nextension sätts till källsystemets HSA-id.",
      "comment" : "TKB-fält: `//*:sourceSystemHSAId` (`IIType`, kardinalitet 0..1).\n\n**Regel 1.2:** Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nSka anges vid begäran på reservnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.specimenIdentifier",
      "path" : "getlaboratoryorderoutcome-request.specimenIdentifier",
      "short" : "specimenIdentifier",
      "definition" : "Begränsar sökningen till angivna prov-identiteter.",
      "comment" : "TKB-fält: `//*:specimenIdentifier` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.referralIdentifier",
      "path" : "getlaboratoryorderoutcome-request.referralIdentifier",
      "short" : "referralIdentifier",
      "definition" : "Begränsar sökningen till angivna remiss-identiteter",
      "comment" : "TKB-fält: `//*:referralIdentifier` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/IIType"
      }]
    }]
  }
}

```
