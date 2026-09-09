# GetAdminCredentialsForPersonIncludingProtectedPerson - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAdminCredentialsForPersonIncludingProtectedPerson**

## Logical Model: GetAdminCredentialsForPersonIncludingProtectedPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson | *Version*:2.4.4 |
| Draft as of 2026-09-09 | *Computable Name*:GetAdminCredentialsForPersonIncludingProtectedPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAdminCredentialsForPersonIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPersonIncludingProtectedPerson:2). Söker ut en persons administrativa behörighetsegenskaper inom ett visst Behörighetsområde, inklusive skyddade personer. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-getadmincredentialsforpersonincludingprotectedperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getadmincredentialsforpersonincludingprotectedperson.csv), [Excel](StructureDefinition-getadmincredentialsforpersonincludingprotectedperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getadmincredentialsforpersonincludingprotectedperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson",
  "version" : "2.4.4",
  "name" : "GetAdminCredentialsForPersonIncludingProtectedPerson",
  "title" : "GetAdminCredentialsForPersonIncludingProtectedPerson",
  "status" : "draft",
  "date" : "2026-09-09T16:58:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAdminCredentialsForPersonIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPersonIncludingProtectedPerson:2).\nSöker ut en persons administrativa behörighetsegenskaper inom ett visst Behörighetsområde,\ninklusive skyddade personer.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getadmincredentialsforpersonincludingprotectedperson",
      "path" : "getadmincredentialsforpersonincludingprotectedperson",
      "short" : "GetAdminCredentialsForPersonIncludingProtectedPerson",
      "definition" : "Logisk modell för tjänstekontraktet GetAdminCredentialsForPersonIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetAdminCredentialsForPersonIncludingProtectedPerson:2).\nSöker ut en persons administrativa behörighetsegenskaper inom ett visst Behörighetsområde,\ninklusive skyddade personer."
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation",
      "short" : "Administrativa behörighetsegenskaper för sökt person",
      "definition" : "Administrativa behörighetsegenskaper för sökt person",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.personHsaId",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.personHsaId",
      "short" : "Personens HSA-id",
      "definition" : "Personens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.givenName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.givenName",
      "short" : "Personens tilltalsnamn",
      "definition" : "Personens tilltalsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.middleAndSurName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.middleAndSurName",
      "short" : "Personens mellannamn och efternamn",
      "definition" : "Personens mellannamn och efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.protectedPerson",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.protectedPerson",
      "short" : "Personen har skyddade personuppgifter",
      "definition" : "Personen har skyddade personuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.feignedPerson",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.feignedPerson",
      "short" : "Personen är ett fingerat objekt",
      "definition" : "Personen är ett fingerat objekt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties",
      "short" : "Administrativa behörighetsegenskaper",
      "definition" : "Administrativa behörighetsegenskaper",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode",
      "short" : "Behörighetsområdeskod",
      "definition" : "Behörighetsområdeskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeName",
      "short" : "Behörighetsområdets namn",
      "definition" : "Behörighetsområdets namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription",
      "short" : "Behörighetsområdets beskrivning",
      "definition" : "Behörighetsområdets beskrivning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode",
      "short" : "Behörighetsområdesegenskap (kod)",
      "definition" : "Behörighetsområdesegenskap (kod)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName",
      "short" : "Behörighetsområdesegenskapens namn",
      "definition" : "Behörighetsområdesegenskapens namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription",
      "short" : "Behörighetsområdesegenskapens beskrivning",
      "definition" : "Behörighetsområdesegenskapens beskrivning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission",
      "short" : "Administrativt medarbetaruppdrag",
      "definition" : "Administrativt medarbetaruppdrag",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId",
      "short" : "HSA-id för det administrativa medarbetaruppdraget",
      "definition" : "HSA-id för det administrativa medarbetaruppdraget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation",
      "short" : "Organisationsnummer för ansvarig organisation",
      "definition" : "Organisationsnummer för ansvarig organisation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector",
      "short" : "Organisationsomfång för behörighetsområdesegenskapen",
      "definition" : "Organisationsomfång för behörighetsområdesegenskapen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId",
      "short" : "HSA-id för objektet i organisationsomfånget",
      "definition" : "HSA-id för objektet i organisationsomfånget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag",
      "short" : "True: objektets alla underliggande objekt ingår",
      "definition" : "True: objektets alla underliggande objekt ingår",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.objectName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.objectName",
      "short" : "Namn på objektet i organisationsomfånget",
      "definition" : "Namn på objektet i organisationsomfånget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit",
      "short" : "Objektet är ett fingerat objekt",
      "definition" : "Objektet är ett fingerat objekt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission",
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
