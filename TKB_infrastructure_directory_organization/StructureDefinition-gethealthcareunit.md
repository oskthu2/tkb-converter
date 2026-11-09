# GetHealthCareUnit - infrastructure: directory: organization v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnit**

## Logical Model: GetHealthCareUnit 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunit | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetHealthCareUnit |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetHealthCareUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2). Representerar responsens informationsstruktur — vårdenhet med tillhörande organisatorisk information. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-gethealthcareunit.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunit.csv), [Excel](StructureDefinition-gethealthcareunit.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunit",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunit",
  "version" : "2.0",
  "name" : "GetHealthCareUnit",
  "title" : "GetHealthCareUnit",
  "status" : "active",
  "date" : "2026-11-09T03:37:41+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetHealthCareUnit\n(RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2).\nRepresenterar responsens informationsstruktur — vårdenhet med tillhörande organisatorisk information.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunit",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunit",
      "path" : "gethealthcareunit",
      "short" : "GetHealthCareUnit",
      "definition" : "Logisk modell för tjänstekontraktet GetHealthCareUnit\n(RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2).\nRepresenterar responsens informationsstruktur — vårdenhet med tillhörande organisatorisk information."
    },
    {
      "id" : "gethealthcareunit.healthCareUnit",
      "path" : "gethealthcareunit.healthCareUnit",
      "short" : "HealthCareUnitType",
      "definition" : "healthCareUnit",
      "comment" : "TKB-fält: `healthCareUnit` (`HealthCareUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.unitIsHealthCareUnit",
      "path" : "gethealthcareunit.healthCareUnit.unitIsHealthCareUnit",
      "short" : "unitIsHealthCareUnit",
      "definition" : "True, om enheten (funktionen) själv är en vårdenhet. Om enheten (funktionen) inte är vårdenhet kommer inget värde att returneras. Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5]",
      "comment" : "TKB-fält: `..unitIsHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberHsaId",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberHsaId",
      "short" : "healthCareUnitMemberHsaId",
      "definition" : "Enhetens (funktionens) HSA-id. Ref. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitMemberHsaId` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberName",
      "short" : "healthCareUnitMemberName",
      "definition" : "Enhetens (funktionens) namn. Ref. organisationsnamn (o), enhetsnamn (ou) resp. objektnamn (cn) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitMemberName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberPublicName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberPublicName",
      "short" : "healthCareUnitMemberPublicName",
      "definition" : "Publikt officiellt namn. Det publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption. Om displayOption saknas beräknas det publika namnet enligt: enhetens namn blanktecken location\n\nRef. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitMemberPublicName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberStartDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberStartDate",
      "short" : "healthCareUnitMemberStartDate",
      "definition" : "Startdatum för enhetens (funktionens) verksamhet. Ref. startdatum (startDate) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitMemberStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberEndDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitMemberEndDate",
      "short" : "healthCareUnitMemberEndDate",
      "definition" : "Slutdatum för enhetens (funktionens) verksamhet. Ref. slutdatum (endDate) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitMemberEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitHsaId",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitHsaId",
      "short" : "healthCareUnitHsaId",
      "definition" : "Vårdenhetens HSA-id. Ref. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitName",
      "short" : "healthCareUnitName",
      "definition" : "Vårdenhetens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitPublicName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitPublicName",
      "short" : "healthCareUnitPublicName",
      "definition" : "Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitPublicName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitStartDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitStartDate",
      "short" : "healthCareUnitStartDate",
      "definition" : "Startdatum för vårdenhetens verksamhet. Ref. startdatum (startDate) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareUnitEndDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareUnitEndDate",
      "short" : "healthCareUnitEndDate",
      "definition" : "Slutdatum för vårdenhetens verksamhet. Ref. slutdatum (endDate) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderHsaId",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderHsaId",
      "short" : "healthCareProviderHsaId",
      "definition" : "Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `..healthCareProviderHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderName",
      "short" : "healthCareProviderName",
      "definition" : "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]",
      "comment" : "TKB-fält: `..healthCareProviderName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderPublicName",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderPublicName",
      "short" : "healthCareProviderPublicName",
      "definition" : "Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5]",
      "comment" : "TKB-fält: `..healthCareProviderPublicName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderOrgNo",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderOrgNo",
      "short" : "healthCareProviderOrgNo",
      "definition" : "Vårdgivarens organisationsnummer. Ref. organisationsnummer (orgNo) [R5]",
      "comment" : "TKB-fält: `..healthCareProviderOrgNo` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderStartDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderStartDate",
      "short" : "healthCareProviderStartDate",
      "definition" : "Startdatum för vårdgivarens verksamhet. Ref. startdatum (startDate) [R5]",
      "comment" : "TKB-fält: `..healthCareProviderStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.healthCareProviderEndDate",
      "path" : "gethealthcareunit.healthCareUnit.healthCareProviderEndDate",
      "short" : "healthCareProviderEndDate",
      "definition" : "Slutdatum för vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5]",
      "comment" : "TKB-fält: `..healthCareProviderEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.feignedHealthCareUnitMember",
      "path" : "gethealthcareunit.healthCareUnit.feignedHealthCareUnitMember",
      "short" : "feignedHealthCareUnitMember",
      "definition" : "true: om enheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]",
      "comment" : "TKB-fält: `..feignedHealthCareUnitMember` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.feignedHealthCareUnit",
      "path" : "gethealthcareunit.healthCareUnit.feignedHealthCareUnit",
      "short" : "feignedHealthCareUnit",
      "definition" : "true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]",
      "comment" : "TKB-fält: `..feignedHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.feignedHealthCareProvider",
      "path" : "gethealthcareunit.healthCareUnit.feignedHealthCareProvider",
      "short" : "feignedHealthCareProvider",
      "definition" : "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]",
      "comment" : "TKB-fält: `..feignedHealthCareProvider` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.archivedHealthCareUnitMember",
      "path" : "gethealthcareunit.healthCareUnit.archivedHealthCareUnitMember",
      "short" : "archivedHealthCareUnitMember",
      "definition" : "true: om enheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]",
      "comment" : "TKB-fält: `..archivedHealthCareUnitMember` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.archivedHealthCareUnit",
      "path" : "gethealthcareunit.healthCareUnit.archivedHealthCareUnit",
      "short" : "archivedHealthCareUnit",
      "definition" : "true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]",
      "comment" : "TKB-fält: `..archivedHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunit.healthCareUnit.archivedHealthCareProvider",
      "path" : "gethealthcareunit.healthCareUnit.archivedHealthCareProvider",
      "short" : "archivedHealthCareProvider",
      "definition" : "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]",
      "comment" : "TKB-fält: `..archivedHealthCareProvider` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
