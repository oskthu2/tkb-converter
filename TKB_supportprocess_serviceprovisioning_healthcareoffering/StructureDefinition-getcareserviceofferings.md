# GetCareServiceOfferings — Response - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareServiceOfferings — Response**

## Logical Model: GetCareServiceOfferings — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings | *Version*:3.0 |
| Active as of 2026-11-06 | *Computable Name*:GetCareServiceOfferings |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetCareServiceOfferings (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-serviceprovisioning-healthcareoffering|current/StructureDefinition/StructureDefinition-getcareserviceofferings.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcareserviceofferings.csv), [Excel](StructureDefinition-getcareserviceofferings.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcareserviceofferings",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings",
  "version" : "3.0",
  "name" : "GetCareServiceOfferings",
  "title" : "GetCareServiceOfferings — Response",
  "status" : "active",
  "date" : "2026-11-06T21:56:35+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetCareServiceOfferings\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcareserviceofferings",
      "path" : "getcareserviceofferings",
      "short" : "GetCareServiceOfferings — Response",
      "definition" : "Logisk modell för svaret i GetCareServiceOfferings\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsResponseType)."
    },
    {
      "id" : "getcareserviceofferings.careService",
      "path" : "getcareserviceofferings.careService",
      "short" : "careService",
      "definition" : "Vård- och omsorgstjänst\n\nDen tjänst som erbjuds av en organisatorisk enhet för att tillgodose behov av hälso- och sjukvård eller socialtjänst hos invånare.",
      "comment" : "TKB-fält: `careService` (`CareServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.careServiceId",
      "path" : "getcareserviceofferings.careService.careServiceId",
      "short" : "careServiceId",
      "definition" : "Vård- och omsorgstjänstens id\n\nInnehåller vård- och omsorgstjänstens unika identifierare.\n\nOm HSA-id används:\n\ncareServiceId.root: 1.2.752.129.2.1.4.1\n\ncareServiceId.extension: `<hsa-id>`\n\nOm ej HSA-id:\n\ncareServiceId.root: `<UUID>`\n\ncareServiceId.extension: Anges ej",
      "comment" : "TKB-fält: `../careServiceId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.careServiceId.root",
      "path" : "getcareserviceofferings.careService.careServiceId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.careServiceId.iiExtension",
      "path" : "getcareserviceofferings.careService.careServiceId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService",
      "path" : "getcareserviceofferings.careService.typeOfCareService",
      "short" : "typeOfCareService",
      "definition" : "Typ av vård- och omsorgstjänst.\n\nDen specifika vård- och omsorgstjänsten som erbjuds.\n\nExempel inom hälso- och sjukvård:\n\n- insättning av totalprotes i höftled\n\n- rehabiliteringsmedicinsk konsultation\n\nExempel inom socialtjänsten:\n\n- hjälp med inköp\n\n- tillredning av måltider m.m.\n\nDå Snomed CT används:\n\ntypeOfCareService.codesystem: 1.2.752.116.2.1.1\n\n/ I första hand ska koder från det nationella utbudkodsurvalet användas men Snomed CT-koder från lokalt urval kan förekomma.\n\n/ Då verksamhetskod används: typeOfCareService.codesystem: 1.2.752.129.2.2.1.3\n\nKod väljs från HSA verksamhetskodverk.\n\nDå en verksamhetskod används ska konsumenten logiskt lägga till prefixet ”Vårdtjänster inom verksamhetsområdet …” till klartexten för verksamhetskoden.\n\ntypeOfCareService.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.\n\nFramtagande av nationellt kodverk pågår.",
      "comment" : "TKB-fält: `../typeOfCareService` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.cvCode",
      "path" : "getcareserviceofferings.careService.typeOfCareService.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.codeSystem",
      "path" : "getcareserviceofferings.careService.typeOfCareService.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.codeSystemName",
      "path" : "getcareserviceofferings.careService.typeOfCareService.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.typeOfCareService.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.displayName",
      "path" : "getcareserviceofferings.careService.typeOfCareService.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.originalText",
      "path" : "getcareserviceofferings.careService.typeOfCareService.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription",
      "short" : "typeOfCareServiceDescription",
      "definition" : "Nationellt överenskommen beskrivning av vård- och omsorgstjänsten.\n\nOm beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../typeOfCareServicedescription*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionText",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på.\n\nOm fältet inte används antas beskrivningen avse svenska.\n\nSpråk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for comprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.\n\nOm roll inte anges, riktas beskrivningen till samtliga roller.\n\nUrval ur Snomed CT:\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.cvCode",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystem",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.displayName",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.originalText",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.validity",
      "path" : "getcareserviceofferings.careService.validity",
      "short" : "validity",
      "definition" : "Giltighet\n\nGiltighetstiden för vård- och omsorgstjänsten.\n\nExempelvis höftledsoperation som utförs av den organisatoriska enheten x på platsen y erbjuds under perioden 20160101-20171231.\n\nMinst ett av periodens start och end i DatePeriodType ska anges.",
      "comment" : "TKB-fält: `../validity*` (`DatePeriodType`, kardinalitet 1..1).\n\n**Modellanteckning:** Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.validity.start",
      "path" : "getcareserviceofferings.careService.validity.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../start` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.validity.end",
      "path" : "getcareserviceofferings.careService.validity.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../end` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.careServiceStatus",
      "path" : "getcareserviceofferings.careService.careServiceStatus",
      "short" : "careServiceStatus",
      "definition" : "Status\n\nStatus för vård- och omsorgstjänsten.\n\nEn av följande:\n\nINACTIVE = innan vård- och omsorgstjänsten är färdig att erbjudas.\n\nACTIVE = vård- och omsorgstjänsten är färdigbeskriven och kan erbjudas.\n\nDEPRECATED = vård- och omsorgstjänsten ska ej längre erbjudas",
      "comment" : "TKB-fält: `../careServiceStatus` (`CareServiceStatusEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/ValueSet/healthcareoffering-careservicestatus-vs"
      }
    },
    {
      "id" : "getcareserviceofferings.careService.careOption",
      "path" : "getcareserviceofferings.careService.careOption",
      "short" : "careOption",
      "definition" : "Vårdval\n\nSätts till true om vård- och omsorgstjänsten ingår i valfrihetssystem.",
      "comment" : "TKB-fält: `../careOption` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.referralRequired",
      "path" : "getcareserviceofferings.careService.referralRequired",
      "short" : "referralRequired",
      "definition" : "Remisskrav\n\nAnger om det finns krav på remiss för att uppsöka/ta del av vård- och omsorgstjänsten.\n\nFör hälso- och sjukvården: Observera att den information som anges här är det eventuella krav på remiss från den organisation/region som ansvarar för att tillhandahålla vård- och omsorgstjänsten. Om remisskrav INTE finns för vård- och omsorgstjänsten, kan det ändå finnas krav från patientens hemregion för denna typ av vård- och omsorgstjänst. Om så är fallet behöver patienten en remiss från hemregionen för att utförare av den erbjudna vård- och omsorgstjänsten ska få ersättning från hemregionen.\n\nReglerna för detta beskrivs i \"Riksavtalet för utomlänsvård från och med 1 januari 2015\" [R7] sidan 17 under rubriken \"Hemlandstingets remissregler tillämpas också i andra landsting\" och \"Vårdlandstingets remissregler tillämpas också för utomlänspatienter\".",
      "comment" : "TKB-fält: `../referralRequired` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description",
      "path" : "getcareserviceofferings.careService.description",
      "short" : "description",
      "definition" : "Beskrivning av vård- och omsorgstjänsten som är ett lokalt tillägg till den nationellt överenskomna. Detta kan exempelvis i text detaljera hur en viss aktivitet utförs eller om det finns några tillägg till det nationellt överenskomna innehållet i en vård- och omsorgstjänst.\n\nOm beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../description*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionText",
      "path" : "getcareserviceofferings.careService.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på.\n\nOm fältet inte används antas beskrivningen avse svenska.\n\nAnvänds för att returnera ett svar baserat på aktörens språk. Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for comprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role",
      "path" : "getcareserviceofferings.careService.description.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.\n\nOm roll inte anges, riktas beskrivningen till samtliga roller.\n\nUrval ur Snomed CT:\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.displayName",
      "path" : "getcareserviceofferings.careService.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.originalText",
      "path" : "getcareserviceofferings.careService.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator",
      "path" : "getcareserviceofferings.careService.indicator",
      "short" : "indicator",
      "definition" : "Indikator\n\nIndikator håller referenser till mätningar från SKRs (Sveriges kommuner och regioner) öppna jämförelser som kan kopplas till en viss vård- och omsorgstjänst. Kan exempelvis vara väntetid eller kvalitetsindikator kopplat till den specifika vård- och omsorgstjänsten.",
      "comment" : "TKB-fält: `../indicator` (`IndicatorType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator.indicatorId",
      "path" : "getcareserviceofferings.careService.indicator.indicatorId",
      "short" : "indicatorId",
      "definition" : "Indikator id\n\nIdentitetsbeteckning för indikator från SKRs öppna jämförelser som är kopplad till en vård- och omsorgstjänst.\n\nindicator.root = 1.2.826.0.1.3680043.9.4672.7",
      "comment" : "TKB-fält: `../../indicatorId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator.indicatorId.root",
      "path" : "getcareserviceofferings.careService.indicator.indicatorId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator.indicatorId.iiExtension",
      "path" : "getcareserviceofferings.careService.indicator.indicatorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator.logicalAddress",
      "path" : "getcareserviceofferings.careService.indicator.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "Logisk adress\n\nLogisk adress som ska användas för att nå den datakälla där indikatorn finns lagrad.",
      "comment" : "TKB-fält: `../../logicalAddress` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.requestTemplate",
      "path" : "getcareserviceofferings.careService.requestTemplate",
      "short" : "requestTemplate",
      "definition" : "Remissanvisning\n\nOm vårdtjänsten har en fastställd remissanvisning som kan användas vid remittering, anges den adress som remissanvisningen kan hämtas ifrån. Remissanvisningen är ett stöd för att säkerställa att nödvändig information bifogas en remiss.",
      "comment" : "TKB-fält: `../requestTemplate` (`RequestTemplateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.requestTemplate.address",
      "path" : "getcareserviceofferings.careService.requestTemplate.address",
      "short" : "address",
      "definition" : "Adress till remissanvisning\n\nAdress som anger var en remissanvisning finns. Kan vara en URL.",
      "comment" : "TKB-fält: `../../address` (`anyURI`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.requestTemplate.mandatory",
      "path" : "getcareserviceofferings.careService.requestTemplate.mandatory",
      "short" : "mandatory",
      "definition" : "Obligatorisk\n\nAnger om det är obligatoriskt för en remittent att förstå och tillämpa remissanvisningen för att kunna nyttja vårdtjänsten.\n\nTrue = obligatoriskt att tillämpa remissanvisning vid remittering\n\nFalse = ej obligatoriskt att tillämpa remissmall vid remittering",
      "comment" : "TKB-fält: `../../mandatory` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization",
      "path" : "getcareserviceofferings.careService.providingOrganization",
      "short" : "providingOrganization",
      "definition" : "Katalogansvarig organisation\n\nDen organisation som är huvudansvarig och innehållsansvarig för det utbud som svaret visar.",
      "comment" : "TKB-fält: `../providingOrganization` (`ProvidingOrganizationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId",
      "path" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId",
      "short" : "providingOrganizationId",
      "definition" : "Organisation id\n\nId för den katalogansvariga organisationen. Innehållet i id styrs av vilken typ av organisation det är\n\nFör Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)\n\nFör Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1)",
      "comment" : "TKB-fält: `../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** providingOrganizationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId.root",
      "path" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId.iiExtension",
      "path" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationName",
      "path" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationName",
      "short" : "providingOrganizationName",
      "definition" : "Namn på den katalogansvariga organisationen.",
      "comment" : "TKB-fält: `../../name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** providingOrganizationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management",
      "path" : "getcareserviceofferings.careService.providingOrganization.management",
      "short" : "management",
      "definition" : "Ägarform\n\nFiltrerar sökresultatet så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras.\n\nAnges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].\n\nmanagement.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.\n\nObservera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `../../management` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.cvCode",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.codeSystem",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.codeSystemName",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.displayName",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.originalText",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.publicProvider",
      "path" : "getcareserviceofferings.careService.providingOrganization.publicProvider",
      "short" : "publicProvider",
      "definition" : "Offentlig huvudman\n\nAnger om den katalogansvariga organisationen är offentlig huvudman.\n\nTrue=offentlig huvudman",
      "comment" : "TKB-fält: `../../publicProvider` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description",
      "path" : "getcareserviceofferings.careService.providingOrganization.description",
      "short" : "description",
      "definition" : "Beskrivning av den katalogansvariga organisationen. Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionText",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på.\n\nOm fältet inte används antas beskrivningen avse svenska.\n\nAnvänds för att returnera ett svar baserat på aktörens språk. Språk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for\n\ncomprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.\n\nOm roll inte anges, riktas beskrivningen till samtliga roller.\n\nOm beskrivning anges, ska minst en beskrivning för invånare anges.\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.displayName",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.originalText",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization",
      "path" : "getcareserviceofferings.careService.performingOrganization",
      "short" : "performingOrganization",
      "definition" : "Utförande organisatorisk enhet\n\nKlassen motsvarar den organisatoriska enheten som utför en aktivitet som erbjudit i form av vård- och omsorgstjänst.",
      "comment" : "TKB-fält: `../performingOrganization` (`PerformingOrganizationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId",
      "path" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId",
      "short" : "performingOrganizationId",
      "definition" : "Enhets-id\n\nEtt enhets-id på den utförande enheten ska returneras.\n\nId på organisatoriska enheten kan vara HSA-id.\n\nExempelvis HSA-id, organisationsnummer\n\neller lokala id:n.\n\nOm HSA-id (exempel):\n\nid.root =1.2.752.129.2.1.4.1\n\nid.extension = SE2321000115-094882",
      "comment" : "TKB-fält: `../../id` (`IIType`, kardinalitet 1..*).\n\n**Modellanteckning:** performingOrganizationId Heter id i schemat.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId.root",
      "path" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId.iiExtension",
      "path" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationName",
      "path" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationName",
      "short" : "performingOrganizationName",
      "definition" : "Enhetsnamn\n\nLista med namn på den organisatoriska enhet som erbjuder en vård- och omsorgstjänst\n\nListan ska vara ordnad efter fallande prioritetsordning där det föredragna namnet kommer först.\n\nNamn måste innehålla minst 3 tecken.",
      "comment" : "TKB-fält: `../../name` (`String`, kardinalitet 0..*).\n\n**Modellanteckning:** performingOrganizationName Heter name i schemat.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization",
      "short" : "responsibleOrganization",
      "definition" : "Organisation\n\nDen organisation som den utförande organisatoriska enheten är en del av.",
      "comment" : "TKB-fält: `../../responsibleOrganization` (`OrganizationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId",
      "short" : "responsibleOrganizationId",
      "definition" : "Id på organisationen.\n\nOm HSA-id (exempel):\n\nid.root =1.2.752.129.2.1.4.1\n\nid.extension = SE2321000115-094882",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** responsibleOrganizationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId.root",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId.iiExtension",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationName",
      "short" : "responsibleOrganizationName",
      "definition" : "Namn på organisationen.",
      "comment" : "TKB-fält: `../../../name` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** responsibleOrganizationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description",
      "short" : "description",
      "definition" : "Beskrivning av organisationen.\n\nBeskrivning av den organisation som ansvarar för den utförande enheten.\n\nOm beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../../description*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionText",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "comment" : "TKB-fält: `../../../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "comment" : "TKB-fält: `../../../../language` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role",
      "short" : "role",
      "definition" : "role",
      "comment" : "TKB-fält: `../../../../role` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.availableTime",
      "path" : "getcareserviceofferings.careService.performingOrganization.availableTime",
      "short" : "availableTime",
      "definition" : "Kalendertid\n\nDen tid som den utförande enheten är tillgänglig.\n\nSe avsnitt 5.2.2 för beskrivning av format.",
      "comment" : "TKB-fält: `../../availableTime` (`CalendarType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness",
      "short" : "typeOfBusiness",
      "definition" : "Typ av verksamhet\n\nKod för den typ av verksamhet som bedrivs.\n\nOm HSA verksamhetskod\n\ntypeOfBusiness.codeSystem:\n\n1.2.752.129.2.2.1.3\n\ntypeOfBusiness.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../typeOfBusiness` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description",
      "path" : "getcareserviceofferings.careService.performingOrganization.description",
      "short" : "description",
      "definition" : "Beskrivning\n\nBeskrivning av den enhet som erbjuder vård- och omsorgstjänsten.\n\nOm beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionText",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.\n\nSpråk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for\n\ncomprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.\n\nOm roll inte anges, riktas beskrivningen till samtliga roller.\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.patientFee",
      "path" : "getcareserviceofferings.careService.patientFee",
      "short" : "patientFee",
      "definition" : "Patientavgift\n\nDen avgift som ska betalas av patienten.\n\nValutan anges i SEK enligt ISO 4217.\n\nExempel:\n\npatientFee.value: 125\n\npatientFee.currency: SEK",
      "comment" : "TKB-fält: `../patientFee` (`MOType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.patientFee.moValue",
      "path" : "getcareserviceofferings.careService.patientFee.moValue",
      "short" : "moValue",
      "definition" : "moValue Heter value i schemat.",
      "comment" : "TKB-fält: `../../value` (`decimal`, kardinalitet 1..1).\n\n**Modellanteckning:** moValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.patientFee.currency",
      "path" : "getcareserviceofferings.careService.patientFee.currency",
      "short" : "currency",
      "definition" : "currency",
      "comment" : "TKB-fält: `../../currency` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup",
      "path" : "getcareserviceofferings.careService.targetGroup",
      "short" : "targetGroup",
      "definition" : "Målgrupp för vård- och omsorgstjänsten",
      "comment" : "TKB-fält: `../targetGroup` (`TargetGroupType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.age",
      "path" : "getcareserviceofferings.careService.targetGroup.age",
      "short" : "age",
      "definition" : "Intervall för den åldersgrupp som vård- och omsorgstjänsten riktas till.\n\nExempelvis: Vård- och omsorgstjänsten erbjuds endast till barn upp till 5 år.\n\nIntervallet blir då ”0‒5” år.\n\nOm vård- och omsorgstjänsten gäller alla åldersgrupper, används ej detta attribut.",
      "comment" : "TKB-fält: `../../age` (`PositiveIntPeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.age.start",
      "path" : "getcareserviceofferings.careService.targetGroup.age.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../start` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.age.end",
      "path" : "getcareserviceofferings.careService.targetGroup.age.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../end` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender",
      "path" : "getcareserviceofferings.careService.targetGroup.gender",
      "short" : "gender",
      "definition" : "Kön\n\nDet kön som vård- och omsorgstjänsten riktas till.\n\nKodverk:\n\nKv_kon\n\n1=man\n\n2=kvinna\n\nKoden ”övrigt” tillåts ej i detta attribut.\n\nExempel code: 1\n\ntargetGroupGender.codeSystem: 1.2.752.129.2.2.1.1\n\ngender.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../gender` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.cvCode",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.codeSystem",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.codeSystemName",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.displayName",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.originalText",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute",
      "short" : "targetGroupAttribute",
      "definition" : "Egenskaper\n\nEgenskaper för målgruppen.",
      "comment" : "TKB-fält: `../../targetGroupAttribute` (`TargetGroupAttributeType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute",
      "short" : "typeOfPersonalAttribute",
      "definition" : "Typ av egenskap\n\nInnehåller någon specifik egenskap som identifierar den målgrupp som tjänsten riktas till.\n\nExempel:\n\nGravida i veckointervall X-Y\n\nKod från Snomed CT hierarkin 363787002 | observerbar företeelse |\n\ntypeOfPersonalAttribute.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../ typeOfPersonalAttribute` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.cvCode",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystem",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystemName",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.displayName",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.originalText",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.attributeValue",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.attributeValue",
      "short" : "attributeValue",
      "definition" : "Värde\n\nInnehåller detaljer om den specifika egenskapen.\n\nExempel:\n\n0-20",
      "comment" : "TKB-fält: `../../../attributeValue` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location",
      "path" : "getcareserviceofferings.careService.location",
      "short" : "location",
      "definition" : "Plats\n\nPlats där vård- och omsorgstjänsten erbjuds.\n\nAnges med geografiskt område, fysisk plats eller virtuell plats.",
      "comment" : "TKB-fält: `../location*` (`LocationType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation",
      "short" : "geographicalLocation",
      "definition" : "Geografiskt område\n\nAnger det geografiska område där vård- och omsorgstjänsten erbjuds.\n\nAnges med län, kommun eller övrigt område.",
      "comment" : "TKB-fält: `../../geographicalLocation*` (`GeographicalLocationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county",
      "short" : "county",
      "definition" : "Länskod enligt SCB:s lista över län och kommuner, se referens R13. Tvåställig kod.\n\nExempel:\n\ncounty.code = 05\n\ncounty.codeSystem = 1.2.752.129.2.2.1.18\n\ncounty.displayName = Östergötlands län\n\ncounty.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../county` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.cvCode",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystem",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystemName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.displayName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.originalText",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality",
      "short" : "municipality",
      "definition" : "Kommunkod enligt SCB:s lista över län och kommuner, se referens R13. Fyrställig kod.\n\nExempel:\n\nmunicipality.code =  0126\n\nmunicipality.codeSystem =1.2.752.129.2.2.1.17\n\nmunicipality.displayName = Huddinge\n\nmunicipality.displayName returnerar endast svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../municipality` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.cvCode",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystem",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystemName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.displayName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.originalText",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation",
      "short" : "otherLocation",
      "definition" : "Övrigt område är ett begränsat område som vård- och omsorgstjänsten erbjuds inom.",
      "comment" : "TKB-fält: `../../../otherLocation` (`OtherLocationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon",
      "short" : "polygon",
      "definition" : "Polygon\n\nDet område som avgränsas med minst 3 punkter med sina respektive koordinater.",
      "comment" : "TKB-fält: `../../../../polygon` (`GeoLocationType`, kardinalitet 3..*).",
      "min" : 3,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon.north",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon.north",
      "short" : "north",
      "definition" : "Exempel\n\ngeoLocation.north = 6407869",
      "comment" : "TKB-fält: `../../../../../north` (`long`, kardinalitet 1..1).\n\n**Modellanteckning:** north (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon.east",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon.east",
      "short" : "east",
      "definition" : "Exempel\n\ngeoLocation.east = 485748",
      "comment" : "TKB-fält: `../../../../../east` (`long`, kardinalitet 1..1).\n\n**Modellanteckning:** east (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.otherLocationName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.otherLocationName",
      "short" : "otherLocationName",
      "definition" : "Benämning på övrigt område.\n\nExempelvis kommundel.",
      "comment" : "TKB-fält: `../../../../name` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** otherLocationName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation",
      "path" : "getcareserviceofferings.careService.location.physicalLocation",
      "short" : "physicalLocation",
      "definition" : "Fysisk plats\n\nDen fysiska plats där vård- och omsorgstjänsten erbjuds. Anges med besöksadress och/eller geografiska koordinater.",
      "comment" : "TKB-fält: `../../physicalLocation` (`PhysicalLocationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation.locationAddress",
      "path" : "getcareserviceofferings.careService.location.physicalLocation.locationAddress",
      "short" : "locationAddress",
      "definition" : "Belägenhetsadress.\n\nAdress för fysisk plats där vård- och omsorgstjänsten erbjuds.\n\nMinst ett av attributen locationAddress eller geographicalCoordinates ska anges.",
      "comment" : "TKB-fält: `../../../locationAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates",
      "path" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates",
      "short" : "geographicalCoordinates",
      "definition" : "Geografiska koordinater som avgränsar Fysisk plats.\n\nMinst ett av attributen locationAddress eller geographicalCoordinates ska anges.",
      "comment" : "TKB-fält: `../../../ geographicalCoordinates` (`GeoLocationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates.north",
      "path" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates.north",
      "short" : "north",
      "definition" : "north (xs:long i schemat.)",
      "comment" : "TKB-fält: `../../../../north` (`long`, kardinalitet 1..1).\n\n**Modellanteckning:** north (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates.east",
      "path" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates.east",
      "short" : "east",
      "definition" : "east (xs:long i schemat.)",
      "comment" : "TKB-fält: `../../../../east` (`long`, kardinalitet 1..1).\n\n**Modellanteckning:** east (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.virtualLocation",
      "path" : "getcareserviceofferings.careService.location.virtualLocation",
      "short" : "virtualLocation",
      "definition" : "Virtuell plats\n\nAdress till en viss vård- och omsorgstjänst om den bedrivs virtuellt. Kan exempelvis vara webbadress eller adress där det går att ladda ner en applikation.",
      "comment" : "TKB-fält: `../../virtualLocation` (`VirtualLocationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.virtualLocation.virtualLocationId",
      "path" : "getcareserviceofferings.careService.location.virtualLocation.virtualLocationId",
      "short" : "virtualLocationId",
      "definition" : "Id på virtuell plats.\n\nIdentifierare för den plats där vård- och omsorgstjänsten bedrivs virtuellt.",
      "comment" : "TKB-fält: `../../.. /id` (`anyURI`, kardinalitet 1..1).\n\n**Modellanteckning:** virtualLocationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description",
      "path" : "getcareserviceofferings.careService.location.description",
      "short" : "description",
      "definition" : "Beskrivning av platsen (län, kommun, fysisk eller virtuell plats).\n\nOm beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionText",
      "path" : "getcareserviceofferings.careService.location.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.\n\nSpråk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for\n\ncomprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role",
      "path" : "getcareserviceofferings.careService.location.description.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare (enskild person) eller hälso- och sjukvårdspersonal.\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.location.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.location.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.location.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.location.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.displayName",
      "path" : "getcareserviceofferings.careService.location.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.originalText",
      "path" : "getcareserviceofferings.careService.location.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation",
      "path" : "getcareserviceofferings.careService.contactInformation",
      "short" : "contactInformation",
      "definition" : "Kontaktuppgift till den organisatoriska enhet som erbjuder en viss vård- och omsorgstjänst.",
      "comment" : "TKB-fält: `../contactInformation` (`ContactInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.ranking",
      "path" : "getcareserviceofferings.careService.contactInformation.ranking",
      "short" : "ranking",
      "definition" : "Rangordning för kontaktuppgifterna. Om det finns flera kontaktuppgifter används rangordning för att visa vilken som föredras framför en annan.\n\nAnges med siffror där 1 innebär högst rangordning osv.\n\nExempelvis om en e-postadress ska användas i första hand och ett telefonnummer ska användas i andra hand, används rangordning 1 för e-postadressen och rangordning 2 för telefonnumret.",
      "comment" : "TKB-fält: `../../ranking` (`integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole",
      "short" : "forRole",
      "definition" : "För roll\n\nAttributet anger om kontaktuppgiften avser en viss roll.\n\nEn roll kan vara en invånare (enskild person), personal inom socialtjänst eller hälso- och sjukvårdspersonal.\n\nEtt telefonnummer som finns registrerat för en vård- och omsorgstjänst ska i vissa fall endast användas för invånare och ett annat telefonnummer, avseende samma vård- och omsorgstjänst, ska användas av hälso- och sjukvårdspersonal.\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../forRole` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.cvCode",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystem",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystemName",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.displayName",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.originalText",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.purpose",
      "path" : "getcareserviceofferings.careService.contactInformation.purpose",
      "short" : "purpose",
      "definition" : "Syfte\n\nAngivelse av syftet med kontaktuppgiften.\n\nExempelvis avbokning, ombokning, receptförnyelse.",
      "comment" : "TKB-fält: `../../purpose` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.address",
      "path" : "getcareserviceofferings.careService.contactInformation.address",
      "short" : "address",
      "definition" : "Postadress\n\nDen adress som kan användas för att kontakta en organisatorisk enhet gällande en vård- och omsorgstjänst. Kan exempelvis vara adress dit en pappersremiss ska skickas.\n\nObservera att detta ej är besöksadress (återfinns i Fysisk plats).\n\nAdress är obligatoriskt om det är möjligt att remittera till vård- och omsorgstjänsten.",
      "comment" : "TKB-fält: `../../address` (`Address`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.availableTime",
      "path" : "getcareserviceofferings.careService.contactInformation.availableTime",
      "short" : "availableTime",
      "definition" : "Kalendertid\n\nDen tid som kontaktuppgiften är tillgänglig.\n\nDet kan vara möjligt att ringa mån – fre 08.00-17.00 på ett telefonnummer.\n\nSe avsnitt 5.2.2 för beskrivning av format.",
      "comment" : "TKB-fält: `../../availableTime` (`CalendarType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom",
      "short" : "telecom",
      "definition" : "Adress för telekommunikation\n\nInnehåller den elektroniska adressinformation som ska användas för att kontakta en organisatorisk enhet gällande en viss vård- och omsorgstjänst.",
      "comment" : "TKB-fält: `../../telecom` (`TelecomType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom",
      "short" : "typeOfTelecom",
      "definition" : "Typ av medium\n\nVilken typ av medium för telekommunikation som avses.\n\nAnges med kod från kodverket Kv tele ekom typ (OID: 1.2.752.129.2.2.1.30) [R14].\n\nObservera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.\n\ntypeOfTelecom.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../typeOfTelecom` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.cvCode",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystem",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystemName",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.displayName",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.originalText",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.contactPoint",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.contactPoint",
      "short" : "contactPoint",
      "definition" : "Värde\n\nAngivelse av värde i klartext för typen av medium.\n\nExempelvis 070-707070 som telefonnummer, epost@epost.se som e-postadress etc.",
      "comment" : "TKB-fält: `../../../contactPoint*` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description",
      "path" : "getcareserviceofferings.careService.contactInformation.description",
      "short" : "description",
      "definition" : "Beskrivning\n\nYtterligare information om kontaktuppgiften.\n\nOm beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionText",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.\n\nSpråk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for\n\ncomprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänst  eller hälso- och sjukvårdspersonal.\n\nOm beskrivning anges, ska minst en beskrivning för invånare anges.\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.displayName",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.originalText",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation",
      "path" : "getcareserviceofferings.careService.cooperation",
      "short" : "cooperation",
      "definition" : "Samverkan\n\nHåller information om vilken organisatorisk enhet som samverkar med annan organisatorisk enhet kring en vård- och omsorgstjänst och vad samverkan avser.\n\nEtt exempel på samverkan är när två organisatoriska enheter samverkar kring öppettider avseende en viss typ av vård- ocn omsorgstjänst så att en patient kan hänvisas rätt utanför normala öppettider, exempelvis från vårdcentral till närakut.",
      "comment" : "TKB-fält: `../cooperation` (`CooperationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.typeOfCooperation",
      "path" : "getcareserviceofferings.careService.cooperation.typeOfCooperation",
      "short" : "typeOfCooperation",
      "definition" : "Typ av samverkan\n\nVilken typ av samverkan organisationerna har mellan varandra.",
      "comment" : "TKB-fält: `../../typeOfCooperation` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.validity",
      "path" : "getcareserviceofferings.careService.cooperation.validity",
      "short" : "validity",
      "definition" : "Giltighet\n\nGiltighetsperioden för samverkan mellan organisationerna.\n\nOm samverkan exempelvis gäller vid semesterstängt, kan giltigheten exempelvis vara 20160601‒20160831.",
      "comment" : "TKB-fält: `../../validity*` (`DatePeriodType`, kardinalitet 0..1).\n\n**Modellanteckning:** Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.validity.start",
      "path" : "getcareserviceofferings.careService.cooperation.validity.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../start` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.validity.end",
      "path" : "getcareserviceofferings.careService.cooperation.validity.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../end` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId",
      "path" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId",
      "short" : "referenceToCareServiceId",
      "definition" : "Referens till vård- och omsorgstjänst\n\nUnikt id som identifierar den vård och- omsorgstjänst som två organisationer samverkar kring.\n\nOm HSA-id används:\n\ncareServiceId.root: 1.2.752.129.2.1.4.1\n\ncareServiceId.extension: `<hsa-id>`\n\nOm ej HSA-id:\n\ncareServiceId.root: `<UUID>`\n\ncareServiceId.extension: Anges ej",
      "comment" : "TKB-fält: `../../referenceToCareServiceId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId.root",
      "path" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../../../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId.iiExtension",
      "path" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description",
      "path" : "getcareserviceofferings.careService.cooperation.description",
      "short" : "description",
      "definition" : "Beskrivning\n\nYtterligare information om samverkan.\n\nOm beskrivning anges ska det åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionText",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.\n\nSpråk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for\n\ncomprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role",
      "path" : "getcareserviceofferings.careService.cooperation.description.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten eller hälso- och sjukvårdspersonal.\n\nOm roll inte anges, riktas beskrivningen till samtliga roller.\n\nOm beskrivning anges, ska minst en beskrivning för invånare anges.\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.displayName",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.originalText",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource",
      "path" : "getcareserviceofferings.careService.resource",
      "short" : "resource",
      "definition" : "Resurs\n\nVilken resurs som kan erbjudas med en vård- och omsorgstjänst.",
      "comment" : "TKB-fält: `../resource` (`ResourceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource",
      "short" : "typeOfResource",
      "definition" : "Typ av resurs\n\nExempelvis bassäng eller vård- och omsorgspersonal med särskild kompetens.\n\nKod från Snomed CT hierarkin 308916002 | område eller geografisk plats |, 260787004 | fysiskt objekt | eller 106288005 | läkare, tandläkare, veterinär eller motsvarande yrke |\n\ntypeOfResource.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../typeOfResource` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.cvCode",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystem",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystemName",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.displayName",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.originalText",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.resourceAttribute",
      "path" : "getcareserviceofferings.careService.resource.resourceAttribute",
      "short" : "resourceAttribute",
      "definition" : "Egenskap\n\nVärdet på resursen. Exempelvis om tolk så anges vilket språk.",
      "comment" : "TKB-fält: `../../resourceAttribute` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.availableTime",
      "path" : "getcareserviceofferings.careService.resource.availableTime",
      "short" : "availableTime",
      "definition" : "Kalendertid\n\nVilken tid resursen är tillgänglig.\n\nSe avsnitt 5.2.2 för beskrivning av format.",
      "comment" : "TKB-fält: `../../availableTime` (`CalendarType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description",
      "path" : "getcareserviceofferings.careService.resource.description",
      "short" : "description",
      "definition" : "Beskrivning\n\nYtterligare information om resursen.\n\nOm beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionText",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.\n\nSpråk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for\n\ncomprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role",
      "path" : "getcareserviceofferings.careService.resource.description.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten  eller hälso- och sjukvårdspersonal.\n\nOm beskrivning anges, ska minst en beskrivning för invånare anges.\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.resource.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.resource.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.resource.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.resource.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.displayName",
      "path" : "getcareserviceofferings.careService.resource.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.originalText",
      "path" : "getcareserviceofferings.careService.resource.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation",
      "path" : "getcareserviceofferings.careService.interferenceInformation",
      "short" : "interferenceInformation",
      "definition" : "Störningsinformation.\n\nInformation om omständigheter som innebär en avvikelse i tillgängligheten för en viss vård- och omsorgstjänst.",
      "comment" : "TKB-fält: `../interferenceInformation` (`InterferenceInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.datePeriod",
      "path" : "getcareserviceofferings.careService.interferenceInformation.datePeriod",
      "short" : "datePeriod",
      "definition" : "Datumperiod\n\nStart- och sluttid för det inträffade, där starttid är obligatorisk och sluttid valfri.",
      "comment" : "TKB-fält: `../../datePeriod*` (`DatePeriodType`, kardinalitet 1..1).\n\n**Modellanteckning:** Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.datePeriod.start",
      "path" : "getcareserviceofferings.careService.interferenceInformation.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../start` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.datePeriod.end",
      "path" : "getcareserviceofferings.careService.interferenceInformation.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../end` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference",
      "short" : "typeOfInterference",
      "definition" : "Typ av störning\n\nVilken typ av avvikelse. Exempelvis ombyggnation, semester.\n\nKod från Snomed CT hierarkin 272379006 | händelse |\n\ntypeOfInterference.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../typeOfInterference` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.cvCode",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystem",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystemName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.displayName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.originalText",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description",
      "short" : "description",
      "definition" : "Beskrivning\n\nYtterligare information om avvikelser.\n\nDet ska åtminstone finnas beskrivning på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../description*` (`DescriptionType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionText",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "Text\n\nDen textuella beskrivningen.",
      "comment" : "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "Språk\n\nAnger kod för det språk beskrivningen är skriven på. Om fältet inte används antas beskrivningen avse svenska.\n\nSpråk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for\n\ncomprehensive coverage of languages”.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nlanguage.code: swe\n\nlanguage.displayname: Swedish\n\nlanguage.codesystem: 1.0.639.3",
      "comment" : "TKB-fält: `../../../language*` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role",
      "short" : "role",
      "definition" : "Roll\n\nAnger vilken målgrupp beskrivningen riktas till. Kan vara till invånare, personal inom socialtjänsten  eller hälso- och sjukvårdspersonal.\n\nOm beskrivning anges, ska minst en beskrivning för invånare anges.\n\nUrval ur Snomed CT:\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 224611006\n\nrole.displayname: personal inom socialtjänsten\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.displayName returnerar endast text på svenska även om annat språk är angivet i begäran.",
      "comment" : "TKB-fält: `../../../role*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "comment" : "TKB-fält: `../../../../code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.displayName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.originalText",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
