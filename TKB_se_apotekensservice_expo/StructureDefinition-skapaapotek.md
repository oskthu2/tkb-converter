# SkapaApotek — Response - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaApotek — Response**

## Logical Model: SkapaApotek — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapaapotek | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:SkapaApotek |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SkapaApotek (urn:riv:se.apotekensservice:expo:SkapaApotekResponder:6, SkapaApotekResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-skapaapotek.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skapaapotek.csv), [Excel](StructureDefinition-skapaapotek.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skapaapotek",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapaapotek",
  "version" : "2.0.0",
  "name" : "SkapaApotek",
  "title" : "SkapaApotek — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SkapaApotek\n(urn:riv:se.apotekensservice:expo:SkapaApotekResponder:6, SkapaApotekResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapaapotek",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skapaapotek",
      "path" : "skapaapotek",
      "short" : "SkapaApotek — Response",
      "definition" : "Logisk modell för svaret i SkapaApotek\n(urn:riv:se.apotekensservice:expo:SkapaApotekResponder:6, SkapaApotekResponseType)."
    },
    {
      "id" : "skapaapotek.allmTelefon",
      "path" : "skapaapotek.allmTelefon",
      "short" : "allmTelefon",
      "definition" : "Expeditionsställets allmänna telefonnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.besoksAdress",
      "path" : "skapaapotek.besoksAdress",
      "short" : "besoksAdress",
      "definition" : "Expeditionsställets besöksadress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.besoksort",
      "path" : "skapaapotek.besoksort",
      "short" : "besoksort",
      "definition" : "Expeditionsställets ort (besöksort).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.eRecept",
      "path" : "skapaapotek.eRecept",
      "short" : "eRecept",
      "definition" : "Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer. Om eRecept är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.eReceptDjur",
      "path" : "skapaapotek.eReceptDjur",
      "short" : "eReceptDjur",
      "definition" : "Markering om apoteket kan expediera elektroniska djurrecept eller ej. Om eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.faxnummer",
      "path" : "skapaapotek.faxnummer",
      "short" : "faxnummer",
      "definition" : "Expeditionsställets faxnummer. Obligatoriskt om huvudorganisationskod = DX eller om Organisationskod = DOS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.huvudOrgTypKod",
      "path" : "skapaapotek.huvudOrgTypKod",
      "short" : "huvudOrgTypKod",
      "definition" : "Huvudtypkoden är till stöd för dagens lösning av vårdsystem. På sikt önskar Apotekens Service AB att dessa koder arbetas bort och byts ut mot organisationstypflaggorna (ADM, DIST, DJAP, DOS, EA, EH, GSL, SA, TILV) Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.idLista",
      "path" : "skapaapotek.idLista",
      "short" : "idLista",
      "definition" : "Lista innehållande en eller flera identifierare för expeditionsstället. En Identitet som ska gälla för ett expeditionsställe kan skickas en eller flera gånger och tas aldrig bort. Vid uppdatering av ett expeditionsställe skickas en eller flera identiteter som identifierare. Obs! GLN-kod måste alltid skickas med.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapaapotek.idLista.exportId",
      "path" : "skapaapotek.idLista.exportId",
      "short" : "exportId",
      "definition" : "Obligatorisk för identitet med glnKod. Måste vara true om eRecept och/eller eReceptDjur är true. ExportId får ej sättas till true för en butikskod (används bara för GLN).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.idLista.glnKod",
      "path" : "skapaapotek.idLista.glnKod",
      "short" : "glnKod",
      "definition" : "Expeditionsställets GLN-kod Måste sättas på en av identiteterna. Endast en glnkod per expeditionsställe är tillåtet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.kommun",
      "path" : "skapaapotek.kommun",
      "short" : "kommun",
      "definition" : "Expeditionsställets kommuntillhörighet, kod enligt SCB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "skapaapotek.kortNamn",
      "path" : "skapaapotek.kortNamn",
      "short" : "kortNamn",
      "definition" : "Kortversion på apoteksnamn. Behövs i bla i vårdsystem. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.lan",
      "path" : "skapaapotek.lan",
      "short" : "lan",
      "definition" : "Expeditionsställets länstillhörighet, kod enligt SCB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "skapaapotek.namn",
      "path" : "skapaapotek.namn",
      "short" : "namn",
      "definition" : "Expeditionsställets officiella namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista",
      "path" : "skapaapotek.oppetHallandeLista",
      "short" : "oppetHallandeLista",
      "definition" : "När expeditionsstället har öppet. Måste skickas med vid varje uppdatering. All tidigare öppethållande data raderas innan det nya öppethållande datat läggs in.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.dagBenamning",
      "path" : "skapaapotek.oppetHallandeLista.dagBenamning",
      "short" : "dagBenamning",
      "definition" : "Exempelvis \"Nyårsafton\".",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.lunchFrom",
      "path" : "skapaapotek.oppetHallandeLista.lunchFrom",
      "short" : "lunchFrom",
      "definition" : "Om lunchstängt, \"stänger för lunch\". Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.lunchTom",
      "path" : "skapaapotek.oppetHallandeLista.lunchTom",
      "short" : "lunchTom",
      "definition" : "Om lunchstängt, \"Öppnar igen efter lunch kl\". Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.oppnar",
      "path" : "skapaapotek.oppetHallandeLista.oppnar",
      "short" : "oppnar",
      "definition" : "Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.slutDatum",
      "path" : "skapaapotek.oppetHallandeLista.slutDatum",
      "short" : "slutDatum",
      "definition" : "Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.stanger",
      "path" : "skapaapotek.oppetHallandeLista.stanger",
      "short" : "stanger",
      "definition" : "Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.startDatum",
      "path" : "skapaapotek.oppetHallandeLista.startDatum",
      "short" : "startDatum",
      "definition" : "Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-24.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.tfStangtOrsak",
      "path" : "skapaapotek.oppetHallandeLista.tfStangtOrsak",
      "short" : "tfStangtOrsak",
      "definition" : "Orsak till tillfällig stängning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.typ",
      "path" : "skapaapotek.oppetHallandeLista.typ",
      "short" : "typ",
      "definition" : "Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.oppetHallandeLista.veckodagnr",
      "path" : "skapaapotek.oppetHallandeLista.veckodagnr",
      "short" : "veckodagnr",
      "definition" : "Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.orgNr",
      "path" : "skapaapotek.orgNr",
      "short" : "orgNr",
      "definition" : "Aktörens organisationsnummer (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.orgTypADM",
      "path" : "skapaapotek.orgTypADM",
      "short" : "orgTypADM",
      "definition" : "Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.orgTypDIST",
      "path" : "skapaapotek.orgTypDIST",
      "short" : "orgTypDIST",
      "definition" : "Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.orgTypDJAP",
      "path" : "skapaapotek.orgTypDJAP",
      "short" : "orgTypDJAP",
      "definition" : "Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.orgTypDOS",
      "path" : "skapaapotek.orgTypDOS",
      "short" : "orgTypDOS",
      "definition" : "Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.orgTypEA",
      "path" : "skapaapotek.orgTypEA",
      "short" : "orgTypEA",
      "definition" : "Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.orgTypEH",
      "path" : "skapaapotek.orgTypEH",
      "short" : "orgTypEH",
      "definition" : "Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.orgTypGSL",
      "path" : "skapaapotek.orgTypGSL",
      "short" : "orgTypGSL",
      "definition" : "Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. \"General Sales list\" - även kallad för \"80-listan\", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.orgTypSA",
      "path" : "skapaapotek.orgTypSA",
      "short" : "orgTypSA",
      "definition" : "Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.orgTypTILV",
      "path" : "skapaapotek.orgTypTILV",
      "short" : "orgTypTILV",
      "definition" : "Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "skapaapotek.postAdress",
      "path" : "skapaapotek.postAdress",
      "short" : "postAdress",
      "definition" : "Expeditionsställets postAdress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.postNr",
      "path" : "skapaapotek.postNr",
      "short" : "postNr",
      "definition" : "Expeditionsställets postNr.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.postort",
      "path" : "skapaapotek.postort",
      "short" : "postort",
      "definition" : "Expeditionsställets postort.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.recepturtelefon",
      "path" : "skapaapotek.recepturtelefon",
      "short" : "recepturtelefon",
      "definition" : "Expeditionsställets receptur telefonnummer. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapaapotek.slutDatum",
      "path" : "skapaapotek.slutDatum",
      "short" : "slutDatum",
      "definition" : "Datum för avslut av verksamhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skapaapotek.startDatum",
      "path" : "skapaapotek.startDatum",
      "short" : "startDatum",
      "definition" : "Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "skapaapotek.tidigareGlnKod",
      "path" : "skapaapotek.tidigareGlnKod",
      "short" : "tidigareGlnKod",
      "definition" : "Expeditionsställets tidigare ägares GLN.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
