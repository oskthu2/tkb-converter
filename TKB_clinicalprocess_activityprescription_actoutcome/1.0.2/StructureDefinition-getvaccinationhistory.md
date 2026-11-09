# GetVaccinationHistory - clinicalprocess: activityprescription: actoutcome 1.0 v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetVaccinationHistory**

## Logical Model: GetVaccinationHistory 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetVaccinationHistory |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i tjänstekontraktet GetVaccinationHistory 1.0 (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1). Tjänsten returnerar strukturerad eller ostrukturerad information om patientens vaccinationer. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-actoutcome|current/StructureDefinition/StructureDefinition-getvaccinationhistory.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getvaccinationhistory.csv), [Excel](StructureDefinition-getvaccinationhistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getvaccinationhistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory",
  "version" : "1.0",
  "name" : "GetVaccinationHistory",
  "title" : "GetVaccinationHistory",
  "status" : "active",
  "date" : "2026-11-09T03:16:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i tjänstekontraktet GetVaccinationHistory 1.0\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1).\nTjänsten returnerar strukturerad eller ostrukturerad information om patientens vaccinationer.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getvaccinationhistory",
      "path" : "getvaccinationhistory",
      "short" : "GetVaccinationHistory",
      "definition" : "Logisk modell för svaret i tjänstekontraktet GetVaccinationHistory 1.0\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1).\nTjänsten returnerar strukturerad eller ostrukturerad information om patientens vaccinationer."
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord",
      "short" : "VaccinationMedicalRecordType",
      "definition" : "En strukturerad vaccinationsjournal.",
      "comment" : "TKB-fält: `vaccinationMedicalRecord` (`VaccinationMedicalRecordType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader",
      "short" : "PatientSummaryHeaderType",
      "definition" : "Innehåller basinformation om dokumentet.",
      "comment" : "TKB-fält: `../vaccinationMedicalRecordHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getvaccinationhistory-nullifiedreason",
        "severity" : "error",
        "human" : "nullifiedReason får endast anges i kombination med att nullified = true",
        "expression" : "nullifiedReason.exists() implies nullified = true",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId",
      "short" : "documentId",
      "definition" : "Dokumentets identitet som är unik inom källsystemet.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "HSA-id för det system som dokumentet är skapat i.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle",
      "short" : "documentTitle",
      "definition" : "Titel som beskriver den information som sänds i dokumentet.",
      "comment" : "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime",
      "short" : "documentTime",
      "definition" : "Händelsetidpunkt. Tidsangivelse för den vaccinationstidpunkt dokumentet gäller.",
      "comment" : "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId",
      "short" : "patientId",
      "definition" : "Identifierare för patient.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional",
      "short" : "HealthcareProfessionalType",
      "definition" : "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet.",
      "comment" : "TKB-fält: `../../accountableHealthCareProfessional` (`HealthCareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime",
      "short" : "authorTime",
      "definition" : "Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades.",
      "comment" : "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "healthcareProfessionalHSAId",
      "definition" : "Hälso- och sjukvårdspersonens HSA-id. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "healthcareProfessionalName",
      "definition" : "Namn på hälso- och sjukvårdspersonen. Om tillgängligt skall detta anges.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4), se\n\nhttp://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "OrgUnitType",
      "definition" : "Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på",
      "comment" : "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAid",
      "short" : "orgUnitHSAid",
      "definition" : "HSA-id för organisationsenhet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "orgUnitName",
      "definition" : "Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på.",
      "comment" : "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "orgUnitTelecom",
      "definition" : "Telefon till organisationsenhet",
      "comment" : "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "orgUnitEmail",
      "definition" : "Epost till enhet",
      "comment" : "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "orgUnitAddress",
      "definition" : "Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:\n\n”Storgatan 12\n\n468 91 Lilleby”",
      "comment" : "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "orgUnitLocation",
      "definition" : "Text som anger namnet på plats eller ort för organisationens fysiska placering",
      "comment" : "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "healthcareProfessionalCareUnitHSAId",
      "definition" : "HSA-id för Vårdenhet",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "healthcareProfessionalCareGiverHSAId",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonen är uppdragstagare för.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator",
      "short" : "LegalAuthenticatorType",
      "definition" : "Information om vem som signerat informationen i dokumentet.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime",
      "short" : "signatureTime",
      "definition" : "Tidpunkt för signering",
      "comment" : "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAid",
      "short" : "legalAuthenticatorHSAid",
      "definition" : "HSA-id för person som signerat dokumentet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "legalAuthenticatorName",
      "definition" : "Namnen i klartext för signerande person.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient",
      "short" : "approvedForPatient",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.",
      "comment" : "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId",
      "short" : "careContactId",
      "definition" : "Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified",
      "short" : "nullified",
      "definition" : "Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten.",
      "comment" : "TKB-fält: `../../nullified` (`boolean`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason",
      "short" : "nullifiedReason",
      "definition" : "Anger orsak till makulering. Får endast anges i kombination med att nullified = true",
      "comment" : "TKB-fält: `../../nullifiedReason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody",
      "short" : "VaccinationMedicalRecordBodyType",
      "definition" : "Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData om utförda vaccinationer vid vaccinationstillfället.",
      "comment" : "TKB-fält: `../vaccinationMedicalRecordBody` (`VaccinationMedicalRecordBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord",
      "short" : "RegistrationRecordType",
      "definition" : "Annan information än ovan som registreras vid eller relaterat till vaccinationstillfället",
      "comment" : "TKB-fält: `../../registrationRecord` (`RegistrationRecordType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg",
      "short" : "OrgUnitType",
      "definition" : "Information om juridisk vårdgivare; hsaid (om finns) och kontaktuppgifter namn,epost,tel,adress etc",
      "comment" : "TKB-fält: `../../../careGiverOrg` (`OrgUnitType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAid",
      "short" : "orgUnitHSAid",
      "definition" : "HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName",
      "short" : "orgUnitName",
      "definition" : "Namn på organisationsenhet. Om tillgängligt skall detta anges.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom",
      "short" : "orgUnitTelecom",
      "definition" : "Telefon till organisationsenhet.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail",
      "short" : "orgUnitEmail",
      "definition" : "Epost till organisationsenhet.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress",
      "short" : "orgUnitAddress",
      "definition" : "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:\n\n”Storgatan 12\n\n468 91 Lilleby”",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation",
      "short" : "orgUnitLocation",
      "definition" : "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitLocation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact",
      "short" : "ActorType",
      "definition" : "Kontaktperson hos juridiskt ansvarig vårdgivare",
      "comment" : "TKB-fält: `../../../careGiverContact` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getvaccinationhistory-actor-hsaid-or-name",
        "severity" : "error",
        "human" : "ActorType: minst ett av hsaid och personName ska anges",
        "expression" : "hsaid.exists() or personName.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid",
      "short" : "hsaid",
      "definition" : "HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält i ActorType: `hsaId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName",
      "short" : "personName",
      "definition" : "Namn på personen. Minst ett av dessa två fält ska anges.",
      "comment" : "TKB-fält i ActorType: `name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail",
      "short" : "personEmail",
      "definition" : "Epostadress till personen",
      "comment" : "TKB-fält i ActorType: `personEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom",
      "short" : "personTelecom",
      "definition" : "Telefon till personen",
      "comment" : "TKB-fält i ActorType: `personTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress",
      "short" : "personAddress",
      "definition" : "Adress till personen",
      "comment" : "TKB-fält i ActorType: `personAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName",
      "short" : "sourceSystemName",
      "definition" : "Klartextnamn på källsystemet",
      "comment" : "TKB-fält: `../../../sourceSystemName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName",
      "short" : "sourceSystemProductName",
      "definition" : "Klartextnamn på källsystemets produktnamn",
      "comment" : "TKB-fält: `../../../sourceSystemProductName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion",
      "short" : "sourceSystemProductVersion",
      "definition" : "Klartextnamn på källsystemets produktversion",
      "comment" : "TKB-fält: `../../../sourceSystemProductVersion` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact",
      "short" : "ActorType",
      "definition" : "Kontaktuppgifter till källsystemsansvarig",
      "comment" : "TKB-fält: `../../../sourceSystemContact` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getvaccinationhistory-actor-hsaid-or-name",
        "severity" : "error",
        "human" : "ActorType: minst ett av hsaid och personName ska anges",
        "expression" : "hsaid.exists() or personName.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid",
      "short" : "hsaid",
      "definition" : "HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält i ActorType: `hsaId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName",
      "short" : "personName",
      "definition" : "Namn på personen. Minst ett av dessa två fält ska anges.",
      "comment" : "TKB-fält i ActorType: `name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail",
      "short" : "personEmail",
      "definition" : "Epostadress till personen",
      "comment" : "TKB-fält i ActorType: `personEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom",
      "short" : "personTelecom",
      "definition" : "Telefon till personen",
      "comment" : "TKB-fält i ActorType: `personTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress",
      "short" : "personAddress",
      "definition" : "Adress till personen",
      "comment" : "TKB-fält i ActorType: `personAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId",
      "short" : "careUnitSmiId",
      "definition" : "Utförande vårdenhetens registreringsId hos SMI",
      "comment" : "TKB-fält: `../../../careUnitSmiId` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date",
      "short" : "date",
      "definition" : "Datum då nedan vaccination(er) gavs",
      "comment" : "TKB-fält: `../../../date` (`DateType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode",
      "short" : "patientPostalCode",
      "definition" : "Postnummer för patientens senast kända bostadsadress",
      "comment" : "TKB-fält: `../../../patientPostalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote",
      "short" : "vaccinationUnstructuredNote",
      "definition" : "Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda här.\n\nKan formateras enligt HL7NarrativeBlock.\n\nNot: Om endast ostrukturerad vaccinationsinformation finns, kan, detta kontrakt produceras men i så fall inga administrationRecords nedan returneras.",
      "comment" : "TKB-fält: `../../../vaccinationUnstructuredNote` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory",
      "short" : "riskCategory",
      "definition" : "Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i förekommande fall patientens hälsodeklaration",
      "comment" : "TKB-fält: `../../../riskCategory` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect",
      "short" : "patientAdverseEffect",
      "definition" : "Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej specifik vaccination (i fall som när flera vaccin givits vid samma tillfälle)",
      "comment" : "TKB-fält: `../../../patientAdverseEffect` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord",
      "short" : "AdministrationRecordType",
      "definition" : "Information om utförd(a) vaccination(er) vid tillfället. Ordinerad men av någon anledning ej given vaccination kan inkluderas.",
      "comment" : "TKB-fält: `../../administrationRecord` (`AdministrationRecordType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName",
      "short" : "vaccinationProgramName",
      "definition" : "Information om vaccinationsprogram om vaccinationen är del av sådant program. Tillåter kodat värde liksom endast namn genom bruk av DisplayName i CVType.",
      "comment" : "TKB-fält: `../../../vaccinationProgramName` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg",
      "short" : "OrgUnitType",
      "definition" : "Information om var vaccinationen ordinerats (eller i fallet med förskrivna vaccinationsläkemedel, förskrivits)",
      "comment" : "TKB-fält: `../../../prescriberOrg` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAid",
      "short" : "orgUnitHSAid",
      "definition" : "HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName",
      "short" : "orgUnitName",
      "definition" : "Namn på organisationsenhet. Om tillgängligt skall detta anges.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom",
      "short" : "orgUnitTelecom",
      "definition" : "Telefon till organisationsenhet.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail",
      "short" : "orgUnitEmail",
      "definition" : "Epost till organisationsenhet.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress",
      "short" : "orgUnitAddress",
      "definition" : "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:\n\n”Storgatan 12\n\n468 91 Lilleby”",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation",
      "short" : "orgUnitLocation",
      "definition" : "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitLocation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson",
      "short" : "ActorType",
      "definition" : "Information om vem som ordinerat/förskrivit vaccinationen",
      "comment" : "TKB-fält: `../../../prescriberPerson` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getvaccinationhistory-actor-hsaid-or-name",
        "severity" : "error",
        "human" : "ActorType: minst ett av hsaid och personName ska anges",
        "expression" : "hsaid.exists() or personName.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid",
      "short" : "hsaid",
      "definition" : "HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält i ActorType: `hsaId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName",
      "short" : "personName",
      "definition" : "Namn på personen. Minst ett av dessa två fält ska anges.",
      "comment" : "TKB-fält i ActorType: `name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail",
      "short" : "personEmail",
      "definition" : "Epostadress till personen",
      "comment" : "TKB-fält i ActorType: `personEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom",
      "short" : "personTelecom",
      "definition" : "Telefon till personen",
      "comment" : "TKB-fält i ActorType: `personTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress",
      "short" : "personAddress",
      "definition" : "Adress till personen",
      "comment" : "TKB-fält i ActorType: `personAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg",
      "short" : "OrgUnitType",
      "definition" : "Information om vårdenhet som utfört vaccinationen",
      "comment" : "TKB-fält: `../../../performerOrg` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAid",
      "short" : "orgUnitHSAid",
      "definition" : "HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName",
      "short" : "orgUnitName",
      "definition" : "Namn på organisationsenhet. Om tillgängligt skall detta anges.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom",
      "short" : "orgUnitTelecom",
      "definition" : "Telefon till organisationsenhet.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail",
      "short" : "orgUnitEmail",
      "definition" : "Epost till organisationsenhet.",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress",
      "short" : "orgUnitAddress",
      "definition" : "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:\n\n”Storgatan 12\n\n468 91 Lilleby”",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation",
      "short" : "orgUnitLocation",
      "definition" : "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering",
      "comment" : "TKB-fält i OrgUnitType: `orgUnitLocation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer",
      "short" : "ActorType",
      "definition" : "Information om vem som utfört (administrerat) vaccineringen",
      "comment" : "TKB-fält: `../../../performer` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getvaccinationhistory-actor-hsaid-or-name",
        "severity" : "error",
        "human" : "ActorType: minst ett av hsaid och personName ska anges",
        "expression" : "hsaid.exists() or personName.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid",
      "short" : "hsaid",
      "definition" : "HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel:\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)",
      "comment" : "TKB-fält i ActorType: `hsaId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName",
      "short" : "personName",
      "definition" : "Namn på personen. Minst ett av dessa två fält ska anges.",
      "comment" : "TKB-fält i ActorType: `name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail",
      "short" : "personEmail",
      "definition" : "Epostadress till personen",
      "comment" : "TKB-fält i ActorType: `personEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom",
      "short" : "personTelecom",
      "definition" : "Telefon till personen",
      "comment" : "TKB-fält i ActorType: `personTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress",
      "short" : "personAddress",
      "definition" : "Adress till personen",
      "comment" : "TKB-fält i ActorType: `personAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite",
      "short" : "anatomicalSite",
      "definition" : "Information om var på kroppen vaccinet givits.",
      "comment" : "TKB-fält: `../../../anatomicalSite` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route",
      "short" : "route",
      "definition" : "Information om hur vaccinet givits. Ibland kallat ”administrationsväg”",
      "comment" : "TKB-fält: `../../../route` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage",
      "short" : "DosageType",
      "definition" : "Mängd vaccin som givits",
      "comment" : "TKB-fält: `../../../dosage` (`DosageType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity",
      "short" : "PQType",
      "definition" : "Mängd preparat som givits dvs 1 ml etc.\n\nSkall anges om möjligt i denna strukturerade form med värde(float) samt enhet. Annars i nästa fält om det endast finns angivet som text",
      "comment" : "TKB-fält i DosageType: `quantity` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity.value",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity.unit",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.displayName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.displayName",
      "short" : "displayName",
      "definition" : "Fritextbeskrivning av preparat och mängd som givits. T ex ”Twinrix 1 ml, 1 av 3”, ”2 ml” odyl.\n\nAnges även om quantity angivits ovan",
      "comment" : "TKB-fält i DosageType: `displayName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete",
      "short" : "isDoseComplete",
      "definition" : "True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd. Annars false (dvs för de fall som ytterligare delvaccinationer skall ges innan full dos är uppnådd)",
      "comment" : "TKB-fält: `../../../isDoseComplete` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber",
      "short" : "doseOrdinalNumber",
      "definition" : "Anger i förekommande fall om vaccineringen är en del av flera vaccinationer som skall utföras, värden 1,2,3… 1 om endast en",
      "comment" : "TKB-fält: `../../../doseOrdinalNumber` (`integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses",
      "short" : "numberOfPrescribedDoses",
      "definition" : "Anger antalet delvaccinationer som skall utföras för att vaccinationen skall räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos",
      "comment" : "TKB-fält: `../../../numberOfPrescribedDoses` (`integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription",
      "short" : "sourceDescription",
      "definition" : "Fritextinformation som anger källa för vaccinering som efterregistrerats. T ex namn på annan vårdenhet, intyg, land el. dyl.",
      "comment" : "TKB-fält: `../../../sourceDescription` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription",
      "short" : "commentPrescription",
      "definition" : "Fritextinformation. T.ex. instruktioner som noterats i ordinationen av vaccineringen",
      "comment" : "TKB-fält: `../../../commentPrescription` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration",
      "short" : "commentAdministration",
      "definition" : "Fritextinformation. Generella kommentarer gjorde vid vaccineringen av den som utfört den",
      "comment" : "TKB-fält: `../../../commentAdministration` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect",
      "short" : "patientAdverseEffect",
      "definition" : "Information om patienten erfarit någon eller några reaktioner hänför bara till den specifika administreringen",
      "comment" : "TKB-fält: `../../../patientAdverseEffect` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineType",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineType",
      "short" : "vaccineType",
      "definition" : "Information om givet vaccin",
      "comment" : "TKB-fält: `../../../vaccineType` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName",
      "short" : "vaccineName",
      "definition" : "Information om givet vaccins produktnamn. I Code skall då anges exempelvis NPL-id om det finns och kodverk ”npl”. Om standardkodverk ej används, ej anges lokal kod, se CVType ovan. Namnet i klartext ges i DisplayName.",
      "comment" : "TKB-fält: `../../../vaccineName` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId",
      "short" : "vaccineBatchId",
      "definition" : "Identifiering av batchnummer för vaccinets tillverkning",
      "comment" : "TKB-fält: `../../../vaccineBatchId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer",
      "short" : "vaccineManufacturer",
      "definition" : "Namn på tillverkaren av vaccinet",
      "comment" : "TKB-fält: `../../../vaccineManufacturer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease",
      "short" : "vaccineTargetDisease",
      "definition" : "Information om den/de sjukdomar vaccinet skyddar emot",
      "comment" : "TKB-fält: `../../../vaccineTargetDisease` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference",
      "short" : "vaccinationUniqueReference",
      "definition" : "Unika referensen till källsystemets vaccinationsinformation",
      "comment" : "TKB-fält: `../../../vaccinationUniqueReference` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    }]
  }
}

```
