# RegisterMedicationDispenseAuthorization - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicationDispenseAuthorization**

## Logical Model: RegisterMedicationDispenseAuthorization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationdispenseauthorization | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:RegisterMedicationDispenseAuthorization |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterMedicationDispenseAuthorization (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registermedicationdispenseauthorization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicationdispenseauthorization.csv), [Excel](StructureDefinition-registermedicationdispenseauthorization.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicationdispenseauthorization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationdispenseauthorization",
  "version" : "1.0",
  "name" : "RegisterMedicationDispenseAuthorization",
  "title" : "RegisterMedicationDispenseAuthorization",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationdispenseauthorization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicationdispenseauthorization",
      "path" : "registermedicationdispenseauthorization",
      "short" : "RegisterMedicationDispenseAuthorization",
      "definition" : "Logisk modell för tjänstekontraktet RegisterMedicationDispenseAuthorization\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationDispenseAuthorization:1).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization",
      "short" : "MedicationDispenseAuthorization",
      "definition" : "Expedieringsunderlag",
      "comment" : "TKB-fält: `medicationDispenseAuthorization` (`MedicationDispenseAuthorization_setter`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData",
      "short" : "RegistrationData",
      "definition" : "id, registrerad av och registreringstidpunkt.\n\nSaknas initialt om ändringar gjorts på apotekssidan.",
      "comment" : "TKB-fält: `../registrationData` (`RegistrationData`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.id",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.id",
      "short" : "Unikt id för det omgivande objektet.",
      "definition" : "Unikt id för det omgivande objektet.",
      "comment" : "TKB-fält: `../../id` (`Identifier`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Den person som registrerat ordinationen.",
      "comment" : "TKB-fält: `registeredBy` (`HealthcareProfessionalType`, kardinalitet 1..1).\n\n**Modellanteckning:** Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalHSAId",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalHSAId",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.givenName",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.givenName",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.familyName",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.familyName",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalRoleCode",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registrationTime",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.registrationData.registrationTime",
      "short" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "definition" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "comment" : "TKB-fält: `../../registrationTime` (`dateTime`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.id",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.id",
      "short" : "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)",
      "definition" : "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)",
      "comment" : "TKB-fält: `../id` (`Identifier`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.medicationPrescriptionId",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.medicationPrescriptionId",
      "short" : "medicationPrescriptionId",
      "definition" : "Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid.\n\nOm expedieringsunderlaget skapas av vårdsystemet \"löst\", dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter.\n\nOm Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten.",
      "comment" : "TKB-fält: `../medicationPrescriptionId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber",
      "short" : "MedicalPrescriber",
      "definition" : "Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad.",
      "comment" : "TKB-fält: `../prescriber` (`MedicalPrescriber`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.personalPrescriptionCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas.\n\nObligatorisk parameter om teknisk sprit eller läkemedel förskrivs.\n\nGruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.\n\nFör användare som har gruppförskrivarkod gäller:\n\nbefattningskod är obligatorisk\n\nFör läkare (LK) - yrkeskod (dvs LK) är obligatorisk.\n\nVid övriga yrken - yrkeskod och giltig legitimationskod är obligatoriska\n\nValideras i AFF\n\nHSA: förskrivarkod, även kallat personalPrescriptionCode\n\nRR: förskrivarkod",
      "comment" : "TKB-fält: `../../personalPrescriptionCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.legitimationCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.legitimationCode",
      "short" : "legitimationCode",
      "definition" : "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.\n\nSe gruppförskrivarkod för villkor.\n\nHSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.\n\nyrkeskod\tGruppkod\tyrkeskod klartext\n\nSJ\t971000\tSjuksköterska\n\nAP\t972000\tApotekare\n\nRC\t973000\tReceptarie\n\nRR: legitimationskod",
      "comment" : "TKB-fält: `../../legitimationCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.hsaTitleCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.hsaTitleCode",
      "short" : "hsaTitleCode",
      "definition" : "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.\n\nSe gruppförskrivarkod för villkor.\n\nKontrolleras i receptregistret att personen har angiven yrkeskod.\n\nValideras i AFF\n\nHSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:\"HSA Innehåll Legitimerad Yrkesgrupp\" på se www.inera.se/hsa.\n\nNotera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.\n\nRR: yrkeskod",
      "comment" : "TKB-fält: `../../hsaTitleCode` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.hsaTitle",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.hsaTitle",
      "short" : "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "definition" : "Förskrivarens yrke i klartext.\n\nFylls i av NOD vid läsning från LF. Krav vid presentation.",
      "comment" : "TKB-fält: `../../hsaTitle` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.speciallityCodes",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.speciallityCodes",
      "short" : "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "definition" : "Förskrivarens specialiteter i klartext.\n\nFylls i av NOD vid läsning från LF. Krav vid presentation.",
      "comment" : "TKB-fält: `../../speciallityCodes` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.paTitleCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "Förskrivarens befattningskod.\n\nSe gruppförskrivarkod för villkor.\n\nHSA: befattningskod, även kallat paTitleCode.\n\nNotera också att samma användare kan inneha flera befattningskoder.\n\nRR: befattningskod",
      "comment" : "TKB-fält: `../../paTitleCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.givenName",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.givenName",
      "short" : "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn",
      "definition" : "Förskrivarens tilltalsnamn.\n\nHSA: tilltalsnamn (givenName)\n\nRR: förnamn",
      "comment" : "TKB-fält: `../../givenName` (`string`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.familyName",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.familyName",
      "short" : "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn",
      "definition" : "Förskrivarens efternamn.\n\nValideras i AFF\n\nHSA: efternamn\n\nRR: efternamn",
      "comment" : "TKB-fält: `../../familyName` (`string`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork",
      "short" : "PlaceOfWork",
      "definition" : "Arbetsplats",
      "comment" : "TKB-fält: `../../placeOfWork` (`PlaceOfWork`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.unitPrescriptionCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.unitPrescriptionCode",
      "short" : "unitPrescriptionCode",
      "definition" : "Förskrivarens arbetsplatskod eller grupparbetsplatskod\n\nUnik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället.\n\nArbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO.\n\nSaknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod.\n\nObligatorisk parameter om förmån angivits.\n\nValideras i AFF\n\nHSA: arbetsplatskod, även kallat unitPrescriptionCode.\n\nRR: arbetsplatskod",
      "comment" : "TKB-fält: `../../../unitPrescriptionCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.careUnitName",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.careUnitName",
      "short" : "careUnitName",
      "definition" : "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopedi\n\nHSA: enhetsnamn (careUnitName )\n\nRR: arbetsplatsnamn",
      "comment" : "TKB-fält: `../../../careUnitName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.city",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.city",
      "short" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort",
      "definition" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFRED\n\nRR: arbetsplatsort",
      "comment" : "TKB-fält: `../../../city` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.phoneNumber1",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.phoneNumber1",
      "short" : "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1",
      "definition" : "Förskrivarens eller vårdcentralens telefonnummer.\n\nHSA: direkttelefon\n\nRR: telefonnummer1",
      "comment" : "TKB-fält: `../../../phoneNumber1` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.phoneNumber2",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.phoneNumber2",
      "short" : "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2",
      "definition" : "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.\n\nHSA:\n\nRR: telefonnummer2",
      "comment" : "TKB-fält: `../../../phoneNumber2` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.postalAdress",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.postalAdress",
      "short" : "postalAdress",
      "definition" : "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.\n\nHSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.\n\nRR: postadress",
      "comment" : "TKB-fält: `../../../postalAdress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.postalCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriber.placeOfWork.postalCode",
      "short" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer",
      "definition" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45\n\nHSA: postnummer (postalCode)\n\nRR: postnummer",
      "comment" : "TKB-fält: `../../../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation",
      "short" : "PatientInformation",
      "definition" : "patientId eller patientInformation måste anges.",
      "comment" : "TKB-fält: `patientInformation` (`PatientInformation`, kardinalitet 1..1).\n\n**Modellanteckning:** I första hand ska svenskt personnummer användas. Vid Expedieringsunderlag för helförpackning gäller dessutom:Om samordningsnummer finns kan detta användas tillsammans med födelsetid.Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att födelsetid och kön anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.patientId",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.patientId",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.givenName",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.givenName",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.familyName",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.familyName",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.dateOfBirth",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.dateOfBirth",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.gender",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.gender",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.deliveryAdress1",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.deliveryAdress1",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.deliveryAdress2",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.deliveryAdress2",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.postalCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.postalCode",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.city",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.city",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.phoneNumber1",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.phoneNumber1",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.phoneNumber2",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.patientInformation.phoneNumber2",
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
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriptionWriteTime",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriptionWriteTime",
      "short" : "prescriptionWriteTime",
      "definition" : "(f.d. Ordinationstidpunkt)\n\nTidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid).\n\nNär ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån).",
      "comment" : "TKB-fält: `../prescriptionWriteTime` (`dateTime`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriberComment",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.prescriberComment",
      "short" : "prescriberComment",
      "definition" : "Förskrivarens kommentar till farmaceut.\n\nKommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)",
      "comment" : "TKB-fält: `../prescriberComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.receivingPharmacy",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.receivingPharmacy",
      "short" : "receivingPharmacy",
      "definition" : "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.\n\nMottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.\n\nValideras i AFF",
      "comment" : "TKB-fält: `../receivingPharmacy` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.deliveryMessage",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.deliveryMessage",
      "short" : "Leveransinformation om ordinationen skickas till ett ombud",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud",
      "comment" : "TKB-fält: `../deliveryMessage` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.treatmentEndTime",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.treatmentEndTime",
      "short" : "treatmentEndTime",
      "definition" : "Datum och tid när patienten skall avsluta intag.\n\nFältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat).\n\nMappas från Läkemedelsordination.utsättningstidpunkt",
      "comment" : "TKB-fält: `../treatmentEndTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.NPLPackid",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.NPLPackid",
      "short" : "NPLPackid",
      "definition" : "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.\n\nObligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges.\n\nValideras i AFF.\n\nOm en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.\n\nMappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id",
      "comment" : "TKB-fält: `../NPLPackid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.NPLid",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.NPLid",
      "short" : "NPLid",
      "definition" : "NPL-id alternativt SB-id som identifierar produkt.\n\nObligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.\n\nValideras i AFF.\n\nOm en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.\n\nMappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id",
      "comment" : "TKB-fält: `../NPLid` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.articleId",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.articleId",
      "short" : "articleId",
      "definition" : "Identitet på förskrivet livsmedel eller handelsvara.\n\nObligatorisk parameter om NPL-id och NPL pack-id saknas.\n\nOm artikeln är ett läkemedel får inte varunr anges. Valideras i AFF.\n\nMappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr",
      "comment" : "TKB-fält: `../articleId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.dosageText1",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.dosageText1",
      "short" : "dosageText1",
      "definition" : "Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept.\n\nMappas från a) text som genereras baserat på Läkemedelsordination.dosering +b)  Läkemedelsordination.användning.",
      "comment" : "TKB-fält: `../dosageText1` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.dosageText2",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.dosageText2",
      "short" : "dosageText2",
      "definition" : "Kompletterande doseringstext till patienten\n\nMappas från endera av\n\nLicensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation\n\neller\n\nEx tempore. beskrivning",
      "comment" : "TKB-fält: `../dosageText2` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.languageCode",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.languageCode",
      "short" : "Främmande språk för doseringstext enligt ISO-639-1",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "comment" : "TKB-fält: `../languageCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.pupose",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.pupose",
      "short" : "(Ändamål klartext)Mappas från Läkemedelsordination.behandlingsändamål",
      "definition" : "(Ändamål klartext)\n\nMappas från Läkemedelsordination.behandlingsändamål",
      "comment" : "TKB-fält: `../pupose` (`string`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.reimbursed",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.reimbursed",
      "short" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.Falskt = Utan förmånSant =Med förmånValideras i AFF",
      "definition" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.\n\nFalskt = Utan förmån\n\nSant =Med förmån\n\nValideras i AFF",
      "comment" : "TKB-fält: `../reimbursed` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.validUntil",
      "path" : "registermedicationdispenseauthorization.medicationDispenseAuthorization.validUntil",
      "short" : "validUntil",
      "definition" : "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.\n\nPatienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.\n\nValideras i AFF",
      "comment" : "TKB-fält: `../validUntil` (`date`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.medicationListVersion",
      "path" : "registermedicationdispenseauthorization.medicationListVersion",
      "short" : "medicationListVersion",
      "definition" : "Version på patientens samlade läkemedelslista.\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result",
      "path" : "registermedicationdispenseauthorization.result",
      "short" : "ResultType",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result.resultCode",
      "path" : "registermedicationdispenseauthorization.result.resultCode",
      "short" : "resultCode",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result.errorCode",
      "path" : "registermedicationdispenseauthorization.result.errorCode",
      "short" : "errorCode",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result.subcode",
      "path" : "registermedicationdispenseauthorization.result.subcode",
      "short" : "subcode",
      "definition" : "Inga subkoder är specificerade.",
      "comment" : "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** subcode Tillåtna värden: SUB_RR_ERROR.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result.logId",
      "path" : "registermedicationdispenseauthorization.result.logId",
      "short" : "logId",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationdispenseauthorization.result.message",
      "path" : "registermedicationdispenseauthorization.result.message",
      "short" : "message",
      "definition" : "En beskrivande text som kan visas för användaren.",
      "comment" : "TKB-fält: `../message` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
