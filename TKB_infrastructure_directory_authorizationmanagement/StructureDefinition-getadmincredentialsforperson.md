# GetAdminCredentialsForPerson - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAdminCredentialsForPerson**

## Logical Model: GetAdminCredentialsForPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforperson | *Version*:2.4.4 |
| Draft as of 2026-09-09 | *Computable Name*:GetAdminCredentialsForPerson |
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
  "version" : "2.4.4",
  "name" : "GetAdminCredentialsForPerson",
  "title" : "GetAdminCredentialsForPerson",
  "status" : "draft",
  "date" : "2026-09-09T16:58:44+00:00",
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
      "short" : "Administrativa behörighetsegenskaper för sökt person",
      "definition" : "Administrativa behörighetsegenskaper för sökt person",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.personHsaId",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.personHsaId",
      "short" : "Personens HSA-id",
      "definition" : "Personens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.givenName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.givenName",
      "short" : "Personens tilltalsnamn",
      "definition" : "Personens tilltalsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.middleAndSurName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.middleAndSurName",
      "short" : "Personens mellannamn och efternamn",
      "definition" : "Personens mellannamn och efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.feignedPerson",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.feignedPerson",
      "short" : "Personen är ett fingerat objekt",
      "definition" : "Personen är ett fingerat objekt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties",
      "short" : "Administrativa behörighetsegenskaper",
      "definition" : "Administrativa behörighetsegenskaper",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode",
      "short" : "Behörighetsområdeskod",
      "definition" : "Behörighetsområdeskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeName",
      "short" : "Behörighetsområdets namn",
      "definition" : "Behörighetsområdets namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription",
      "short" : "Behörighetsområdets beskrivning",
      "definition" : "Behörighetsområdets beskrivning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode",
      "short" : "Behörighetsområdesegenskap (kod)",
      "definition" : "Behörighetsområdesegenskap (kod)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName",
      "short" : "Behörighetsområdesegenskapens namn",
      "definition" : "Behörighetsområdesegenskapens namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription",
      "short" : "Behörighetsområdesegenskapens beskrivning",
      "definition" : "Behörighetsområdesegenskapens beskrivning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission",
      "short" : "Administrativt medarbetaruppdrag",
      "definition" : "Administrativt medarbetaruppdrag",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId",
      "short" : "HSA-id för det administrativa medarbetaruppdraget",
      "definition" : "HSA-id för det administrativa medarbetaruppdraget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation",
      "short" : "Organisationsnummer för ansvarig organisation",
      "definition" : "Organisationsnummer för ansvarig organisation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector",
      "short" : "Organisationsomfång",
      "definition" : "Organisationsomfång",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId",
      "short" : "HSA-id för objektet i organisationsomfånget",
      "definition" : "HSA-id för objektet i organisationsomfånget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag",
      "short" : "True: objektets alla underliggande objekt ingår",
      "definition" : "True: objektets alla underliggande objekt ingår",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.objectName",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.objectName",
      "short" : "Namn på objektet i organisationsomfånget",
      "definition" : "Namn på objektet i organisationsomfånget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit",
      "short" : "Objektet är ett fingerat objekt",
      "definition" : "Objektet är ett fingerat objekt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission",
      "path" : "getadmincredentialsforperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission",
      "short" : "Administrativt medarbetaruppdrag är ett fingerat objekt",
      "definition" : "Administrativt medarbetaruppdrag är ett fingerat objekt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
