# GetAdminCredentialsForPersonIncludingProtectedPerson - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAdminCredentialsForPersonIncludingProtectedPerson**

## Logical Model: GetAdminCredentialsForPersonIncludingProtectedPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getadmincredentialsforpersonincludingprotectedperson | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetAdminCredentialsForPersonIncludingProtectedPerson |
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
  "version" : "2.0",
  "name" : "GetAdminCredentialsForPersonIncludingProtectedPerson",
  "title" : "GetAdminCredentialsForPersonIncludingProtectedPerson",
  "status" : "active",
  "date" : "2026-11-09T03:36:43+00:00",
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
      "short" : "AdminCredentialInformationType",
      "definition" : "adminCredentialInformation",
      "comment" : "TKB-fält: `adminCredentialInformation` (`AdminCredentialInformationType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.personHsaId",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.personHsaId",
      "short" : "personHsaId",
      "definition" : "Personens HSA-id. Ref. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `..personHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.givenName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.givenName",
      "short" : "givenName",
      "definition" : "Personens tilltalsnamn. Ref. tilltalsnamn (givenName, gn) [R5]",
      "comment" : "TKB-fält: `..givenName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.middleAndSurName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.middleAndSurName",
      "short" : "middleAndSurName",
      "definition" : "Personens mellannamn och efternamn. Ref. mellannamn (middleName) [R5]\n\nRef. efternamn (sn, surName) [R5]",
      "comment" : "TKB-fält: `..middleAndSurName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.protectedPerson",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.protectedPerson",
      "short" : "protectedPerson",
      "definition" : "true: om person har skyddade personuppgifter",
      "comment" : "TKB-fält: `..protectedPerson` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.feignedPerson",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.feignedPerson",
      "short" : "feignedPerson",
      "definition" : "true: om personen är ett fingerat objekt",
      "comment" : "TKB-fält: `..feignedPerson` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties",
      "short" : "AuthorizationScopePropertyType",
      "definition" : "Administrativa behörighetsegenskaper för sökt person",
      "comment" : "TKB-fält: `..authorizationScopeProperties` (`AuthorizationScopePropertyType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeCode",
      "short" : "authorizationScopeCode",
      "definition" : "Behörighetsområdeskod. Ref Behörighetsområdeskod (hsaDomainCode) [R5]",
      "comment" : "TKB-fält: `.. ..authorizationScopeCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeName",
      "short" : "authorizationScopeName",
      "definition" : "Behörighetsområdets namn. Ref Objektnamn (cn) [R5]",
      "comment" : "TKB-fält: `.. ..authorizationScopeName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopeDescription",
      "short" : "authorizationScopeDescription",
      "definition" : "Behörighetsområdets beskrivning. Ref Beskrivning (description) [R5]",
      "comment" : "TKB-fält: `.. ..authorizationScopeDescription` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyCode",
      "short" : "authorizationScopePropertyCode",
      "definition" : "Behörighetsområdesegenskap. Ref Kod för Behörighetsområdesegenskap (hsaDomainAreaCode) [R5]",
      "comment" : "TKB-fält: `.. ..authorizationScopePropertyCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyName",
      "short" : "authorizationScopePropertyName",
      "definition" : "Behörighetsområdesegenskapens namn. Ref Objektnamn (cn) [R5]",
      "comment" : "TKB-fält: `.. ..authorizationScopePropertyName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.authorizationScopePropertyDescription",
      "short" : "authorizationScopePropertyDescription",
      "definition" : "Behörighetsområdesegenskapens beskrivning. Ref Beskrivning (description) [R5]",
      "comment" : "TKB-fält: `.. ..authorizationScopePropertyDescription` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission",
      "short" : "AdminCommissionType",
      "definition" : "adminCommission",
      "comment" : "TKB-fält: `.. ..adminCommission` (`AdminCommissionType`, kardinalitet 1..n).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionHsaId",
      "short" : "adminCommissionHsaId",
      "definition" : "HSA-id för det administrativa medarbetaruppdrag varifrån uppgifterna hämtats. Ref. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `.. .. ..adminCommissionHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.adminCommissionResponsibleOrganisation",
      "short" : "adminCommissionResponsibleOrganisation",
      "definition" : "Organisationsnummer för organisationen som ansvarar för det administrativa medarbetaruppdraget.",
      "comment" : "TKB-fält: `.. .. ..adminCommissionResponsibleOrganisation` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector",
      "short" : "SectorType",
      "definition" : "Organisationsomfång för behörighetsområdesegenskapen inom uppdraget.",
      "comment" : "TKB-fält: `.. .. ..sector` (`SectorType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.unitHsaId",
      "short" : "unitHsaId",
      "definition" : "HSA-id för det objekt som pekas ut i organisationsomfånget.",
      "comment" : "TKB-fält: `.. .. .. ..unitHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.sectorFlag",
      "short" : "sectorFlag",
      "definition" : "True innebär att objektets alla hierarkiskt underliggande objekt ingår.",
      "comment" : "TKB-fält: `.. .. .. ..sectorFlag` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.name",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.name",
      "short" : "name",
      "definition" : "Namnet på det objekt som pekas ut i organisationsomfånget.",
      "comment" : "TKB-fält: `.. .. .. ..name` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.sector.feignedUnit",
      "short" : "feignedUnit",
      "definition" : "True om det objekt som pekas ut i organisationsomfånget är ett fingerat objekt.",
      "comment" : "TKB-fält: `.. .. .. ..feignedUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission",
      "path" : "getadmincredentialsforpersonincludingprotectedperson.adminCredentialInformation.authorizationScopeProperties.adminCommission.feignedAdminCommission",
      "short" : "feignedAdminCommission",
      "definition" : "True om behörighetsområdesegenskapen kommer från ett fingerat administrativt medarbetaruppdrag.",
      "comment" : "TKB-fält: `.. .. ..feignedAdminCommission` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
