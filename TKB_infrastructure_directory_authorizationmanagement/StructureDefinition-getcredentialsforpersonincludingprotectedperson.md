# GetCredentialsForPersonIncludingProtectedPerson - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCredentialsForPersonIncludingProtectedPerson**

## Logical Model: GetCredentialsForPersonIncludingProtectedPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getcredentialsforpersonincludingprotectedperson | *Version*:2.2 |
| Active as of 2026-11-09 | *Computable Name*:GetCredentialsForPersonIncludingProtectedPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetCredentialsForPersonIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPersonIncludingProtectedPerson:2). Representerar responsens informationsstruktur. Returnerar behörighetsgrundande egenskaper för angiven person inklusive person med skyddade personuppgifter. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-getcredentialsforpersonincludingprotectedperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcredentialsforpersonincludingprotectedperson.csv), [Excel](StructureDefinition-getcredentialsforpersonincludingprotectedperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcredentialsforpersonincludingprotectedperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getcredentialsforpersonincludingprotectedperson",
  "version" : "2.2",
  "name" : "GetCredentialsForPersonIncludingProtectedPerson",
  "title" : "GetCredentialsForPersonIncludingProtectedPerson",
  "status" : "active",
  "date" : "2026-11-09T03:36:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetCredentialsForPersonIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPersonIncludingProtectedPerson:2).\nRepresenterar responsens informationsstruktur. Returnerar behörighetsgrundande egenskaper\nför angiven person inklusive person med skyddade personuppgifter.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/getcredentialsforpersonincludingprotectedperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcredentialsforpersonincludingprotectedperson",
      "path" : "getcredentialsforpersonincludingprotectedperson",
      "short" : "GetCredentialsForPersonIncludingProtectedPerson",
      "definition" : "Logisk modell för tjänstekontraktet GetCredentialsForPersonIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetCredentialsForPersonIncludingProtectedPerson:2).\nRepresenterar responsens informationsstruktur. Returnerar behörighetsgrundande egenskaper\nför angiven person inklusive person med skyddade personuppgifter."
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation",
      "short" : "CredentialInformationType",
      "definition" : "Behörighetsegenskaper för sökt person",
      "comment" : "TKB-fält: `credentialInformation *2)` (`CredentialInformationType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.givenName",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.givenName",
      "short" : "givenName",
      "definition" : "Tilltalsnamn. Endast ett litet antal personer saknar helt förnamn enligt befolkningsregistret och därmed även denna parameter.\n\nRef. tilltalsnamn (givenName, gn) [R5]",
      "comment" : "TKB-fält: `..givenName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.middleAndSurName",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.middleAndSurName",
      "short" : "middleAndSurName",
      "definition" : "Personens Mellannamn och efternamn.  Namnen är separerade med mellanslag.\n\nRef. mellannamn (middleName) [R5]\n\nRef. efternamn (sn, surName) [R5]",
      "comment" : "TKB-fält: `..middleAndSurName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.personHsaId",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.personHsaId",
      "short" : "personHsaId",
      "definition" : "Personens HSA-id\n\nRef. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `..personHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicence",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicence",
      "short" : "healthCareProfessionalLicence",
      "definition" : "Personens Legitimerade yrkestitel(-lar) i klartext\n\nRef. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3",
      "comment" : "TKB-fält: `..healthCareProfessionalLicence` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.personalPrescriptionCode",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "Personens förskrivarkod. Ref förskrivarkod (personalPrescriptionCode) [R5]",
      "comment" : "TKB-fält: `..personalPrescriptionCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.groupPrescriptionCode",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.groupPrescriptionCode",
      "short" : "groupPrescriptionCode",
      "definition" : "Gruppförskrivarkod (er) som personen tilldelats av sin arbetsgivare. Ref. gruppförskrivarkod (hsaGroupPrescriptionCode) [R5]",
      "comment" : "TKB-fält: `..groupPrescriptionCode` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.nursePrescriptionRight",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.nursePrescriptionRight",
      "short" : "NursePrescriptionRightType",
      "definition" : "Förskrivningsrätt för barnmorska/sjuksköterska. Ref. förskrivningsrätt för barnmorskor/ sjuksköterskor (hsaSosNursePrescriptionRight) [R5]",
      "comment" : "TKB-fält: `..nursePrescriptionRight` (`NursePrescriptionRightType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.nursePrescriptionRight.healthCareProfessionalLicence",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.nursePrescriptionRight.healthCareProfessionalLicence",
      "short" : "healthCareProfessionalLicence",
      "definition" : "Personens Legitimerade yrkestitel inom vilken denne har förskrivningsrätt. BM för Barnmorska eller SJ för Sjuksköterska",
      "comment" : "TKB-fält: `.. ..healthCareProfessionalLicence` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.nursePrescriptionRight.prescriptionRight",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.nursePrescriptionRight.prescriptionRight",
      "short" : "prescriptionRight",
      "definition" : "Personen har förskrivningsrätt inom den angivna Legitimerade yrkestiteln",
      "comment" : "TKB-fält: `.. ..prescriptionRight` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.hsaSystemRole",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.hsaSystemRole",
      "short" : "HsaSystemRoleType",
      "definition" : "Personens Individuella egenskaper för it-tjänster. Ref. individuell egenskap för it-tjänster (hsaSystemRole) [R5]",
      "comment" : "TKB-fält: `..hsaSystemRole` (`HsaSystemRoleType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.hsaSystemRole.systemId",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.hsaSystemRole.systemId",
      "short" : "systemId",
      "definition" : "IT-tjänstens SystemId",
      "comment" : "TKB-fält: `.. ..systemId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.hsaSystemRole.role",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.hsaSystemRole.role",
      "short" : "role",
      "definition" : "Personens Roll inom IT-tjänsten",
      "comment" : "TKB-fält: `.. ..role` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.paTitleCode",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "Personens Befattningskoder\n\nRef. befattningskod (paTitleCode) [R5]",
      "comment" : "TKB-fält: `..paTitleCode` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.protectedPerson",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.protectedPerson",
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
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission",
      "short" : "CommissionType",
      "definition" : "De vårdmedarbetaruppdrag som personen är kopplad till",
      "comment" : "TKB-fält: `..commission` (`CommissionType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionName",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionName",
      "short" : "commissionName",
      "definition" : "Vårdmedarbetaruppdragets Namn\n\nRef. objektnamn (cn) [R5]",
      "comment" : "TKB-fält: `.. ..commissionName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionHsaId",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionHsaId",
      "short" : "commissionHsaId",
      "definition" : "Vårdmedarbetaruppdragets HSA-id\n\nRef. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `.. ..commissionHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionPurpose",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionPurpose",
      "short" : "commissionPurpose",
      "definition" : "Vårdmedarbetaruppdragets ändamål\n\nRef. vårdmedarbetaruppdragets ändamål (hsaCommissionPurpose) [R5]",
      "comment" : "TKB-fält: `.. ..commissionPurpose` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionRight",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionRight",
      "short" : "CommissionRightType",
      "definition" : "Vårdmedarbetaruppdragets rättigheter\n\nRef. vårdmedarbetaruppdragets rättigheter (hsaCommissionRight) [R5]",
      "comment" : "TKB-fält: `.. ..commissionRight` (`CommissionRightType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionRight.activity",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionRight.activity",
      "short" : "activity",
      "definition" : "Rättighet aktivitet",
      "comment" : "TKB-fält: `.. .. ..activity` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionRight.informationClass",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionRight.informationClass",
      "short" : "informationClass",
      "definition" : "Rättighet informationstyp",
      "comment" : "TKB-fält: `.. .. ..informationClass` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionRight.scope",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.commissionRight.scope",
      "short" : "scope",
      "definition" : "Rättighet omfång",
      "comment" : "TKB-fält: `.. .. ..scope` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareUnitHsaId",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareUnitHsaId",
      "short" : "healthCareUnitHsaId",
      "definition" : "HSA-id för vårdenhet enligt PDL\n\nRef. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitHsaId *3)` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareUnitName",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareUnitName",
      "short" : "healthCareUnitName",
      "definition" : "Vårdenhetens namn\n\nRef. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitName *3)` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareUnitStartDate",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareUnitStartDate",
      "short" : "healthCareUnitStartDate",
      "definition" : "Startdatum för vårdenhetens verksamhet\n\nRef. startdatum (startDate) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitStartDate *3)` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareUnitEndDate",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareUnitEndDate",
      "short" : "healthCareUnitEndDate",
      "definition" : "Slutdatum för vårdenhetens verksamhet\n\nRef. slutdatum (endDate) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitEndDate *3)` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderHsaId",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderHsaId",
      "short" : "healthCareProviderHsaId",
      "definition" : "Vårdgivarens HSA-id\n\nRef. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderName",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderName",
      "short" : "healthCareProviderName",
      "definition" : "Vårdgivarens Namn. Ref. hjälpklassen Vårdenhet (hsaHealthCareUnit) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderOrgNo",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderOrgNo",
      "short" : "healthCareProviderOrgNo",
      "definition" : "Vårdgivarens organisationsnummer\n\nRef. organisationsnummer (orgNo) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderOrgNo` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderStartDate",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderStartDate",
      "short" : "healthCareProviderStartDate",
      "definition" : "Startdatum för vårdgivarens verksamhet\n\nRef. startdatum (startDate) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderEndDate",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.healthCareProviderEndDate",
      "short" : "healthCareProviderEndDate",
      "definition" : "Slutdatum för vårdgivarens verksamhet\n\nRef. slutdatum (endDate) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.feignedHealthCareProvider",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.feignedHealthCareProvider",
      "short" : "feignedHealthCareProvider",
      "definition" : "true: om vårdgivaren är ett fingerat objekt",
      "comment" : "TKB-fält: `.. ..feignedHealthCareProvider` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.feignedHealthCareUnit",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.feignedHealthCareUnit",
      "short" : "feignedHealthCareUnit",
      "definition" : "true: om vårdenheten är ett fingerat objekt",
      "comment" : "TKB-fält: `.. ..feignedHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.feignedCommission",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.feignedCommission",
      "short" : "feignedCommission",
      "definition" : "true: om vårdmedarbetaruppdraget är ett fingerat objekt",
      "comment" : "TKB-fält: `.. ..feignedCommission` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.archivedHealthCareProvider",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.archivedHealthCareProvider",
      "short" : "archivedHealthCareProvider",
      "definition" : "true: om vårdgivaren är ett arkiverat objekt",
      "comment" : "TKB-fält: `.. ..archivedHealthCareProvider` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.archivedHealthCareUnit",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.archivedHealthCareUnit",
      "short" : "archivedHealthCareUnit",
      "definition" : "true: om vårdenheten är ett arkiverat objekt",
      "comment" : "TKB-fält: `.. ..archivedHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.pharmacyIdentifier",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.commission.pharmacyIdentifier",
      "short" : "pharmacyIdentifier",
      "definition" : "Unikt id för apotek. Ref. (hsaGlnCode + hsaBusinessCode) [R5]",
      "comment" : "TKB-fält: `.. ..pharmacyIdentifier` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.feignedPerson",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.feignedPerson",
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
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceCode",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceCode",
      "short" : "healthCareProfessionalLicenceCode",
      "definition" : "Kod för personens Legitimerade yrkestitel.\n\nRef. legitimerad yrkesgrupp (hsaTitle) [R5] och Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3",
      "comment" : "TKB-fält: `.. healthCareProfessionalLicenceCode` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceSpeciality",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceSpeciality",
      "short" : "HCPSpecialityCodesType",
      "definition" : "Personens Specialistkoder kopplat till aktuell Legitimerade Yrkesgrupp. Ref. Leg. yrkesgrupp och specialitet för läkare och tandläkare (hsaSosTitleCodeSpeciality) [R5]",
      "comment" : "TKB-fält: `.. healthCareProfessionalLicenceSpeciality` (`HCPSpecialityCodesType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode",
      "short" : "healthCareProfessionalLicenceCode",
      "definition" : "Kod för den Legitimerade yrkestitel som specialistkoden hör till. Ref. Socialstyrelsens kodverk [R7]: 1.2.752.116.3.1.3",
      "comment" : "TKB-fält: `.. .. healthCareProfessionalLicenceCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceSpeciality.specialityCode",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceSpeciality.specialityCode",
      "short" : "specialityCode",
      "definition" : "Specialistkod, enligt något av Socialstyrelsens kodverk.",
      "comment" : "TKB-fält: `.. ..specialityCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceSpeciality.specialityName",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthCareProfessionalLicenceSpeciality.specialityName",
      "short" : "specialityName",
      "definition" : "Specialitet i klartext. Klartext för specialityCode ovan.",
      "comment" : "TKB-fält: `.. ..specialityName` (`String`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.occupationalCode",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.occupationalCode",
      "short" : "occupationalCode",
      "definition" : "Utökad yrkeskod, används för icke-legitimerade medarbetares åtkomst till tjänster hos eHälsomyndigheten.",
      "comment" : "TKB-fält: `..occupationalCode` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.personalIdentity",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.personalIdentity",
      "short" : "personalIdentity",
      "definition" : "Personens person- eller samordningsnummer\n\nRef. Person-id (personalIdentityNumber) [R5]",
      "comment" : "TKB-fält: `..personalIdentity *5)` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthcareProfessionalLicenseIdentityNumber",
      "path" : "getcredentialsforpersonincludingprotectedperson.credentialInformation.healthcareProfessionalLicenseIdentityNumber",
      "short" : "healthcareProfessionalLicenseIdentityNumber",
      "definition" : "Personens Hosp-Id\n\nRef. HOSP-id (hospIdentityNumber) [R5]",
      "comment" : "TKB-fält: `.. healthcareProfessionalLicenseIdentityNumber` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
