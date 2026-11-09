# RegisterMedicationPrescription — Request - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicationPrescription — Request**

## Logical Model: RegisterMedicationPrescription — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:RegisterMedicationPrescriptionRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i RegisterMedicationPrescription. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registermedicationprescription-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicationprescription-request.csv), [Excel](StructureDefinition-registermedicationprescription-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicationprescription-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request",
  "version" : "2.0",
  "name" : "RegisterMedicationPrescriptionRequest",
  "title" : "RegisterMedicationPrescription — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i RegisterMedicationPrescription.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicationprescription-request",
      "path" : "registermedicationprescription-request",
      "short" : "RegisterMedicationPrescription — Request",
      "definition" : "Logisk modell för requestparametrar i RegisterMedicationPrescription."
    },
    {
      "id" : "registermedicationprescription-request.patientInformation",
      "path" : "registermedicationprescription-request.patientInformation",
      "short" : "PatientInformation_setter",
      "definition" : "patientId eller patientInformation måste anges.",
      "comment" : "TKB-fält: `patientInformation*` (`PatientInformation_setter`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.patientId",
      "path" : "registermedicationprescription-request.patientInformation.patientId",
      "short" : "patientId",
      "definition" : "Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet)\n\nEndast om det är känt.\n\nPU: personid\n\nRR: personnummer",
      "comment" : "TKB-fält: `../patientId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.givenName",
      "path" : "registermedicationprescription-request.patientInformation.givenName",
      "short" : "givenName",
      "definition" : "Patientens förnamn.\n\nPU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn.\n\nRR: förnamn",
      "comment" : "TKB-fält: `../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.familyName",
      "path" : "registermedicationprescription-request.patientInformation.familyName",
      "short" : "Patientens efternamn.PU: efternamn RR: efternamn",
      "definition" : "Patientens efternamn.\n\nPU: efternamn\n\nRR: efternamn",
      "comment" : "TKB-fält: `../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.dateOfBirth",
      "path" : "registermedicationprescription-request.patientInformation.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Födelsedatum (8 siffror).\n\nAnges för patient som saknar giltigt personnummer.\n\nObligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag.\n\nPU: födelsetid\n\nRR: födelsedatum",
      "comment" : "TKB-fält: `../dateOfBirth` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.gender",
      "path" : "registermedicationprescription-request.patientInformation.gender",
      "short" : "Patientens kön.Obligatorisk parameter om Personnummer saknas. {Male, Female, Unspecified}PU: könRR: kön",
      "definition" : "Patientens kön.\n\nObligatorisk parameter om Personnummer saknas.\n\n{Male, Female, Unspecified}\n\nPU: kön\n\nRR: kön",
      "comment" : "TKB-fält: `../gender` (`GenderEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.deliveryAdress1",
      "path" : "registermedicationprescription-request.patientInformation.deliveryAdress1",
      "short" : "Patientens gatuadress 1.PU: utdelningsadress1RR: adress1",
      "definition" : "Patientens gatuadress 1.\n\nPU: utdelningsadress1\n\nRR: adress1",
      "comment" : "TKB-fält: `../deliveryAdress1` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.deliveryAdress2",
      "path" : "registermedicationprescription-request.patientInformation.deliveryAdress2",
      "short" : "Patientens adress 2.PU: utdelningsadress2RR: adress2",
      "definition" : "Patientens adress 2.\n\nPU: utdelningsadress2\n\nRR: adress2",
      "comment" : "TKB-fält: `../deliveryAdress2` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.postalCode",
      "path" : "registermedicationprescription-request.patientInformation.postalCode",
      "short" : "Patientens postnummer.PU: postnrRR: postnummer",
      "definition" : "Patientens postnummer.\n\nPU: postnr\n\nRR: postnummer",
      "comment" : "TKB-fält: `../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.city",
      "path" : "registermedicationprescription-request.patientInformation.city",
      "short" : "Patientens postort.PU: postortRR: postort",
      "definition" : "Patientens postort.\n\nPU: postort\n\nRR: postort",
      "comment" : "TKB-fält: `../city` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.phoneNumber1",
      "path" : "registermedicationprescription-request.patientInformation.phoneNumber1",
      "short" : "Patientens telefonnummer 1.PU: saknasRR: telefonnummer1",
      "definition" : "Patientens telefonnummer 1.\n\nPU: saknas\n\nRR: telefonnummer1",
      "comment" : "TKB-fält: `../phoneNumber1` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.phoneNumber2",
      "path" : "registermedicationprescription-request.patientInformation.phoneNumber2",
      "short" : "Patientens telefonnummer 2.PU: saknasRR: telefonnummer2",
      "definition" : "Patientens telefonnummer 2.\n\nPU: saknas\n\nRR: telefonnummer2",
      "comment" : "TKB-fält: `../phoneNumber2` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.registeredBy",
      "path" : "registermedicationprescription-request.registeredBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Den person som registrerat ordinationen.",
      "comment" : "TKB-fält: `registeredBy` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.registeredBy.healthcareProfessionalHSAId",
      "path" : "registermedicationprescription-request.registeredBy.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "comment" : "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.registeredBy.givenName",
      "path" : "registermedicationprescription-request.registeredBy.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "comment" : "TKB-fält: `../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.registeredBy.familyName",
      "path" : "registermedicationprescription-request.registeredBy.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "comment" : "TKB-fält: `../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.registeredBy.healthcareProfessionalRoleCode",
      "path" : "registermedicationprescription-request.registeredBy.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.\n\nSe: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.registeredBy.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationprescription-request.registeredBy.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.registeredBy.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationprescription-request.registeredBy.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.prescribedBy",
      "path" : "registermedicationprescription-request.prescribedBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.\n\nOrdinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext",
      "comment" : "TKB-fält: `prescribedBy` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.prescribedBy.healthcareProfessionalHSAId",
      "path" : "registermedicationprescription-request.prescribedBy.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "comment" : "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.prescribedBy.givenName",
      "path" : "registermedicationprescription-request.prescribedBy.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "comment" : "TKB-fält: `../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.prescribedBy.familyName",
      "path" : "registermedicationprescription-request.prescribedBy.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "comment" : "TKB-fält: `../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.prescribedBy.healthcareProfessionalRoleCode",
      "path" : "registermedicationprescription-request.prescribedBy.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.\n\nSe: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.prescribedBy.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationprescription-request.prescribedBy.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.prescribedBy.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationprescription-request.prescribedBy.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.accountablePrescriber",
      "path" : "registermedicationprescription-request.accountablePrescriber",
      "short" : "HealthcareProfessionalType",
      "definition" : "Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv.",
      "comment" : "TKB-fält: `accountablePrescriber` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.accountablePrescriber.healthcareProfessionalHSAId",
      "path" : "registermedicationprescription-request.accountablePrescriber.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "comment" : "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.accountablePrescriber.givenName",
      "path" : "registermedicationprescription-request.accountablePrescriber.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "comment" : "TKB-fält: `../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.accountablePrescriber.familyName",
      "path" : "registermedicationprescription-request.accountablePrescriber.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "comment" : "TKB-fält: `../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.accountablePrescriber.healthcareProfessionalRoleCode",
      "path" : "registermedicationprescription-request.accountablePrescriber.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.\n\nSe: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.accountablePrescriber.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationprescription-request.accountablePrescriber.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.accountablePrescriber.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationprescription-request.accountablePrescriber.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicalPrescriber",
      "path" : "registermedicationprescription-request.medicalPrescriber",
      "short" : "HealthcareProfessionalType",
      "definition" : "Förskrivare",
      "comment" : "TKB-fält: `medicalPrescriber` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicalPrescriber.healthcareProfessionalHSAId",
      "path" : "registermedicationprescription-request.medicalPrescriber.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "comment" : "TKB-fält: `../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicalPrescriber.givenName",
      "path" : "registermedicationprescription-request.medicalPrescriber.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "comment" : "TKB-fält: `../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicalPrescriber.familyName",
      "path" : "registermedicationprescription-request.medicalPrescriber.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "comment" : "TKB-fält: `../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicalPrescriber.healthcareProfessionalRoleCode",
      "path" : "registermedicationprescription-request.medicalPrescriber.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.\n\nSe: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicalPrescriber.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationprescription-request.medicalPrescriber.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicalPrescriber.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationprescription-request.medicalPrescriber.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.revokeMedicationDispenseAuthorizations",
      "path" : "registermedicationprescription-request.revokeMedicationDispenseAuthorizations",
      "short" : "revokeMedicationDispenseAuthorizations",
      "definition" : "revokeMedicationDispenseAuthorizations",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader",
      "path" : "registermedicationprescription-request.authHeader",
      "short" : "EHMAuthenticationSupplement",
      "definition" : "enbart då NOD anropar underliggande tjänster som tillhandahålls av EHM (RR/OR(LF).",
      "comment" : "TKB-fält: `authHeader` (`EHMAuthenticationSupplement`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.personalPrescriptionCode",
      "path" : "registermedicationprescription-request.authHeader.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.\n\nObligatorisk parameter om teknisk sprit eller läkemedel förskrivs.\n\nGruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.\n\nFör användare som har gruppförskrivarkod gäller:\n\nbefattningskod är obligatorisk\n\nFör läkare (LK) - yrkeskod (dvs LK) är obligatorisk.\n\nVid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska\n\nValideras i AFF\n\nHSA: förskrivarkod, även kallat personalPrescriptionCode\n\nRR: förskrivarkod\n\nargos: forskrivarkod",
      "comment" : "TKB-fält: `../personalPrescriptionCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.legitimationCode",
      "path" : "registermedicationprescription-request.authHeader.legitimationCode",
      "short" : "legitimationCode",
      "definition" : "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.\n\nSe gruppförskrivarkod för villkor.\n\nHSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.\n\nyrkeskod\tGruppkod\tyrkeskod klartext\n\nSJ\t971000\tSjuksköterska\n\nAP\t972000\tApotekare\n\nRC\t973000\tReceptarie\n\nRR: legitimationskod\n\nargos: legitimationskod",
      "comment" : "TKB-fält: `../legitimationCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.hsaTitleCode",
      "path" : "registermedicationprescription-request.authHeader.hsaTitleCode",
      "short" : "hsaTitleCode",
      "definition" : "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.\n\nSe gruppförskrivarkod för villkor.\n\nKontrolleras i receptregistret att personen har angiven yrkeskod.\n\nValideras i AFF\n\nHSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:\"HSA Innehåll Legitimerad Yrkesgrupp\" på se www.inera.se/hsa.\n\nNotera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.\n\nRR: yrkeskod\n\nargos: yrkesgrupp",
      "comment" : "TKB-fält: `../hsaTitleCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.paTitleCode",
      "path" : "registermedicationprescription-request.authHeader.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "Förskrivarens befattningskod.\n\nSe gruppförskrivarkod för villkor.\n\nHSA: befattningskod, även kallat paTitleCode.\n\nNotera också att samma användare kan inneha flera befattningskoder.\n\nRR: befattningskod\n\nargos: befattningskod",
      "comment" : "TKB-fält: `../paTitleCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.givenName",
      "path" : "registermedicationprescription-request.authHeader.givenName",
      "short" : "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamnargos: fornamn",
      "definition" : "Förskrivarens tilltalsnamn.\n\nHSA: tilltalsnamn (givenName)\n\nRR: förnamn\n\nargos: fornamn",
      "comment" : "TKB-fält: `../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.familyName",
      "path" : "registermedicationprescription-request.authHeader.familyName",
      "short" : "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamnargos: efternamn",
      "definition" : "Förskrivarens efternamn.\n\nValideras i AFF\n\nHSA: efternamn\n\nRR: efternamn\n\nargos: efternamn",
      "comment" : "TKB-fält: `../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.unitPrescriptionCode",
      "path" : "registermedicationprescription-request.authHeader.unitPrescriptionCode",
      "short" : "unitPrescriptionCode",
      "definition" : "Förskrivarens arbetsplatskod eller grupparbetsplatskod\n\nUnik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.\n\nArbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.\n\nSaknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.\n\nObligatorisk parameter om förmån angivits.\n\nValideras i AFF\n\nHSA: arbetsplatskod, även kallat unitPrescriptionCode.\n\nRR: arbetsplatskod\n\nargos: arbetsplatskod",
      "comment" : "TKB-fält: `../unitPrescriptionCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.careUnitName",
      "path" : "registermedicationprescription-request.authHeader.careUnitName",
      "short" : "careUnitName",
      "definition" : "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi\n\nHSA: enhetsnamn (careUnitName )\n\nRR: arbetsplatsnamn\n\nargos: arbetsplatsnamn",
      "comment" : "TKB-fält: `../careUnitName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.city",
      "path" : "registermedicationprescription-request.authHeader.city",
      "short" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsortargos: postort",
      "definition" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED\n\nRR: arbetsplatsort\n\nargos: postort",
      "comment" : "TKB-fält: `../city` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.phoneNumber",
      "path" : "registermedicationprescription-request.authHeader.phoneNumber",
      "short" : "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1argos: telefonnummer",
      "definition" : "Förskrivarens eller vårdcentralens telefonnummer.\n\nHSA: direkttelefon\n\nRR: telefonnummer1\n\nargos: telefonnummer",
      "comment" : "TKB-fält: `../phoneNumber` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.postalAdress",
      "path" : "registermedicationprescription-request.authHeader.postalAdress",
      "short" : "postalAdress",
      "definition" : "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.\n\nHSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.\n\nRR: postadress\n\nargos: postadress",
      "comment" : "TKB-fält: `../postalAdress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.postalCode",
      "path" : "registermedicationprescription-request.authHeader.postalCode",
      "short" : "postalCode",
      "definition" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45\n\nHSA: postnummer (postalCode)\n\nRR: postnummer\n\nargos: postnummer",
      "comment" : "TKB-fält: `../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.organizationCode",
      "path" : "registermedicationprescription-request.authHeader.organizationCode",
      "short" : "Användarens organisationsnummerHSA: careGiverOrgNoargos: organisationsnummer",
      "definition" : "Användarens organisationsnummer\n\nHSA: careGiverOrgNo\n\nargos: organisationsnummer",
      "comment" : "TKB-fält: `../organizationCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.requestId",
      "path" : "registermedicationprescription-request.authHeader.requestId",
      "short" : "argos: requestId",
      "definition" : "argos: requestId",
      "comment" : "TKB-fält: `../requestId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.roleName",
      "path" : "registermedicationprescription-request.authHeader.roleName",
      "short" : "roleName",
      "definition" : "Den roll som den autentiserade användaren agerar som. För yrkesgrupp Läkare ska FORSKRIVARE  användas, sjuksköterskor ska använda LEG_VARDPERSONAL.\n\nargos: rollnamn",
      "comment" : "TKB-fält: `../roleName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.authHeader.hsaID",
      "path" : "registermedicationprescription-request.authHeader.hsaID",
      "short" : "HSA-id för användaren.argos: hsaID",
      "definition" : "HSA-id för användaren.\n\nargos: hsaID",
      "comment" : "TKB-fält: `../hsaID` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationListVersion",
      "path" : "registermedicationprescription-request.medicationListVersion",
      "short" : "medicationListVersion",
      "definition" : "Version på patientens samlade läkemedelslista.\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionSequenceId",
      "path" : "registermedicationprescription-request.medicationPrescriptionSequenceId",
      "short" : "medicationPrescriptionSequenceId",
      "definition" : "Unikt id för Läkemedelsbehandlingen.\n\nSkapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras.\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `medicationPrescriptionSequenceId` (`Identifier`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList",
      "path" : "registermedicationprescription-request.medicationPrescriptionList",
      "short" : "MedicationPrescriptionListType_setter",
      "definition" : "Lista med läkemedelsbehandlingar.",
      "comment" : "TKB-fält: `medicationPrescriptionList` (`MedicationPrescriptionListType_setter`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription",
      "short" : "MedicationPrescription_setter",
      "definition" : "Läkemedelsbehandling.",
      "comment" : "TKB-fält: `../medicationPrescription` (`MedicationPrescription_setter`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber",
      "short" : "HealthcareProfessionalType",
      "definition" : "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.Ordinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext.Se not 1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "comment" : "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.givenName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "comment" : "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.familyName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "comment" : "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalRoleCode",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.\n\nSe: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber",
      "short" : "HealthcareProfessionalType",
      "definition" : "Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "comment" : "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.givenName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "comment" : "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.familyName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "comment" : "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.\n\nSe: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.writeTime",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.writeTime",
      "short" : "writeTime",
      "definition" : "Tidpunkt då det medicinska beslutet fattades. Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet). I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treatmentStartTime",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treatmentStartTime",
      "short" : "treatmentStartTime",
      "definition" : "Tidpunkt från vilken patienten ska ta sitt läkemedel.insättningstidpunkt utgör startpunkt för angiven dosering.Vid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treatmentEndTime",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treatmentEndTime",
      "short" : "treatmentEndTime",
      "definition" : "Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel.Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad.Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare. Tidpunkten får, om den anges, inte vara före insättningstidpunkt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluationTime",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluationTime",
      "short" : "evaluationTime",
      "definition" : "Tidpunkt då läkemedelsbehandlingen senast bör utvärderas. Tidpunkten får, om den anges, inte vara före insättningstidpunkt.Syftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering.Om ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen.Om endast vårdenhet och vårdgivare är kända kan information om personen utlämnas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "comment" : "TKB-fält: `../../healthcareProfessionalHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.givenName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "comment" : "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.familyName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "comment" : "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.\n\nSe: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../../healthcareProfessionalCareUnitHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "comment" : "TKB-fält: `../../healthcareProfessionalCareGiverHSAId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.reason",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.reason",
      "short" : "Reason",
      "definition" : "Orsaken till beslutet.Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen.Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering. Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.reason.code",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.reason.code",
      "short" : "code",
      "definition" : "Snomed CT-koden för vald ordinationsorsak.\n\nAnges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO).\n\nOrdinationsorsak anges alltid i kodad form. Det finns därför en kod med innebörden Annan orsak Om denna kod används, används attributet annan orsak text för att ange denna orsak i fritext.",
      "comment" : "TKB-fält: `../../code` (`CodeableConcept`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.reason.primaryReason",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.reason.primaryReason",
      "short" : "Uppgift om huruvida orsaken är ”huvudorsak”, dvs. viktigare än andra angivna orsaker",
      "definition" : "Uppgift om huruvida ordinationsorsaken är \"huvudorsak\", dvs. viktigare än andra angivna orsaker",
      "comment" : "TKB-fält: `../../primaryReason` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.annotation",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.annotation",
      "short" : "annotation",
      "definition" : "Ordinatörens kommentarer i fritext kopplade till en specifik ordination.Syftet är t.ex. att ordinatören i fritext ska kunna ange sådant som inte framgår av beslutsorsak eller ordinationsorsak och som är av intresse för annan vård- och omsorgspersonal.Fältet är avsett att beskriva nuläget för läkemedelsbehandlingen utan att användaren ska behöva ta del av notatfältet i tidigare läkemedelsordinationer.Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.use",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.use",
      "short" : "use",
      "definition" : "Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. ”sväljes hela”, ”påstrykes i armvecket”. Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs).Ett förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt.Ingår i Expedieringsunderlag som en del av doseringstext 1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.purpose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.purpose",
      "short" : "Behandlingsändamål i klartext.Ingår i Expedieringsunderlag som Ändamål klartext",
      "definition" : "Behandlingsändamål i klartext.Ingår i Expedieringsunderlag som Ändamål klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication",
      "short" : "Medication_virtual",
      "definition" : "Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser.Det finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet.Vid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DistributedDrug-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DistributedDrug_attr",
      "short" : "DistributedDrug",
      "definition" : "DistributedDrug_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DistributedDrug-attr.NPLid",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DistributedDrug_attr.NPLid",
      "short" : "NPLid",
      "definition" : "id som identifierar läkemedelsprodukt.Hämtas från SIL.Ex. Alvedon tablett 500 mg.Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)Ingår i Expedieringsunderlag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DistributedDrug-attr.tradeName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DistributedDrug_attr.tradeName",
      "short" : "tradeName",
      "definition" : "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.Möjlighet att utnyttja detta fält för ”fritextordination” måste testas (t.ex. för studieläkemedel eller ”okänt läkemedel”).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DistributedDrug-attr.notInterchangable",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DistributedDrug_attr.notInterchangable",
      "short" : "notInterchangable",
      "definition" : "Markering att ordinerad vara ej får bytas ut vid expedieringFalskt = Får bytas utSant = Får ej bytas utNotera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle_attr",
      "short" : "DrugArticle",
      "definition" : "DrugArticle_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle-attr.NPLPackid",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle_attr.NPLPackid",
      "short" : "NPLPackid",
      "definition" : "Id som identifierar läkemedelsartikel. Hämtas från SIL.Anger läkemedel på nivån : Alvedon tablett 500 mg, 16 st blister.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle-attr.distributedTradeName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle_attr.distributedTradeName",
      "short" : "distributedTradeName",
      "definition" : "Produktnamn + förpackningNamn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.Kallas artikel hos apoteksaktörerna",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle-attr.distributedDrug",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle_attr.distributedDrug",
      "short" : "DistributedDrug",
      "definition" : "Den Läkemedelsprodukt som Läkemedelsartikeln baseras på.(se not 1)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle-attr.distributedDrug.NPLid",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle_attr.distributedDrug.NPLid",
      "short" : "NPLid",
      "definition" : "id som identifierar läkemedelsprodukt.Hämtas från SIL.Ex. Alvedon tablett 500 mg.Obligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).NPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.Obs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.Är obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)Ingår i Expedieringsunderlag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle-attr.distributedDrug.tradeName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle_attr.distributedDrug.tradeName",
      "short" : "tradeName",
      "definition" : "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.Möjlighet att utnyttja detta fält för ”fritextordination” måste testas (t.ex. för studieläkemedel eller ”okänt läkemedel”).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle-attr.distributedDrug.notInterchangable",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.DrugArticle_attr.distributedDrug.notInterchangable",
      "short" : "notInterchangable",
      "definition" : "Markering att ordinerad vara ej får bytas ut vid expedieringFalskt = Får bytas utSant = Får ej bytas utNotera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.ExTempore-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.ExTempore_attr",
      "short" : "ExTempore",
      "definition" : "ExTempore_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.ExTempore-attr.description",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.ExTempore_attr.description",
      "short" : "Beskriver komposition mm. Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget.",
      "definition" : "Beskriver komposition mm. Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug_attr",
      "short" : "LicensedDrug",
      "definition" : "LicensedDrug_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug-attr.productName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug_attr.productName",
      "short" : "Namn på läkemedlet i fri text.Ingår i Expedieringsunderlag.doseringstext 2.",
      "definition" : "Namn på läkemedlet i fri text.Ingår i Expedieringsunderlag.doseringstext 2.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug-attr.strength",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug_attr.strength",
      "short" : "Ingår i Expedieringsunderlag.doseringstext 2.",
      "definition" : "Ingår i Expedieringsunderlag.doseringstext 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug-attr.drugForm",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug_attr.drugForm",
      "short" : "Ingår i Expedieringsunderlag.doseringstext 2.",
      "definition" : "Ingår i Expedieringsunderlag.doseringstext 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug-attr.licenseInformation",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.LicensedDrug_attr.licenseInformation",
      "short" : "t.ex. vilket apotek som har den beviljade licensenIngår i Expedieringsunderlag.doseringstext 2.",
      "definition" : "t.ex. vilket apotek som har den beviljade licensenIngår i Expedieringsunderlag.doseringstext 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.NonDrugArticle-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.NonDrugArticle_attr",
      "short" : "NonDrugArticle",
      "definition" : "NonDrugArticle_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.NonDrugArticle-attr.articleId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.NonDrugArticle_attr.articleId",
      "short" : "articleId",
      "definition" : "Identitet på ordinerad handelsvara. Obligatorisk parameter för handelsvaror som ska hämtas ut på apotek. Får ej anges för läkemedel.Ingår i Expedieringsunderlag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.FreeTextMedication-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.FreeTextMedication_attr",
      "short" : "FreeTextMedication",
      "definition" : "FreeTextMedication_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.FreeTextMedication-attr.description",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.FreeTextMedication_attr.description",
      "short" : "description",
      "definition" : "beskrivning av läkemedlet.Fritextval används t.ex. då patienten själv anger sina läkemedel (egenmedicinering) samt vid studieläkemedel, dvs. när patienten deltar i en forskningsstudie och inte själv vet om aktiv substans används.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.FreeTextMedication-attr.atcCode",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.medication.FreeTextMedication_attr.atcCode",
      "short" : "ATC-kodOm angivet kan kontroller utföras (interaktion, amning mm). Se not 1.",
      "definition" : "ATC-kodOm angivet kan kontroller utföras (interaktion, amning mm). Se not 1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage",
      "short" : "Dosage",
      "definition" : "Dosering enligt vårdens doseringsmodell.Doseringen ska anges i relation till insättningstidpunkt.Vid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas – inte doseringen.I vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps",
      "short" : "DosageStep",
      "definition" : "Ett eller flera doseringssteg.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration",
      "short" : "Period",
      "definition" : "den tid under vilket läkemedlet ska användas enligt ordination, t.ex. 4 veckor, 5–6 veckor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.duration.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.isMaxDuration",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.isMaxDuration",
      "short" : "isMaxDuration",
      "definition" : "flagga som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas.Flaggan är satt till FALSE som förvalt värde, dvs. den anger att behandlingstiden inte är en maxtid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.doseUnit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.doseUnit",
      "short" : "den enhet som doseringen avser, t.ex. tablett, ml eller droppe",
      "definition" : "den enhet som doseringen avser, t.ex. tablett, ml eller droppe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage",
      "short" : "DosageType_virtual",
      "definition" : "dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger dagligen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.periodDuration",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request#registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage"
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request#registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage"
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByText-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByText-attr.text",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage",
      "short" : "DosageType_virtual",
      "definition" : "dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.periodDuration",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request#registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage"
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request#registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage"
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByText-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByText-attr.text",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage",
      "short" : "DosageType_virtual",
      "definition" : "ordinerad mängd och periodicitet som gäller om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.periodDuration",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request#registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage"
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request#registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage"
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByText-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByText-attr.text",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.condition",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.condition",
      "short" : "condition",
      "definition" : "text som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".Anges endast om attributet villkorsdosering förekommer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.shortNotation",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.dosage.dosageSteps.shortNotation",
      "short" : "angiven kortnotation som beskriver doseringen",
      "definition" : "angiven kortnotation som beskriver doseringen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treamentReason",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treamentReason",
      "short" : "Reason",
      "definition" : "Ordinationsorsak enligt separat struktur.Det bör påpekas att ordinationsorsak (i förekommande fall) ska anges av vårdsystemet för ny instans av Läkemedelsordination inom samma läkemedelsbehandling. Principen att det senast beslutet ska innehålla en komplett beskrivning av den pågående läkemedelsbehandlingen gäller även här. Även vid utsättning ska följaktligen ordinationsorsak anges.Även om det är ovanligt att ordinationsorsaken ändras inom en läkemedelsbehandling så finns det inget hinder (i modellen) för detta.Om ordinationsorsak anges ska minst en, eventuellt flera, anges som huvudorsak. Ordinationsorsak får inte överföras till receptregistret eller finnas på recept/expedieringsunderlag.Se även not 4.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treamentReason.code",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treamentReason.code",
      "short" : "code",
      "definition" : "Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Om ordinationsorsak anges till Annan orsak är det obligatorisk att ange orsaken som fritext (i fältet CodeableConcept.text) i annat fall ska fritext inte anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treamentReason.primaryReason",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.treamentReason.primaryReason",
      "short" : "Uppgift om huruvida orsaken är ”huvudorsak”, dvs. viktigare än andra angivna orsaker",
      "definition" : "Uppgift om huruvida orsaken är ”huvudorsak”, dvs. viktigare än andra angivna orsaker",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.site",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.site",
      "short" : "site",
      "definition" : "Den plats på kroppen genom vilket läkemedlet intas eller appliceras.En SNOMED-kod under SCTID:91723000 \"anatomical structure\"",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.route",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.route",
      "short" : "Den väg som läkemedlet tar sig in i kroppen.En SNOMED-kod under SCTID: 284009009 \"route of administration value\"",
      "definition" : "Den väg som läkemedlet tar sig in i kroppen.En SNOMED-kod under SCTID: 284009009 \"route of administration value\"",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.method",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescription.method",
      "short" : "Den teknik med vilken läkemedlet administreras.En SNOMED-kod under SCTID: 107733003 \"introduction (procedure)\"",
      "definition" : "Den teknik med vilken läkemedlet administreras.En SNOMED-kod under SCTID: 107733003 \"introduction (procedure)\"",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization",
      "short" : "MedicationDispenseAuthorization_setter_virtual",
      "definition" : "medicationDispenseAuthorization",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr",
      "short" : "MedicationDispenseAuthorizationForDoseDispensing_setter",
      "definition" : "MedicationDispenseAuthorizationForDoseDispensing_setter_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.prescriptionWriteTime",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.prescriptionWriteTime",
      "short" : "prescriptionWriteTime",
      "definition" : "(f.d. Ordinationstidpunkt)\n\nTidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).\n\nNär ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån).",
      "comment" : "TKB-fält: `../../prescriptionWriteTime` (`dateTime`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.prescriberComment",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.prescriberComment",
      "short" : "prescriberComment",
      "definition" : "Förskrivarens kommentar till farmaceut.\n\nKommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)",
      "comment" : "TKB-fält: `../../prescriberComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.receivingPharmacy",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.receivingPharmacy",
      "short" : "receivingPharmacy",
      "definition" : "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.\n\nMottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.\n\nValideras i AFF",
      "comment" : "TKB-fält: `../../receivingPharmacy` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.deliveryMessage",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.deliveryMessage",
      "short" : "Leveransinformation om ordinationen skickas till ett ombud",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud",
      "comment" : "TKB-fält: `../../deliveryMessage` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.NPLPackid",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.NPLPackid",
      "short" : "NPLPackid",
      "definition" : "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.\n\nObligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.\n\nValideras i AFF.\n\nOm en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.\n\nMappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id",
      "comment" : "TKB-fält: `../../NPLPackid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.NPLid",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.NPLid",
      "short" : "NPLid",
      "definition" : "NPL-id alternativt SB-id som identifierar produkt.\n\nObligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.\n\nValideras i AFF.\n\nOm en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.\n\nMappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id",
      "comment" : "TKB-fält: `../../NPLid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.languageCode",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.languageCode",
      "short" : "Främmande språk för doseringstext enligt ISO-639-1",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "comment" : "TKB-fält: `../../languageCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.reimbursed",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.reimbursed",
      "short" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.Falskt = Utan förmånSant =Med förmånValideras i AFF",
      "definition" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.\n\nFalskt = Utan förmån\n\nSant =Med förmån\n\nValideras i AFF",
      "comment" : "TKB-fält: `../../reimbursed` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.validUntil",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.validUntil",
      "short" : "validUntil",
      "definition" : "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.\n\nPatienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.\n\nValideras i AFF",
      "comment" : "TKB-fält: `../../validUntil` (`date`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.substitutionNotAllowedByPatient",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.substitutionNotAllowedByPatient",
      "short" : "Anger att patienten angett att förskriven artikel ej får bytas ut.",
      "definition" : "Anger att patienten angett att förskriven artikel ej får bytas ut.",
      "comment" : "TKB-fält: `../../substitutionNotAllowedByPatient` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing-setter-attr.substitutionNotAllowedByPrescriber",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForDoseDispensing_setter_attr.substitutionNotAllowedByPrescriber",
      "short" : "Anger att förskrivare angett att förskriven artikel ej får bytas ut .",
      "definition" : "Anger att förskrivare angett att förskriven artikel ej får bytas ut .",
      "comment" : "TKB-fält: `../../substitutionNotAllowedByPrescriber` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr",
      "short" : "MedicationDispenseAuthorizationForPackage_setter",
      "definition" : "MedicationDispenseAuthorizationForPackage_setter_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.prescriptionWriteTime",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.prescriptionWriteTime",
      "short" : "prescriptionWriteTime",
      "definition" : "(f.d. Ordinationstidpunkt)\n\nTidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).\n\nNär ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån).",
      "comment" : "TKB-fält: `../../prescriptionWriteTime` (`dateTime`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.prescriberComment",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.prescriberComment",
      "short" : "prescriberComment",
      "definition" : "Förskrivarens kommentar till farmaceut.\n\nKommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)",
      "comment" : "TKB-fält: `../../prescriberComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.receivingPharmacy",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.receivingPharmacy",
      "short" : "receivingPharmacy",
      "definition" : "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.\n\nMottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.\n\nValideras i AFF",
      "comment" : "TKB-fält: `../../receivingPharmacy` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.deliveryMessage",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.deliveryMessage",
      "short" : "Leveransinformation om ordinationen skickas till ett ombud",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud",
      "comment" : "TKB-fält: `../../deliveryMessage` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.NPLPackid",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.NPLPackid",
      "short" : "NPLPackid",
      "definition" : "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.\n\nObligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.\n\nValideras i AFF.\n\nOm en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.\n\nMappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id",
      "comment" : "TKB-fält: `../../NPLPackid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.NPLid",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.NPLid",
      "short" : "NPLid",
      "definition" : "NPL-id alternativt SB-id som identifierar produkt.\n\nObligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.\n\nValideras i AFF.\n\nOm en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.\n\nMappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id",
      "comment" : "TKB-fält: `../../NPLid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.languageCode",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.languageCode",
      "short" : "Främmande språk för doseringstext enligt ISO-639-1",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "comment" : "TKB-fält: `../../languageCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.reimbursed",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.reimbursed",
      "short" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.Falskt = Utan förmånSant =Med förmånValideras i AFF",
      "definition" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.\n\nFalskt = Utan förmån\n\nSant =Med förmån\n\nValideras i AFF",
      "comment" : "TKB-fält: `../../reimbursed` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.validUntil",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.validUntil",
      "short" : "validUntil",
      "definition" : "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.\n\nPatienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.\n\nValideras i AFF",
      "comment" : "TKB-fält: `../../validUntil` (`date`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.startPackage",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.startPackage",
      "short" : "Markering om startförpackning ska expedieras vid första uttag",
      "definition" : "Markering om startförpackning ska expedieras vid första uttag",
      "comment" : "TKB-fält: `../../startPackage` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.firstDispenseBefore",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.firstDispenseBefore",
      "short" : "Datum inom vilken första uttag av läkemedel måste göras.",
      "definition" : "Datum inom vilken första uttag av läkemedel måste göras.",
      "comment" : "TKB-fält: `../../firstDispenseBefore` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.dispenseInterval",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.dispenseInterval",
      "short" : "dispenseInterval",
      "definition" : "Absolut expedieringsintervall. Av förskrivaren angiven kortaste tid mellan två expedieringar.\n\nEndast dagar används då expedieringsintervall sätts via NOD.",
      "comment" : "TKB-fält: `../../dispenseInterval` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.numberOfDispenses",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.numberOfDispenses",
      "short" : "Förskrivet antal uttagValideras i RR att värde är > 0",
      "definition" : "Förskrivet antal uttag\n\nValideras i RR att värde är > 0",
      "comment" : "TKB-fält: `../../numberOfDispenses` (`int`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.numberOfPackages",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.numberOfPackages",
      "short" : "Antal förpackningar som ska expedieras per uttag Valideras i RR att värde är > 0",
      "definition" : "Antal förpackningar som ska expedieras per uttag\n\nValideras i RR att värde är > 0",
      "comment" : "TKB-fält: `../../numberOfPackages` (`int`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage-setter-attr.EPrescription",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationDispenseAuthorization.MedicationDispenseAuthorizationForPackage_setter_attr.EPrescription",
      "short" : "Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper)",
      "definition" : "Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper)",
      "comment" : "TKB-fält: `../../EPrescription` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationprescription-request.acute",
      "path" : "registermedicationprescription-request.acute",
      "short" : "acute",
      "definition" : "Akutflaggan påverkar endast dosdispenserade expedieringsunderlag.\n\nNär ett dosdispenserat expedieringsunderlag markeras med akutflagga, begärs en ny akut produktion av patientens dospåsar. För underlag utan akutmarkering produceras nytt innehåll i dospåsarna vid nästa ordinarie produktionstillfälle.",
      "comment" : "TKB-fält: `acute` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
