# SkapaApotek — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaApotek — Request**

## Logical Model: SkapaApotek — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapaapotek-request | *Version*:6.0 |
| Draft as of 2026-11-09 | *Computable Name*:SkapaApotekRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SkapaApotek (urn:riv:se.apotekensservice:expo:SkapaApotekResponder:6, SkapaApotekRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-skapaapotek-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skapaapotek-request.csv), [Excel](StructureDefinition-skapaapotek-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skapaapotek-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapaapotek-request",
  "version" : "6.0",
  "name" : "SkapaApotekRequest",
  "title" : "SkapaApotek — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SkapaApotek\n(urn:riv:se.apotekensservice:expo:SkapaApotekResponder:6, SkapaApotekRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapaapotek-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skapaapotek-request",
      "path" : "skapaapotek-request",
      "short" : "SkapaApotek — Request",
      "definition" : "Logisk modell för begäran i SkapaApotek\n(urn:riv:se.apotekensservice:expo:SkapaApotekResponder:6, SkapaApotekRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "skapaapotek-request.allmTelefon",
      "path" : "skapaapotek-request.allmTelefon",
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
      "id" : "skapaapotek-request.besoksAdress",
      "path" : "skapaapotek-request.besoksAdress",
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
      "id" : "skapaapotek-request.besoksort",
      "path" : "skapaapotek-request.besoksort",
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
      "id" : "skapaapotek-request.eRecept",
      "path" : "skapaapotek-request.eRecept",
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
      "id" : "skapaapotek-request.eReceptDjur",
      "path" : "skapaapotek-request.eReceptDjur",
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
      "id" : "skapaapotek-request.faxnummer",
      "path" : "skapaapotek-request.faxnummer",
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
      "id" : "skapaapotek-request.huvudOrgTypKod",
      "path" : "skapaapotek-request.huvudOrgTypKod",
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
      "id" : "skapaapotek-request.idLista",
      "path" : "skapaapotek-request.idLista",
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
      "id" : "skapaapotek-request.idLista.exportId",
      "path" : "skapaapotek-request.idLista.exportId",
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
      "id" : "skapaapotek-request.idLista.glnKod",
      "path" : "skapaapotek-request.idLista.glnKod",
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
      "id" : "skapaapotek-request.kommun",
      "path" : "skapaapotek-request.kommun",
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
      "id" : "skapaapotek-request.kortNamn",
      "path" : "skapaapotek-request.kortNamn",
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
      "id" : "skapaapotek-request.lan",
      "path" : "skapaapotek-request.lan",
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
      "id" : "skapaapotek-request.namn",
      "path" : "skapaapotek-request.namn",
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
      "id" : "skapaapotek-request.oppetHallandeLista",
      "path" : "skapaapotek-request.oppetHallandeLista",
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
      "id" : "skapaapotek-request.oppetHallandeLista.dagBenamning",
      "path" : "skapaapotek-request.oppetHallandeLista.dagBenamning",
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
      "id" : "skapaapotek-request.oppetHallandeLista.lunchFrom",
      "path" : "skapaapotek-request.oppetHallandeLista.lunchFrom",
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
      "id" : "skapaapotek-request.oppetHallandeLista.lunchTom",
      "path" : "skapaapotek-request.oppetHallandeLista.lunchTom",
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
      "id" : "skapaapotek-request.oppetHallandeLista.oppnar",
      "path" : "skapaapotek-request.oppetHallandeLista.oppnar",
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
      "id" : "skapaapotek-request.oppetHallandeLista.slutDatum",
      "path" : "skapaapotek-request.oppetHallandeLista.slutDatum",
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
      "id" : "skapaapotek-request.oppetHallandeLista.stanger",
      "path" : "skapaapotek-request.oppetHallandeLista.stanger",
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
      "id" : "skapaapotek-request.oppetHallandeLista.startDatum",
      "path" : "skapaapotek-request.oppetHallandeLista.startDatum",
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
      "id" : "skapaapotek-request.oppetHallandeLista.tfStangtOrsak",
      "path" : "skapaapotek-request.oppetHallandeLista.tfStangtOrsak",
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
      "id" : "skapaapotek-request.oppetHallandeLista.typ",
      "path" : "skapaapotek-request.oppetHallandeLista.typ",
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
      "id" : "skapaapotek-request.oppetHallandeLista.veckodagnr",
      "path" : "skapaapotek-request.oppetHallandeLista.veckodagnr",
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
      "id" : "skapaapotek-request.orgNr",
      "path" : "skapaapotek-request.orgNr",
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
      "id" : "skapaapotek-request.orgTypADM",
      "path" : "skapaapotek-request.orgTypADM",
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
      "id" : "skapaapotek-request.orgTypDIST",
      "path" : "skapaapotek-request.orgTypDIST",
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
      "id" : "skapaapotek-request.orgTypDJAP",
      "path" : "skapaapotek-request.orgTypDJAP",
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
      "id" : "skapaapotek-request.orgTypDOS",
      "path" : "skapaapotek-request.orgTypDOS",
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
      "id" : "skapaapotek-request.orgTypEA",
      "path" : "skapaapotek-request.orgTypEA",
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
      "id" : "skapaapotek-request.orgTypEH",
      "path" : "skapaapotek-request.orgTypEH",
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
      "id" : "skapaapotek-request.orgTypGSL",
      "path" : "skapaapotek-request.orgTypGSL",
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
      "id" : "skapaapotek-request.orgTypSA",
      "path" : "skapaapotek-request.orgTypSA",
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
      "id" : "skapaapotek-request.orgTypTILV",
      "path" : "skapaapotek-request.orgTypTILV",
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
      "id" : "skapaapotek-request.postAdress",
      "path" : "skapaapotek-request.postAdress",
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
      "id" : "skapaapotek-request.postNr",
      "path" : "skapaapotek-request.postNr",
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
      "id" : "skapaapotek-request.postort",
      "path" : "skapaapotek-request.postort",
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
      "id" : "skapaapotek-request.recepturtelefon",
      "path" : "skapaapotek-request.recepturtelefon",
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
      "id" : "skapaapotek-request.slutDatum",
      "path" : "skapaapotek-request.slutDatum",
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
      "id" : "skapaapotek-request.startDatum",
      "path" : "skapaapotek-request.startDatum",
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
      "id" : "skapaapotek-request.tidigareGlnKod",
      "path" : "skapaapotek-request.tidigareGlnKod",
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
