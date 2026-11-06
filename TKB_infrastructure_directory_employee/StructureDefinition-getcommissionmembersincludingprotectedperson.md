# GetCommissionMembersIncludingProtectedPerson - infrastructure: directory: employee v4.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCommissionMembersIncludingProtectedPerson**

## Logical Model: GetCommissionMembersIncludingProtectedPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getcommissionmembersincludingprotectedperson | *Version*:3.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetCommissionMembersIncludingProtectedPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetCommissionMembersIncludingProtectedPerson (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3). Representerar responsens informationsstruktur. Returnerar information om personer kopplade till vårdmedarbetaruppdrag för angiven vårdenhet, inklusive skyddade personer. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-employee|current/StructureDefinition/StructureDefinition-getcommissionmembersincludingprotectedperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcommissionmembersincludingprotectedperson.csv), [Excel](StructureDefinition-getcommissionmembersincludingprotectedperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcommissionmembersincludingprotectedperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getcommissionmembersincludingprotectedperson",
  "version" : "3.0",
  "name" : "GetCommissionMembersIncludingProtectedPerson",
  "title" : "GetCommissionMembersIncludingProtectedPerson",
  "status" : "draft",
  "date" : "2026-11-06T21:29:37+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetCommissionMembersIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3).\nRepresenterar responsens informationsstruktur.\nReturnerar information om personer kopplade till vårdmedarbetaruppdrag för angiven\nvårdenhet, inklusive skyddade personer.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-employee/StructureDefinition/getcommissionmembersincludingprotectedperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcommissionmembersincludingprotectedperson",
      "path" : "getcommissionmembersincludingprotectedperson",
      "short" : "GetCommissionMembersIncludingProtectedPerson",
      "definition" : "Logisk modell för tjänstekontraktet GetCommissionMembersIncludingProtectedPerson\n(RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembersIncludingProtectedPerson:3).\nRepresenterar responsens informationsstruktur.\nReturnerar information om personer kopplade till vårdmedarbetaruppdrag för angiven\nvårdenhet, inklusive skyddade personer."
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation",
      "short" : "Information om personen",
      "definition" : "Information om personen. En person (ett HSA-id) returneras bara en gång även om personen är medlem i flera matchande vårdmedarbetaruppdrag.",
      "comment" : "TKB-fält: `personInformation` (`PersonInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.personHsaId",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.personHsaId",
      "short" : "Personens HSA-id",
      "definition" : "Personens HSA-id.\n\nRef. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `..personHsaId` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** Personens HSA-id. Ref. HSA-id (hsaIdentity) [R5]. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.givenName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.givenName",
      "short" : "Tilltalsnamn",
      "definition" : "Tilltalsnamn. Ref. tilltalsnamn (givenName, gn) [R5]",
      "comment" : "TKB-fält: `..givenName` (`String`, kardinalitet 0..1).\n\n**Modellanteckning:** Tilltalsnamn. Ref. tilltalsnamn (givenName, gn) [R5]. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.middleAndSurName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.middleAndSurName",
      "short" : "Mellan- och Efternamn",
      "definition" : "Mellan- och Efternamn separerade med mellanslag.",
      "comment" : "TKB-fält: `..middleAndSurName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.nickName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.nickName",
      "short" : "Smeknamn",
      "definition" : "Smeknamn. Får ej användas för presentation, endast för sökning.",
      "comment" : "TKB-fält: `..nickName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.personStartDate",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.personStartDate",
      "short" : "Startdatum för personens anställning",
      "definition" : "Eventuellt startdatum för personens anställning.",
      "comment" : "TKB-fält: `..personStartDate` (`dateTime`, kardinalitet 0..1).\n\n**Modellanteckning:** Eventuellt startdatum för personens anställning.\nOm startdatum ännu inte inträtt är anställningen ännu inte aktiv.\nRef. startdatum (startDate) [R5]. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.personEndDate",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.personEndDate",
      "short" : "Slutdatum för personens anställning",
      "definition" : "Eventuellt slutdatum för personens anställning.",
      "comment" : "TKB-fält: `..personEndDate` (`dateTime`, kardinalitet 0..1).\n\n**Modellanteckning:** Eventuellt slutdatum för personens anställning.\nOm slutdatum passerats är anställningen inte längre aktiv.\nRef. slutdatum (endDate) [R5]. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.mail",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.mail",
      "short" : "E-postadress",
      "definition" : "E-postadress. Ref. e-postadress (mail) [R5]",
      "comment" : "TKB-fält: `..mail` (`String`, kardinalitet 0..1).\n\n**Modellanteckning:** E-postadress. Ref. e-postadress (mail) [R5]. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneNumber",
      "short" : "Publikt direkttelefonnummer",
      "definition" : "Publikt direkttelefonnummer.",
      "comment" : "TKB-fält: `..telephoneNumber` (`Telefon`, kardinalitet 0..*).\n\n**Modellanteckning:** Publikt direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5].",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.switchboardNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.switchboardNumber",
      "short" : "Telefonnummer till växel",
      "definition" : "Telefonnummer till växel.",
      "comment" : "TKB-fält: `..switchboardNumber` (`Telefon`, kardinalitet 0..1).\n\n**Modellanteckning:** Telefonnummer till växel. Ref. växeltelefon (hsaSwitchboardNumber) [R5]. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.nonPublicTelephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.nonPublicTelephoneNumber",
      "short" : "Tjänstetelefonnummer",
      "definition" : "Tjänstetelefonnummer.",
      "comment" : "TKB-fält: `..nonPublicTelephoneNumber` (`Telefon`, kardinalitet 0..*).\n\n**Modellanteckning:** Tjänstetelefonnummer. Ref. tjänstetelefon (hsaTelephoneNumber) [R5].",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.mobileNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.mobileNumber",
      "short" : "Mobiltelefonnummer",
      "definition" : "Mobiltelefonnummer.",
      "comment" : "TKB-fält: `..mobileNumber` (`Telefon`, kardinalitet 0..*).\n\n**Modellanteckning:** Mobiltelefonnummer. Ref. mobiltelefon (mobile) [R5]. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.facsimileTelephoneNumber",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.facsimileTelephoneNumber",
      "short" : "Faxnummer",
      "definition" : "Faxnummer.",
      "comment" : "TKB-fält: `..facsimileTelephoneNumber` (`Telefon`, kardinalitet 0..*).\n\n**Modellanteckning:** Faxnummer. Ref. fax (facsimileTelephoneNumber) [R5]. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour",
      "short" : "Telefontider",
      "definition" : "Telefontider för publik telefon (telephoneNumber).",
      "comment" : "TKB-fält: `..telephoneHour` (`TimeSpan`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromDay",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromDay",
      "short" : "Från dag (1=Måndag, 7=Söndag)",
      "definition" : "Från dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..fromDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromTime",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromTime",
      "short" : "Från tid (ISO-8601)",
      "definition" : "Från tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..fromTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toDay",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toDay",
      "short" : "Till dag (1=Måndag, 7=Söndag)",
      "definition" : "Till dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..toDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toTime",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toTime",
      "short" : "Till tid (ISO-8601)",
      "definition" : "Till tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..toTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.comment",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.comment",
      "short" : "Information om aktuellt tidsintervall",
      "definition" : "Information om aktuellt tidsintervall.",
      "comment" : "TKB-fält: `.. ..comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromDate",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.fromDate",
      "short" : "Gäller från och med detta datum",
      "definition" : "Tiden gäller från och med detta datum.",
      "comment" : "TKB-fält: `.. ..fromDate` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toDate",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.telephoneHour.toDate",
      "short" : "Gäller till och med detta datum",
      "definition" : "Tider gäller till och med detta datum.",
      "comment" : "TKB-fält: `.. ..toDate` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.title",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.title",
      "short" : "Titel i fritext",
      "definition" : "Titel i fritext. Ref. titel (title) [R5]",
      "comment" : "TKB-fält: `..title` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicence",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicence",
      "short" : "Legitimerad yrkesgrupp",
      "definition" : "Legitimerad yrkesgrupp. Ref. legitimerad yrkesgrupp (hsaTitle) [R5]",
      "comment" : "TKB-fält: `..healthCareProfessionalLicence` (`String`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle",
      "short" : "Personens befattning",
      "definition" : "Personens befattning",
      "comment" : "TKB-fält: `..paTitle` (`PaTitleType`, kardinalitet 0..*).\n\n**Modellanteckning:** Personens befattning. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleName",
      "short" : "Befattning",
      "definition" : "Befattning. Ref. befattning (paTitleName) [R5]",
      "comment" : "TKB-fält: `.. ..paTitleName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleCode",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.paTitle.paTitleCode",
      "short" : "Befattningskod",
      "definition" : "Befattningskod. Ref. befattningskod (paTitleCode) [R5]",
      "comment" : "TKB-fält: `.. ..paTitleCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.specialityName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.specialityName",
      "short" : "Specialistutbildning (klartext)",
      "definition" : "Specialistutbildning utöver grundutbildning för läkare eller tandläkare.",
      "comment" : "TKB-fält: `..specialityName` (`String`, kardinalitet 0..*).\n\n**Modellanteckning:** Specialistutbildning utöver grundutbildning för läkare eller tandläkare.\nRef. specialitet (specialityName) [R5]. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.specialityCode",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.specialityCode",
      "short" : "Specialistutbildning (kod)",
      "definition" : "Klassificeringskod för specialistutbildning utöver grundutbildning för läkare eller tandläkare.",
      "comment" : "TKB-fält: `..specialityCode` (`String`, kardinalitet 0..*).\n\n**Modellanteckning:** Klassificeringskod för specialistutbildning utöver grundutbildning.\nRef. specialitetskod (specialityCode) [R5]. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicenceSpeciality",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicenceSpeciality",
      "short" : "Legitimerad yrkesgrupp och specialitet",
      "definition" : "Legitimerad yrkesgrupp och specialitet för läkare och tandläkare.",
      "comment" : "TKB-fält: `..healthCareProfessionalLicenceSpeciality` (`HealthCareProfessionalLicenceSpecialityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicenceSpeciality.healthCareProfessionalLicence",
      "short" : "Kod för legitimerad yrkesgrupp",
      "definition" : "Kod för Legitimerad yrkesgrupp som nedanstående specialitet hör till.",
      "comment" : "TKB-fält: `.. ..healthCareProfessionalLicence` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicenceSpeciality.specialityCode",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicenceSpeciality.specialityCode",
      "short" : "Kod för specialistutbildning",
      "definition" : "Kod för specialistutbildning utöver grundutbildning",
      "comment" : "TKB-fält: `.. ..specialityCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicenceSpeciality.specialityName",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.healthCareProfessionalLicenceSpeciality.specialityName",
      "short" : "Klartext för specialistutbildning",
      "definition" : "Klartext för namnet på specialistutbildning utöver grundutbildning",
      "comment" : "TKB-fält: `.. ..specialityName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.protectedPerson",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.protectedPerson",
      "short" : "true om person har skyddad identitet",
      "definition" : "true: om person har skyddad identitet. Ref. hjälpklassen Skyddad person (hsaConfidentialPerson) [R5]",
      "comment" : "TKB-fält: `..protectedPerson` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcommissionmembersincludingprotectedperson.personInformation.feignedPerson",
      "path" : "getcommissionmembersincludingprotectedperson.personInformation.feignedPerson",
      "short" : "true om personen är ett fingerat objekt",
      "definition" : "true: om personen är ett fingerat objekt.",
      "comment" : "TKB-fält: `..feignedPerson` (`Boolean`, kardinalitet 0..1).\n\n**Modellanteckning:** true: om personen är ett fingerat objekt.\nRef. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
