# GetHealthCareProvider - infrastructure: directory: organization v5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareProvider**

## Logical Model: GetHealthCareProvider 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareprovider | *Version*:5 |
| Draft as of 2026-09-26 | *Computable Name*:GetHealthCareProvider |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetHealthCareProvider (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1). Söker ut och returnerar information om en vårdgivare. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-gethealthcareprovider.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareprovider.csv), [Excel](StructureDefinition-gethealthcareprovider.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareprovider",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareprovider",
  "version" : "5",
  "name" : "GetHealthCareProvider",
  "title" : "GetHealthCareProvider",
  "status" : "draft",
  "date" : "2026-09-26T19:30:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetHealthCareProvider\n(RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1).\nSöker ut och returnerar information om en vårdgivare. Representerar responsens\ninformationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareprovider",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareprovider",
      "path" : "gethealthcareprovider",
      "short" : "GetHealthCareProvider",
      "definition" : "Logisk modell för tjänstekontraktet GetHealthCareProvider\n(RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1).\nSöker ut och returnerar information om en vårdgivare. Representerar responsens\ninformationsstruktur."
    },
    {
      "id" : "gethealthcareprovider.healthCareProvider",
      "path" : "gethealthcareprovider.healthCareProvider",
      "short" : "Svarsobjekt med vårdgivarinformation",
      "definition" : "Svarsobjekt med vårdgivarinformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareprovider.healthCareProvider.healthCareProviderHsaId",
      "path" : "gethealthcareprovider.healthCareProvider.healthCareProviderHsaId",
      "short" : "Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5].",
      "definition" : "Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareprovider.healthCareProvider.healthCareProviderName",
      "path" : "gethealthcareprovider.healthCareProvider.healthCareProviderName",
      "short" : "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5].",
      "definition" : "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareprovider.healthCareProvider.healthCareProviderOrgNo",
      "path" : "gethealthcareprovider.healthCareProvider.healthCareProviderOrgNo",
      "short" : "Vårdgivarens organisationsnummer. Ref. organisationsnummer (orgNo) [R5].",
      "definition" : "Vårdgivarens organisationsnummer. Ref. organisationsnummer (orgNo) [R5].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareprovider.healthCareProvider.healthCareProviderStartDate",
      "path" : "gethealthcareprovider.healthCareProvider.healthCareProviderStartDate",
      "short" : "Startdatum för vårdgivarens verksamhet. Ref. startdatum (startDate) [R5].",
      "definition" : "Startdatum för vårdgivarens verksamhet. Ref. startdatum (startDate) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareprovider.healthCareProvider.healthCareProviderEndDate",
      "path" : "gethealthcareprovider.healthCareProvider.healthCareProviderEndDate",
      "short" : "Slutdatum för vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5].",
      "definition" : "Slutdatum för vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareprovider.healthCareProvider.feignedHealthCareProvider",
      "path" : "gethealthcareprovider.healthCareProvider.feignedHealthCareProvider",
      "short" : "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "definition" : "true: om vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareprovider.healthCareProvider.archivedHealthCareProvider",
      "path" : "gethealthcareprovider.healthCareProvider.archivedHealthCareProvider",
      "short" : "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "definition" : "true: om vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
