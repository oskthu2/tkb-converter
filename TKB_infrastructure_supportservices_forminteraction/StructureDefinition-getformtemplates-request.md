# GetFormTemplates — Request - infrastructure: supportservices: forminteraction v2.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFormTemplates — Request**

## Logical Model: GetFormTemplates — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplates-request | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetFormTemplatesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetFormTemplates (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2). Tjänst för att hämta tillgängliga formulärmallar för invånare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-getformtemplates-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getformtemplates-request.csv), [Excel](StructureDefinition-getformtemplates-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getformtemplates-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplates-request",
  "version" : "2.0",
  "name" : "GetFormTemplatesRequest",
  "title" : "GetFormTemplates — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:34:58+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetFormTemplates\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2).\nTjänst för att hämta tillgängliga formulärmallar för invånare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/getformtemplates-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getformtemplates-request",
      "path" : "getformtemplates-request",
      "short" : "GetFormTemplates — Request",
      "definition" : "Logisk modell för requestparametrar i GetFormTemplates\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetFormTemplates:2).\nTjänst för att hämta tillgängliga formulärmallar för invånare."
    },
    {
      "id" : "getformtemplates-request.healthcareFacilityCareUnit",
      "path" : "getformtemplates-request.healthcareFacilityCareUnit",
      "short" : "Hsa-Id för vårdenhet (enhets-id). T.ex. se2321000016-1hz3",
      "definition" : "Hsa-Id (Vårdenhet/enhets-id).\n\nT.ex. se2321000016-1hz3",
      "comment" : "TKB-fält: `Healthcare_Facility_CareUnit` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates-request.publishedStatus",
      "path" : "getformtemplates-request.publishedStatus",
      "short" : "Indikerar vilken status en mall skall ha",
      "definition" : "Indikerar vilken status en mall skall ha.",
      "comment" : "TKB-fält: `PublishedStatus` (kardinalitet 0..*).\n\n**Modellanteckning:** Filtreringsparameter för mallens publiceringsstatus. Valfri, kan ange flera.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/ValueSet/publishstatus-vs"
      }
    },
    {
      "id" : "getformtemplates-request.subjectOfCare",
      "path" : "getformtemplates-request.subjectOfCare",
      "short" : "Starkt autentiserad användares personnummer (yyyymmddnnnn)",
      "definition" : "Starkt autentiserad användares personnummer.\n\nT.ex. 191212121212 (yyyymmddnnnn)\n\nFormTemplate attributet ”anonymousForm” styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt.",
      "comment" : "TKB-fält: `SubjectOfCare` (kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates-request.templateId",
      "path" : "getformtemplates-request.templateId",
      "short" : "Typ av formulärmall (kodverk KV Malltyp)",
      "definition" : "Typ av formulärmall. Kodverk. Om denna inte anges skall formulärtjänsten som default returnera ALLA tillgängliga formulär för medborgaren.",
      "comment" : "TKB-fält: `TemplateId` (kardinalitet 0..*).\n\n**Modellanteckning:** Filtrerar svar på specifik formulärtyp. Om ej angiven returneras ALLA tillgängliga mallar.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getformtemplates-request.clinicalProcessInterestId",
      "path" : "getformtemplates-request.clinicalProcessInterestId",
      "short" : "Hälsoärende — HSA-id för framställarens enhet/process + unik identifierare",
      "definition" : "Hälsoärende.",
      "comment" : "TKB-fält: `ClinicalProcessInterestId` (kardinalitet 0..*).\n\n**Modellanteckning:** Globalt/nationellt hälsoärende ID. Filtrerar formulär kopplade till ett eller flera hälsoärenden.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
