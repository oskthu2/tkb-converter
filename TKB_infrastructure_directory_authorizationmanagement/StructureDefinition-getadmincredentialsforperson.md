# GetAdminCredentialsForPerson - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAdminCredentialsForPerson**

## Logical Model: GetAdminCredentialsForPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAdminCredentialsForPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAdminCredentialsForPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPerson:2). Identisk med GetAdminCredentialsForPersonIncludingProtectedPerson förutom att skyddade personer aldrig returneras (fältet protectedPerson returneras aldrig). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-getadmincredentialsforperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getadmincredentialsforperson.csv), [Excel](StructureDefinition-getadmincredentialsforperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getadmincredentialsforperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson",
  "version" : "2.0",
  "name" : "GetAdminCredentialsForPerson",
  "title" : "GetAdminCredentialsForPerson",
  "status" : "active",
  "date" : "2026-11-09T03:36:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAdminCredentialsForPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPerson:2).\nIdentisk med GetAdminCredentialsForPersonIncludingProtectedPerson förutom att skyddade\npersoner aldrig returneras (fältet protectedPerson returneras aldrig).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getadmincredentialsforperson",
      "path" : "getadmincredentialsforperson",
      "short" : "GetAdminCredentialsForPerson",
      "definition" : "Logisk modell för tjänstekontraktet GetAdminCredentialsForPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPerson:2).\nIdentisk med GetAdminCredentialsForPersonIncludingProtectedPerson förutom att skyddade\npersoner aldrig returneras (fältet protectedPerson returneras aldrig)."
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation",
      "path" : "getadmincredentialsforperson.adminCredentialInformation",
      "short" : "AdminCredentialInformationType",
      "definition" : "adminCredentialInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.personHsaId",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.personHsaId",
      "short" : "personHsaId",
      "definition" : "personHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.givenName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.givenName",
      "short" : "givenName",
      "definition" : "givenName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.middleAndSurName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.middleAndSurName",
      "short" : "middleAndSurName",
      "definition" : "middleAndSurName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.protectedPerson",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.protectedPerson",
      "short" : "protectedPerson",
      "definition" : "protectedPerson",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.feignedPerson",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.feignedPerson",
      "short" : "feignedPerson",
      "definition" : "feignedPerson",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties",
      "short" : "AuthorizationScopePropertyType",
      "definition" : "authorizationScopeProperties",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode",
      "short" : "authorizationScopeCode",
      "definition" : "authorizationScopeCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeName",
      "short" : "authorizationScopeName",
      "definition" : "authorizationScopeName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription",
      "short" : "authorizationScopeDescription",
      "definition" : "authorizationScopeDescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode",
      "short" : "authorizationScopePropertyCode",
      "definition" : "authorizationScopePropertyCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName",
      "short" : "authorizationScopePropertyName",
      "definition" : "authorizationScopePropertyName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription",
      "short" : "authorizationScopePropertyDescription",
      "definition" : "authorizationScopePropertyDescription",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission",
      "short" : "AdminCommissionType",
      "definition" : "adminCommission",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId",
      "short" : "adminCommissionHsaId",
      "definition" : "adminCommissionHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation",
      "short" : "adminCommissionResponsibleOrganisation",
      "definition" : "adminCommissionResponsibleOrganisation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector",
      "short" : "SectorType",
      "definition" : "sector",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId",
      "short" : "unitHsaId",
      "definition" : "unitHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag",
      "short" : "sectorFlag",
      "definition" : "sectorFlag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.name",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.name",
      "short" : "name",
      "definition" : "name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit",
      "short" : "feignedUnit",
      "definition" : "feignedUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission",
      "short" : "feignedAdminCommission",
      "definition" : "feignedAdminCommission",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
