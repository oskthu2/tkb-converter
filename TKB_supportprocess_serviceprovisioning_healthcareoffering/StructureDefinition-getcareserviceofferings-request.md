# GetCareServiceOfferings — Request - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareServiceOfferings — Request**

## Logical Model: GetCareServiceOfferings — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings-request | *Version*:3.0 |
| Active as of 2026-11-09 | *Computable Name*:GetCareServiceOfferingsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetCareServiceOfferings (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-serviceprovisioning-healthcareoffering|current/StructureDefinition/StructureDefinition-getcareserviceofferings-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcareserviceofferings-request.csv), [Excel](StructureDefinition-getcareserviceofferings-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcareserviceofferings-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings-request",
  "version" : "3.0",
  "name" : "GetCareServiceOfferingsRequest",
  "title" : "GetCareServiceOfferings — Request",
  "status" : "active",
  "date" : "2026-11-09T03:54:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetCareServiceOfferings\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcareserviceofferings-request",
      "path" : "getcareserviceofferings-request",
      "short" : "GetCareServiceOfferings — Request",
      "definition" : "Logisk modell för begäran i GetCareServiceOfferings\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getcareserviceofferings-request.careServiceId",
      "path" : "getcareserviceofferings-request.careServiceId",
      "short" : "careServiceId",
      "definition" : "Vård- och omsorgstjänstens id\n\nBegränsar sökningen så att endast poster med angivet id för vård- och omsorgstjänst returneras.\n\nOm HSA-id används:\n\ncareServiceId.root: 1.2.752.129.2.1.4.1\n\ncareServiceId.extension: `<hsa-id>`\n\nOm ej HSA-id:\n\ncareServiceId.root: `<UUID>`\n\ncareServiceId.extension: Anges ej",
      "comment" : "TKB-fält: `careServiceId` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.typeOfCareService",
      "path" : "getcareserviceofferings-request.typeOfCareService",
      "short" : "typeOfCareService",
      "definition" : "Typ av vård- och omsorgstjänst\n\nBegränsar sökningen så att endast poster med angiven typ av vård- och omsorgstjänst returneras.\n\nExempel:\n\nAllergologisk konsultation\n\nKognitiv beteendeterapi via internet\n\nDå Snomed CT används:\n\ntypeOfCareService.codesystem: 1.2.752.116.2.1.1\n\nI första hand ska koder från det nationella utbudkodsurvalet användas men Snomed CT-koder från lokalt urval kan förekomma.\n\nDå verksamhetskod används: typeOfCareService.codesystem: 1.2.752.129.2.2.1.3\n\nKod väljs från HSA verksamhetskodverk. Då en verksamhetskod används ska konsumenten logiskt lägga till prefixet ”Vårdtjänster inom verksamhetsområdet …” till klartexten för verksamhetskoden.",
      "comment" : "TKB-fält: `typeOfCareService*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.typeOfPlace",
      "path" : "getcareserviceofferings-request.typeOfPlace",
      "short" : "TypeOfPlaceType",
      "definition" : "Typ av plats\n\nFiltrerar sökresultatet så att endast poster med angiven typ av plats som vård-och omsorgstjänsten erbjuds på returneras.\n\nEn av följande:\n\nPHYSICAL – endast fysisk plats\n\nVIRTUAL – endast virtuell plats\n\nALL - både fysisk och virtuell plats",
      "comment" : "TKB-fält: `typeOfPlace` (`TypeOfPlaceType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.typeOfPlace.typeOfPlaceEnum",
      "path" : "getcareserviceofferings-request.typeOfPlace.typeOfPlaceEnum",
      "short" : "typeOfPlaceEnum",
      "definition" : "typeOfPlaceEnum Tillåtna värden: ALL, PHYSICAL, VIRTUAL.",
      "comment" : "TKB-fält: `../typeOfPlaceEnum` (`TypeOfPlaceEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** typeOfPlaceEnum Tillåtna värden: ALL, PHYSICAL, VIRTUAL.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/ValueSet/healthcareoffering-typeofplace-vs"
      }
    },
    {
      "id" : "getcareserviceofferings-request.typeOfBusiness",
      "path" : "getcareserviceofferings-request.typeOfBusiness",
      "short" : "typeOfBusiness",
      "definition" : "Typ av verksamhet\n\nFiltrerar sökresultatet så att endast poster med angiven typ av verksamhet returneras.\n\nOm HSA verksamhetskod\n\ntypeOfBusiness.codeSystem:\n\n1.2.752.129.2.2.1.3",
      "comment" : "TKB-fält: `typeOfBusiness*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.providingOrganization",
      "path" : "getcareserviceofferings-request.providingOrganization",
      "short" : "SearchProvidingOrganizationType",
      "definition" : "Katalogansvarig organisation",
      "comment" : "TKB-fält: `providingOrganization` (`searchProvidingOrganizationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.providingOrganization.providingOrganizationId",
      "path" : "getcareserviceofferings-request.providingOrganization.providingOrganizationId",
      "short" : "providingOrganizationId",
      "definition" : "Id på katalogansvarig organisation\n\nFiltrerar sökresultatet så att endast poster med angivet id för katalogansvarig organisation returneras.\n\nFör Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)\n\nFör Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1)",
      "comment" : "TKB-fält: `../providingOrganizationId` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.providingOrganization.management",
      "path" : "getcareserviceofferings-request.providingOrganization.management",
      "short" : "management",
      "definition" : "Ägarform\n\nFiltrerar sökresultatet så att endast poster med angiven ägarform för den katalogansvariga organisationen returneras.\n\nAnges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].\n\nObservera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `../management` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.providingOrganization.publicProvider",
      "path" : "getcareserviceofferings-request.providingOrganization.publicProvider",
      "short" : "publicProvider",
      "definition" : "Offentlig huvudman\n\nFiltrerar sökresultatet så att endast poster där vård- och omsorgstjänst som erbjuds av en offentlig huvudman returneras om fältet sätts till true.\n\nOm fältet ej anges returneras vård- och omsorgstjänster som erbjuds av både offentlig och ej offentlig huvudman.",
      "comment" : "TKB-fält: `../publicProvider` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.actorLanguage",
      "path" : "getcareserviceofferings-request.actorLanguage",
      "short" : "actorLanguage",
      "definition" : "Språk för aktör\n\nFiltrerar sökresultat så att poster med angivet språk returneras.\n\nSpråk anges enligt ISO 639-3:2007 ”Codes for the representation of names of languages -- Part 3: Alpha-3 code for\n\ncomprehensive coverage of languages”.\n\nEndast texter som finns beskrivna på det angivna språket ska returneras. Om det saknas text för angivet språk, returneras texter på svenska.\n\nDet är endast beskrivningar som ska returneras på olika språk, ej displayName för CV-typerna.\n\nOm språk ej anges, ska samtliga texter returneras.\n\nExempel på code:\n\nswe (svenska)\n\neng (engelska)\n\ndeu (tyska)\n\nactorLanguage.code: swe\n\nactorLanguage.displayName: Swedish\n\nactorLanguage.codeSystem: 1.0.639.3",
      "comment" : "TKB-fält: `actorLanguage*` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.actorRole",
      "path" : "getcareserviceofferings-request.actorRole",
      "short" : "actorRole",
      "definition" : "Roll för aktör\n\nFiltrerar sökresultatet så att poster med angiven roll returneras.\n\nEndast texter som finns beskrivna för den angivna rollen returneras. Om det saknas text för angiven roll, returneras texter anpassade för invånare (enskild person) som alltid ska finnas om beskrivningstext finns.\n\nOm roll ej anges, ska samtliga texter returneras.\n\nrole.code: 223366009\n\nrole.displayname: hälso- och sjukvårdspersonal\n\nrole.codesystem:  1.2.752.116.2.1.1\n\nrole.code: 257513009\n\nrole.displayname: enskild person\n\nrole.codesystem:  1.2.752.116.2.1.1",
      "comment" : "TKB-fält: `actorRole*` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.performingOrganizationId",
      "path" : "getcareserviceofferings-request.performingOrganizationId",
      "short" : "performingOrganizationId",
      "definition" : "performingOrganizationId",
      "comment" : "TKB-fält: `performingOrganizationId` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.targetGroupAge",
      "path" : "getcareserviceofferings-request.targetGroupAge",
      "short" : "targetGroupAge",
      "definition" : "Ålder\n\nFiltrerar sökresultatet så att endast poster med angiven ålder returneras.\n\nÅldern avser den person som söker hälso- och sjukvård eller socialtjänst.",
      "comment" : "TKB-fält: `targetGroupAge` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.targetGroupGender",
      "path" : "getcareserviceofferings-request.targetGroupGender",
      "short" : "targetGroupGender",
      "definition" : "Kön\n\nFiltrerar sökresultatet så att endast poster med angivet kön returneras.\n\nKönet avser den person som söker hälso- och sjukvård eller socialtjänst.\n\nKodverk:\n\nKv_kon\n\n1=man\n\n2=kvinna\n\nKoden ”Övrig” ej tillåten i detta attribut.\n\nExempel\n\ntargetGroupGender.code: 1\n\ntargetGroupGender.codesystem: 1.2.752.129.2.2.1.1",
      "comment" : "TKB-fält: `targetGroupGender*` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.targetGroupAttribute",
      "path" : "getcareserviceofferings-request.targetGroupAttribute",
      "short" : "TargetGroupAttributeType",
      "definition" : "Egenskap\n\nFiltrerar sökresultatet så att endast poster med angiven egenskap returneras. Egenskap avser ytterligare information om den person som söker hälso- och sjukvård eller socialtjänst.",
      "comment" : "TKB-fält: `,,/targetGroupAttribute` (`TargetGroupAttributeType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.targetGroupAttribute.typeOfPersonalAttribute",
      "path" : "getcareserviceofferings-request.targetGroupAttribute.typeOfPersonalAttribute",
      "short" : "typeOfPersonalAttribute",
      "definition" : "Typ av egenskap\n\nFiltrerar sökresultatet så att endast poster med angiven typ av egenskap returneras.\n\nExempel:\n\nGraviditetsvecka\n\nKod från Snomed CT hierarkin 363787002 | observerbar företeelse |",
      "comment" : "TKB-fält: `../../ typeOfPersonalAttribute*` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.targetGroupAttribute.attributeValue",
      "path" : "getcareserviceofferings-request.targetGroupAttribute.attributeValue",
      "short" : "attributeValue",
      "definition" : "attributeValue",
      "comment" : "TKB-fält: `../attributeValue` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.location",
      "path" : "getcareserviceofferings-request.location",
      "short" : "SearchLocationType",
      "definition" : "Sökområde\n\nFiltrerar sökresultatet så att endast poster med angivet sökområde för vård- och omsorgstjänsten returneras.\n\nSökområdet kan vara ett geografiskt område, län eller kommun.\n\nI de fall flera sökområden anges ska samtliga vård- och omsorgstjänster med något av de angivna sökområdena returneras.",
      "comment" : "TKB-fält: `location` (`SearchLocationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.location.geographicalLocation",
      "path" : "getcareserviceofferings-request.location.geographicalLocation",
      "short" : "SearchGeographicalLocationType",
      "definition" : "Geografiskt område\n\nFiltrerar sökresultatet så att endast poster med angivet geografiskt område returneras. Till geografiskt område hör geografiska koordinater och radie som bildar en area. Producenter behöver inte svara baserat på polygoner i Övrigt område (otherLocation).\n\nSvaret ska returnera vård- och omsorgstjänster med utförandeplats inom den arean.",
      "comment" : "TKB-fält: `../geographicalLocation` (`SearchGeographicalLocationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.location.geographicalLocation.geographicalCoordinates",
      "path" : "getcareserviceofferings-request.location.geographicalLocation.geographicalCoordinates",
      "short" : "GeoLocationType",
      "definition" : "Geografiska koordinater\n\nGeografisk lokalisering, dvs den punkt på en karta sökningen ska utgå ifrån.",
      "comment" : "TKB-fält: `../../geographicalCoordinates` (`GeoLocationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.location.geographicalLocation.geographicalCoordinates.north",
      "path" : "getcareserviceofferings-request.location.geographicalLocation.geographicalCoordinates.north",
      "short" : "north",
      "definition" : "Exempel\n\ngeoLocation.north = 5407869",
      "comment" : "TKB-fält: `../../../north` (`long`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.location.geographicalLocation.geographicalCoordinates.east",
      "path" : "getcareserviceofferings-request.location.geographicalLocation.geographicalCoordinates.east",
      "short" : "east",
      "definition" : "Exempel\n\ngeoLocation.east = 485784",
      "comment" : "TKB-fält: `../../../east` (`long`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.location.geographicalLocation.radius",
      "path" : "getcareserviceofferings-request.location.geographicalLocation.radius",
      "short" : "radius",
      "definition" : "Radie\n\nRadie utifrån den geografiska lokaliseringen angiven i positivt heltal och i antal meter.\n\nAnvänds för att söka inom ett område från de geografiska koordinaterna.",
      "comment" : "TKB-fält: `../../radius` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.location.county",
      "path" : "getcareserviceofferings-request.location.county",
      "short" : "county",
      "definition" : "Länskod\n\nFiltrerar sökresultatet så att endast poster med angivet län returneras. Länskod enligt SCB:s lista över län och ekomer, se referens R13.  Tvåställig kod.\n\nExempel:\n\ncounty.code = 05\n\ncounty.codeSystem = 1.2.752.129.2.2.1.18\n\ncounty.displayName = Östergötlands län",
      "comment" : "TKB-fält: `../county*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.location.municipality",
      "path" : "getcareserviceofferings-request.location.municipality",
      "short" : "municipality",
      "definition" : "Kommunkod\n\nSökning på kommun. Kommunkod enligt SCB’s lista över län och kommuner, se referens R13. Fyrställig kod.\n\nExempel:\n\nmunicipality.code = 0126\n\nmunicipality.codeSystem = 1.2.752.129.2.2.1.17\n\nmunicipality.displayName = Huddinge",
      "comment" : "TKB-fält: `../municipality*` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcareserviceofferings-request.searchTerm",
      "path" : "getcareserviceofferings-request.searchTerm",
      "short" : "searchTerm",
      "definition" : "Fritextsökning för att filtrera på vård- och omsorgstjänst baserat på text i nedan listade fritextfält.\n\nFör de beskrivande texter nedan som förekommer i flera språk ska sökningen ske i texten som motsvarar det språk som anges i actorLanguage.\n\nAnges inte actorLanguage ska texter för samtliga språk användas i sökningen.\n\nSökningen ska innehålla minst 3 tecken. Vård- och omsorgstjänst där sökbegreppet överensstämmer med del av text i nedanstående fält ska returneras.\n\nI det fall fler sökbegrepp skickas med i begäran ska samtliga sökbegrepp återfinnas i något av nedanstående fält för att vård- och omsorgstjänsten ska returneras.\n\nFritextsökning ska ske i fälten:\n\ncareService.description.text\n\ncareService.typeOfCareService.displayName\n\ncareService.providingOrganization. Name\n\ncareService.providingOrganization.description\n\ncareService.performingOrganization.name\n\ncareService.performingOrganization.description.text\n\ncareService.performingOrganization.responibleOrganization.name\n\ncareService. performingOrganization.responibleOrganization.description.text\n\ncareService.location.geographicalLocation.municipality.displayName\n\ncareService.location.geographicalLocation.county.displayName",
      "comment" : "TKB-fält: `searchTerm` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
