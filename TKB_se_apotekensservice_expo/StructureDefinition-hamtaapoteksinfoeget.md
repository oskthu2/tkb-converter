# HamtaApoteksinfoEget — Response - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaApoteksinfoEget — Response**

## Logical Model: HamtaApoteksinfoEget — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfoeget | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaApoteksinfoEget |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaApoteksinfoEget (urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5, HamtaApoteksinfoEgetResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-hamtaapoteksinfoeget.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtaapoteksinfoeget.csv), [Excel](StructureDefinition-hamtaapoteksinfoeget.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtaapoteksinfoeget",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfoeget",
  "version" : "2.0.0",
  "name" : "HamtaApoteksinfoEget",
  "title" : "HamtaApoteksinfoEget — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaApoteksinfoEget\n(urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5, HamtaApoteksinfoEgetResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/hamtaapoteksinfoeget",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtaapoteksinfoeget",
      "path" : "hamtaapoteksinfoeget",
      "short" : "HamtaApoteksinfoEget — Response",
      "definition" : "Logisk modell för svaret i HamtaApoteksinfoEget\n(urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5, HamtaApoteksinfoEgetResponseType)."
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista",
      "short" : "expeditionsstalleLista",
      "definition" : "Lista innehållande en eller flera expeditionsstallen.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.aktorsnamn",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.aktorsnamn",
      "short" : "aktorsnamn",
      "definition" : "Aktörens namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.allmTelefon",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.allmTelefon",
      "short" : "allmTelefon",
      "definition" : "Expeditionsställets allmänna telefonnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.apoteksId",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.apoteksId",
      "short" : "apoteksId",
      "definition" : "GLN-kod för unik identifiering av apotek.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.besoksAdress",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.besoksAdress",
      "short" : "besoksAdress",
      "definition" : "Expeditionsställets besöksadress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.besoksort",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.besoksort",
      "short" : "besoksort",
      "definition" : "Expeditionsställets ort (besöksort).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista",
      "short" : "dosmottagareLista",
      "definition" : "Information om dosmottagare.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.adress",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.adress",
      "short" : "adress",
      "definition" : "Adress till dosmottagare. Obligatorisk om typ = 'D'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.apoteksIdDosmottagare",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.apoteksIdDosmottagare",
      "short" : "apoteksIdDosmottagare",
      "definition" : "Apoteks-id för dosmottagare om dosmottagare är av typen apotek.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.arbetsplatskod",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.avdelning",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.avdelning",
      "short" : "avdelning",
      "definition" : "Avdelning inom dosmottagare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.dosmottagarId",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.dosmottagarId",
      "short" : "dosmottagarId",
      "definition" : "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.kommunkod",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.kommunkod",
      "short" : "kommunkod",
      "definition" : "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.lanskod",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.lanskod",
      "short" : "lanskod",
      "definition" : "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.mottagarnamn",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.mottagarnamn",
      "short" : "mottagarnamn",
      "definition" : "Namn på dosmottagare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.postnummer",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.postnummer",
      "short" : "postnummer",
      "definition" : "Postnummer till dosmottagare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.postort",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.postort",
      "short" : "postort",
      "definition" : "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.typ",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.dosmottagareLista.typ",
      "short" : "typ",
      "definition" : "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.eRecept",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.eRecept",
      "short" : "eRecept",
      "definition" : "Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.eReceptDjur",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.eReceptDjur",
      "short" : "eReceptDjur",
      "definition" : "Markering gällande om apoteket kan expediera elektroniska djurrecept.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.faxnummer",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.faxnummer",
      "short" : "faxnummer",
      "definition" : "Expeditionsställets faxnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.huvudOrgTypKod",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.huvudOrgTypKod",
      "short" : "huvudOrgTypKod",
      "definition" : "Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.kommun",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.kommun",
      "short" : "kommun",
      "definition" : "Expeditionsställets kommuntillhörighet, kod enligt SCB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.kortNamn",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.kortNamn",
      "short" : "kortNamn",
      "definition" : "Kortversion på apoteksnamn. Behövs i bla i vårdsystem.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.lan",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.lan",
      "short" : "lan",
      "definition" : "Expeditionsställets länstillhörighet, kod enligt SCB.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.namn",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.namn",
      "short" : "namn",
      "definition" : "Expeditionsställets officiella namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista",
      "short" : "oppetHallandeLista",
      "definition" : "När expeditionsstället har öppet.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.dagBenamning",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.dagBenamning",
      "short" : "dagBenamning",
      "definition" : "Exempelvis \"Nyårsafton\".",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.lunchFrom",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.lunchFrom",
      "short" : "lunchFrom",
      "definition" : "Om lunchstängt, \"stänger för lunch\". Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.lunchTom",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.lunchTom",
      "short" : "lunchTom",
      "definition" : "Om lunchstängt, \"Öppnar igen efter lunch kl\". Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.oppnar",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.oppnar",
      "short" : "oppnar",
      "definition" : "Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.slutDatum",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.slutDatum",
      "short" : "slutDatum",
      "definition" : "Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.stanger",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.stanger",
      "short" : "stanger",
      "definition" : "Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.startDatum",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.startDatum",
      "short" : "startDatum",
      "definition" : "Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-24.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.tfStangtOrsak",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.tfStangtOrsak",
      "short" : "tfStangtOrsak",
      "definition" : "Orsak till tillfällig stängning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.typ",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.typ",
      "short" : "typ",
      "definition" : "Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.veckodagnr",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.oppetHallandeLista.veckodagnr",
      "short" : "veckodagnr",
      "definition" : "Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgNr",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgNr",
      "short" : "orgNr",
      "definition" : "Aktörens organisationsnummer (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypADM",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypADM",
      "short" : "orgTypADM",
      "definition" : "Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypDIST",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypDIST",
      "short" : "orgTypDIST",
      "definition" : "Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypDJAP",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypDJAP",
      "short" : "orgTypDJAP",
      "definition" : "Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypDOS",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypDOS",
      "short" : "orgTypDOS",
      "definition" : "Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypEA",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypEA",
      "short" : "orgTypEA",
      "definition" : "Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypEH",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypEH",
      "short" : "orgTypEH",
      "definition" : "Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypGSL",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypGSL",
      "short" : "orgTypGSL",
      "definition" : "Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. \"General Sales list\" - även kallad för \"80-listan\", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypSA",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypSA",
      "short" : "orgTypSA",
      "definition" : "Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypTILV",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.orgTypTILV",
      "short" : "orgTypTILV",
      "definition" : "Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.postAdress",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.postAdress",
      "short" : "postAdress",
      "definition" : "Expeditionsställets postAdress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.postNr",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.postNr",
      "short" : "postNr",
      "definition" : "Expeditionsställets postNr.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.postort",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.postort",
      "short" : "postort",
      "definition" : "Expeditionsställets postort.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.recepturtelefon",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.recepturtelefon",
      "short" : "recepturtelefon",
      "definition" : "Expeditionsställets receptur telefonnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.slutDatum",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.slutDatum",
      "short" : "slutDatum",
      "definition" : "Datum för avslut av verksamhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.startDatum",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.startDatum",
      "short" : "startDatum",
      "definition" : "Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.statusDate",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.statusDate",
      "short" : "statusDate",
      "definition" : "Expeditionsställets tillståndsstatus ändringsdatum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.tidigareGlnKod",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.tidigareGlnKod",
      "short" : "tidigareGlnKod",
      "definition" : "Expeditionsställets tidigare ägares GLN.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.tillstandsstatus",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.tillstandsstatus",
      "short" : "tillstandsstatus",
      "definition" : "Expeditionsställets tillståndsstatus.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaapoteksinfoeget.expeditionsstalleLista.webbadress",
      "path" : "hamtaapoteksinfoeget.expeditionsstalleLista.webbadress",
      "short" : "webbadress",
      "definition" : "Webbadress till apotekets webbtjänster. Apotekens Service använder adressen för att skicka notifieringsmeddelanden. Används endast av dosproducenter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
