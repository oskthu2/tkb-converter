# UppdateraExpoMedApotek — Response - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UppdateraExpoMedApotek — Response**

## Logical Model: UppdateraExpoMedApotek — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/uppdateraexpomedapotek | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:UppdateraExpoMedApotek |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i UppdateraExpoMedApotek (urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotekResponder:6, UppdateraExpoMedApotekResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-uppdateraexpomedapotek.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-uppdateraexpomedapotek.csv), [Excel](StructureDefinition-uppdateraexpomedapotek.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "uppdateraexpomedapotek",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/uppdateraexpomedapotek",
  "version" : "2.0.0",
  "name" : "UppdateraExpoMedApotek",
  "title" : "UppdateraExpoMedApotek — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i UppdateraExpoMedApotek\n(urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotekResponder:6, UppdateraExpoMedApotekResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/uppdateraexpomedapotek",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "uppdateraexpomedapotek",
      "path" : "uppdateraexpomedapotek",
      "short" : "UppdateraExpoMedApotek — Response",
      "definition" : "Logisk modell för svaret i UppdateraExpoMedApotek\n(urn:riv:se.apotekensservice:expo:UppdateraExpoMedApotekResponder:6, UppdateraExpoMedApotekResponseType)."
    },
    {
      "id" : "uppdateraexpomedapotek.allmTelefon",
      "path" : "uppdateraexpomedapotek.allmTelefon",
      "short" : "allmTelefon",
      "definition" : "Expeditionsställets allmänna telefonnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.besoksAdress",
      "path" : "uppdateraexpomedapotek.besoksAdress",
      "short" : "besoksAdress",
      "definition" : "Expeditionsställets besöksadress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.besoksort",
      "path" : "uppdateraexpomedapotek.besoksort",
      "short" : "besoksort",
      "definition" : "Expeditionsställets ort (besöksort).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.eRecept",
      "path" : "uppdateraexpomedapotek.eRecept",
      "short" : "eRecept",
      "definition" : "Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer. Om eRecept är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.eReceptDjur",
      "path" : "uppdateraexpomedapotek.eReceptDjur",
      "short" : "eReceptDjur",
      "definition" : "Markering om apoteket kan expediera elektroniska djurrecept eller ej. Om eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.faxnummer",
      "path" : "uppdateraexpomedapotek.faxnummer",
      "short" : "faxnummer",
      "definition" : "Expeditionsställets faxnummer. Obligatoriskt om huvudorganisationskod = DX eller om Organisationskod = DOS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.huvudOrgTypKod",
      "path" : "uppdateraexpomedapotek.huvudOrgTypKod",
      "short" : "huvudOrgTypKod",
      "definition" : "Huvudtypkoden är till stöd för dagens lösning av vårdsystem. På sikt önskar Apotekens Service AB att dessa koder arbetas bort och byts ut mot organisationstypflaggorna (ADM, DIST, DJAP, DOS, EA, EH, GSL, SA, TILV) Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.idLista",
      "path" : "uppdateraexpomedapotek.idLista",
      "short" : "idLista",
      "definition" : "Lista innehållande en eller flera identifierare för expeditionsstället. En Identitet som ska gälla för ett expeditionsställe kan skickas en eller flera gånger och tas aldrig bort. Vid uppdatering av ett expeditionsställe skickas en eller flera identiteter som identifierare. Obs! GLN-kod måste alltid skickas med.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.idLista.exportId",
      "path" : "uppdateraexpomedapotek.idLista.exportId",
      "short" : "exportId",
      "definition" : "Obligatorisk för identitet med glnKod. Måste vara true om eRecept och/eller eReceptDjur är true. ExportId får ej sättas till true för en butikskod (används bara för GLN).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.idLista.glnKod",
      "path" : "uppdateraexpomedapotek.idLista.glnKod",
      "short" : "glnKod",
      "definition" : "Expeditionsställets GLN-kod Måste sättas på en av identiteterna. Endast en glnkod per expeditionsställe är tillåtet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.kommun",
      "path" : "uppdateraexpomedapotek.kommun",
      "short" : "kommun",
      "definition" : "Expeditionsställets kommuntillhörighet, kod enligt SCB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.kortNamn",
      "path" : "uppdateraexpomedapotek.kortNamn",
      "short" : "kortNamn",
      "definition" : "Kortversion på apoteksnamn. Behövs i bla i vårdsystem. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.lan",
      "path" : "uppdateraexpomedapotek.lan",
      "short" : "lan",
      "definition" : "Expeditionsställets länstillhörighet, kod enligt SCB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.namn",
      "path" : "uppdateraexpomedapotek.namn",
      "short" : "namn",
      "definition" : "Expeditionsställets officiella namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista",
      "short" : "oppetHallandeLista",
      "definition" : "När expeditionsstället har öppet. Måste skickas med vid varje uppdatering. All tidigare öppethållande data raderas innan det nya öppethållande datat läggs in.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.dagBenamning",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.dagBenamning",
      "short" : "dagBenamning",
      "definition" : "Exempelvis \"Nyårsafton\".",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.lunchFrom",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.lunchFrom",
      "short" : "lunchFrom",
      "definition" : "Om lunchstängt, \"stänger för lunch\". Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.lunchTom",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.lunchTom",
      "short" : "lunchTom",
      "definition" : "Om lunchstängt, \"Öppnar igen efter lunch kl\". Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.oppnar",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.oppnar",
      "short" : "oppnar",
      "definition" : "Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.slutDatum",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.slutDatum",
      "short" : "slutDatum",
      "definition" : "Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.stanger",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.stanger",
      "short" : "stanger",
      "definition" : "Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.startDatum",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.startDatum",
      "short" : "startDatum",
      "definition" : "Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-24.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.tfStangtOrsak",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.tfStangtOrsak",
      "short" : "tfStangtOrsak",
      "definition" : "Orsak till tillfällig stängning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.typ",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.typ",
      "short" : "typ",
      "definition" : "Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.oppetHallandeLista.veckodagnr",
      "path" : "uppdateraexpomedapotek.oppetHallandeLista.veckodagnr",
      "short" : "veckodagnr",
      "definition" : "Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgNr",
      "path" : "uppdateraexpomedapotek.orgNr",
      "short" : "orgNr",
      "definition" : "Aktörens organisationsnummer (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypADM",
      "path" : "uppdateraexpomedapotek.orgTypADM",
      "short" : "orgTypADM",
      "definition" : "Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypDIST",
      "path" : "uppdateraexpomedapotek.orgTypDIST",
      "short" : "orgTypDIST",
      "definition" : "Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypDJAP",
      "path" : "uppdateraexpomedapotek.orgTypDJAP",
      "short" : "orgTypDJAP",
      "definition" : "Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypDOS",
      "path" : "uppdateraexpomedapotek.orgTypDOS",
      "short" : "orgTypDOS",
      "definition" : "Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypEA",
      "path" : "uppdateraexpomedapotek.orgTypEA",
      "short" : "orgTypEA",
      "definition" : "Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypEH",
      "path" : "uppdateraexpomedapotek.orgTypEH",
      "short" : "orgTypEH",
      "definition" : "Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypGSL",
      "path" : "uppdateraexpomedapotek.orgTypGSL",
      "short" : "orgTypGSL",
      "definition" : "Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. \"General Sales list\" - även kallad för \"80-listan\", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypSA",
      "path" : "uppdateraexpomedapotek.orgTypSA",
      "short" : "orgTypSA",
      "definition" : "Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.orgTypTILV",
      "path" : "uppdateraexpomedapotek.orgTypTILV",
      "short" : "orgTypTILV",
      "definition" : "Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.postAdress",
      "path" : "uppdateraexpomedapotek.postAdress",
      "short" : "postAdress",
      "definition" : "Expeditionsställets postAdress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.postNr",
      "path" : "uppdateraexpomedapotek.postNr",
      "short" : "postNr",
      "definition" : "Expeditionsställets postNr.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.postort",
      "path" : "uppdateraexpomedapotek.postort",
      "short" : "postort",
      "definition" : "Expeditionsställets postort.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.recepturtelefon",
      "path" : "uppdateraexpomedapotek.recepturtelefon",
      "short" : "recepturtelefon",
      "definition" : "Expeditionsställets receptur telefonnummer. Om termen eRecept och/eller eReceptDjur är satt så är termerna kortNamn och recepturtelefon obligatoriska.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.slutDatum",
      "path" : "uppdateraexpomedapotek.slutDatum",
      "short" : "slutDatum",
      "definition" : "Datum för avslut av verksamhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.startDatum",
      "path" : "uppdateraexpomedapotek.startDatum",
      "short" : "startDatum",
      "definition" : "Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "uppdateraexpomedapotek.tidigareGlnKod",
      "path" : "uppdateraexpomedapotek.tidigareGlnKod",
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
