# RegisterMedicationStatement - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicationStatement**

## Logical Model: RegisterMedicationStatement 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:RegisterMedicationStatement |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterMedicationStatement (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1). Representerar responsens informationsstruktur. RegisterMedicationStatement används för att registrera egenmedicinering. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registermedicationstatement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicationstatement.csv), [Excel](StructureDefinition-registermedicationstatement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicationstatement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement",
  "version" : "1.0",
  "name" : "RegisterMedicationStatement",
  "title" : "RegisterMedicationStatement",
  "status" : "draft",
  "date" : "2026-11-09T03:17:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterMedicationStatement\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1).\nRepresenterar responsens informationsstruktur.\nRegisterMedicationStatement används för att registrera egenmedicinering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicationstatement",
      "path" : "registermedicationstatement",
      "short" : "RegisterMedicationStatement",
      "definition" : "Logisk modell för tjänstekontraktet RegisterMedicationStatement\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:RegisterMedicationStatement:1).\nRepresenterar responsens informationsstruktur.\nRegisterMedicationStatement används för att registrera egenmedicinering."
    },
    {
      "id" : "registermedicationstatement.medicationStatement",
      "path" : "registermedicationstatement.medicationStatement",
      "short" : "MedicationStatement",
      "definition" : "Egenmedicineringsbehandling.",
      "comment" : "TKB-fält: `medicationStatement` (`MedicationStatement_setter`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.registrationData",
      "path" : "registermedicationstatement.medicationStatement.registrationData",
      "short" : "RegistrationData",
      "definition" : "id, registrerad av och registreringstidpunkt.",
      "comment" : "TKB-fält: `../registrationData` (`RegistrationData`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.registrationData.id",
      "path" : "registermedicationstatement.medicationStatement.registrationData.id",
      "short" : "Unikt id för det omgivande objektet.",
      "definition" : "Unikt id för det omgivande objektet.",
      "comment" : "TKB-fält: `../../id` (`Identifier`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.registrationData.registeredBy",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registeredBy",
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
      "id" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.healthcareProfessionalHSAId",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.healthcareProfessionalHSAId",
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
      "id" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.givenName",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.givenName",
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
      "id" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.familyName",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.familyName",
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
      "id" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.healthcareProfessionalRoleCode",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.healthcareProfessionalRoleCode",
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
      "id" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.healthcareProfessionalCareUnitHSAId",
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
      "id" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registeredBy.healthcareProfessionalCareGiverHSAId",
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
      "id" : "registermedicationstatement.medicationStatement.registrationData.registrationTime",
      "path" : "registermedicationstatement.medicationStatement.registrationData.registrationTime",
      "short" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "definition" : "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka.",
      "comment" : "TKB-fält: `../../registrationTime` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.patientId",
      "path" : "registermedicationstatement.medicationStatement.patientId",
      "short" : "Identifiering av patienten.",
      "definition" : "Person- eller samordningsnummer enligt skatteverkets definition (12 tecken).\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `patientId` (`Identifier`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.treatmentStartTime",
      "path" : "registermedicationstatement.medicationStatement.treatmentStartTime",
      "short" : "Tidpunkt då patienten uppger att behandlingen påbörjats.",
      "definition" : "Tidpunkt då patienten uppger att behandlingen påbörjats.",
      "comment" : "TKB-fält: `../treatmentStartTime` (`dateTime`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.treatmentEndTime",
      "path" : "registermedicationstatement.medicationStatement.treatmentEndTime",
      "short" : "treatmentEndTime",
      "definition" : "Tidpunkt då patienten uppger att Egenmedicineringen avslutats eller planerar att avsluta den.\n\nOm attributet inte anges innebär det att Egenmedicineringen pågår tills vidare utan känd sluttid.\n\nTidpunkten får, om den anges, inte vara före insättningstidpunkt.",
      "comment" : "TKB-fält: `../treatmentEndTime` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.annotation",
      "path" : "registermedicationstatement.medicationStatement.annotation",
      "short" : "annotation",
      "definition" : "Kommentarer i fritext av registrerande Hälso- och sjukvårdspersonal, t.ex. bedömning av medicineringens verkan samt av patienten uppgivna effekter eller biverkningar.",
      "comment" : "TKB-fält: `../annotation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.purpose",
      "path" : "registermedicationstatement.medicationStatement.purpose",
      "short" : "Av patienten uppgivet behandlingsändamål i klartext.",
      "definition" : "Av patienten uppgivet behandlingsändamål i klartext.",
      "comment" : "TKB-fält: `../purpose` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.medication",
      "path" : "registermedicationstatement.medicationStatement.medication",
      "short" : "Medication_virtual",
      "definition" : "Det läkemedel (eller handelsvara) som Egenmedicineringen avser.\n\nDet är kanske inte troligt att patienten kan uppge läkemedlet så exakt att en det kan kopplas till en Läkemedelsartikel eller Läkemedelsprodukt, även om möjligheten finns. Istället är det troligare att det anges som Fritextläkemedel varvid även ATC-kod kan registreras om det är känt.",
      "comment" : "TKB-fält: `../medication` (`Medication_virtual`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.medication.DistributedDrug-attr",
      "path" : "registermedicationstatement.medicationStatement.medication.DistributedDrug_attr",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DistributedDrug-attr.NPLid",
      "path" : "registermedicationstatement.medicationStatement.medication.DistributedDrug_attr.NPLid",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DistributedDrug-attr.tradeName",
      "path" : "registermedicationstatement.medicationStatement.medication.DistributedDrug_attr.tradeName",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DistributedDrug-attr.notInterchangable",
      "path" : "registermedicationstatement.medicationStatement.medication.DistributedDrug_attr.notInterchangable",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DrugArticle-attr",
      "path" : "registermedicationstatement.medicationStatement.medication.DrugArticle_attr",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DrugArticle-attr.NPLPackid",
      "path" : "registermedicationstatement.medicationStatement.medication.DrugArticle_attr.NPLPackid",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DrugArticle-attr.distributedTradeName",
      "path" : "registermedicationstatement.medicationStatement.medication.DrugArticle_attr.distributedTradeName",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DrugArticle-attr.distributedDrug",
      "path" : "registermedicationstatement.medicationStatement.medication.DrugArticle_attr.distributedDrug",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DrugArticle-attr.distributedDrug.NPLid",
      "path" : "registermedicationstatement.medicationStatement.medication.DrugArticle_attr.distributedDrug.NPLid",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DrugArticle-attr.distributedDrug.tradeName",
      "path" : "registermedicationstatement.medicationStatement.medication.DrugArticle_attr.distributedDrug.tradeName",
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
      "id" : "registermedicationstatement.medicationStatement.medication.DrugArticle-attr.distributedDrug.notInterchangable",
      "path" : "registermedicationstatement.medicationStatement.medication.DrugArticle_attr.distributedDrug.notInterchangable",
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
      "id" : "registermedicationstatement.medicationStatement.medication.ExTempore-attr",
      "path" : "registermedicationstatement.medicationStatement.medication.ExTempore_attr",
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
      "id" : "registermedicationstatement.medicationStatement.medication.ExTempore-attr.description",
      "path" : "registermedicationstatement.medicationStatement.medication.ExTempore_attr.description",
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
      "id" : "registermedicationstatement.medicationStatement.medication.LicensedDrug-attr",
      "path" : "registermedicationstatement.medicationStatement.medication.LicensedDrug_attr",
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
      "id" : "registermedicationstatement.medicationStatement.medication.LicensedDrug-attr.productName",
      "path" : "registermedicationstatement.medicationStatement.medication.LicensedDrug_attr.productName",
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
      "id" : "registermedicationstatement.medicationStatement.medication.LicensedDrug-attr.strength",
      "path" : "registermedicationstatement.medicationStatement.medication.LicensedDrug_attr.strength",
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
      "id" : "registermedicationstatement.medicationStatement.medication.LicensedDrug-attr.drugForm",
      "path" : "registermedicationstatement.medicationStatement.medication.LicensedDrug_attr.drugForm",
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
      "id" : "registermedicationstatement.medicationStatement.medication.LicensedDrug-attr.licenseInformation",
      "path" : "registermedicationstatement.medicationStatement.medication.LicensedDrug_attr.licenseInformation",
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
      "id" : "registermedicationstatement.medicationStatement.medication.NonDrugArticle-attr",
      "path" : "registermedicationstatement.medicationStatement.medication.NonDrugArticle_attr",
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
      "id" : "registermedicationstatement.medicationStatement.medication.NonDrugArticle-attr.articleId",
      "path" : "registermedicationstatement.medicationStatement.medication.NonDrugArticle_attr.articleId",
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
      "id" : "registermedicationstatement.medicationStatement.medication.FreeTextMedication-attr",
      "path" : "registermedicationstatement.medicationStatement.medication.FreeTextMedication_attr",
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
      "id" : "registermedicationstatement.medicationStatement.medication.FreeTextMedication-attr.description",
      "path" : "registermedicationstatement.medicationStatement.medication.FreeTextMedication_attr.description",
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
      "id" : "registermedicationstatement.medicationStatement.medication.FreeTextMedication-attr.atcCode",
      "path" : "registermedicationstatement.medicationStatement.medication.FreeTextMedication_attr.atcCode",
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
      "id" : "registermedicationstatement.medicationStatement.dosage",
      "path" : "registermedicationstatement.medicationStatement.dosage",
      "short" : "Dosage",
      "definition" : "I möjligaste mån bör doseringen anges strukturerat enligt vårdens doseringsmodell. Där så inte är möjligt finns alltid möjligheten att (i doseringsmodellen) ange doseringen som fri text.\n\nI vissa fall (t.ex. vid ordination av handelsvaror) är dosering irrelevant och kan utelämnas.",
      "comment" : "TKB-fält: `../dosage` (`Dosage`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps",
      "short" : "DosageStep",
      "definition" : "Ett eller flera doseringssteg.",
      "comment" : "TKB-fält: `../../dosageSteps` (`DosageStep`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration",
      "short" : "Period",
      "definition" : "den tid under vilket läkemedlet ska användas enligt ordination, t.ex. 4 veckor, 5-6 veckor",
      "comment" : "TKB-fält: `../../../duration` (`Period`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value",
      "short" : "Interval",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`Interval`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "comment" : "TKB-fält: `../../../../../min` (`NumericValue`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "comment" : "TKB-fält: `../../../../../../decimalNumber` (`DecimalNumber`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../../../../value` (`decimal`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "comment" : "TKB-fält: `../../../../../../../decimals` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "comment" : "TKB-fält: `../../../../../../fraction` (`Fraktion`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "comment" : "TKB-fält: `../../../../../../../numerator` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "comment" : "TKB-fält: `../../../../../../../denominator` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.\n\nOm utelämnat tolkas som att max=min, dvs. en skalär.",
      "comment" : "TKB-fält: `../../../../../max` (`NumericValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "comment" : "TKB-fält: `../../../../../../decimalNumber` (`DecimalNumber`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../../../../value` (`decimal`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "comment" : "TKB-fält: `../../../../../../../decimals` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "comment" : "TKB-fält: `../../../../../../fraction` (`Fraktion`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "comment" : "TKB-fält: `../../../../../../../numerator` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "comment" : "TKB-fält: `../../../../../../../denominator` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.duration.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year}",
      "comment" : "TKB-fält: `../../../../unit` (`TimeUnitEnum`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.isMaxDuration",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.isMaxDuration",
      "short" : "isMaxDuration",
      "definition" : "flagga som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas.\n\nFlaggan är satt till FALSE som förvalt värde, dvs. den anger att behandlingstiden inte är en maxtid.",
      "comment" : "TKB-fält: `../../../isMaxDuration` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.doseUnit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.doseUnit",
      "short" : "den enhet som doseringen avser, t.ex. tablett, ml eller droppe",
      "definition" : "den enhet som doseringen avser, t.ex. tablett, ml eller droppe",
      "comment" : "TKB-fält: `../../../doseUnit` (`string`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage",
      "short" : "DosageType_virtual",
      "definition" : "dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger dagligen",
      "comment" : "TKB-fält: `../../../regularDosage` (`DosageType_virtual`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod-attr.period.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.periodDuration",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement#registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage"
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement#registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage"
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByText-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByText-attr.text",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.regularDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage",
      "short" : "DosageType_virtual",
      "definition" : "dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka",
      "comment" : "TKB-fält: `../../../maxDosage` (`DosageType_virtual`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod-attr.period.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.periodDuration",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement#registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage"
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement#registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage"
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByText-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByText-attr.text",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.maxDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage",
      "short" : "DosageType_virtual",
      "definition" : "ordinerad mängd och periodicitet som gäller om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten",
      "comment" : "TKB-fält: `../../../conditionalDosage` (`DosageType_virtual`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr",
      "short" : "DosageByFrequency",
      "definition" : "DosageByFrequency_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency",
      "short" : "Frequency",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency-attr.frequency.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByFrequency_attr.frequency.unit",
      "short" : "unit",
      "definition" : "unit Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr",
      "short" : "DosageByPeriod",
      "definition" : "DosageByPeriod_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose",
      "short" : "Interval",
      "definition" : "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period",
      "short" : "Period",
      "definition" : "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod-attr.period.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByPeriod_attr.period.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr",
      "short" : "DosageByOccasion",
      "definition" : "DosageByOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions",
      "short" : "Occasion",
      "definition" : "det eller de Doseringstillfällen som anger mängd och tidpunkt inom perioden",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.event",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time.hour",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.time.time.minute",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.occasions.dayInPeriod",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.occasions.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.periodDuration",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.periodDuration",
      "short" : "periodDuration",
      "definition" : "Periodtid för intagen i dagar.Vid regelbunden (daglig) dosering är periodlängd = 1, vid intag varannan dag är periodlängd = 2 osv. Valideras att angivet värde är >0 och <= 28",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion-attr.periodTrigger",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByOccasion_attr.periodTrigger",
      "short" : "periodTrigger",
      "definition" : "Anger vilken händelse som utgör start för perioden. Endast relevant då annan periodlängd än 1 anges. Vid t.ex. veckoschema är nödvändigt att ange om dag i period för ett Doseringstillfälle ska beräknas utifrån första dagen i veckan eller från insättningstiden. Genom att utgår från första dagen i veckan underlättas kan doseringen förbli oförändrad vid förlängning av pågående läkemedelsbehandlingar oavsett när i i perioden förlängningen sker.{ Treatment, Week}Insättningstid: perioden startar vid insättningstidpunkten.Vecka: perioden startar vid veckans första dag = måndag. För en behandling med insättning på en onsdag (dag 3) innebär det att doseringstillfällena för denna första dag i behandlingen dag är de med dagIPeriod=3. (ny 2015) Tillåtna värden: Treatment, Week.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr",
      "short" : "DosageByRamp",
      "definition" : "DosageByRamp_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.dosageStartLevel",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.dosageStartLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets start Rekursiv: samma struktur som registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement#registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage"
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.dosageEndLevel",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.dosageEndLevel",
      "short" : "DosageType_virtual",
      "definition" : "den dosering som gäller vid Doseringsstegets slut Rekursiv: samma struktur som registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.",
      "min" : 1,
      "max" : "1",
      "contentReference" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationstatement#registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage"
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement",
      "short" : "Interval",
      "definition" : "den mängd som dosen ska ökas eller minskas med vid varje tidssteg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.doseIncrement.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.doseIncrement.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement",
      "short" : "Period",
      "definition" : "den tid som ska förflyta mellan varje ändring av dosen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value",
      "short" : "Interval",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.value.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.value.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp-attr.timeIncrement.unit",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByRamp_attr.timeIncrement.unit",
      "short" : "{Minute, Hour, Day, Week, Month, Year}",
      "definition" : "{Minute, Hour, Day, Week, Month, Year} Tillåtna värden: Minute, Hour, Day, Week, Month, Year.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr",
      "short" : "DosageBySingleOccasion",
      "definition" : "DosageBySingleOccasion_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion",
      "short" : "Occasion",
      "definition" : "Det Doseringstillfälle som anger mängd och tidpunkt. (ändrat 2015)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose",
      "short" : "Interval",
      "definition" : "den mängd läkemedel som ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min",
      "short" : "NumericValue",
      "definition" : "Intervallets min-värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.min.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.min.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max",
      "short" : "NumericValue",
      "definition" : "Intervallets max-värde.Om utelämnat tolkas som att max=min, dvs. en skalär.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber",
      "short" : "DecimalNumber",
      "definition" : "decimalNumber",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.value",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.decimalNumber.decimals",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.decimalNumber.decimals",
      "short" : "decimals",
      "definition" : "decimals",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction",
      "short" : "Fraktion",
      "definition" : "fraction",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.numerator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.numerator",
      "short" : "numerator",
      "definition" : "numerator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dose.max.fraction.denominator",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dose.max.fraction.denominator",
      "short" : "denominator",
      "definition" : "denominator",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time",
      "short" : "TimeWithinDay",
      "definition" : "den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.event",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.event",
      "short" : "event",
      "definition" : "{ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx}ff = före frukost (morgonmål)tf = till frukostmo = på morgonenfl = före lunch (måltid mitt på dagen)tl= till lunchfm = före middagentm = till middagen (måltid på kvällen)kv = på kvällentn = till nattenun = under nattenxx= ospecificerad Tillåtna värden: ff, tf, mo, fl, tl, fm, tm, kv, tn, un, xx.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time",
      "short" : "Time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time.hour",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time.hour",
      "short" : "Timme inom dygnet (0..23)",
      "definition" : "Timme inom dygnet (0..23)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.time.time.minute",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.time.time.minute",
      "short" : "minute",
      "definition" : "Minuter inom timmen (0..59)Om minutdelen kan utelämnas anger det att precisionen är på timme (vilket inte är detsamma som att minuterna är 0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion-attr.occasion.dayInPeriod",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageBySingleOccasion_attr.occasion.dayInPeriod",
      "short" : "dayInPeriod",
      "definition" : "Dag i perioden när intag skall ske. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 1 Onsdag Insättningsdatum = 2010-01-01 Periodlängd = 7 Dag i period = 3 dag i period <= Tillfällesdosering.periodlängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByText-attr",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByText_attr",
      "short" : "DosageByText",
      "definition" : "DosageByText_attr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByText-attr.text",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.conditionalDosage.DosageByText_attr.text",
      "short" : "Dosering angiven i klartext.",
      "definition" : "Dosering angiven i klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.condition",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.condition",
      "short" : "condition",
      "definition" : "text som anger villkor kopplat till en villkorsdosering, t.ex. \"vid behov\".\n\nAnges endast om attributet villkorsdosering förekommer.",
      "comment" : "TKB-fält: `../../../condition` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.shortNotation",
      "path" : "registermedicationstatement.medicationStatement.dosage.dosageSteps.shortNotation",
      "short" : "angiven kortnotation som beskriver doseringen",
      "definition" : "angiven kortnotation som beskriver doseringen",
      "comment" : "TKB-fält: `../../../shortNotation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.medicationStatement.informationSource",
      "path" : "registermedicationstatement.medicationStatement.informationSource",
      "short" : "informationSource",
      "definition" : "Uppgift om den person som tillhandahållit uppgiften, vanligtvis patienten själv, annan behandlande läkare eller någon närstående. Om inget värde anges antas uppgiften komma från patienten själv.",
      "comment" : "TKB-fält: `../informationSource` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationstatement.result",
      "path" : "registermedicationstatement.result",
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
      "id" : "registermedicationstatement.result.resultCode",
      "path" : "registermedicationstatement.result.resultCode",
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
      "id" : "registermedicationstatement.result.errorCode",
      "path" : "registermedicationstatement.result.errorCode",
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
      "id" : "registermedicationstatement.result.subcode",
      "path" : "registermedicationstatement.result.subcode",
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
      "id" : "registermedicationstatement.result.logId",
      "path" : "registermedicationstatement.result.logId",
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
      "id" : "registermedicationstatement.result.message",
      "path" : "registermedicationstatement.result.message",
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
