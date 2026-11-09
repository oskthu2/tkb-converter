# GetHospCredentialsForPerson - infrastructure: directory: authorizationmanagement v2.4.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHospCredentialsForPerson**

## Logical Model: GetHospCredentialsForPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethospcredentialsforperson | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetHospCredentialsForPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetHospCredentialsForPerson (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospCredentialsForPerson:1). Hämtar från Socialstyrelsen utlämnad behörighetsgrundande HOSP-information för angiven person. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-gethospcredentialsforperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethospcredentialsforperson.csv), [Excel](StructureDefinition-gethospcredentialsforperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethospcredentialsforperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethospcredentialsforperson",
  "version" : "1.0",
  "name" : "GetHospCredentialsForPerson",
  "title" : "GetHospCredentialsForPerson",
  "status" : "active",
  "date" : "2026-11-09T03:36:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetHospCredentialsForPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospCredentialsForPerson:1).\nHämtar från Socialstyrelsen utlämnad behörighetsgrundande HOSP-information för angiven person.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethospcredentialsforperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethospcredentialsforperson",
      "path" : "gethospcredentialsforperson",
      "short" : "GetHospCredentialsForPerson",
      "definition" : "Logisk modell för tjänstekontraktet GetHospCredentialsForPerson\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospCredentialsForPerson:1).\nHämtar från Socialstyrelsen utlämnad behörighetsgrundande HOSP-information för angiven person."
    },
    {
      "id" : "gethospcredentialsforperson.personalIdentityNumber",
      "path" : "gethospcredentialsforperson.personalIdentityNumber",
      "short" : "personalIdentityNumber",
      "definition" : "Personens person- eller samordningsnummer\n\nRef. Person-id (personalIdentityNumber) [R5]",
      "comment" : "TKB-fält: `personalIdentityNumber` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.healthCareProfessionalLicence",
      "path" : "gethospcredentialsforperson.healthCareProfessionalLicence",
      "short" : "HealthCareProfessionalLicenceType",
      "definition" : "Personens Legitimerade yrkestitel(-lar)",
      "comment" : "TKB-fält: `healthCareProfessionalLicence` (`healthCareProfessionalLicenceType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.healthCareProfessionalLicence.healthCareProfessionalLicenceCode",
      "path" : "gethospcredentialsforperson.healthCareProfessionalLicence.healthCareProfessionalLicenceCode",
      "short" : "healthCareProfessionalLicenceCode",
      "definition" : "Kod för personens Legitimerade yrkestitel.",
      "comment" : "TKB-fält: `.. healthCareProfessionalLicenceCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.healthCareProfessionalLicence.healthCareProfessionalLicenceName",
      "path" : "gethospcredentialsforperson.healthCareProfessionalLicence.healthCareProfessionalLicenceName",
      "short" : "healthCareProfessionalLicenceName",
      "definition" : "healthCareProfessionalLicenceName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.personalPrescriptionCode",
      "path" : "gethospcredentialsforperson.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "Personlig förskrivarkod. Ref. Förskrivarkod (personalPrescriptionCode) [R5]",
      "comment" : "TKB-fält: `personalPrescriptionCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.healthCareProfessionalLicenceSpeciality",
      "path" : "gethospcredentialsforperson.healthCareProfessionalLicenceSpeciality",
      "short" : "HCPSpecialityCodesType",
      "definition" : "Personens specialistkod(er) kopplat till aktuell legitimerad yrkesgrupp.",
      "comment" : "TKB-fält: `healthCareProfessionalLicenceSpeciality` (`HCPSpecialityCodesType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode",
      "path" : "gethospcredentialsforperson.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicenceCode",
      "short" : "healthCareProfessionalLicenceCode",
      "definition" : "Kod för den legitimerade yrkestitel som specialistkoden hör till.",
      "comment" : "TKB-fält: `.. healthCareProfessionalLicenceCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.healthCareProfessionalLicenceSpeciality.specialityCode",
      "path" : "gethospcredentialsforperson.healthCareProfessionalLicenceSpeciality.specialityCode",
      "short" : "specialityCode",
      "definition" : "Specialistkod, enligt något av Socialstyrelsens kodverk.",
      "comment" : "TKB-fält: `.. specialityCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.healthCareProfessionalLicenceSpeciality.specialityName",
      "path" : "gethospcredentialsforperson.healthCareProfessionalLicenceSpeciality.specialityName",
      "short" : "specialityName",
      "definition" : "Specialitet i klartext.",
      "comment" : "TKB-fält: `.. specialityName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.nursePrescriptionRight",
      "path" : "gethospcredentialsforperson.nursePrescriptionRight",
      "short" : "NursePrescriptionRightType",
      "definition" : "Förskrivningsrätt för barnmorska/sjuksköterska",
      "comment" : "TKB-fält: `nursePrescriptionRight` (`NursePrescriptionRightType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.nursePrescriptionRight.healthCareProfessionalLicence",
      "path" : "gethospcredentialsforperson.nursePrescriptionRight.healthCareProfessionalLicence",
      "short" : "healthCareProfessionalLicence",
      "definition" : "Personens legitimerade yrkestitel inom vilken denne har förskrivningsrätt.",
      "comment" : "TKB-fält: `.. healthCareProfessionalLicence` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.nursePrescriptionRight.prescriptionRight",
      "path" : "gethospcredentialsforperson.nursePrescriptionRight.prescriptionRight",
      "short" : "prescriptionRight",
      "definition" : "Personen har förskrivningsrätt inom den angivna Legitimerade yrkestiteln",
      "comment" : "TKB-fält: `.. prescriptionRight` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.healthcareProfessionalLicenseIdentityNumber",
      "path" : "gethospcredentialsforperson.healthcareProfessionalLicenseIdentityNumber",
      "short" : "healthcareProfessionalLicenseIdentityNumber",
      "definition" : "Personens HoSp-id.\n\nRef. HOSP-id (hospIdentityNumber) [R5]",
      "comment" : "TKB-fält: `healthcareProfessionalLicenseIdentityNumber` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.educationCode",
      "path" : "gethospcredentialsforperson.educationCode",
      "short" : "educationCode",
      "definition" : "Utbildningskod. Ref. Socialstyrelsens kodverk [R7] HoSp utbildningskod 1.2.752.116.3.1.4",
      "comment" : "TKB-fält: `educationCode` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.restrictions",
      "path" : "gethospcredentialsforperson.restrictions",
      "short" : "RestrictionType",
      "definition" : "restrictions",
      "comment" : "TKB-fält: `restrictions` (`RestrictionType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.restrictions.healthCareProfessionalLicenceCode",
      "path" : "gethospcredentialsforperson.restrictions.healthCareProfessionalLicenceCode",
      "short" : "healthCareProfessionalLicenceCode",
      "definition" : "Kod för den Legitimerade yrkestitel som restriktionskoden hör till.",
      "comment" : "TKB-fält: `.. healthCareProfessionalLicenceCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.restrictions.restrictionCode",
      "path" : "gethospcredentialsforperson.restrictions.restrictionCode",
      "short" : "restrictionCode",
      "definition" : "Restriktionskod. Ref Socialstyrelsens kodverk [R7] Behörighetsbegränsning 1.2.752.116.3.1.5",
      "comment" : "TKB-fält: `.. restrictionCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.restrictions.restrictionName",
      "path" : "gethospcredentialsforperson.restrictions.restrictionName",
      "short" : "restrictionName",
      "definition" : "Restriktionskod i klartext.",
      "comment" : "TKB-fält: `.. restrictionName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethospcredentialsforperson.feignedPerson",
      "path" : "gethospcredentialsforperson.feignedPerson",
      "short" : "feignedPerson",
      "definition" : "true: om personen är en fingerad person",
      "comment" : "TKB-fält: `feignedPerson` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
