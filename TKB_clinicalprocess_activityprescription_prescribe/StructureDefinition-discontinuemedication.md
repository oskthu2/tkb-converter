# DiscontinueMedication - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DiscontinueMedication**

## Logical Model: DiscontinueMedication 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:DiscontinueMedication |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DiscontinueMedication (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-discontinuemedication.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-discontinuemedication.csv), [Excel](StructureDefinition-discontinuemedication.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "discontinuemedication",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication",
  "version" : "2.0",
  "name" : "DiscontinueMedication",
  "title" : "DiscontinueMedication",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DiscontinueMedication\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "discontinuemedication",
      "path" : "discontinuemedication",
      "short" : "DiscontinueMedication",
      "definition" : "Logisk modell för tjänstekontraktet DiscontinueMedication\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:DiscontinueMedication:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "discontinuemedication.medicationListVersion",
      "path" : "discontinuemedication.medicationListVersion",
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
      "id" : "discontinuemedication.medicationPrescription",
      "path" : "discontinuemedication.medicationPrescription",
      "short" : "MedicationPrescription",
      "definition" : "Läkemedelsordination",
      "comment" : "TKB-fält: `medicationPrescription` (`MedicationPrescription`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.registrationData",
      "path" : "discontinuemedication.medicationPrescription.registrationData",
      "short" : "RegistrationData",
      "definition" : "id, registrerad av och registreringstidpunkt.",
      "comment" : "TKB-fält: `../registrationData` (`RegistrationData`, kardinalitet 1..1).\n\n**Modellanteckning:** id, registrerad av och registreringstidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.registrationData.id",
      "path" : "discontinuemedication.medicationPrescription.registrationData.id",
      "short" : "Unikt id för det omgivande objektet.",
      "definition" : "Unikt id för Läkemedelsordinationen.\n\nOm Läkemedelsordinationen ursprungligen skapas i NOD ska värdet utelämnas (null) varvid värdet sätts av NOD.\n\nOm det är fråga om att en befintlig läkemedelsordination flyttas (importeras) till NOD från ett vårdsystem ska dess ursprungliga id anges. Detta ger bl.a. möjlighet att upptäcka dubbletter. Måste då vara UUID eller kälsystem+lokalt id.\n\nNotera att med \"flyttas\" (till skillnad från kopieras) avses att originalet (inte en kopia) överförs till NOD.",
      "comment" : "TKB-fält: `../../id` (`Identifier`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.registrationData.registeredBy",
      "path" : "discontinuemedication.medicationPrescription.registrationData.registeredBy",
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
      "id" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.healthcareProfessionalHSAId",
      "path" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.healthcareProfessionalHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.givenName",
      "path" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.givenName",
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
      "id" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.familyName",
      "path" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.familyName",
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
      "id" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "path" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "short" : "healthcareProfessionalRoleCode",
      "definition" : "befattningskod, även kallat paTitleCode i HSA.Se: http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf",
      "comment" : "TKB-fält: `../healthcareProfessionalRoleCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "path" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "path" : "discontinuemedication.medicationPrescription.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.registrationData.registrationTime",
      "path" : "discontinuemedication.medicationPrescription.registrationData.registrationTime",
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
      "id" : "discontinuemedication.medicationPrescription.patientId",
      "path" : "discontinuemedication.medicationPrescription.patientId",
      "short" : "patientId",
      "definition" : "Person- eller samordningsnummer enligt skatteverkets definition (12 tecken).\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `patientId` (`Identifier`, kardinalitet 1..1).\n\n**Modellanteckning:** Identifiering av patienten.För att registrera läkemedelsordinationer i NOD krävs svenskt personnummer eller samordningsnummer. På sikt kommer även andra typer av identitet att kunna användas, i första hand reservnummer och katastrofnummer. Undantag: Person med enbart samordningsnummer kan inte registreras för Dos och följaktligen inte heller ordineras Dos.Attributet system i datatypen Identifier (från FHIR) anger vilken typ av identifiering som används, dvs. om det t.ex. är personnummer eller samordningsnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.prescriber",
      "path" : "discontinuemedication.medicationPrescription.prescriber",
      "short" : "HealthcareProfessionalType",
      "definition" : "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.\n\nOrdinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext.\n\nSe not 1.",
      "comment" : "TKB-fält: `../prescriber` (`HealthcareProfessionalType`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.prescriber.healthcareProfessionalHSAId",
      "path" : "discontinuemedication.medicationPrescription.prescriber.healthcareProfessionalHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.prescriber.givenName",
      "path" : "discontinuemedication.medicationPrescription.prescriber.givenName",
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
      "id" : "discontinuemedication.medicationPrescription.prescriber.familyName",
      "path" : "discontinuemedication.medicationPrescription.prescriber.familyName",
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
      "id" : "discontinuemedication.medicationPrescription.prescriber.healthcareProfessionalRoleCode",
      "path" : "discontinuemedication.medicationPrescription.prescriber.healthcareProfessionalRoleCode",
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
      "id" : "discontinuemedication.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId",
      "path" : "discontinuemedication.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId",
      "path" : "discontinuemedication.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.responsiblePrescriber",
      "path" : "discontinuemedication.medicationPrescription.responsiblePrescriber",
      "short" : "HealthcareProfessionalType",
      "definition" : "Vid ordination enligt generellt direktiv anges den person som är ansvarig för detta generella direktiv.",
      "comment" : "TKB-fält: `../responsiblePrescriber` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId",
      "path" : "discontinuemedication.medicationPrescription.responsiblePrescriber.healthcareProfessionalHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.responsiblePrescriber.givenName",
      "path" : "discontinuemedication.medicationPrescription.responsiblePrescriber.givenName",
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
      "id" : "discontinuemedication.medicationPrescription.responsiblePrescriber.familyName",
      "path" : "discontinuemedication.medicationPrescription.responsiblePrescriber.familyName",
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
      "id" : "discontinuemedication.medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode",
      "path" : "discontinuemedication.medicationPrescription.responsiblePrescriber.healthcareProfessionalRoleCode",
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
      "id" : "discontinuemedication.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId",
      "path" : "discontinuemedication.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareUnitHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId",
      "path" : "discontinuemedication.medicationPrescription.responsiblePrescriber.healthcareProfessionalCareGiverHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.writeTime",
      "path" : "discontinuemedication.medicationPrescription.writeTime",
      "short" : "writeTime",
      "definition" : "Tidpunkt då det medicinska beslutet fattades.",
      "comment" : "TKB-fält: `writeTime` (`dateTime`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.\n\n**Modellanteckning:** Tidpunkt då det medicinska beslutet fattades. Normalfallet bör vara att Läkemedelsordinationen registreras i NOD i samband med att beslutet fattas varvid ordinationstidpunkt och registreringstidpunkt kommer att vara lika (sånär som på den tid det tar att genomföra tjänsteanropet). I vissa fall kommer de dock att skilja sig åt, t.ex. då en ordination som finns i ett vårdsystem och efterregistreras i NOD, eller då en ordination återskapas baserat på information från ett NEF-recept. I dessa fall skall ordinationstidpunkt, så gott det går, sättas till den tidpunkt då ordinationen ursprungligen skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.treatmentStartTime",
      "path" : "discontinuemedication.medicationPrescription.treatmentStartTime",
      "short" : "treatmentStartTime",
      "definition" : "Tidpunkt från vilken patienten ska ta sitt läkemedel.\n\ninsättningstidpunkt utgör startpunkt för angiven dosering.\n\nVid utsättning ska insättningstidpunkt sättas till samma som utsättningstidpunkt.",
      "comment" : "TKB-fält: `../ treatmentStartTime` (`dateTime`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.treatmentEndTime",
      "path" : "discontinuemedication.medicationPrescription.treatmentEndTime",
      "short" : "treatmentEndTime",
      "definition" : "Om utsättning sker i framtiden så måste denna skickas med, och går endast att använda för att förkorta en behandling.",
      "comment" : "TKB-fält: `treatmentEndTime` (`dateTime`, kardinalitet 0..1).\n\n**Modellanteckning:** Planerad tidpunkt vid vilken patienten ska upphöra att ta sitt läkemedel.Det är utsättningstidpunkten i den gällande Läkemedelsordinationen som är styrande för om läkemedelsbehandlingen är avlutad.Om attributet inte anges innebär det att läkemedelsbehandlingen ska pågå tills vidare. Tidpunkten får, om den anges, inte vara före insättningstidpunkt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.evaluationTime",
      "path" : "discontinuemedication.medicationPrescription.evaluationTime",
      "short" : "evaluationTime",
      "definition" : "Tidpunkt då läkemedelsbehandlingen senast bör utvärderas.\n\nTidpunkten får, om den anges, inte vara före insättningstidpunkt.\n\nSyftet är t.ex. att vårdsystemen ska kunna uppmärksamma ansvarig ordinatör när utvärderingstidpunkten närmar sig.",
      "comment" : "TKB-fält: `../evaluationTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.evaluatedBy",
      "path" : "discontinuemedication.medicationPrescription.evaluatedBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Den aktör, dvs. ordinatör eller vårdenhet och vårdgivare, som i förekommande fall ska genomföra utvärdering.\n\nOm ingen aktör anges så anses aktuell ordinatör vara ansvarig för utvärderingen.\n\nOm endast vårdenhet och vårdgivare är kända kan information om personen utlämnas.",
      "comment" : "TKB-fält: `../evaluatedBy` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.evaluatedBy.healthcareProfessionalHSAId",
      "path" : "discontinuemedication.medicationPrescription.evaluatedBy.healthcareProfessionalHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.evaluatedBy.givenName",
      "path" : "discontinuemedication.medicationPrescription.evaluatedBy.givenName",
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
      "id" : "discontinuemedication.medicationPrescription.evaluatedBy.familyName",
      "path" : "discontinuemedication.medicationPrescription.evaluatedBy.familyName",
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
      "id" : "discontinuemedication.medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode",
      "path" : "discontinuemedication.medicationPrescription.evaluatedBy.healthcareProfessionalRoleCode",
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
      "id" : "discontinuemedication.medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId",
      "path" : "discontinuemedication.medicationPrescription.evaluatedBy.healthcareProfessionalCareUnitHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId",
      "path" : "discontinuemedication.medicationPrescription.evaluatedBy.healthcareProfessionalCareGiverHSAId",
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
      "id" : "discontinuemedication.medicationPrescription.reason",
      "path" : "discontinuemedication.medicationPrescription.reason",
      "short" : "Reason",
      "definition" : "Utsättningsorsak i kodad form.",
      "comment" : "TKB-fält: `reason` (`Reason`, kardinalitet 1..*).\n\nObs: modellen anger 0..1 där TKB:n anger 1..*.\n\n**Modellanteckning:** Orsaken till beslutet.Syftet är att ordinatören ska kunna ange orsak till en ändring av en läkemedelsbehandling, t.ex. ändring av doseringen, byte av läkemedelsfabrikat eller utsättning av andra skäl än planerad utsättning. Fältet ska inte förväxlas med ordinationsorsak som avser den orsaken till behandlingen som helhet. Tillsammans med ordinationsorsak kommer samtliga beslutsorsaker att utgöra en slags läkemedelsjournal för läkemedelsbehandlingen.Fältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering. Vid makulering av expedieringsunderlag härleds dock expedieringsunderlagets makuleringsorsak (1-4) från beslutsorsak.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.reason.code",
      "path" : "discontinuemedication.medicationPrescription.reason.code",
      "short" : "code",
      "definition" : "Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges.\n\nAnges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO).",
      "comment" : "TKB-fält: `../code` (`CodeableConcept`, kardinalitet 1).\n\n**Modellanteckning:** Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Om ordinationsorsak anges till Annan orsak är det obligatorisk att ange orsaken som fritext (i fältet CodeableConcept.text) i annat fall ska fritext inte anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.reason.primaryReason",
      "path" : "discontinuemedication.medicationPrescription.reason.primaryReason",
      "short" : "Uppgift om huruvida orsaken är ”huvudorsak”, dvs. viktigare än andra angivna orsaker",
      "definition" : "Uppgift om huruvida orsaken är \"huvudorsak\", dvs. viktigare än andra angivna orsaker",
      "comment" : "TKB-fält: `../primaryReason` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.annotation",
      "path" : "discontinuemedication.medicationPrescription.annotation",
      "short" : "annotation",
      "definition" : "Ordinatörens kommentarer i fritext kopplade till en specifik ordination.\n\nSyftet är t.ex. att ordinatören i fritext ska kunna ange sådant som inte framgår av beslutsorsak eller ordinationsorsak och som är av intresse för annan vård- och omsorgspersonal.\n\nFältet är avsett att beskriva nuläget för läkemedelsbehandlingen utan att användaren ska behöva ta del av notatfältet i tidigare läkemedelsordinationer.\n\nFältet ingår inte i Expedieringsunderlag och kan t.ex. inte skrivas ut på etiketten vid expediering.",
      "comment" : "TKB-fält: `../annotation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.use",
      "path" : "discontinuemedication.medicationPrescription.use",
      "short" : "use",
      "definition" : "Anvisningar i fri text som för patienten beskriver hur läkemedlet skall användas eller administreras t.ex. \"sväljes hela\", \"påstrykes i armvecket\". Fältet kan även rymma andra anvisningar, t.ex. sic[1] (eller obs).\n\nEtt förslag till text är tänkt att i vårdsystemet hämtas från SIL baserat på det läkemedel som valts, men kan behöva kompletteras manuellt.\n\nIngår i Expedieringsunderlag som en del av doseringstext 1.",
      "comment" : "TKB-fält: `../use` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.purpose",
      "path" : "discontinuemedication.medicationPrescription.purpose",
      "short" : "Behandlingsändamål i klartext.Ingår i Expedieringsunderlag som Ändamål klartext",
      "definition" : "Behandlingsändamål i klartext.\n\nIngår i Expedieringsunderlag som Ändamål klartext",
      "comment" : "TKB-fält: `../purpose` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication",
      "path" : "discontinuemedication.medicationPrescription.medication",
      "short" : "Medication_virtual",
      "definition" : "Det läkemedel (eller handelsvara) som Läkemedelsordinationen avser.\n\nDet finns i modellen ingen begränsning för vilka läkemedel som kan anges eller vilka byten som får ske inom en Läkemedelsbehandling. Det är dock rimligt att anta att någon form av begränsning är på sin plats (t.ex. att byte bara får ske inom samma ATC-kod), men en sådan begränsning är en verksamhetsregel som kan realiseras som en del av tjänsterna NOD eller i vårdsystemet.\n\nVid utsättning anges det läkemedel som sätts ut, dvs. det som angavs i den föregående Läkemedelsordinationen.",
      "comment" : "TKB-fält: `../medication` (`Medication_virtual`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DistributedDrug-attr",
      "path" : "discontinuemedication.medicationPrescription.medication.DistributedDrug_attr",
      "short" : "DistributedDrug",
      "definition" : "DistributedDrug_attr",
      "comment" : "TKB-fält: `../../DistributedDrug_attr` (`DistributedDrug`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DistributedDrug-attr.NPLid",
      "path" : "discontinuemedication.medicationPrescription.medication.DistributedDrug_attr.NPLid",
      "short" : "NPLid",
      "definition" : "id som identifierar läkemedelsprodukt.\n\nHämtas från SIL.\n\nEx. Alvedon tablett 500 mg.\n\nObligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).\n\nNPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.\n\nObs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.\n\nÄr obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)\n\nIngår i Expedieringsunderlag.",
      "comment" : "TKB-fält: `../../../NPLid` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DistributedDrug-attr.tradeName",
      "path" : "discontinuemedication.medicationPrescription.medication.DistributedDrug_attr.tradeName",
      "short" : "tradeName",
      "definition" : "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.\n\nMöjlighet att utnyttja detta fält för \"fritextordination\" måste testas (t.ex. för studieläkemedel eller \"okänt läkemedel\").",
      "comment" : "TKB-fält: `../../../tradeName` (`string`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DistributedDrug-attr.notInterchangable",
      "path" : "discontinuemedication.medicationPrescription.medication.DistributedDrug_attr.notInterchangable",
      "short" : "notInterchangable",
      "definition" : "Markering att ordinerad vara ej får bytas ut vid expediering\n\nFalskt = Får bytas ut\n\nSant = Får ej bytas ut\n\nNotera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget.",
      "comment" : "TKB-fält: `../../../notInterchangable` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DrugArticle-attr",
      "path" : "discontinuemedication.medicationPrescription.medication.DrugArticle_attr",
      "short" : "DrugArticle",
      "definition" : "DrugArticle_attr",
      "comment" : "TKB-fält: `../../DrugArticle_attr` (`DrugArticle`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DrugArticle-attr.NPLPackid",
      "path" : "discontinuemedication.medicationPrescription.medication.DrugArticle_attr.NPLPackid",
      "short" : "NPLPackid",
      "definition" : "Id som identifierar läkemedelsartikel.\n\nHämtas från SIL.\n\nAnger läkemedel på nivån : Alvedon tablett 500 mg, 16 st blister.",
      "comment" : "TKB-fält: `../../../NPLPackid` (`Identifier`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DrugArticle-attr.distributedTradeName",
      "path" : "discontinuemedication.medicationPrescription.medication.DrugArticle_attr.distributedTradeName",
      "short" : "distributedTradeName",
      "definition" : "Produktnamn + förpackning\n\nNamn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.\n\nKallas artikel hos apoteksaktörerna",
      "comment" : "TKB-fält: `../../../distributedTradeName` (`string`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DrugArticle-attr.distributedDrug",
      "path" : "discontinuemedication.medicationPrescription.medication.DrugArticle_attr.distributedDrug",
      "short" : "DistributedDrug",
      "definition" : "Den Läkemedelsprodukt som Läkemedelsartikeln baseras på.(se not 1)",
      "comment" : "TKB-fält: `../../../distributedDrug` (`DistributedDrug`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DrugArticle-attr.distributedDrug.NPLid",
      "path" : "discontinuemedication.medicationPrescription.medication.DrugArticle_attr.distributedDrug.NPLid",
      "short" : "NPLid",
      "definition" : "id som identifierar läkemedelsprodukt.\n\nHämtas från SIL.\n\nEx. Alvedon tablett 500 mg.\n\nObligatorisk parameter om Varunr saknas (dvs. om ordinationen ej gäller handelsvara).\n\nNPL = Nationellt Produktregister för Läkemedel, registrerade på Läkemedelsverket.\n\nObs att ingen interaktionskontroll i Sfinx kan göras utan NPL-id.\n\nÄr obligatorisk även vid ordination i NOD 1.0 (annars funkar inte interaktionskoll i SIL/Sfinx)\n\nIngår i Expedieringsunderlag.",
      "comment" : "TKB-fält: `../../../../NPLid` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DrugArticle-attr.distributedDrug.tradeName",
      "path" : "discontinuemedication.medicationPrescription.medication.DrugArticle_attr.distributedDrug.tradeName",
      "short" : "tradeName",
      "definition" : "Namn vid det tillfälle då ordinationen upprättades. Hämtas från SIL och sparas i NOD för att spårbarheten ska behållas även om benämningen ändras över tid.\n\nMöjlighet att utnyttja detta fält för \"fritextordination\" måste testas (t.ex. för studieläkemedel eller \"okänt läkemedel\").",
      "comment" : "TKB-fält: `../../../../tradeName` (`string`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.DrugArticle-attr.distributedDrug.notInterchangable",
      "path" : "discontinuemedication.medicationPrescription.medication.DrugArticle_attr.distributedDrug.notInterchangable",
      "short" : "notInterchangable",
      "definition" : "Markering att ordinerad vara ej får bytas ut vid expediering\n\nFalskt = Får bytas ut\n\nSant = Får ej bytas ut\n\nNotera att beslutet att produkten inte får bytas ut normalt sker av medicinska skäl och att det därför inte enbart kan finnas på Expedieringsunderlaget.",
      "comment" : "TKB-fält: `../../../../notInterchangable` (`boolean`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.ExTempore-attr",
      "path" : "discontinuemedication.medicationPrescription.medication.ExTempore_attr",
      "short" : "ExTempore",
      "definition" : "ExTempore_attr",
      "comment" : "TKB-fält: `../../ExTempore_attr` (`ExTempore`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.ExTempore-attr.description",
      "path" : "discontinuemedication.medicationPrescription.medication.ExTempore_attr.description",
      "short" : "Beskriver komposition mm. Mappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget.",
      "definition" : "Beskriver komposition mm.\n\nMappas vid förskrivning till doseringstext 2 i Expedieringsunderlaget.",
      "comment" : "TKB-fält: `../../../description` (`string`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.LicensedDrug-attr",
      "path" : "discontinuemedication.medicationPrescription.medication.LicensedDrug_attr",
      "short" : "LicensedDrug",
      "definition" : "LicensedDrug_attr",
      "comment" : "TKB-fält: `../../LicensedDrug_attr` (`LicensedDrug`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.LicensedDrug-attr.productName",
      "path" : "discontinuemedication.medicationPrescription.medication.LicensedDrug_attr.productName",
      "short" : "Namn på läkemedlet i fri text.Ingår i Expedieringsunderlag.doseringstext 2.",
      "definition" : "Namn på läkemedlet i fri text.\n\nIngår i Expedieringsunderlag.doseringstext 2.",
      "comment" : "TKB-fält: `../../../productName` (`string`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.LicensedDrug-attr.strength",
      "path" : "discontinuemedication.medicationPrescription.medication.LicensedDrug_attr.strength",
      "short" : "Ingår i Expedieringsunderlag.doseringstext 2.",
      "definition" : "Ingår i Expedieringsunderlag.doseringstext 2.",
      "comment" : "TKB-fält: `../../../strength` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.LicensedDrug-attr.drugForm",
      "path" : "discontinuemedication.medicationPrescription.medication.LicensedDrug_attr.drugForm",
      "short" : "Ingår i Expedieringsunderlag.doseringstext 2.",
      "definition" : "Ingår i Expedieringsunderlag.doseringstext 2.",
      "comment" : "TKB-fält: `../../../drugForm` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.LicensedDrug-attr.licenseInformation",
      "path" : "discontinuemedication.medicationPrescription.medication.LicensedDrug_attr.licenseInformation",
      "short" : "t.ex. vilket apotek som har den beviljade licensenIngår i Expedieringsunderlag.doseringstext 2.",
      "definition" : "t.ex. vilket apotek som har den beviljade licensen\n\nIngår i Expedieringsunderlag.doseringstext 2.",
      "comment" : "TKB-fält: `../../../licenseInformation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.NonDrugArticle-attr",
      "path" : "discontinuemedication.medicationPrescription.medication.NonDrugArticle_attr",
      "short" : "NonDrugArticle",
      "definition" : "NonDrugArticle_attr",
      "comment" : "TKB-fält: `../../NonDrugArticle_attr` (`NonDrugArticle`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.NonDrugArticle-attr.articleId",
      "path" : "discontinuemedication.medicationPrescription.medication.NonDrugArticle_attr.articleId",
      "short" : "articleId",
      "definition" : "Identitet på ordinerad handelsvara.\n\nObligatorisk parameter för handelsvaror som ska hämtas ut på apotek.\n\nFår ej anges för läkemedel.\n\nIngår i Expedieringsunderlag.",
      "comment" : "TKB-fält: `../../../articleId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.FreeTextMedication-attr",
      "path" : "discontinuemedication.medicationPrescription.medication.FreeTextMedication_attr",
      "short" : "FreeTextMedication",
      "definition" : "FreeTextMedication_attr",
      "comment" : "TKB-fält: `../../FreeTextMedication_attr` (`FreeTextMedication`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.FreeTextMedication-attr.description",
      "path" : "discontinuemedication.medicationPrescription.medication.FreeTextMedication_attr.description",
      "short" : "description",
      "definition" : "beskrivning av läkemedlet.\n\nFritextval används t.ex. då patienten själv anger sina läkemedel (egenmedicinering) samt vid studieläkemedel, dvs. när patienten deltar i en forskningsstudie och inte själv vet om aktiv substans används.",
      "comment" : "TKB-fält: `../../../description` (`string`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.medication.FreeTextMedication-attr.atcCode",
      "path" : "discontinuemedication.medicationPrescription.medication.FreeTextMedication_attr.atcCode",
      "short" : "ATC-kodOm angivet kan kontroller utföras (interaktion, amning mm). Se not 1.",
      "definition" : "ATC-kod\n\nOm angivet kan kontroller utföras (interaktion, amning mm). Se not 1.",
      "comment" : "TKB-fält: `../../../atcCode` (`code`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage",
      "path" : "discontinuemedication.medicationPrescription.dosage",
      "short" : "Dosage",
      "definition" : "Dosering enligt vårdens doseringsmodell.\n\nDoseringen ska anges i relation till insättningstidpunkt.\n\nVid utsättning anges den tidigare doseringen. Det är med andra ord utsättningstidpunkten som anger att behandlingen avslutas - inte doseringen.\n\nI vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas.",
      "comment" : "TKB-fält: `../dosage` (`Dosage`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps",
      "short" : "DosageStep",
      "definition" : "Ett eller flera doseringssteg.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration",
      "short" : "Period",
      "definition" : "den tid under vilket läkemedlet ska användas enligt ordination, t.ex. 4 veckor, 5–6 veckor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.duration.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.isMaxDuration",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.isMaxDuration",
      "short" : "isMaxDuration",
      "definition" : "flagga som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas.Flaggan är satt till FALSE som förvalt värde, dvs. den anger att behandlingstiden inte är en maxtid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.doseUnit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.doseUnit",
      "short" : "den enhet som doseringen avser, t.ex. tablett, ml eller droppe",
      "definition" : "den enhet som doseringen avser, t.ex. tablett, ml eller droppe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage",
      "short" : "DosageType_virtual",
      "definition" : "dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger dagligen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.periodDuration",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication#discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage"
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication#discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage"
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByText-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByText-attr.text",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.regularDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage",
      "short" : "DosageType_virtual",
      "definition" : "dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.periodDuration",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication#discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage"
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication#discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage"
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByText-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByText-attr.text",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.maxDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage",
      "short" : "DosageType_virtual",
      "definition" : "ordinerad mängd och periodicitet som gäller om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.periodDuration",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication#discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage"
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/discontinuemedication#discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage"
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByText-attr",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByText-attr.text",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.conditionalDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.condition",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.condition",
      "short" : "condition",
      "definition" : "text som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".Anges endast om attributet villkorsdosering förekommer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.shortNotation",
      "path" : "discontinuemedication.medicationPrescription.dosage.dosageSteps.shortNotation",
      "short" : "angiven kortnotation som beskriver doseringen",
      "definition" : "angiven kortnotation som beskriver doseringen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.treamentReason",
      "path" : "discontinuemedication.medicationPrescription.treamentReason",
      "short" : "Reason",
      "definition" : "Ordinationsorsak enligt separat struktur.Det bör påpekas att ordinationsorsak (i förekommande fall) ska anges av vårdsystemet för ny instans av Läkemedelsordination inom samma läkemedelsbehandling. Principen att det senast beslutet ska innehålla en komplett beskrivning av den pågående läkemedelsbehandlingen gäller även här. Även vid utsättning ska följaktligen ordinationsorsak anges.Även om det är ovanligt att ordinationsorsaken ändras inom en läkemedelsbehandling så finns det inget hinder (i modellen) för detta.Om ordinationsorsak anges ska minst en, eventuellt flera, anges som huvudorsak. Ordinationsorsak får inte överföras till receptregistret eller finnas på recept/expedieringsunderlag.Se även not 4.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.treamentReason.code",
      "path" : "discontinuemedication.medicationPrescription.treamentReason.code",
      "short" : "code",
      "definition" : "Vid användning som ordinationsorsak ska Snomed CT-koden för vald ordinationsorsak anges. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Om ordinationsorsak anges till Annan orsak är det obligatorisk att ange orsaken som fritext (i fältet CodeableConcept.text) i annat fall ska fritext inte anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.treamentReason.primaryReason",
      "path" : "discontinuemedication.medicationPrescription.treamentReason.primaryReason",
      "short" : "Uppgift om huruvida orsaken är ”huvudorsak”, dvs. viktigare än andra angivna orsaker",
      "definition" : "Uppgift om huruvida orsaken är ”huvudorsak”, dvs. viktigare än andra angivna orsaker",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.site",
      "path" : "discontinuemedication.medicationPrescription.site",
      "short" : "site",
      "definition" : "Den plats på kroppen genom vilket läkemedlet intas eller appliceras.",
      "comment" : "TKB-fält: `../site` (`CodeableConcept`, kardinalitet 0..1).\n\n**Modellanteckning:** Den plats på kroppen genom vilket läkemedlet intas eller appliceras.En SNOMED-kod under SCTID:91723000 \"anatomical structure\"",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.route",
      "path" : "discontinuemedication.medicationPrescription.route",
      "short" : "Den väg som läkemedlet tar sig in i kroppen.En SNOMED-kod under SCTID: 284009009 \"route of administration value\"",
      "definition" : "Den väg som läkemedlet tar sig in i kroppen.",
      "comment" : "TKB-fält: `../route` (`CodeableConcept`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "discontinuemedication.medicationPrescription.method",
      "path" : "discontinuemedication.medicationPrescription.method",
      "short" : "Den teknik med vilken läkemedlet administreras.En SNOMED-kod under SCTID: 107733003 \"introduction (procedure)\"",
      "definition" : "Den teknik med vilken läkemedlet administreras.",
      "comment" : "TKB-fält: `../method` (`CodeableConcept`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "discontinuemedication.result",
      "path" : "discontinuemedication.result",
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
      "id" : "discontinuemedication.result.resultCode",
      "path" : "discontinuemedication.result.resultCode",
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
      "id" : "discontinuemedication.result.errorCode",
      "path" : "discontinuemedication.result.errorCode",
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
      "id" : "discontinuemedication.result.subcode",
      "path" : "discontinuemedication.result.subcode",
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
      "id" : "discontinuemedication.result.logId",
      "path" : "discontinuemedication.result.logId",
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
      "id" : "discontinuemedication.result.message",
      "path" : "discontinuemedication.result.message",
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
