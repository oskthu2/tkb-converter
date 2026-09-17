# GetHealthCareProvider — Request - infrastructure: directory: organization v5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareProvider — Request**

## Logical Model: GetHealthCareProvider — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareprovider-request | *Version*:5 |
| Draft as of 2026-09-17 | *Computable Name*:GetHealthCareProviderRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetHealthCareProvider (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-gethealthcareprovider-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareprovider-request.csv), [Excel](StructureDefinition-gethealthcareprovider-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareprovider-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareprovider-request",
  "version" : "5",
  "name" : "GetHealthCareProviderRequest",
  "title" : "GetHealthCareProvider — Request",
  "status" : "draft",
  "date" : "2026-09-17T11:14:10+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetHealthCareProvider (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareprovider-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareprovider-request",
      "path" : "gethealthcareprovider-request",
      "short" : "GetHealthCareProvider — Request",
      "definition" : "Logisk modell för requestparametrar i GetHealthCareProvider (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1)."
    },
    {
      "id" : "gethealthcareprovider-request.healthCareProviderHsaId",
      "path" : "gethealthcareprovider-request.healthCareProviderHsaId",
      "short" : "HSA-id för en vårdgivare enligt PDL. Ref. HSA-id (hsaIdentity) [R5].",
      "definition" : "HSA-id för en vårdgivare enligt PDL. Ref. HSA-id (hsaIdentity) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "constraint" : [{
        "key" : "gethealthcareprovider-id-or-orgno",
        "severity" : "error",
        "human" : "Exakt ett av healthCareProviderHsaId och healthCareProviderOrgNo ska anges.",
        "expression" : "healthCareProviderHsaId.exists() xor healthCareProviderOrgNo.exists()",
        "source" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareprovider-request"
      }]
    },
    {
      "id" : "gethealthcareprovider-request.healthCareProviderOrgNo",
      "path" : "gethealthcareprovider-request.healthCareProviderOrgNo",
      "short" : "Organisationsnummer för en vårdgivare.",
      "definition" : "Organisationsnummer för en vårdgivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareprovider-request.searchBase",
      "path" : "gethealthcareprovider-request.searchBase",
      "short" : "Sökbas. Om ingen sökbas anges används c=SE som sökbas.",
      "definition" : "DN-format (Distinguished Name).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareprovider-request.includeFeignedObject",
      "path" : "gethealthcareprovider-request.includeFeignedObject",
      "short" : "true: om metoden ska leverera svar med fingerade objekt.",
      "definition" : "Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
