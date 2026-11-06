# ProcessCervixScreeningInformation — Request - clinicalprocess: logistics: cervixscreening v1.0.0-rc4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCervixScreeningInformation — Request**

## Logical Model: ProcessCervixScreeningInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/processcervixscreeninginformation-request | *Version*:1.0 |
| Draft as of 2026-11-06 | *Computable Name*:ProcessCervixScreeningInformationRequest |
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
  "date" : "2026-11-06T21:07:58+00:00",
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
      "id" : "processcervixscreeninginformation-request.logicalAddress",
      "path" : "processcervixscreeninginformation-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation",
      "short" : "cervixScreeningInformation",
      "definition" : "Kallelsegrundande information för cervixscreening.",
      "comment" : "TKB-fält: `CervixScreeningInformation` (`CervixScreeningInformationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare",
      "short" : "subjectOfCare",
      "definition" : "Folkbokförd person med svenskt personnummer\n\nPersonnummer skall anges på formatet ÅÅÅÅMMDDNNNN.",
      "comment" : "TKB-fält: `../subjectOfCare` (`PersonType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
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
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare.personId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare.personId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare.personId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.subjectOfCare.personId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion",
      "short" : "sendingRegion",
      "definition" : "Region som gör utlämnandet.",
      "comment" : "TKB-fält: `../sendingRegion` (`RegionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region",
      "short" : "region",
      "definition" : "Region.",
      "comment" : "TKB-fält: `../../region` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.region.organisationName",
      "short" : "organisationName",
      "definition" : "Regionens namn i klartext.",
      "comment" : "TKB-fält: `../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver",
      "short" : "careGiver",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../careGiver` (`OrganisationType`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.organisationId",
      "short" : "organisationId",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..0).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careGiver.organisationName",
      "short" : "organisationName",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../../name` (`String`, kardinalitet 0..0).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit",
      "short" : "careUnit",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../careUnit` (`OrganisationType`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.organisationId",
      "short" : "organisationId",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..0).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.sendingRegion.careUnit.organisationName",
      "short" : "organisationName",
      "definition" : "Skall ej anges.",
      "comment" : "TKB-fält: `../../../name` (`String`, kardinalitet 0..0).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion",
      "short" : "exclusion",
      "definition" : "Information om exkludering från kallelse.",
      "comment" : "TKB-fält: `../exclusion` (`ExclusionType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
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
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.cVCode",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.codeSystem",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.codeSystemName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.codeSystemVersion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.displayName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.originalText",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.reason.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
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
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion",
      "short" : "originalRegion",
      "definition" : "Organisation varifrån information om exkludering ursprungligen härstammar.",
      "comment" : "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region",
      "short" : "region",
      "definition" : "Region.",
      "comment" : "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.region.organisationName",
      "short" : "organisationName",
      "definition" : "Regionens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver",
      "short" : "careGiver",
      "definition" : "Vårdgivare.",
      "comment" : "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careGiver.organisationName",
      "short" : "organisationName",
      "definition" : "Vårdgivarens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit",
      "short" : "careUnit",
      "definition" : "Vårdenhet.",
      "comment" : "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.exclusion.originalRegion.careUnit.organisationName",
      "short" : "organisationName",
      "definition" : "Vårdenhetens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups",
      "short" : "followUpGroups",
      "definition" : "Information om uppföljningsgrupp (kontrollfil) för kvinna.",
      "comment" : "TKB-fält: `../followUpGroups` (`FollowUpGroupType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType",
      "short" : "followUpGroupType",
      "definition" : "Typ av uppföljningsgrupp (kontrollfil).\n\nUrval ur SNOMED CT:\n\ncode: [59461000052109| 59291000052102|59321000052109|59301000052103]\n\ncodeSystem: 1.2.752.116.2.1.1\n\ncodeSystemName: Används ej\n\ncodeSystemVersion: Används ej\n\ndisplayName: Valfritt (kan anges)\n\noriginalText: Används ej\n\nUrvalet av koder kan komma att förändras vid förändringar i vårdprogrammet.",
      "comment" : "TKB-fält: `../../type` (`CVType`, kardinalitet 1..1).\n\n**Modellanteckning:** followUpGroupType Heter type i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.cVCode",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystem",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystemName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystemVersion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.displayName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.originalText",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.followUpGroupType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
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
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion",
      "short" : "originalRegion",
      "definition" : "Organisation varifrån information om tillhörighet till uppföljningsgrupp (kontrollfil) ursprungligen härstammar.",
      "comment" : "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region",
      "short" : "region",
      "definition" : "Region.",
      "comment" : "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.region.organisationName",
      "short" : "organisationName",
      "definition" : "Regionens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver",
      "short" : "careGiver",
      "definition" : "Vårdgivare.",
      "comment" : "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careGiver.organisationName",
      "short" : "organisationName",
      "definition" : "Vårdgivarens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit",
      "short" : "careUnit",
      "definition" : "Vårdenhet.",
      "comment" : "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.followUpGroups.originalRegion.careUnit.organisationName",
      "short" : "organisationName",
      "definition" : "Vårdenhetens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.plannedInvitation",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.plannedInvitation",
      "short" : "plannedInvitation",
      "definition" : "Förmedlar det individuella kallelsedatum som frångår vårdprogrammets ordinarie kallelseintervall och har satts för en enskild kvinna",
      "comment" : "TKB-fält: `../plannedInvitation` (`PlannedInvitationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
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
        "code" : "string"
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
      "short" : "specimen",
      "definition" : "Gynekologiska cellprovtagning som ledde till ett bedömbart prov.",
      "comment" : "TKB-fält: `../specimen` (`SpecimenType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
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
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion",
      "short" : "originalRegion",
      "definition" : "Organisation varifrån information om provtagning ursprungligen härstammar.",
      "comment" : "TKB-fält: `../../originalRegion` (`RegionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region",
      "short" : "region",
      "definition" : "Region.",
      "comment" : "TKB-fält: `../../../region` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.region.organisationName",
      "short" : "organisationName",
      "definition" : "Regionens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver",
      "short" : "careGiver",
      "definition" : "Vårdgivare.",
      "comment" : "TKB-fält: `../../../careGiver` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careGiver.organisationName",
      "short" : "organisationName",
      "definition" : "Vårdgivarens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit",
      "short" : "careUnit",
      "definition" : "Vårdnhet.",
      "comment" : "TKB-fält: `../../../careUnit` (`OrganisationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId",
      "short" : "organisationId",
      "definition" : "Anges med HSA-id.\n\nroot: 1.2.752.129.2.1.4.1\n\nextension: `<hsa-id>`",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId.root",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId.iIExtension",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.organisationId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.organisationName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.originalRegion.careUnit.organisationName",
      "short" : "organisationName",
      "definition" : "Vårdenhetens namn i klartext.",
      "comment" : "TKB-fält: `../../../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList",
      "short" : "HPVstatusList",
      "definition" : "Provets HPV-status.\n\nSkall anges om och endast om provet har analyserats för HPV.",
      "comment" : "TKB-fält: `../../HPVstatusList` (`HPVstatusType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue",
      "short" : "hPVstatusValue",
      "definition" : "Värde för HPV-status.\n\nUrval ur SNOMED CT:\n\ncode: [59291000052102|59321000052109|59301000052103|59311000052101]\n\ncodeSystem: 1.2.752.116.2.1.1\n\ncodeSystemName: Används ej\n\ncodeSystemVersion: Används ej\n\ndisplayName: Valfritt (kan anges)\n\noriginalText: Används ej\n\nUrvalet av koder kan komma att förändras vid förändringar i vårdprogrammet.",
      "comment" : "TKB-fält: `../../../value` (`CVType`, kardinalitet 1..1).\n\n**Modellanteckning:** hPVstatusValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.cVCode",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystem",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystemName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystemVersion",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.displayName",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.originalText",
      "path" : "processcervixscreeninginformation-request.cervixScreeningInformation.specimen.HPVstatusList.hPVstatusValue.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
