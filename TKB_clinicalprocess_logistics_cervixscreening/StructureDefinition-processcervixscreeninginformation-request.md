# ProcessCervixScreeningInformation — Request - clinicalprocess: logistics: cervixscreening v1.0.0-rc4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCervixScreeningInformation — Request**

## Logical Model: ProcessCervixScreeningInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/processcervixscreeninginformation-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:ProcessCervixScreeningInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ProcessCervixScreeningInformation (urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-logistics-cervixscreening|current/StructureDefinition/StructureDefinition-processcervixscreeninginformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processcervixscreeninginformation-request.csv), [Excel](StructureDefinition-processcervixscreeninginformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processcervixscreeninginformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/processcervixscreeninginformation-request",
  "version" : "1.0",
  "name" : "ProcessCervixScreeningInformationRequest",
  "title" : "ProcessCervixScreeningInformation — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:23:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i ProcessCervixScreeningInformation\n(urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/processcervixscreeninginformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processcervixscreeninginformation-request",
      "path" : "processcervixscreeninginformation-request",
      "short" : "ProcessCervixScreeningInformation — Request",
      "definition" : "Logisk modell för begäran i ProcessCervixScreeningInformation\n(urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation",
      "short" : "CervixScreeningInformationType",
      "definition" : "Kallelsegrundande information för cervixscreening.",
      "comment" : "TKB-fält: `CervixScreeningInformation` (`CervixScreeningInformationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare",
      "short" : "PersonType",
      "definition" : "Folkbokförd person med svenskt personnummer\n\nPersonnummer skall anges på formatet ÅÅÅÅMMDDNNNN.",
      "comment" : "TKB-fält: `../subjectOfCare` (`PersonType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare.personId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare.personId",
      "short" : "personId",
      "definition" : "Personnummer:\n\nroot:  1.2.752.129.2.1.3.1\n\nextension: `<personnummer>`\n\nEndast svenskt personnummer är tillåtet",
      "comment" : "TKB-fält: `../../personId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion",
      "short" : "RegionType",
      "definition" : "Region som gör utlämnandet.",
      "comment" : "TKB-fält: `../sendingRegion` (`RegionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region",
      "short" : "OrganisationType",
      "definition" : "Region.",
      "comment" : "TKB-fält: `../../region` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.name",
      "short" : "name",
      "definition" : "Regionens namn i klartext.",
      "comment" : "TKB-fält: `../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver",
      "short" : "OrganisationType",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../careGiver` (`OrganisationType`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.id",
      "short" : "id",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.name",
      "short" : "name",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../../name` (`String`, kardinalitet 0..0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit",
      "short" : "OrganisationType",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../careUnit` (`OrganisationType`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.id",
      "short" : "id",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.name",
      "short" : "name",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../../name` (`String`, kardinalitet 0..0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion",
      "short" : "ExclusionType",
      "definition" : "Information om exkludering från kallelse.",
      "comment" : "TKB-fält: `../exclusion` (`ExclusionType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason",
      "short" : "reason",
      "definition" : "Orsak till att kvinnan ska exkluderas från kallelser.\n\nUrval ur SNOMED CT:\n\ncode: [31021000119100|116140006|702371008]\n\ncodeSystem: 1.2.752.116.2.1.1\n\ncodeSystemName: Används ej\n\ncodeSystemVersion: Används ej\n\ndisplayName: Valfritt (kan anges)\n\noriginalText: Används ej\n\nUrvalet av koder kan komma att förändras vid förändringar i vårdprogrammet.",
      "comment" : "TKB-fält: `../../reason` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.registeredAt",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.registeredAt",
      "short" : "registeredAt",
      "definition" : "Datum då det ursprungligen registrerades att kvinnan ska exkluderas från kallelse.\n\nDatum anges på format ”ÅÅÅÅMMDD”",
      "comment" : "TKB-fält: `../../registeredAt` (`DateType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion",
      "short" : "RegionType",
      "definition" : "Organisation varifrån information om exkludering ursprungligen härstammar.",
      "comment" : "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region",
      "short" : "OrganisationType",
      "definition" : "Region.",
      "comment" : "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.name",
      "short" : "name",
      "definition" : "Regionens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver",
      "short" : "OrganisationType",
      "definition" : "Vårdgivare.",
      "comment" : "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.name",
      "short" : "name",
      "definition" : "Vårdgivarens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit",
      "short" : "OrganisationType",
      "definition" : "Vårdenhet.",
      "comment" : "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.name",
      "short" : "name",
      "definition" : "Vårdenhetens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups",
      "short" : "FollowUpGroupType",
      "definition" : "Information om uppföljningsgrupp (kontrollfil) för kvinna.",
      "comment" : "TKB-fält: `../followUpGroups` (`FollowUpGroupType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.type",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.type",
      "short" : "type",
      "definition" : "Typ av uppföljningsgrupp (kontrollfil).\n\nUrval ur SNOMED CT:\n\ncode: [59461000052109| 59291000052102|59321000052109|59301000052103]\n\ncodeSystem: 1.2.752.116.2.1.1\n\ncodeSystemName: Används ej\n\ncodeSystemVersion: Används ej\n\ndisplayName: Valfritt (kan anges)\n\noriginalText: Används ej\n\nUrvalet av koder kan komma att förändras vid förändringar i vårdprogrammet.",
      "comment" : "TKB-fält: `../../type` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.inclusionDate",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.inclusionDate",
      "short" : "inclusionDate",
      "definition" : "Datum då kvinna inkluderades i uppföljningsgrupp (kontrollfil).\n\nDatum anges på format ”ÅÅÅÅMMDD”",
      "comment" : "TKB-fält: `../../inclusionDate` (`DateType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion",
      "short" : "RegionType",
      "definition" : "Organisation varifrån information om tillhörighet till uppföljningsgrupp (kontrollfil) ursprungligen härstammar.",
      "comment" : "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region",
      "short" : "OrganisationType",
      "definition" : "Region.",
      "comment" : "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.name",
      "short" : "name",
      "definition" : "Regionens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver",
      "short" : "OrganisationType",
      "definition" : "Vårdgivare.",
      "comment" : "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.name",
      "short" : "name",
      "definition" : "Vårdgivarens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit",
      "short" : "OrganisationType",
      "definition" : "Vårdenhet.",
      "comment" : "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.name",
      "short" : "name",
      "definition" : "Vårdenhetens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.plannedInvitation",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.plannedInvitation",
      "short" : "PlannedInvitationType",
      "definition" : "Förmedlar det individuella kallelsedatum som frångår vårdprogrammets ordinarie kallelseintervall och har satts för en enskild kvinna",
      "comment" : "TKB-fält: `../plannedInvitation` (`PlannedInvitationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.plannedInvitation.date",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.plannedInvitation.date",
      "short" : "date",
      "definition" : "Planerat individuellt kallelsedatum",
      "comment" : "TKB-fält: `../../date` (`DateType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.plannedInvitation.reason",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.plannedInvitation.reason",
      "short" : "reason",
      "definition" : "Beskrivning av orsaken till att kvinnan har ett individuellt kallelsedatum istället för vårdprogrammets ordinarie kallelse-intervall.",
      "comment" : "TKB-fält: `../../reason` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen",
      "short" : "SpecimenType",
      "definition" : "Gynekologiska cellprovtagning som ledde till ett bedömbart prov.",
      "comment" : "TKB-fält: `../specimen` (`SpecimenType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.specimenDate",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.specimenDate",
      "short" : "specimenDate",
      "definition" : "Tidpunkt för senaste provtagning som ledde till ett bedömbart prov.",
      "comment" : "TKB-fält: `../../specimenDate` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion",
      "short" : "RegionType",
      "definition" : "Organisation varifrån information om provtagning ursprungligen härstammar.",
      "comment" : "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region",
      "short" : "OrganisationType",
      "definition" : "Region.",
      "comment" : "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.name",
      "short" : "name",
      "definition" : "Regionens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver",
      "short" : "OrganisationType",
      "definition" : "Vårdgivare.",
      "comment" : "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.name",
      "short" : "name",
      "definition" : "Vårdgivarens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit",
      "short" : "OrganisationType",
      "definition" : "Vårdnhet.",
      "comment" : "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.id",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.id",
      "short" : "id",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.name",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.name",
      "short" : "name",
      "definition" : "Vårdenhetens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList",
      "short" : "HPVstatusType",
      "definition" : "Provets HPV-status.\n\nSkall anges om och endast om provet har analyserats för HPV.",
      "comment" : "TKB-fält: `../../HPVstatusList` (`HPVstatusType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.value",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.value",
      "short" : "value",
      "definition" : "Värde för HPV-status.\n\nUrval ur SNOMED CT:\n\ncode: [59291000052102|59321000052109|59301000052103|59311000052101]\n\ncodeSystem: 1.2.752.116.2.1.1\n\ncodeSystemName: Används ej\n\ncodeSystemVersion: Används ej\n\ndisplayName: Valfritt (kan anges)\n\noriginalText: Används ej\n\nUrvalet av koder kan komma att förändras vid förändringar i vårdprogrammet.",
      "comment" : "TKB-fält: `../../../value` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/CVType"
      }]
    }]
  }
}

```
