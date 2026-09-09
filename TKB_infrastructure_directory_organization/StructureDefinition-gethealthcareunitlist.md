# GetHealthCareUnitList - infrastructure: directory: organization v5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitList**

## Logical Model: GetHealthCareUnitList 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitlist | *Version*:5 |
| Draft as of 2026-09-09 | *Computable Name*:GetHealthCareUnitList |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetHealthCareUnitList (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2). Representerar responsens informationsstruktur — lista av vårdenheter för en angiven vårdgivare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitlist.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunitlist.csv), [Excel](StructureDefinition-gethealthcareunitlist.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunitlist",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitlist",
  "version" : "5",
  "name" : "GetHealthCareUnitList",
  "title" : "GetHealthCareUnitList",
  "status" : "draft",
  "date" : "2026-09-09T17:00:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetHealthCareUnitList\n(RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2).\nRepresenterar responsens informationsstruktur — lista av vårdenheter för en angiven vårdgivare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitlist",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitlist",
      "path" : "gethealthcareunitlist",
      "short" : "GetHealthCareUnitList",
      "definition" : "Logisk modell för tjänstekontraktet GetHealthCareUnitList\n(RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2).\nRepresenterar responsens informationsstruktur — lista av vårdenheter för en angiven vårdgivare."
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList",
      "path" : "gethealthcareunitlist.healthCareUnitList",
      "short" : "Lista av vårdenheter för angiven vårdgivare",
      "definition" : "Aggregerat objekt med information om vårdgivaren och dess ingående vårdenheter.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderHsaId",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderHsaId",
      "short" : "Vårdgivarens HSA-id. Ref. hsaIdentity [R5].",
      "definition" : "Vårdgivarens HSA-id. Ref. hsaIdentity [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderName",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderName",
      "short" : "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5].",
      "definition" : "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderPublicName",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderPublicName",
      "short" : "Publikt officiellt namn på vårdgivaren.",
      "definition" : "Publikt officiellt namn på vårdgivaren.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderOrgNo",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderOrgNo",
      "short" : "Vårdgivarens organisationsnummer. Ref. orgNo [R5].",
      "definition" : "Vårdgivarens organisationsnummer. Ref. orgNo [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderStartDate",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderStartDate",
      "short" : "Startdatum för vårdgivarens verksamhet. Ref. startDate [R5].",
      "definition" : "Startdatum för vårdgivarens verksamhet. Ref. startDate [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderEndDate",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareProviderEndDate",
      "short" : "Slutdatum för vårdgivarens verksamhet. Ref. endDate [R5].",
      "definition" : "Slutdatum för vårdgivarens verksamhet. Ref. endDate [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.feignedHealthCareProvider",
      "path" : "gethealthcareunitlist.healthCareUnitList.feignedHealthCareProvider",
      "short" : "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "definition" : "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.archivedHealthCareProvider",
      "path" : "gethealthcareunitlist.healthCareUnitList.archivedHealthCareProvider",
      "short" : "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "definition" : "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit",
      "short" : "Ingående vårdenhet enligt PDL",
      "definition" : "Lista av vårdenheter som tillhör vårdgivaren.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitHsaId",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitHsaId",
      "short" : "HSA-identitet ingående enhet. Ref. hsaIdentity [R5].",
      "definition" : "HSA-identitet ingående enhet. Ref. hsaIdentity [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitName",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitName",
      "short" : "Namn ingående enhet. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5].",
      "definition" : "Namn ingående enhet. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitPublicName",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitPublicName",
      "short" : "Publikt officiellt namn på vårdenheten.",
      "definition" : "Publikt officiellt namn på vårdenheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitStartDate",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitStartDate",
      "short" : "Startdatum för vårdenhetens verksamhet. Ref. startDate [R5].",
      "definition" : "Startdatum för vårdenhetens verksamhet. Ref. startDate [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitEndDate",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.healthCareUnitEndDate",
      "short" : "Slutdatum för vårdenhetens verksamhet. Ref. endDate [R5].",
      "definition" : "Slutdatum för vårdenhetens verksamhet. Ref. endDate [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.feignedHealthCareUnit",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.feignedHealthCareUnit",
      "short" : "true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "definition" : "true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.archivedHealthCareUnit",
      "path" : "gethealthcareunitlist.healthCareUnitList.healthCareUnit.archivedHealthCareUnit",
      "short" : "true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "definition" : "true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
