# GetMedicationDispenseAuthorizations - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMedicationDispenseAuthorizations**

## Logical Model: GetMedicationDispenseAuthorizations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationdispenseauthorizations | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetMedicationDispenseAuthorizations |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetMedicationDispenseAuthorizations (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2). Representerar responsens informationsstruktur — expedieringsunderlag per patient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-getmedicationdispenseauthorizations.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmedicationdispenseauthorizations.csv), [Excel](StructureDefinition-getmedicationdispenseauthorizations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmedicationdispenseauthorizations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationdispenseauthorizations",
  "version" : "2.0",
  "name" : "GetMedicationDispenseAuthorizations",
  "title" : "GetMedicationDispenseAuthorizations",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetMedicationDispenseAuthorizations\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2).\nRepresenterar responsens informationsstruktur — expedieringsunderlag per patient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationdispenseauthorizations",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmedicationdispenseauthorizations",
      "path" : "getmedicationdispenseauthorizations",
      "short" : "GetMedicationDispenseAuthorizations",
      "definition" : "Logisk modell för tjänstekontraktet GetMedicationDispenseAuthorizations\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationDispenseAuthorizations:2).\nRepresenterar responsens informationsstruktur — expedieringsunderlag per patient."
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase",
      "short" : "MedicationDispenseCase",
      "definition" : "medicationDispenseCase",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations",
      "short" : "MedicationDispenseAuthorization_virtual",
      "definition" : "Beskriver en förskrivning och eventuellt ändrade versioner som gjorts på apotekssidan.Multipliciteten avser följaktligen eventuella versioner, inte den ursprungliga förskrivningen vilken alltid är exakt en. Utsättning och makulering på apotekssidan ger inga nya versioner, enbart förändring av expedieringsstatus.Ändrade versioner saknar initialt registreringsuppgifter. Först när ändringarna accepterats i NOD (AttachMedicationDispenseAuthorization) fylls dessa i.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr",
      "short" : "MedicationDispenseAuthorizationForDoseDispensing",
      "definition" : "MedicationDispenseAuthorizationForDoseDispensing_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData",
      "short" : "RegistrationData",
      "definition" : "id, registrerad av och registreringstidpunkt.Saknas initialt om ändringar gjorts på apotekssidan.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.id",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.id",
      "short" : "Unikt id för det omgivande objektet.",
      "definition" : "Unikt id för det omgivande objektet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.registeredBy",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.registeredBy.healthcareProfessionalHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.registeredBy.givenName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.registeredBy.familyName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.registrationData.registrationTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.registrationData.registrationTime",
      "short" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "definition" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.id",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.id",
      "short" : "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)",
      "definition" : "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.medicationPrescriptionId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.medicationPrescriptionId",
      "short" : "medicationPrescriptionId",
      "definition" : "Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid.Om expedieringsunderlaget skapas av vårdsystemet ”löst”, dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter.Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber",
      "short" : "MedicalPrescriber",
      "definition" : "Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.personalPrescriptionCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas. Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.För användare som har gruppförskrivarkod gäller:befattningskod är obligatorisk För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.Vid övriga yrken – yrkeskod och giltig legitimationskod är obligatoriskaValideras i AFFHSA: förskrivarkod, även kallat personalPrescriptionCode RR: förskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.legitimationCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.legitimationCode",
      "short" : "legitimationCode",
      "definition" : "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.Se gruppförskrivarkod för villkor.HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.yrkeskodGruppkodyrkeskod klartextSJ971000SjuksköterskaAP972000ApotekareRC973000ReceptarieRR: legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.hsaTitleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.hsaTitleCode",
      "short" : "hsaTitleCode",
      "definition" : "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.Se gruppförskrivarkod för villkor.Kontrolleras i receptregistret att personen har angiven yrkeskod.Valideras i AFFHSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:“HSA Innehåll Legitimerad Yrkesgrupp” på se www.inera.se/hsa.Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.RR: yrkeskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.hsaTitle",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.hsaTitle",
      "short" : "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "definition" : "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.speciallityCodes",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.speciallityCodes",
      "short" : "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "definition" : "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.paTitleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "Förskrivarens befattningskod.Se gruppförskrivarkod för villkor.HSA: befattningskod, även kallat paTitleCode.Notera också att samma användare kan inneha flera befattningskoder.RR: befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.givenName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.givenName",
      "short" : "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn",
      "definition" : "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.familyName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.familyName",
      "short" : "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn",
      "definition" : "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.placeOfWork",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork",
      "short" : "PlaceOfWork",
      "definition" : "placeOfWork",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.placeOfWork.unitPrescriptionCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.unitPrescriptionCode",
      "short" : "unitPrescriptionCode",
      "definition" : "Förskrivarens arbetsplatskod eller grupparbetsplatskodUnik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället. Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO. Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod. Obligatorisk parameter om förmån angivits.Valideras i AFFHSA: arbetsplatskod, även kallat unitPrescriptionCode.RR: arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.placeOfWork.careUnitName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.careUnitName",
      "short" : "careUnitName",
      "definition" : "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopediHSA: enhetsnamn (careUnitName )RR: arbetsplatsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.placeOfWork.city",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.city",
      "short" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort",
      "definition" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.placeOfWork.phoneNumber1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.phoneNumber1",
      "short" : "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1",
      "definition" : "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.placeOfWork.phoneNumber2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.phoneNumber2",
      "short" : "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2",
      "definition" : "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.placeOfWork.postalAdress",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.postalAdress",
      "short" : "postalAdress",
      "definition" : "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.RR: postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriber.placeOfWork.postalCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriber.placeOfWork.postalCode",
      "short" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer",
      "definition" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation",
      "short" : "PatientInformation",
      "definition" : "I första hand ska svenskt personnummer användas. Vid Expedieringsunderlag för helförpackning gäller dessutom:Om samordningsnummer finns kan detta användas tillsammans med födelsetid.Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att födelsetid och kön anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.patientId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.patientId",
      "short" : "patientId",
      "definition" : "Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet)Endast om det är känt.PU: personidRR: personnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.givenName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.givenName",
      "short" : "givenName",
      "definition" : "Patientens förnamn.PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn.RR: förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.familyName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.familyName",
      "short" : "Patientens efternamn.PU: efternamn RR: efternamn",
      "definition" : "Patientens efternamn.PU: efternamn RR: efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.dateOfBirth",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Födelsedatum (8 siffror).Anges för patient som saknar giltigt personnummer.Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag.PU: födelsetidRR: födelsedatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.gender",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.gender",
      "short" : "Patientens kön.Obligatorisk parameter om Personnummer saknas. {Male, Female, Unspecified}PU: könRR: kön",
      "definition" : "Patientens kön.Obligatorisk parameter om Personnummer saknas. {Male, Female, Unspecified}PU: könRR: kön Tillåtna värden: Male, Female, Unspecified.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.deliveryAdress1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.deliveryAdress1",
      "short" : "Patientens gatuadress 1.PU: utdelningsadress1RR: adress1",
      "definition" : "Patientens gatuadress 1.PU: utdelningsadress1RR: adress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.deliveryAdress2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.deliveryAdress2",
      "short" : "Patientens adress 2.PU: utdelningsadress2RR: adress2",
      "definition" : "Patientens adress 2.PU: utdelningsadress2RR: adress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.postalCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.postalCode",
      "short" : "Patientens postnummer.PU: postnrRR: postnummer",
      "definition" : "Patientens postnummer.PU: postnrRR: postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.city",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.city",
      "short" : "Patientens postort.PU: postortRR: postort",
      "definition" : "Patientens postort.PU: postortRR: postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.phoneNumber1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.phoneNumber1",
      "short" : "Patientens telefonnummer 1.PU: saknasRR: telefonnummer1",
      "definition" : "Patientens telefonnummer 1.PU: saknasRR: telefonnummer1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.patientInformation.phoneNumber2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.patientInformation.phoneNumber2",
      "short" : "Patientens telefonnummer 2.PU: saknasRR: telefonnummer2",
      "definition" : "Patientens telefonnummer 2.PU: saknasRR: telefonnummer2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriptionWriteTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriptionWriteTime",
      "short" : "prescriptionWriteTime",
      "definition" : "(f.d. Ordinationstidpunkt)Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid). När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.prescriberComment",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.prescriberComment",
      "short" : "prescriberComment",
      "definition" : "Förskrivarens kommentar till farmaceut. Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.receivingPharmacy",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.receivingPharmacy",
      "short" : "receivingPharmacy",
      "definition" : "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.Valideras i AFF",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.deliveryMessage",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.deliveryMessage",
      "short" : "Leveransinformation om ordinationen skickas till ett ombud",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.treatmentEndTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.treatmentEndTime",
      "short" : "treatmentEndTime",
      "definition" : "Datum och tid när patienten skall avsluta intag.Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat). Mappas från Läkemedelsordination.utsättningstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.NPLPackid",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.NPLPackid",
      "short" : "NPLPackid",
      "definition" : "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges. Valideras i AFF.Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.NPLid",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.NPLid",
      "short" : "NPLid",
      "definition" : "NPL-id alternativt SB-id som identifierar produkt.Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.Valideras i AFF.Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.articleId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.articleId",
      "short" : "articleId",
      "definition" : "Identitet på förskrivet livsmedel eller handelsvara.Obligatorisk parameter om NPL-id och NPL pack-id saknas. Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF.Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosageText1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosageText1",
      "short" : "dosageText1",
      "definition" : "Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept. Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b) Läkemedelsordination.användning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosageText2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosageText2",
      "short" : "dosageText2",
      "definition" : "Kompletterande doseringstext till patientenMappas från endera avLicensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation eller Ex tempore. beskrivning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.languageCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.languageCode",
      "short" : "Främmande språk för doseringstext enligt ISO-639-1",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.pupose",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.pupose",
      "short" : "(Ändamål klartext)Mappas från Läkemedelsordination.behandlingsändamål",
      "definition" : "(Ändamål klartext)Mappas från Läkemedelsordination.behandlingsändamål",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.reimbursed",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.reimbursed",
      "short" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.Falskt = Utan förmånSant =Med förmånValideras i AFF",
      "definition" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.Falskt = Utan förmånSant =Med förmånValideras i AFF",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.validUntil",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.validUntil",
      "short" : "validUntil",
      "definition" : "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.Valideras i AFF",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.acute",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.acute",
      "short" : "acute",
      "definition" : "Markering om dispenserad ordination är gjord akut. Flaggan sätts vid anrop av tjänsten och påverkar då alla expedieringsunderlag som skapas vid samma tillfälle.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.substitutionNotAllowedByPatient",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.substitutionNotAllowedByPatient",
      "short" : "Anger att patienten angett att förskriven artikel ej får bytas ut.",
      "definition" : "Anger att patienten angett att förskriven artikel ej får bytas ut.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.substitutionNotAllowedByPrescriber",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.substitutionNotAllowedByPrescriber",
      "short" : "Anger att förskrivare angett att förskriven artikel ej får bytas ut .",
      "definition" : "Anger att förskrivare angett att förskriven artikel ej får bytas ut .",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage",
      "short" : "DosageByOccasion",
      "definition" : "Angivande av intagstillfällen, intagsmängd, dag i period och periodlängd.Fylls i av NOD baserat på dosering i Ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.min",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.min.decimalNumber",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.min.decimalNumber.value",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.min.decimalNumber.decimals",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.min.fraction",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.min.fraction.numerator",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.min.fraction.denominator",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.max",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.max.decimalNumber",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.max.decimalNumber.value",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.max.decimalNumber.decimals",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.max.fraction",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.max.fraction.numerator",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dose.max.fraction.denominator",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.time",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.time.event",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.time.time",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.time.time.hour",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.time.time.minute",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.occasions.dayInPeriod",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.periodDuration",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.dosage.periodTrigger",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.dosage.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.treatmentStartTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.treatmentStartTime",
      "short" : "Anger när doseringsschemat ska börja gälla.Fylls i av NOD baserat på Läkemedelsordination.insättningstidpunkt",
      "definition" : "Anger när doseringsschemat ska börja gälla.Fylls i av NOD baserat på Läkemedelsordination.insättningstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing-attr.endComment",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForDoseDispensing_attr.endComment",
      "short" : "Kommentar varför ordinationen blev utsatt Fylls i av NOD baserat på Läkemedelsordination.utsättningsorsak text",
      "definition" : "Kommentar varför ordinationen blev utsatt Fylls i av NOD baserat på Läkemedelsordination.utsättningsorsak text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr",
      "short" : "MedicationDispenseAuthorizationForPackage",
      "definition" : "MedicationDispenseAuthorizationForPackage_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData",
      "short" : "RegistrationData",
      "definition" : "id, registrerad av och registreringstidpunkt.Saknas initialt om ändringar gjorts på apotekssidan.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.id",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.id",
      "short" : "Unikt id för det omgivande objektet.",
      "definition" : "Unikt id för det omgivande objektet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.registeredBy",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.registeredBy.healthcareProfessionalHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.registeredBy.givenName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.registeredBy.familyName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.registrationData.registrationTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.registrationData.registrationTime",
      "short" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "definition" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.id",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.id",
      "short" : "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)",
      "definition" : "Id på expedieringsunderlaget. Skapas av NOD-tjänsten (eller underliggande tjänster såsom av RR)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.medicationPrescriptionId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.medicationPrescriptionId",
      "short" : "medicationPrescriptionId",
      "definition" : "Id på ursprunglig läkemedelsordination oavsett om läkemedelsordinationen ursprungligen skapats i NOD eller i ett vårdsystem och skickats som e-recept till OR/RR. Expedieringsunderlag som återskapas på information från OR/RR kan sakna ordinationsid.Om expedieringsunderlaget skapas av vårdsystemet ”löst”, dvs. utan referens till en Läkemedelsordination i NOD, ska vårdsystemet ange ordinationsid (som separat argument) för spårbarhet och för att kunna upptäcka dubbletter.Om Läkemedelsordination finns i NOD skapas ordinationsid av NOD-tjänsten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber",
      "short" : "MedicalPrescriber",
      "definition" : "Sätts av NOD-tjänsten till inloggad användare (samma som registrerad av) för att säkerställa att förskrivaren är starkt autentiserad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.personalPrescriptionCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas. Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.För användare som har gruppförskrivarkod gäller:befattningskod är obligatorisk För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.Vid övriga yrken – yrkeskod och giltig legitimationskod är obligatoriskaValideras i AFFHSA: förskrivarkod, även kallat personalPrescriptionCode RR: förskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.legitimationCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.legitimationCode",
      "short" : "legitimationCode",
      "definition" : "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.Se gruppförskrivarkod för villkor.HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.yrkeskodGruppkodyrkeskod klartextSJ971000SjuksköterskaAP972000ApotekareRC973000ReceptarieRR: legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.hsaTitleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.hsaTitleCode",
      "short" : "hsaTitleCode",
      "definition" : "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.Se gruppförskrivarkod för villkor.Kontrolleras i receptregistret att personen har angiven yrkeskod.Valideras i AFFHSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:“HSA Innehåll Legitimerad Yrkesgrupp” på se www.inera.se/hsa.Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.RR: yrkeskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.hsaTitle",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.hsaTitle",
      "short" : "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "definition" : "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.speciallityCodes",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.speciallityCodes",
      "short" : "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "definition" : "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.paTitleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "Förskrivarens befattningskod.Se gruppförskrivarkod för villkor.HSA: befattningskod, även kallat paTitleCode.Notera också att samma användare kan inneha flera befattningskoder.RR: befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.givenName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.givenName",
      "short" : "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn",
      "definition" : "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.familyName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.familyName",
      "short" : "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn",
      "definition" : "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.placeOfWork",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork",
      "short" : "PlaceOfWork",
      "definition" : "placeOfWork",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.placeOfWork.unitPrescriptionCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.unitPrescriptionCode",
      "short" : "unitPrescriptionCode",
      "definition" : "Förskrivarens arbetsplatskod eller grupparbetsplatskodUnik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället. Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO. Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod. Obligatorisk parameter om förmån angivits.Valideras i AFFHSA: arbetsplatskod, även kallat unitPrescriptionCode.RR: arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.placeOfWork.careUnitName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.careUnitName",
      "short" : "careUnitName",
      "definition" : "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopediHSA: enhetsnamn (careUnitName )RR: arbetsplatsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.placeOfWork.city",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.city",
      "short" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort",
      "definition" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.placeOfWork.phoneNumber1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.phoneNumber1",
      "short" : "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1",
      "definition" : "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.placeOfWork.phoneNumber2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.phoneNumber2",
      "short" : "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2",
      "definition" : "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.placeOfWork.postalAdress",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.postalAdress",
      "short" : "postalAdress",
      "definition" : "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.RR: postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriber.placeOfWork.postalCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriber.placeOfWork.postalCode",
      "short" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer",
      "definition" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation",
      "short" : "PatientInformation",
      "definition" : "I första hand ska svenskt personnummer användas. Vid Expedieringsunderlag för helförpackning gäller dessutom:Om samordningsnummer finns kan detta användas tillsammans med födelsetid.Expedieringsunderlag kan skapas även om både personnummer och samordningsnummer saknas, men då krävs att födelsetid och kön anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.patientId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.patientId",
      "short" : "patientId",
      "definition" : "Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet)Endast om det är känt.PU: personidRR: personnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.givenName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.givenName",
      "short" : "givenName",
      "definition" : "Patientens förnamn.PU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn.RR: förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.familyName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.familyName",
      "short" : "Patientens efternamn.PU: efternamn RR: efternamn",
      "definition" : "Patientens efternamn.PU: efternamn RR: efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.dateOfBirth",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Födelsedatum (8 siffror).Anges för patient som saknar giltigt personnummer.Obligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag.PU: födelsetidRR: födelsedatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.gender",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.gender",
      "short" : "Patientens kön.Obligatorisk parameter om Personnummer saknas. {Male, Female, Unspecified}PU: könRR: kön",
      "definition" : "Patientens kön.Obligatorisk parameter om Personnummer saknas. {Male, Female, Unspecified}PU: könRR: kön Tillåtna värden: Male, Female, Unspecified.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.deliveryAdress1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.deliveryAdress1",
      "short" : "Patientens gatuadress 1.PU: utdelningsadress1RR: adress1",
      "definition" : "Patientens gatuadress 1.PU: utdelningsadress1RR: adress1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.deliveryAdress2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.deliveryAdress2",
      "short" : "Patientens adress 2.PU: utdelningsadress2RR: adress2",
      "definition" : "Patientens adress 2.PU: utdelningsadress2RR: adress2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.postalCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.postalCode",
      "short" : "Patientens postnummer.PU: postnrRR: postnummer",
      "definition" : "Patientens postnummer.PU: postnrRR: postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.city",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.city",
      "short" : "Patientens postort.PU: postortRR: postort",
      "definition" : "Patientens postort.PU: postortRR: postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.phoneNumber1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.phoneNumber1",
      "short" : "Patientens telefonnummer 1.PU: saknasRR: telefonnummer1",
      "definition" : "Patientens telefonnummer 1.PU: saknasRR: telefonnummer1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.patientInformation.phoneNumber2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.patientInformation.phoneNumber2",
      "short" : "Patientens telefonnummer 2.PU: saknasRR: telefonnummer2",
      "definition" : "Patientens telefonnummer 2.PU: saknasRR: telefonnummer2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriptionWriteTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriptionWriteTime",
      "short" : "prescriptionWriteTime",
      "definition" : "(f.d. Ordinationstidpunkt)Tidpunkt då Expedieringsunderlaget skapas (vårdsystemets tid). När ett Expedieringsunderlag återskapas baserat på en befintlig förskrivning ska den ursprungliga tiden för förskrivning anges (i möjligaste mån).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.prescriberComment",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.prescriberComment",
      "short" : "prescriberComment",
      "definition" : "Förskrivarens kommentar till farmaceut. Kommentaren skrivs ut på receptblanketten om e-receptet omvandlas till ett pappersrecept (dvs. skrivs ut på en receptblankett på apoteket)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.receivingPharmacy",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.receivingPharmacy",
      "short" : "receivingPharmacy",
      "definition" : "Apoteks-id (s.k. GLN-kod) om förskrivningen är direktadresserad.Mottagande apotek ska anges vid förskrivning av läkemedel typ 3 (narkotika osv). F.o.m. 2015-03-01 är detta dock inte nödvändigt vid iteration.Valideras i AFF",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.deliveryMessage",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.deliveryMessage",
      "short" : "Leveransinformation om ordinationen skickas till ett ombud",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.treatmentEndTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.treatmentEndTime",
      "short" : "treatmentEndTime",
      "definition" : "Datum och tid när patienten skall avsluta intag.Fältet är endast relevant för dospatienter. Efter detta datum så får expedieringsunderlaget status UTSATT och går inte längre att expediera (helförpackning) eller produceras inte i påse (dosdispenserat). Mappas från Läkemedelsordination.utsättningstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.NPLPackid",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.NPLPackid",
      "short" : "NPLPackid",
      "definition" : "NPL Pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL Pack-id anges. Valideras i AFF.Om en Läkemedelsartikel angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma med dess NPL Pack.id.Mappas (vid Läkemedelsartikel) från Läkemedelsordination.ordinerat läkemedel.NPL Pack.id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.NPLid",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.NPLid",
      "short" : "NPLid",
      "definition" : "NPL-id alternativt SB-id som identifierar produkt.Obligatorisk parameter om Varunr saknas. Om artikeln är ett läkemedel måste NPL-id.Valideras i AFF.Om en Läkemedelsprodukt angivits i Läkemedelsordination.ordinerat läkemedel måste attributvärdet överensstämma dess NPL-id.Mappas (vid Läkemedelsprodukt) från Läkemedelsordination.ordinerat läkemedel.NPL-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.articleId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.articleId",
      "short" : "articleId",
      "definition" : "Identitet på förskrivet livsmedel eller handelsvara.Obligatorisk parameter om NPL-id och NPL pack-id saknas. Om artikeln är ett läkemedel får inte varunr anges. Valideras i AFF.Mappas (vid Handelsvara) från Läkemedelsordination.ordinerat läkemedel.varunr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.dosageText1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.dosageText1",
      "short" : "dosageText1",
      "definition" : "Instruktion till patienten. Skrivs ut på Mina sparade recept, doseringsetikett och vid utskrift av elektroniskt recept. Mappas från a) text som genereras baserat på Läkemedelsordination.dosering +b) Läkemedelsordination.användning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.dosageText2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.dosageText2",
      "short" : "dosageText2",
      "definition" : "Kompletterande doseringstext till patientenMappas från endera avLicensläkemedel.produktnamn/styrka/läkemedelsform/licensinformation eller Ex tempore. beskrivning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.languageCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.languageCode",
      "short" : "Främmande språk för doseringstext enligt ISO-639-1",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.pupose",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.pupose",
      "short" : "(Ändamål klartext)Mappas från Läkemedelsordination.behandlingsändamål",
      "definition" : "(Ändamål klartext)Mappas från Läkemedelsordination.behandlingsändamål",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.reimbursed",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.reimbursed",
      "short" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.Falskt = Utan förmånSant =Med förmånValideras i AFF",
      "definition" : "Förskrivaren uppgift om ordinationen ska innefattas i förmånen.Falskt = Utan förmånSant =Med förmånValideras i AFF",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.validUntil",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.validUntil",
      "short" : "validUntil",
      "definition" : "Expedieringsunderlagets sista giltighetsdag. Detta får inte överskrida förskrivningstidpunkt + 1 år och en dag.Patienten med en läkemedelsordination med utsättningstid bortom sista giltighetsdag kommer då att behöva ett nytt expedieringsunderlag för att hämta ut medicinen.Valideras i AFF",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.substitutionNotAllowed",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.substitutionNotAllowed",
      "short" : "substitutionNotAllowed",
      "definition" : "Markering om ordinerad vara ej får bytas ut vid expedieringEndast tillämpligt vid ordination av Läkemedelsartikel.Falskt = Får ersättasSant = Får ej ersättasSätts av förskrivare.Fylls i av NOD baserat på Läkemedelsartikel.ej tillåten substitution",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.startPackage",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.startPackage",
      "short" : "Markering om startförpackning ska expedieras vid första uttag",
      "definition" : "Markering om startförpackning ska expedieras vid första uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.firstDispenseBefore",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.firstDispenseBefore",
      "short" : "Datum inom vilken första uttag av läkemedel måste göras.",
      "definition" : "Datum inom vilken första uttag av läkemedel måste göras.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.dispenseInterval",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.dispenseInterval",
      "short" : "dispenseInterval",
      "definition" : "Absolut expedieringsintervall. Av förskrivaren angiven kortaste tid mellan två expedieringar. Endast dagar används då expedieringsintervall sätts via NOD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.intervalUnit",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.intervalUnit",
      "short" : "intervalUnit",
      "definition" : "Enhet för det absoluta expedieringsintervallet. Kan anges i dagar, veckor eller månader.Sätts till dagar då expedieringsintervall sätts via NOD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.numberOfDispenses",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.numberOfDispenses",
      "short" : "Förskrivet antal uttagValideras i RR att värde är > 0",
      "definition" : "Förskrivet antal uttagValideras i RR att värde är > 0",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.numberOfPackages",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.numberOfPackages",
      "short" : "Antal förpackningar som ska expedieras per uttag Valideras i RR att värde är > 0",
      "definition" : "Antal förpackningar som ska expedieras per uttag Valideras i RR att värde är > 0",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage-attr.EPrescription",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationDispenseAuthorizations.MedicationDispenseAuthorizationForPackage_attr.EPrescription",
      "short" : "Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper)",
      "definition" : "Anger om expedieringsunderlaget ska hanteras elektroniskt (till skillnad från skrivas ut på papper)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations",
      "short" : "Revocation",
      "definition" : "Beskriver beslut om makulering av förskrivningen samt eventuella makuleringar som gjorts direkt i RR.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData",
      "short" : "RegistrationData",
      "definition" : "id, registrerad av och registreringstidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.id",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.id",
      "short" : "Unikt id för det omgivande objektet.",
      "definition" : "Unikt id för det omgivande objektet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalHSAId",
      "short" : "HSA-id för personen.",
      "definition" : "HSA-id för personen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.givenName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.givenName",
      "short" : "Personens förnamn",
      "definition" : "Personens förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.familyName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.familyName",
      "short" : "Personens efternamn",
      "definition" : "Personens efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdenhet (enligt PDL) som personen är uppdragstagare för.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "definition" : "HSA-id för den vårdgivare (enligt PDL) som personen är uppdragstagare för.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registrationTime",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.registrationData.registrationTime",
      "short" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "definition" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.revocationCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.revocationCode",
      "short" : "revocationCode",
      "definition" : "1 = Fel patient2 = Fel läkemedel/vara /dosering/styrka/ändamål. Patienten informerad3 = Utsatt lm/Inaktuell medicinering. Patienten informerad4 = Annan orsak. Patienten informerad{1,2,3,4}Se även Läkemedelsordination.utsättningsorsak Tillåtna värden: 1, 2, 3, 4.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.revocationComment",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.revocationComment",
      "short" : "revocationComment",
      "definition" : "Fritextbeskrivning som preciserar makuleringsorsak som angivits som ”annan orsak”.Obligatorisk parameter för Orsakskod = 4Får ej anges för Orsakskod = 1, 2 eller 3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.revocationConsent",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.revocationConsent",
      "short" : "revocationConsent",
      "definition" : "Inhämtat samtycke av patienten vid makulering. Måste anges till true då förskrivare makulerar Expedieringsunderlag med orsakskod 2, 3 eller 4.Ignoreras för dospatienter, eftersom de har samtyckt via dossamtycket.I användargränssnittet uttrycks samtycket som att ”patienten är informerad”.Notera att makulering av Expedieringsunderlag i vissa fall sker automatiskt som en nödvändig del för att realisera ändringar (t.ex. dosändringar) och utsättning i ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.time",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.revocations.time",
      "short" : "Tidpunkt för makulering (då det skickades till RR). Sätts av NOD.",
      "definition" : "Tidpunkt för makulering (då det skickades till RR). Sätts av NOD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseReference",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseReference",
      "short" : "dispenseReference",
      "definition" : "Identifierar motsvarande recept i RR. Då ett pappersrecept registreras i RR anges förskrivningens ursprungliga id. Kan vara ett UUID eller GUID. Valideras i AFF",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationPrescriptionSequenceId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.medicationPrescriptionSequenceId",
      "short" : "medicationPrescriptionSequenceId",
      "definition" : "Id på den Läkemedlelsbehandling som Expedieringsärendet hör till. Detta är nödvändigt för att kunna hantera Expedieringsärenden som fristående delar.Saknas då för s.k. ”lösa Expedieringsunderlag”, dvs. sådana som kommer från apotekssidan utan koppling till någon Läkemedlelsbehandling i NOD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus",
      "short" : "DispenseStatus",
      "definition" : "Se not 1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.numberOfRemainingDispenses",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.numberOfRemainingDispenses",
      "short" : "Resterande antal uttag.",
      "definition" : "Resterande antal uttag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.totalQuantity",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.totalQuantity",
      "short" : "totalQuantity",
      "definition" : "Den förskrivna totalmängden som beräknas när expedieringsunderlaget skapas. Mängden anges i förpackningsenheter, dvs. den enhet som förpackningen innehåller, t.ex. tabletter.Beräknas som (antal uttag) x (antal förpackningar som ska expedieras per uttag ) x (förpackningsmängd ).Anges ej för dosdispenserat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.remainingQuantity",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.remainingQuantity",
      "short" : "remainingQuantity",
      "definition" : "Resterande mängd som finns kvar på expedieringsunderlaget (i förpackningsenheter, t.ex. tabletter). Beräknas vid mottagande av expedieringsunderlaget samt vid expediering, borttag och kreditering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.nextDispenseWithReimbursement",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.nextDispenseWithReimbursement",
      "short" : "nextDispenseWithReimbursement",
      "definition" : "Beräknas efter gjorda uttag och anger när patienten kan ta ut nästa uttag inom högkostnadsskyddet. Det går att hämta ut läkemedlet tidigare (om förskrivaren inte har angett ett expeditionsintervall) men patienten får då betala hela kostnaden.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.nextAllowedDispense",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.nextAllowedDispense",
      "short" : "Nästa tillåtna uttag om förskrivaren har angivit expedieringsintervall (i Expedieringsunderlag för helförpackning).",
      "definition" : "Nästa tillåtna uttag om förskrivaren har angivit expedieringsintervall (i Expedieringsunderlag för helförpackning).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.available",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.available",
      "short" : "available",
      "definition" : "Flagga för om expedieringsunderlaget är aktuellt.För att vara aktuellt måste det finnas uttag kvar och sista giltighetsdag får inte vara passerad. Det får heller inte vara makulerat, utsatt (endast dosdispenserat) omvandlat till pappersrecept (utskrivet).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.medicalRecordStatus",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.medicalRecordStatus",
      "short" : "Journalstatus för expedieringsunderlag som hämtas från RR {IN_NOD, NOT_IN_NOD}",
      "definition" : "Journalstatus för expedieringsunderlag som hämtas från RR {IN_NOD, NOT_IN_NOD} Tillåtna värden: IN_NOD, NOT_IN_NOD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.changed",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispenseStatus.changed",
      "short" : "changed",
      "definition" : "Anger att senaste versionen av expedieringsunderlaget är förändrat på apotekssidan. (Se fältet Ordination.forandring i RDH)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs",
      "short" : "DispensedDrug",
      "definition" : "För att expedieringar anges endast för dos-patienter (från OR) och för övriga med samtycke till läkemedelsförteckningen i kombination med att expedieringar efterfrågas från NOD (i den aktuella tjänsten).Se även not 1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.dispenseId",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.dispenseId",
      "short" : "dispenseId",
      "definition" : "dispenseId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.dispenseDate",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.dispenseDate",
      "short" : "Datum för expediering på apotek.",
      "definition" : "Datum för expediering på apotek.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.numberOfPackages",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.numberOfPackages",
      "short" : "Antal förpackningar av utlämnad vara.Obligatorisk parameter om posten ej är en dosdispenserad artikel",
      "definition" : "Antal förpackningar av utlämnad vara.Obligatorisk parameter om posten ej är en dosdispenserad artikel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.numberOfTablets",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.numberOfTablets",
      "short" : "Summa antal avdelade doser inklusive enhet.Angiven om posten är en dosdispenserad artikel.",
      "definition" : "Summa antal avdelade doser inklusive enhet.Angiven om posten är en dosdispenserad artikel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.removed",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.removed",
      "short" : "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt.",
      "definition" : "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.quantity",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.quantity",
      "short" : "Mängd i klartext",
      "definition" : "Mängd i klartext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.dosage",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.dosage",
      "short" : "Dosering i klartext så som den returneras från LF (Krav på presentation i handboken)",
      "definition" : "Dosering i klartext så som den returneras från LF (Krav på presentation i handboken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation",
      "short" : "ArticleInformation",
      "definition" : "articleInformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.nplPackid",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.nplPackid",
      "short" : "Identitet på förskrivet läkemedel som har NPLPack-id alternativt SB Pack-id.",
      "definition" : "Identitet på förskrivet läkemedel som har NPLPack-id alternativt SB Pack-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.distributedTradeName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.distributedTradeName",
      "short" : "Läkemedelsnamn vid inläsningstillfället.",
      "definition" : "Läkemedelsnamn vid inläsningstillfället.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.drugForm",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.drugForm",
      "short" : "Läkemedelsform vid inläsningstillfället.",
      "definition" : "Läkemedelsform vid inläsningstillfället.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.strength",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.strength",
      "short" : "Styrka i klartext vid inläsningstillfället.",
      "definition" : "Styrka i klartext vid inläsningstillfället.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.atcCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.atcCode",
      "short" : "ATC-kod vid inläsningstillfället",
      "definition" : "ATC-kod vid inläsningstillfället",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.atcText",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.atcText",
      "short" : "Verksamt ämne vid inläsningstillfället.",
      "definition" : "Verksamt ämne vid inläsningstillfället.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.packageSize",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.packageSize",
      "short" : "packageSize",
      "definition" : "Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.packageType",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.articleInformation.packageType",
      "short" : "Beskrivning av artikelns förpackningstyp vid inläsningstillfället.",
      "definition" : "Beskrivning av artikelns förpackningstyp vid inläsningstillfället.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber",
      "short" : "MedicalPrescriber",
      "definition" : "Förskrivarens namn, yrke, specialiteter och arbetsplats (Krav på presentation i handboken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.personalPrescriptionCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.personalPrescriptionCode",
      "short" : "personalPrescriptionCode",
      "definition" : "Förskrivarens individuella förskrivarkod (7 tecken), legitimationskod (6 tecken) eller förskrivarens gruppförskrivarkod då individuell kod saknas. Obligatorisk parameter om teknisk sprit eller läkemedel förskrivs.Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men via sin roll har erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av EHM.För användare som har gruppförskrivarkod gäller:befattningskod är obligatorisk För läkare (LK) - yrkeskod (dvs LK) är obligatorisk.Vid övriga yrken – yrkeskod och giltig legitimationskod är obligatoriskaValideras i AFFHSA: förskrivarkod, även kallat personalPrescriptionCode RR: förskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.legitimationCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.legitimationCode",
      "short" : "legitimationCode",
      "definition" : "Förskrivarens 7-ställiga förskrivarkod alternativt 6-ställiga legitimationskod. Legitimationskod för förskrivare är annars de 6 första siffrorna i förskrivarkoden.Se gruppförskrivarkod för villkor.HSA: Legitimationskod för leg.vårdpersonal (sjuksköterskor) saknas i HSA. Det finns grupplegitimationskoder som kan användas.yrkeskodGruppkodyrkeskod klartextSJ971000SjuksköterskaAP972000ApotekareRC973000ReceptarieRR: legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.hsaTitleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.hsaTitleCode",
      "short" : "hsaTitleCode",
      "definition" : "Yrkeskod som definierar vilken typ av legitimation som användaren innehar.Se gruppförskrivarkod för villkor.Kontrolleras i receptregistret att personen har angiven yrkeskod.Valideras i AFFHSA:Legitimerad yrkesgrupp, även kallad hsaTitle innehåller yrkeskoden i klartext. Detta fält (yrkeskod) avser dock motsvarande tvåställiga kod. Se:“HSA Innehåll Legitimerad Yrkesgrupp” på se www.inera.se/hsa.Notera också att samma användare kan inneha flera yrkesgrupper, t.ex. både Läkare och Sjuksköterska.RR: yrkeskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.hsaTitle",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.hsaTitle",
      "short" : "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "definition" : "Förskrivarens yrke i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.speciallityCodes",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.speciallityCodes",
      "short" : "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "definition" : "Förskrivarens specialiteter i klartext. Fylls i av NOD vid läsning från LF. Krav vid presentation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.paTitleCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.paTitleCode",
      "short" : "paTitleCode",
      "definition" : "Förskrivarens befattningskod.Se gruppförskrivarkod för villkor.HSA: befattningskod, även kallat paTitleCode.Notera också att samma användare kan inneha flera befattningskoder.RR: befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.givenName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.givenName",
      "short" : "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn",
      "definition" : "Förskrivarens tilltalsnamn.HSA: tilltalsnamn (givenName)RR: förnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.familyName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.familyName",
      "short" : "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn",
      "definition" : "Förskrivarens efternamn.Valideras i AFF HSA: efternamnRR: efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork",
      "short" : "PlaceOfWork",
      "definition" : "placeOfWork",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.unitPrescriptionCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.unitPrescriptionCode",
      "short" : "unitPrescriptionCode",
      "definition" : "Förskrivarens arbetsplatskod eller grupparbetsplatskodUnik kod för identifiering av ordinatörens arbetsplats vid förskrivningstillfället. Arbetsplatskoden anges, hos vissa vårdgivare, för att styra ekonomiska transaktioner vid ordinationer inom förmånen. Det är vårdgivarna som själva hanterar arbetsplatskoderna genom att registrera dem i EHM:s ARKO. Saknar ordinatören ordinarie arbetsplats anges en grupparbetsplatskod. Obligatorisk parameter om förmån angivits.Valideras i AFFHSA: arbetsplatskod, även kallat unitPrescriptionCode.RR: arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.careUnitName",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.careUnitName",
      "short" : "careUnitName",
      "definition" : "Förskrivarens lokalitet (adress 1). Ej gatunummer. Exempelvis: Vårdcentralen Humlan eller Privat, Kirurgi/ortopediHSA: enhetsnamn (careUnitName )RR: arbetsplatsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.city",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.city",
      "short" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort",
      "definition" : "Förskrivarens eller vårdcentralens postort. Exempelvis: HULTSFREDRR: arbetsplatsort",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.phoneNumber1",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.phoneNumber1",
      "short" : "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1",
      "definition" : "Förskrivarens eller vårdcentralens telefonnummer.HSA: direkttelefon RR: telefonnummer1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.phoneNumber2",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.phoneNumber2",
      "short" : "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2",
      "definition" : "Förskrivarens direktnummer Är information till apoteket och ska inte lämnas ut till patient.HSA: RR: telefonnummer2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.postalAdress",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.postalAdress",
      "short" : "postalAdress",
      "definition" : "Förskrivarens eller vårdcentralens gatuadress. Exempelvis: Storgatan 14B.HSA: postadress (postalAddress). Består av flera adressrader, som lämpligen konkateneras med komma som skiljetecken.RR: postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.postalCode",
      "path" : "getmedicationdispenseauthorizations.medicationDispenseCase.dispensedDrugs.presciber.placeOfWork.postalCode",
      "short" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer",
      "definition" : "Förskrivarens eller vårdcentralens postnummer. Exempelvis: 123 45HSA: postnummer (postalCode)RR: postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result",
      "path" : "getmedicationdispenseauthorizations.result",
      "short" : "ResultType",
      "definition" : "result",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result.resultCode",
      "path" : "getmedicationdispenseauthorizations.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Tillåtna värden: OK, INFO, ERROR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result.errorCode",
      "path" : "getmedicationdispenseauthorizations.result.errorCode",
      "short" : "errorCode",
      "definition" : "errorCode Tillåtna värden: VALIDATION_ERROR, ACCESS_DENIED, NOT_FOUND, ALREADY_EXISTS, INVALID_STATE, MAXIMUM_REQUEST_REACHED.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result.subcode",
      "path" : "getmedicationdispenseauthorizations.result.subcode",
      "short" : "subcode",
      "definition" : "subcode Tillåtna värden: SUB_RR_ERROR.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result.logId",
      "path" : "getmedicationdispenseauthorizations.result.logId",
      "short" : "logId",
      "definition" : "logId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationdispenseauthorizations.result.message",
      "path" : "getmedicationdispenseauthorizations.result.message",
      "short" : "message",
      "definition" : "message",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
