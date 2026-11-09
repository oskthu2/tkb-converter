# GetObservations — Request - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetObservations — Request**

## Logical Model: GetObservations — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations-request | *Version*:1.2 |
| Active as of 2026-11-09 | *Computable Name*:GetObservationsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i tjänstekontraktet GetObservations 1.2 (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservations). Den enda sökparametern som explicit behöver anges är patientId (övrig regel 1.1). En begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-basic|current/StructureDefinition/StructureDefinition-getobservations-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getobservations-request.csv), [Excel](StructureDefinition-getobservations-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getobservations-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations-request",
  "version" : "1.2",
  "name" : "GetObservationsRequest",
  "title" : "GetObservations — Request",
  "status" : "active",
  "date" : "2026-11-09T03:20:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i tjänstekontraktet GetObservations 1.2\n(RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservations).\nDen enda sökparametern som explicit behöver anges är patientId (övrig regel 1.1).\nEn begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getobservations-request",
      "path" : "getobservations-request",
      "short" : "GetObservations — Request",
      "definition" : "Logisk modell för begäran i tjänstekontraktet GetObservations 1.2\n(RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservations).\nDen enda sökparametern som explicit behöver anges är patientId (övrig regel 1.1).\nEn begäran med patientId men utan någon av de andra sökparametrarna får nekas av producent."
    },
    {
      "id" : "getobservations-request.patientId",
      "path" : "getobservations-request.patientId",
      "short" : "patientId",
      "definition" : "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.\n\nRegel 1.1",
      "comment" : "TKB-fält: `patientId` (`IIType`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations-request.time",
      "path" : "getobservations-request.time",
      "short" : "time",
      "definition" : "Begränsar sökningen till det angivna intervallet. Om tidsattributet Observation.Time i svaret är en tidpunkt innebär begränsningen att endast poster returneras där Observation.Time i svaret ligger inom sökintervallets start- och sluttidpunkt.\n\nOm tidsattributet Observation.Time i svaret är ett intervall innebär begränsningen att endast poster returneras där tidsintervallet som anges i attributet Observation.Time i svaret, överlappar med det angivna sökintervallet, dvs.\n\ndet bildade intervallets starttidpunkt ligger inom sökintervallets start- och sluttidpunkt\n\ndet bildade intervallets sluttidpunkt ligger inom sökintervallets start- och sluttidpunkt\n\ndet bildade intervallets starttidpunkt ligger före sökintervallets starttidpunkt och sluttidpunkt ligger efter sökintervallets sluttidpunkt",
      "comment" : "TKB-fält: `time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType"
      }]
    },
    {
      "id" : "getobservations-request.observationType",
      "path" : "getobservations-request.observationType",
      "short" : "CVType",
      "definition" : "Begränsning av sökning avseende observationen till en viss typ av värde som man vill titta närmare på, t.ex. kliniskt fynd eller diagnoser.",
      "comment" : "TKB-fält: `observationType` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations-request.observationType.code",
      "path" : "getobservations-request.observationType.code",
      "short" : "code",
      "definition" : "Kod för observationstyp",
      "comment" : "TKB-fält: `observationType.code` (`String`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.observationType.codeSystem",
      "path" : "getobservations-request.observationType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Kodsystem för angiven kod för observationstyp.",
      "comment" : "TKB-fält: `observationType.codeSystem` (`String`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.observationType.codeSystemName",
      "path" : "getobservations-request.observationType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "Ska ignoreras i begäran och ej skickas.",
      "comment" : "TKB-fält: `observationType.codeSystemName` (`String`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.observationType.codeSystemVersion",
      "path" : "getobservations-request.observationType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "Ska ignoreras i begäran och ej skickas.",
      "comment" : "TKB-fält: `observationType.codeSystemVersion` (`String`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.observationType.displayName",
      "path" : "getobservations-request.observationType.displayName",
      "short" : "displayName",
      "definition" : "Ska ignoreras i begäran och ej skickas.",
      "comment" : "TKB-fält: `observationType.displayName` (`String`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.observationId",
      "path" : "getobservations-request.observationId",
      "short" : "observationId",
      "definition" : "Ett unikt värde för själva observationen som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar observation/id i svaret.",
      "comment" : "TKB-fält: `observationId` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations-request.careGiverId",
      "path" : "getobservations-request.careGiverId",
      "short" : "careGiverId",
      "definition" : "Används när man vill söka hos en specifik vårdgivare.",
      "comment" : "TKB-fält: `careGiverId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations-request.careUnitId",
      "path" : "getobservations-request.careUnitId",
      "short" : "careUnitId",
      "definition" : "Begränsning av sökning mha HSAid för (PDL) vårdenhet som har ansvar för dokumentationen av obdervationen/observationerna.",
      "comment" : "TKB-fält: `careUnitId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations-request.interactionAgreementId",
      "path" : "getobservations-request.interactionAgreementId",
      "short" : "interactionAgreementId",
      "definition" : "Detta attribut används inte. Ange UUID\n\n2866a7c4-9c60-433f-9035-a4d779ffe7a1",
      "comment" : "TKB-fält: `interactionAgreementId` (`UUIDType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/UUIDType"]
      }]
    },
    {
      "id" : "getobservations-request.sourceSystemHSAId",
      "path" : "getobservations-request.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.  Motsvarar observationGroup/sourceSystem i svaret.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getobservations-request.relation",
      "path" : "getobservations-request.relation",
      "short" : "RelationFilterType",
      "definition" : "Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte observationer på deras relationer.",
      "comment" : "TKB-fält: `relation` (`RelationFilterType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations-request.relation.id",
      "path" : "getobservations-request.relation.id",
      "short" : "id",
      "definition" : "Filtrera poster på den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla observationer som har en relation till en viss aktivitet.",
      "comment" : "TKB-fält: `relation.id` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations-request.relation.typeCode",
      "path" : "getobservations-request.relation.typeCode",
      "short" : "CVType",
      "definition" : "Filtrera på sambandstyp",
      "comment" : "TKB-fält: `relation.typeCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations-request.relation.typeCode.code",
      "path" : "getobservations-request.relation.typeCode.code",
      "short" : "code",
      "definition" : "Kod för sambandstyp",
      "comment" : "TKB-fält: `relation.typeCode.code` (`String`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.relation.typeCode.codeSystem",
      "path" : "getobservations-request.relation.typeCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "Kodsystem för sambandstyp",
      "comment" : "TKB-fält: `relation.typeCode.codeSystem` (`String`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.relation.typeCode.codeSystemName",
      "path" : "getobservations-request.relation.typeCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "Ska ignoreras i begäran och ej skickas.",
      "comment" : "TKB-fält: `relation.typeCode.codeSystemName` (`String`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.relation.typeCode.codeSystemVersion",
      "path" : "getobservations-request.relation.typeCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "Versionsnummer för använt kodsystem.",
      "comment" : "TKB-fält: `relation.typeCode.codeSystemVersion` (`String`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.relation.typeCode.displayName",
      "path" : "getobservations-request.relation.typeCode.displayName",
      "short" : "displayName",
      "definition" : "Ska ignoreras i begäran och ej skickas.",
      "comment" : "TKB-fält: `relation.typeCode.displayname` (`String`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations-request.relation.referredInformationType",
      "path" : "getobservations-request.relation.referredInformationType",
      "short" : "referredInformationType",
      "definition" : "Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. I denna version av tjänstekontraktet är följande typer möjliga:\n\nchb-o  (observation)\n\ncaa-a (aktivitet)",
      "comment" : "TKB-fält: `relation. referredInformationType` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
