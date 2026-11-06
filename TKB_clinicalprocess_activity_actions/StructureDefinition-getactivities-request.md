# GetActivities — Request - clinicalprocess: activity: actions v1.3.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetActivities — Request**

## Logical Model: GetActivities — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities-request | *Version*:1.3 |
| Active as of 2026-11-06 | *Computable Name*:GetActivitiesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetActivities (RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1). Den enda obligatoriska sökparametern är patientId. Övriga parametrar är valfria filter (se Regel 1.1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activity-actions|current/StructureDefinition/StructureDefinition-getactivities-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getactivities-request.csv), [Excel](StructureDefinition-getactivities-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getactivities-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities-request",
  "version" : "1.3",
  "name" : "GetActivitiesRequest",
  "title" : "GetActivities — Request",
  "status" : "active",
  "date" : "2026-11-06T20:57:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetActivities\n(RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1).\nDen enda obligatoriska sökparametern är patientId.\nÖvriga parametrar är valfria filter (se Regel 1.1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getactivities-request",
      "path" : "getactivities-request",
      "short" : "GetActivities — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetActivities\n(RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1).\nDen enda obligatoriska sökparametern är patientId.\nÖvriga parametrar är valfria filter (se Regel 1.1)."
    },
    {
      "id" : "getactivities-request.patientId",
      "path" : "getactivities-request.patientId",
      "short" : "Personidentifierare för patient",
      "definition" : "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.\n\nRegel 1.1",
      "comment" : "TKB-fält: `patientId` (`IIType`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getactivities-request.time",
      "path" : "getactivities-request.time",
      "short" : "Sökintervall (tidsperiod)",
      "definition" : "Begränsar sökningen till det angivna intervallet. Om tidsattributet Activity.Time i svaret är en tidpunkt innebär begränsningen att endast poster returneras där Activity.Time i svaret ligger inom sökintervallets start- och sluttidpunkt.\n\nOm tidsattributet Activity.Time i svaret är ett intervall innebär begränsningen att endast poster returneras där tidsintervallet som anges i attributet Activity.Time i svaret, överlappar med det angivna sökintervallet, dvs.\n\ndet bildade intervallets starttidpunkt ligger inom sökintervallets start- och sluttidpunkt\n\ndet bildade intervallets sluttidpunkt ligger inom sökintervallets start- och sluttidpunkt\n\ndet bildade intervallets starttidpunkt ligger före sökintervallets starttidpunkt och sluttidpunkt ligger efter sökintervallets sluttidpunkt\n\nOm sökningen begränsas med detta attribut ska poster som saknar Activity.Time inte returneras. Om sökningen inte begränsas med detta attribut returneras även poster som saknar Activity.Time.",
      "comment" : "TKB-fält: `time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getactivities-request.activityCode",
      "path" : "getactivities-request.activityCode",
      "short" : "Filter på typ av aktivitet",
      "definition" : "Begränsar sökningen till en viss typ av aktivitet. Motsvarar activity.code i svaret.",
      "comment" : "TKB-fält: `activityCode` (`CVType`, kardinalitet 0..*).\n\n**Modellanteckning:** Begränsar sökningen till en viss typ av aktivitet (CVType).\nMotsvarar activity.code i svaret.\ncode och codeSystem är obligatoriska; displayName, codeSystemName, codeSystemVersion ska ignoreras.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getactivities-request.activityId",
      "path" : "getactivities-request.activityId",
      "short" : "Filter på aktivitetsidentifierare",
      "definition" : "Ett unikt värde för själva aktiviteten som också refererar till vilket källsystem informationen kommer ifrån. Motsvarar activity/id i svaret.",
      "comment" : "TKB-fält: `activityId` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getactivities-request.sourceSystemId",
      "path" : "getactivities-request.sourceSystemId",
      "short" : "Filter på källsystem",
      "definition" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem. Motsvarar activityGroup/sourceSystem i svaret.",
      "comment" : "TKB-fält: `sourceSystemId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getactivities-request.careGiverId",
      "path" : "getactivities-request.careGiverId",
      "short" : "Filter på vårdgivare",
      "definition" : "Begränsar sökningen till aktivitet från en specifik vårdgivare. Motsvarar activityGroup/performerRole/careUnit/ careGiver i svaret.",
      "comment" : "TKB-fält: `careGiverId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getactivities-request.careUnitId",
      "path" : "getactivities-request.careUnitId",
      "short" : "Filter på vårdenhet",
      "definition" : "Begränsar sökningen till en vårdenhet (se [R15] förytterligare information om begreppet vårdenhet) som har ansvar för dokumentationen av en aktivitet. Motsvarar activityGroup/performerRole/careUnit/ i svaret.",
      "comment" : "TKB-fält: `careUnitId` (`IIType`, kardinalitet 0..1).\n\n**Modellanteckning:** Begränsar sökningen till en vårdenhet (IIType).\nroot = OID för HSA-id: 1.2.752.129.2.1.4.1. extension = HSA-id för PDL-vårdenheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getactivities-request.interactionAgreementId",
      "path" : "getactivities-request.interactionAgreementId",
      "short" : "Interaktionsöverenskommelse-id",
      "definition" : "Detta attribut används inte. Ange alltid UUID\n\n2866a7c4-9c60-433f-9035-a4d779ffe7a1",
      "comment" : "TKB-fält: `interactionAgreementId` (`UUIDType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities-request.relation",
      "path" : "getactivities-request.relation",
      "short" : "Filter på relationer",
      "definition" : "Begränsar sökningen till aktiviteter med avseende på hur de är relaterade till andra uppgifter i journalsystem. Endast de poster med relationer som matchar villkoren i denna lista skall returneras. Om listan är tom filtreras inte aktiviteter på deras relationer. Motsvarar activityGroup/activity/relation i svaret.\n\nMinst en av relation.typeCode och relation.id skall vara angiven.",
      "comment" : "TKB-fält: `relation` (`RelationFilterType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getactivities-request-relation-type-or-id",
        "severity" : "error",
        "human" : "Minst en av typeCode och relationId ska anges i ett relationsfilter (RelationFilterType).",
        "expression" : "typeCode.exists() or relationId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities-request"
      }]
    },
    {
      "id" : "getactivities-request.relation.typeCode",
      "path" : "getactivities-request.relation.typeCode",
      "short" : "Filter på relations-/sambandstyp",
      "definition" : "Filtrera på relations-/sambandstyp",
      "comment" : "TKB-fält: `relation.typeCode` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** Filtrera på relations-/sambandstyp (CVType).\ncode och codeSystem är valfria; displayName, codeSystemName, codeSystemVersion ska ignoreras.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getactivities-request.relation.relationId",
      "path" : "getactivities-request.relation.relationId",
      "short" : "Filter på identitet i relation",
      "definition" : "Begränsar sökningen till aktiviteter med den identitet som anges i sambandet/relationen. Detta ger exempelvis möjlighet att söka ut alla aktiviteter som har en relation till en viss observation.",
      "comment" : "TKB-fält: `relation.id` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getactivities-request.relation.referredInformationType",
      "path" : "getactivities-request.relation.referredInformationType",
      "short" : "Typ av refererad information",
      "definition" : "Den typ av uppgift i patientjournal som sambandet pekar ut. Detta är en kod från Categorization i engagemangsindexposten. I denna version av tjänstekontraktet är följande typer möjliga:\n\nchb-o  (observation)\n\ncaa-ga (aktivitet)",
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
