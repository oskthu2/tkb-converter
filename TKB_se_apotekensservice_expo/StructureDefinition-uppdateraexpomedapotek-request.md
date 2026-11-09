# UppdateraExpoMedApotek — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UppdateraExpoMedApotek — Request**

## Logical Model: UppdateraExpoMedApotek — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/uppdateraexpomedapotek-request | *Version*:6.0 |
| Draft as of 2026-11-09 | *Computable Name*:UppdateraExpoMedApotekRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UppdateraExpoMedApotek (urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotekResponder:6, UppdateraExpoMedApotekRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-uppdateraexpomedapotek-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uppdateraexpomedapotek-request.csv), [Excel](StructureDefinition-uppdateraexpomedapotek-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uppdateraexpomedapotek-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/uppdateraexpomedapotek-request",
  "version" : "6.0",
  "name" : "UppdateraExpoMedApotekRequest",
  "title" : "UppdateraExpoMedApotek — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UppdateraExpoMedApotek\n(urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotekResponder:6, UppdateraExpoMedApotekRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/uppdateraexpomedapotek-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "uppdateraexpomedapotek-request",
      "path" : "uppdateraexpomedapotek-request",
      "short" : "UppdateraExpoMedApotek — Request",
      "definition" : "Logisk modell för begäran i UppdateraExpoMedApotek\n(urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotekResponder:6, UppdateraExpoMedApotekRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "uppdateraexpomedapotek-request.allmTelefon",
      "path" : "uppdateraexpomedapotek-request.allmTelefon",
      "short" : "Expeditionsställets allmänna telefonnummer.",
      "definition" : "Expeditionsställets allmänna telefonnummer.",
      "comment" : "TKB-fält: `allmTelefon` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.besoksAdress",
      "path" : "uppdateraexpomedapotek-request.besoksAdress",
      "short" : "Expeditionsställets besöksadress.",
      "definition" : "Expeditionsställets besöksadress.",
      "comment" : "TKB-fält: `besoksAdress` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.besoksort",
      "path" : "uppdateraexpomedapotek-request.besoksort",
      "short" : "Expeditionsställets ort (besöksort).",
      "definition" : "Expeditionsställets ort (besöksort).",
      "comment" : "TKB-fält: `besoksort` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.eRecept",
      "path" : "uppdateraexpomedapotek-request.eRecept",
      "short" : "eRecept",
      "definition" : "Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer. Om eRecept är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "comment" : "TKB-fält: `eRecept` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.eReceptDjur",
      "path" : "uppdateraexpomedapotek-request.eReceptDjur",
      "short" : "eReceptDjur",
      "definition" : "Markering om apoteket kan expediera elektroniska djurrecept eller ej. Om eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "comment" : "TKB-fält: `eReceptDjur` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.faxnummer",
      "path" : "uppdateraexpomedapotek-request.faxnummer",
      "short" : "Expeditionsställets faxnummer. Obligatoriskt om huvudorganisationskod = DX eller om Organisationskod = DOS",
      "definition" : "Expeditionsställets faxnummer. Obligatoriskt om huvudorganisationskod = DX eller om Organisationskod = DOS",
      "comment" : "TKB-fält: `faxnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.huvudOrgTypKod",
      "path" : "uppdateraexpomedapotek-request.huvudOrgTypKod",
      "short" : "huvudOrgTypKod",
      "definition" : "Huvudtypkoden är till stöd för dagens lösning av vårdsystem. På sikt önskar Apotekens Service AB att dessa koder arbetas bort och byts ut mot organisationstypflaggorna (ADM, DIST, DJAP, DOS, EA, EH, GSL, SA, TILV) Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel.",
      "comment" : "TKB-fält: `huvudOrgTypKod` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.idLista",
      "path" : "uppdateraexpomedapotek-request.idLista",
      "short" : "IdentitetRequest",
      "definition" : "Lista innehållande en eller flera identifierare för expeditionsstället. En Identitet som ska gälla för ett expeditionsställe kan skickas en eller flera gånger och tas aldrig bort. Vid uppdatering av ett expeditionsställe skickas en eller flera identiteter som identifierare. Obs! GLN-kod måste alltid skickas med.",
      "comment" : "TKB-fält: `idLista` (`IdentitetRequest`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.idLista.exportId",
      "path" : "uppdateraexpomedapotek-request.idLista.exportId",
      "short" : "exportId",
      "definition" : "Obligatorisk för identitet med glnKod. Måste vara true om eRecept och/eller eReceptDjur är true. ExportId får ej sättas till true för en butikskod (används bara för GLN).",
      "comment" : "TKB-fält: `../exportId` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.idLista.glnKod",
      "path" : "uppdateraexpomedapotek-request.idLista.glnKod",
      "short" : "Expeditionsställets GLN-kod Måste sättas på en av identiteterna. Endast en glnkod per expeditionsställe är tillåtet.",
      "definition" : "Expeditionsställets GLN-kod Måste sättas på en av identiteterna. Endast en glnkod per expeditionsställe är tillåtet.",
      "comment" : "TKB-fält: `../glnKod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.kommun",
      "path" : "uppdateraexpomedapotek-request.kommun",
      "short" : "Expeditionsställets kommuntillhörighet, kod enligt SCB.",
      "definition" : "Expeditionsställets kommuntillhörighet, kod enligt SCB.",
      "comment" : "TKB-fält: `kommun` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.kortNamn",
      "path" : "uppdateraexpomedapotek-request.kortNamn",
      "short" : "kortNamn",
      "definition" : "Kortversion på apoteksnamn. Behövs i bla i vårdsystem. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "comment" : "TKB-fält: `kortNamn` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.lan",
      "path" : "uppdateraexpomedapotek-request.lan",
      "short" : "Expeditionsställets länstillhörighet, kod enligt SCB.",
      "definition" : "Expeditionsställets länstillhörighet, kod enligt SCB.",
      "comment" : "TKB-fält: `lan` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.namn",
      "path" : "uppdateraexpomedapotek-request.namn",
      "short" : "Expeditionsställets officiella namn.",
      "definition" : "Expeditionsställets officiella namn.",
      "comment" : "TKB-fält: `namn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista",
      "short" : "OppethallandeRequest",
      "definition" : "När expeditionsstället har öppet. Måste skickas med vid varje uppdatering. All tidigare öppethållande data raderas innan det nya öppethållande datat läggs in.",
      "comment" : "TKB-fält: `oppetHallandeLista` (`OppethallandeRequest`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.dagBenamning",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.dagBenamning",
      "short" : "Exempelvis \"Nyårsafton\".",
      "definition" : "Exempelvis \"Nyårsafton\".",
      "comment" : "TKB-fält: `../dagBenamning` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.lunchFrom",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.lunchFrom",
      "short" : "Om lunchstängt, \"stänger för lunch\". Format: HHmm H=Timme (0-23) m=Minut (0-59)",
      "definition" : "Om lunchstängt, \"stänger för lunch\". Format: HHmm H=Timme (0-23) m=Minut (0-59)",
      "comment" : "TKB-fält: `../lunchFrom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.lunchTom",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.lunchTom",
      "short" : "Om lunchstängt, \"Öppnar igen efter lunch kl\". Format: HHmm H=Timme (0-23) m=Minut (0-59)",
      "definition" : "Om lunchstängt, \"Öppnar igen efter lunch kl\". Format: HHmm H=Timme (0-23) m=Minut (0-59)",
      "comment" : "TKB-fält: `../lunchTom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.oppnar",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.oppnar",
      "short" : "Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-23) m=Minut (0-59)",
      "definition" : "Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-23) m=Minut (0-59)",
      "comment" : "TKB-fält: `../oppnar` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.slutDatum",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.slutDatum",
      "short" : "Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum.",
      "definition" : "Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum.",
      "comment" : "TKB-fält: `../slutDatum` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.stanger",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.stanger",
      "short" : "Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-23) m=Minut (0-59)",
      "definition" : "Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-23) m=Minut (0-59)",
      "comment" : "TKB-fält: `../stanger` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.startDatum",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.startDatum",
      "short" : "Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-23.",
      "definition" : "Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-23.",
      "comment" : "TKB-fält: `../startDatum` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.tfStangtOrsak",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.tfStangtOrsak",
      "short" : "Orsak till tillfällig stängning.",
      "definition" : "Orsak till tillfällig stängning.",
      "comment" : "TKB-fält: `../tfStangtOrsak` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.typ",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.typ",
      "short" : "typ",
      "definition" : "Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period",
      "comment" : "TKB-fält: `../typ` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.oppetHallandeLista.veckodagnr",
      "path" : "uppdateraexpomedapotek-request.oppetHallandeLista.veckodagnr",
      "short" : "Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar.",
      "definition" : "Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar.",
      "comment" : "TKB-fält: `../veckodagnr` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgNr",
      "path" : "uppdateraexpomedapotek-request.orgNr",
      "short" : "Aktörens organisationsnummer",
      "definition" : "Aktörens organisationsnummer",
      "comment" : "TKB-fält: `orgNr` (`long`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypADM",
      "path" : "uppdateraexpomedapotek-request.orgTypADM",
      "short" : "orgTypADM",
      "definition" : "Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter.",
      "comment" : "TKB-fält: `orgTypADM` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypDIST",
      "path" : "uppdateraexpomedapotek-request.orgTypDIST",
      "short" : "orgTypDIST",
      "definition" : "Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner",
      "comment" : "TKB-fält: `orgTypDIST` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypDJAP",
      "path" : "uppdateraexpomedapotek-request.orgTypDJAP",
      "short" : "Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment.",
      "definition" : "Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment.",
      "comment" : "TKB-fält: `orgTypDJAP` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypDOS",
      "path" : "uppdateraexpomedapotek-request.orgTypDOS",
      "short" : "Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel.",
      "definition" : "Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel.",
      "comment" : "TKB-fält: `orgTypDOS` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypEA",
      "path" : "uppdateraexpomedapotek-request.orgTypEA",
      "short" : "orgTypEA",
      "definition" : "Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet.",
      "comment" : "TKB-fält: `orgTypEA` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypEH",
      "path" : "uppdateraexpomedapotek-request.orgTypEH",
      "short" : "orgTypEH",
      "definition" : "Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket.",
      "comment" : "TKB-fält: `orgTypEH` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypGSL",
      "path" : "uppdateraexpomedapotek-request.orgTypGSL",
      "short" : "orgTypGSL",
      "definition" : "Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. \"General Sales list\" - även kallad för \"80-listan\", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt.",
      "comment" : "TKB-fält: `orgTypGSL` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypSA",
      "path" : "uppdateraexpomedapotek-request.orgTypSA",
      "short" : "Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter.",
      "definition" : "Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter.",
      "comment" : "TKB-fält: `orgTypSA` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.orgTypTILV",
      "path" : "uppdateraexpomedapotek-request.orgTypTILV",
      "short" : "orgTypTILV",
      "definition" : "Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel.",
      "comment" : "TKB-fält: `orgTypTILV` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.postAdress",
      "path" : "uppdateraexpomedapotek-request.postAdress",
      "short" : "Expeditionsställets postAdress.",
      "definition" : "Expeditionsställets postAdress.",
      "comment" : "TKB-fält: `postAdress` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.postNr",
      "path" : "uppdateraexpomedapotek-request.postNr",
      "short" : "Expeditionsställets postNr.",
      "definition" : "Expeditionsställets postNr.",
      "comment" : "TKB-fält: `postNr` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.postort",
      "path" : "uppdateraexpomedapotek-request.postort",
      "short" : "Expeditionsställets postort.",
      "definition" : "Expeditionsställets postort.",
      "comment" : "TKB-fält: `postort` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.recepturtelefon",
      "path" : "uppdateraexpomedapotek-request.recepturtelefon",
      "short" : "recepturtelefon",
      "definition" : "Expeditionsställets receptur telefonnummer. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "comment" : "TKB-fält: `recepturtelefon` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.slutDatum",
      "path" : "uppdateraexpomedapotek-request.slutDatum",
      "short" : "Datum för avslut av verksamhet.",
      "definition" : "Datum för avslut av verksamhet.",
      "comment" : "TKB-fält: `slutDatum` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.startDatum",
      "path" : "uppdateraexpomedapotek-request.startDatum",
      "short" : "Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket.",
      "definition" : "Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket.",
      "comment" : "TKB-fält: `startDatum` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek-request.tidigareGlnKod",
      "path" : "uppdateraexpomedapotek-request.tidigareGlnKod",
      "short" : "Expeditionsställets tidigare ägares GLN.",
      "definition" : "Expeditionsställets tidigare ägares GLN.",
      "comment" : "TKB-fält: `tidigareGlnKod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
