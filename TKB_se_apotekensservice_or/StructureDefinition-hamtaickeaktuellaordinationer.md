# HamtaIckeAktuellaOrdinationer — Response - se.apotekensservice: or — Ordinationer v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaIckeAktuellaOrdinationer — Response**

## Logical Model: HamtaIckeAktuellaOrdinationer — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaickeaktuellaordinationer | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaIckeAktuellaOrdinationer |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaIckeAktuellaOrdinationer (urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6, HamtaIckeAktuellaOrdinationerResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-or|current/StructureDefinition/StructureDefinition-hamtaickeaktuellaordinationer.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtaickeaktuellaordinationer.csv), [Excel](StructureDefinition-hamtaickeaktuellaordinationer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtaickeaktuellaordinationer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaickeaktuellaordinationer",
  "version" : "7.0.0",
  "name" : "HamtaIckeAktuellaOrdinationer",
  "title" : "HamtaIckeAktuellaOrdinationer — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:44:49+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaIckeAktuellaOrdinationer\n(urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6, HamtaIckeAktuellaOrdinationerResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaickeaktuellaordinationer",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtaickeaktuellaordinationer",
      "path" : "hamtaickeaktuellaordinationer",
      "short" : "HamtaIckeAktuellaOrdinationer — Response",
      "definition" : "Logisk modell för svaret i HamtaIckeAktuellaOrdinationer\n(urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6, HamtaIckeAktuellaOrdinationerResponseType)."
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista",
      "short" : "apoteksInformationLista",
      "definition" : "Lista med apotek därifrån förändringar eller skapande utförts på/av ordinationerna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.aktorsnamn",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.aktorsnamn",
      "short" : "aktorsnamn",
      "definition" : "Officiellt namn för aktör",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.aktorsorgnr",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.aktorsorgnr",
      "short" : "aktorsorgnr",
      "definition" : "Aktörens organisationsnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.allmantelefon",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.allmantelefon",
      "short" : "allmantelefon",
      "definition" : "Telefonnummer för receptexpedition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.besoksadress",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.besoksadress",
      "short" : "besoksadress",
      "definition" : "Expeditionsställets besöksadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.eReceptDjur",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.eReceptDjur",
      "short" : "eReceptDjur",
      "definition" : "Anger om apoteket expedierar erecept för djur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.fax",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.fax",
      "short" : "fax",
      "definition" : "Expeditionsställets faxnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.glnKod",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.glnKod",
      "short" : "glnKod",
      "definition" : "Expeditionsställets GLN-kod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.huvudtypkod",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.huvudtypkod",
      "short" : "huvudtypkod",
      "definition" : "Kod som beskriver huvudverksamheten för expeditionsstället",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.namn",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.namn",
      "short" : "namn",
      "definition" : "Expeditionsställets officiella namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.ort",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.ort",
      "short" : "ort",
      "definition" : "Expeditionsställets besöksort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.registrerad",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.registrerad",
      "short" : "registrerad",
      "definition" : "Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.slutdatum",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.slutdatum",
      "short" : "slutdatum",
      "definition" : "Datum för stängning av verksamhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.apoteksInformationLista.startdatum",
      "path" : "hamtaickeaktuellaordinationer.apoteksInformationLista.startdatum",
      "short" : "startdatum",
      "definition" : "Datum för start av verksamhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista",
      "short" : "arbetsplatsInfoLista",
      "definition" : "Lista med arbetsplatser därifrån förändringar utförts på ordinationerna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsNamn",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsNamn",
      "short" : "arbetsplatsNamn",
      "definition" : "ArbetsplatsNamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsOrt",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsOrt",
      "short" : "arbetsplatsOrt",
      "definition" : "ArbetsplatsOrt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Arbetsplatskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.faxnummer",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.faxnummer",
      "short" : "faxnummer",
      "definition" : "Faxnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.giltigSlut",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.giltigSlut",
      "short" : "giltigSlut",
      "definition" : "Slutdatum för arbetsplatsens giltighetsperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.giltigStart",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.giltigStart",
      "short" : "giltigStart",
      "definition" : "Startdatum för arbetsplatsens giltighetsperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.postadress",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.postadress",
      "short" : "postadress",
      "definition" : "Postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.postnummer",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.postnummer",
      "short" : "postnummer",
      "definition" : "Postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.registrerad",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.registrerad",
      "short" : "registrerad",
      "definition" : "Anger om arbetsplatsen finns registrerad i ARKO. Om false så saknar alla fält utom arbetsplatskod värden.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.telefonnummer1",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Telefonnummer 1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.telefonnummer2",
      "path" : "hamtaickeaktuellaordinationer.arbetsplatsInfoLista.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Telefonnummer 2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista",
      "path" : "hamtaickeaktuellaordinationer.artikelLista",
      "short" : "artikelLista",
      "definition" : "Lista med artikelinformation för de varor som ingår i ordinationerna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.alternativtAntalKlartext",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.alternativtAntalKlartext",
      "short" : "alternativtAntalKlartext",
      "definition" : "Sammanslagning av multiplar, antal och alternativ enhet. Om alternativ enhet saknas för artikeln är detta fält tomt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.antalKlartext",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.antalKlartext",
      "short" : "antalKlartext",
      "definition" : "Sammanslagning av multiplar, antal och enhet på storleken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.artikelbenamning",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.artikelbenamning",
      "short" : "artikelbenamning",
      "definition" : "Sammanfattande beskrivning på en artikel (läkemedelsnamn + läkemedelsform + styrka + styrkans enhet + företag vid behov) Förkortningar kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.atcKlartext",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.atcKlartext",
      "short" : "atcKlartext",
      "definition" : "ATC-kod i klartext enligt lexikontabell. Språk anges på svenska (sv).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.atcKod",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.atcKod",
      "short" : "atcKod",
      "definition" : "ATC-kod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.avregistreringsdatum",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.avregistreringsdatum",
      "short" : "avregistreringsdatum",
      "definition" : "Datum då artikeln blev avregistrerad.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.bestallningsstoppad",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.bestallningsstoppad",
      "short" : "bestallningsstoppad",
      "definition" : "Markering om artikel enligt TLV är beställningsstoppad i gällande prisperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.foregaendePrisperiodensvara",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.foregaendePrisperiodensvara",
      "short" : "foregaendePrisperiodensvara",
      "definition" : "Markering som anger om artikeln var definierad som föregående prisperiodens vara.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.formansberattigad",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.formansberattigad",
      "short" : "formansberattigad",
      "definition" : "Markering som visar om artikeln är förmånsberättigad enligt VARA, vilket beslutas av TLV.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forpackningsenhet",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forpackningsenhet",
      "short" : "forpackningsenhet",
      "definition" : "Enhet på förpackningsstorleken, i klartext. Returnerar den alternativa enheten om sådan finns angiven för artikeln. Språk anges på svenska (sv).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forpackningsinnehall",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forpackningsinnehall",
      "short" : "forpackningsinnehall",
      "definition" : "Beskrivning av förpackning, innehåll och antal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forpackningsmangd",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forpackningsmangd",
      "short" : "forpackningsmangd",
      "definition" : "Totala mängden i förpackningen. Returnerar den alternativa förpackningsmängden om sådan finns angiven för artikeln.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forpackningstyp",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forpackningstyp",
      "short" : "forpackningstyp",
      "definition" : "Beskrivning av förpackningstyp för en artikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forsaljningsstoppad",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forsaljningsstoppad",
      "short" : "forsaljningsstoppad",
      "definition" : "Markering som visar om artikeln inte längre får försäljas. Sant om antingen artikeln eller produkten är försäljningsstoppad.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forskrivningsratter",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forskrivningsratter",
      "short" : "forskrivningsratter",
      "definition" : "Lista med förskrivningsrätter för artikeln. Använder koder enligt NPL.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forskrivningsrattsyrken",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forskrivningsrattsyrken",
      "short" : "forskrivningsrattsyrken",
      "definition" : "Lista med yrken som har förskrivningsrätt för artikeln. Listan utvinns ur förskrivningsrättskoderna, översätts till tvåställiga yrkeskoder och klartexter. Varje yrke finns max en gång i listan.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKod",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKod",
      "short" : "yrkesKod",
      "definition" : "Yrkeskod för utfärdarkategori.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKodKlartext",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKodKlartext",
      "short" : "yrkesKodKlartext",
      "definition" : "Yrkeskod för utfärdarkategori, klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.historiskaVarunummer",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.historiskaVarunummer",
      "short" : "historiskaVarunummer",
      "definition" : "Lista över eventuella tidigare varunummer. Används om en artikel har fått nytt varunummer.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.intressent",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.intressent",
      "short" : "intressent",
      "definition" : "Intressent (företag) som är ansvarig för artikeln.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.lakemedel",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.lakemedel",
      "short" : "lakemedel",
      "definition" : "Markering som visar om en artikel är ett läkemedel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.narkotikaklass",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.narkotikaklass",
      "short" : "narkotikaklass",
      "definition" : "Koden för narkotikaklass enligt Läkemedelsverkets förteckning: - = Ospecificerad 0 = Ej narkotikaklassad 1 = II 2 = Narkotika förteckning IV/V 3 = III 4 = IV 5 = V 6 = I",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.narkotikaklassKlartext",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.narkotikaklassKlartext",
      "short" : "narkotikaklassKlartext",
      "definition" : "Narkotikaklass i klartext enligt Läkemedelsverket förteckning. Klartext enligt lexikontabell för narkotikaklass. Språk anges på svenska (sv).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.nplId",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.nplId",
      "short" : "nplId",
      "definition" : "Produktid, antingen NPL-id eller SB-id. Unikt id för en läkemedelsprodukt. Alla förpackningar med samma styrka/form/tillverkare grupperas i samma produktid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.nplPackageId",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.nplPackageId",
      "short" : "nplPackageId",
      "definition" : "Förpackningsid, antingen NPL-packid eller SB-packid. Unikt id för en läkemedelsartikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.prisperiodensvara",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.prisperiodensvara",
      "short" : "prisperiodensvara",
      "definition" : "Markering som anger om artikeln är definierad som prisperiodens vara.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.produkttyp",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.produkttyp",
      "short" : "produkttyp",
      "definition" : "Artikelns produkttyp som kod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.produkttypKlartext",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.produkttypKlartext",
      "short" : "produkttypKlartext",
      "definition" : "Artikelns produkttyp som klartext enligt lexikontabell för produkttyp. Språk anges på svenska (sv).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.registrerad",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.registrerad",
      "short" : "registrerad",
      "definition" : "Anger om artikeln finns registrerad i VARA.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.sarskiltLakemedelKod",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.sarskiltLakemedelKod",
      "short" : "sarskiltLakemedelKod",
      "definition" : "Kod som anger om särskild receptblankett krävs och om recept får itereras. 1 = Särskilt receptblankett krävs INTE. 2 = Särskild receptblankett krävs. Recepten får itereras. 3 = Särskild receptblankett krävs. Recepten får EJ itereras. 4 = Särskild receptblankett krävs. Recept för humant bruk får itereras. - = Ospecifierat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.tillhandahalls",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.tillhandahalls",
      "short" : "tillhandahalls",
      "definition" : "Markering som visar om artikeln marknadsförs på den svenska marknaden. Sant om både artikeln och produkten tillhandahålls.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.utbytbar",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.utbytbar",
      "short" : "utbytbar",
      "definition" : "Markering som anger om artikeln är utbytbar enligt VARA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.varunummer",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.varunummer",
      "short" : "varunummer",
      "definition" : "Nordiskt varunummer som är unikt för handelsvaror. För läkemedel kan dubbletter förekomma vid parallellimport.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.artikelExtension",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.artikelExtension",
      "short" : "artikelExtension",
      "definition" : "artikelExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.artikelExtension.utlamnandebegransningKod",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.artikelExtension.utlamnandebegransningKod",
      "short" : "utlamnandebegransningKod",
      "definition" : "Kod som anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.artikelLista.artikelExtension.utlamnandebegransningKlartext",
      "path" : "hamtaickeaktuellaordinationer.artikelLista.artikelExtension.utlamnandebegransningKlartext",
      "short" : "utlamnandebegransningKlartext",
      "definition" : "Anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista",
      "short" : "forskrivarInfoLista",
      "definition" : "Lista med förskrivare som gjort förändringar i ordinationerna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.efternamn",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.efternamn",
      "short" : "efternamn",
      "definition" : "Efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.fornamn",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.fornamn",
      "short" : "fornamn",
      "definition" : "Förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarkod.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.giltig",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.giltig",
      "short" : "giltig",
      "definition" : "Sann om förskrivaren är giltig.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.gruppforskrivarkodKlartext",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.gruppforskrivarkodKlartext",
      "short" : "gruppforskrivarkodKlartext",
      "definition" : "Gruppförskrivarkod klartext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista",
      "short" : "yrkesKodInfoLista",
      "definition" : "Lista av yrkeskodsinformation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.specialistKodKlartext",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.specialistKodKlartext",
      "short" : "specialistKodKlartext",
      "definition" : "Lista med specialistkod för utfärdarkategori, klartext.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.yrkesKodKlartext",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.yrkesKodKlartext",
      "short" : "yrkesKodKlartext",
      "definition" : "Yrkeskod för utfärdarkategori, klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.inskrankt",
      "path" : "hamtaickeaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.inskrankt",
      "short" : "inskrankt",
      "definition" : "Sann om förskrivaren (per yrkeskod) har inskränkt förskrivningsrätt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista",
      "short" : "ordinationKortInfolista",
      "definition" : "Ordinationslista",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista",
      "short" : "dispenseradordinationLista",
      "definition" : "Lista med dispenserade ordinationer.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat",
      "short" : "affResultat",
      "definition" : "Information om aff-fel för ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affFelLista",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affFelLista",
      "short" : "affFelLista",
      "definition" : "Lista med AFF-fel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "short" : "allvarlighetsgrad",
      "definition" : "Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affFelLista.felkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affFelLista.felkod",
      "short" : "felkod",
      "definition" : "Felkod enligt Automatisk format- och författningskontroll (AFF).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affFelLista.felmeddelande",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affFelLista.felmeddelande",
      "short" : "felmeddelande",
      "definition" : "Felmeddelande för AFF-fel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affStatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.affStatus",
      "short" : "affStatus",
      "definition" : "Status för hela ordinationen eller uttaget. Allvarligaste AFF-felet styr status för hela ordinationen. 0 = Accepterad, 1 = Accepterad med varning, 2 = Avvisad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.avvisningsorsak",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.avvisningsorsak",
      "short" : "avvisningsorsak",
      "definition" : "Information om avvisningsorsak.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.kontrolltidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.kontrolltidpunkt",
      "short" : "kontrolltidpunkt",
      "definition" : "Datum och tidpunkt för utförd AFF-kontroll.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.kontrolltyp",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.affResultat.kontrolltyp",
      "short" : "kontrolltyp",
      "definition" : "Typ av AFF-kontroll som har genomförts. 1 = AFF-PRENEF 2 = AFF-NEF 3 = AFF-REG 4 = AFF-KORR 5 = AFF-EXP 6 = AFF-KEX 7 = AFF-MAK 8 = AFF-NOD 9 = AFF-UTS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.akut",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.akut",
      "short" : "akut",
      "definition" : "Markering att ordinationen är akut.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.apoteketsKommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.apoteketsKommentar",
      "short" : "apoteketsKommentar",
      "definition" : "Farmaceutens kommentar på ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation",
      "short" : "artikelinformation",
      "definition" : "Information om artikeln som ordinerats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation.nplId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation.nplId",
      "short" : "nplId",
      "definition" : "NPL-id alternativt SB-id som identifierar läkemedelprodukt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation.nplPackId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation.nplPackId",
      "short" : "nplPackId",
      "definition" : "NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation.utbyttArtikel",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation.utbyttArtikel",
      "short" : "utbyttArtikel",
      "definition" : "Markering om substitution har skett vid expedition. Kan endast sättas via uttag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation.varunr",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.artikelinformation.varunr",
      "short" : "varunr",
      "definition" : "Identitet på förskriven eller expedierad artikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation",
      "short" : "behandlingsinformation",
      "definition" : "behandlingsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.andamalKlartext",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.andamalKlartext",
      "short" : "andamalKlartext",
      "definition" : "Ändamål i klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.behandlingsslut",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.behandlingsslut",
      "short" : "behandlingsslut",
      "definition" : "Datum om tidpunkt då behandlingen avslutas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.behandlingsstart",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.behandlingsstart",
      "short" : "behandlingsstart",
      "definition" : "Datum om och tidpunkt då behandlingen påbörjas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.doseringstext1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.doseringstext1",
      "short" : "doseringstext1",
      "definition" : "Doseringstext från förskrivare eller korrigerad av farmaceut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.doseringstext2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.doseringstext2",
      "short" : "doseringstext2",
      "definition" : "Kompletterande doseringstext för exempelvis extempore och licensläkemedel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.sprakkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.behandlingsinformation.sprakkod",
      "short" : "sprakkod",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler",
      "short" : "dispenseringsregler",
      "definition" : "Dispenseringsregler",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.bytesEj",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.bytesEj",
      "short" : "bytesEj",
      "definition" : "Markering att farmaceut eller patient beslutat att ordinerad artikel ej får bytas ut. A=Apoteks-nej, P=Patient-nej. Får enbart anges för Ordinationstyp=D (Dispenserad ordination).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.ejTillatenSubstitution",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.ejTillatenSubstitution",
      "short" : "ejTillatenSubstitution",
      "definition" : "Markering om förskriven vara ej får bytas ut enligt förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.forman",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.forman",
      "short" : "forman",
      "definition" : "Förskrivarens uppgift om ordinationen ska innefattas i förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.insattningstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.insattningstidpunkt",
      "short" : "insattningstidpunkt",
      "definition" : "Datum när patienten skall påbörja intag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.sistaGiltighetsdag",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseringsregler.sistaGiltighetsdag",
      "short" : "sistaGiltighetsdag",
      "definition" : "Ordinationens sista giltighetsdag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema",
      "short" : "doseringsschema",
      "definition" : "Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.intagstillfalle",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Beskriver tid och mängd för intag av läkemedel.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "intagsmangd",
      "definition" : "Intagsmängd per tillfälle. Null hanteras som enligt ordination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Klockslag när patienten ska inta medicinering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.periodlangd",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.doseringsschema.periodlangd",
      "short" : "periodlangd",
      "definition" : "Antal dagar som dosering skall gälla. Vid regelbunden dosering anges periodlängd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring",
      "short" : "forandring",
      "definition" : "Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator.arbetsplats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.kommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.typ",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forandring.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forskrivarKommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.forskrivarKommentar",
      "short" : "forskrivarKommentar",
      "definition" : "Förskrivarens kommentar till apoteket.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.harForandrats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.harForandrats",
      "short" : "harForandrats",
      "definition" : "Markering om ordinationen har ändrats av förskrivare eller farmaceut.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.historisktOrdinationsId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.historisktOrdinationsId",
      "short" : "historisktOrdinationsId",
      "definition" : "Hänvisning till en eventuell historisk post av ordinationen. Alla historiska poster har tillståndsstatus Historik (211). En historisk post skapas exempelvis vid korrigering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.korrigerbar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.korrigerbar",
      "short" : "korrigerbar",
      "definition" : "Markering om ordinationen är korrigerbar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.leveransMeddelande",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.leveransMeddelande",
      "short" : "leveransMeddelande",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering",
      "short" : "makulering",
      "definition" : "Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator.arbetsplats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.kommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.orsakskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.orsakskod",
      "short" : "orsakskod",
      "definition" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.orsakskodKlartext",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.orsakskodKlartext",
      "short" : "orsakskodKlartext",
      "definition" : "Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.paUppdragAv",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.paUppdragAv",
      "short" : "paUppdragAv",
      "definition" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.samtyckeMakulering",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.samtyckeMakulering",
      "short" : "samtyckeMakulering",
      "definition" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.typ",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.makulering.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.notatOrdination",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.notatOrdination",
      "short" : "notatOrdination",
      "definition" : "Förskrivarens notat kopplat till en specifik ordination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsId",
      "short" : "ordinationsId",
      "definition" : "Ordinationens unika id som sätts av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation",
      "short" : "ordinationsinformation",
      "definition" : "Kompletterande information om ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Den som godkänt ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.lagringstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.lagringstidpunkt",
      "short" : "lagringstidpunkt",
      "definition" : "Datum och tid då ordinationen skapades i OR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.mottagandeApotek",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.mottagandeApotek",
      "short" : "mottagandeApotek",
      "definition" : "Apoteks-id (GLN) vid direktadressering av ordinationer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinationstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinationstidpunkt",
      "short" : "ordinationstidpunkt",
      "definition" : "Datum och eventuell tid för ordinationens utfärdande.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator",
      "short" : "ordinator",
      "definition" : "Den ordinatör som utfärdat ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "short" : "kontaktuppgift",
      "definition" : "Ordinatörens kontaktinformation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "short" : "adress1",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "short" : "adress2",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "short" : "postnummer",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "short" : "postort",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.utfardarkategori",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.utfardarkategori",
      "short" : "utfardarkategori",
      "definition" : "Förskrivarens utfärdarkategori enligt NEF. LAK = Läkare ATL = AT-läkare LMF = Läkare med förordnande TAN = Tandläkare VET = Veterinär TAH = Tandhygienist BMO = Barnmorska SSK = Sjuksköterska HJM = Hjälpmedelsförskrivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.originalformat",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.originalformat",
      "short" : "originalformat",
      "definition" : "Originalhandlingens ursprung. 0 = Pappersordination 1 = Telefonordination 2 = E-recept (NEF) (3 = Faxordination patient) 4 = Faxordination 5 = E-ordination 6 = Utskrivet från OR 7 = Utskriven E-ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.originalordinationsId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.originalordinationsId",
      "short" : "originalordinationsId",
      "definition" : "Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient",
      "short" : "patient",
      "definition" : "Den patient som ordinationen gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.efternamn",
      "short" : "efternamn",
      "definition" : "Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum och kön för patienter som inte har fullständigt personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum för patient som saknar giltigt personnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "short" : "kon",
      "definition" : "Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.fornamn",
      "short" : "fornamn",
      "definition" : "Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "short" : "kontaktuppgift",
      "definition" : "Kontaktuppgifter för patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "short" : "adress1",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "short" : "adress2",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "short" : "postnummer",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "short" : "postort",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.personnummer",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.patient.personnummer",
      "short" : "personnummer",
      "definition" : "Giltigt personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "short" : "registrerandeApotekspersonal",
      "definition" : "Den som registrerat ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.testindikator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsinformation.testindikator",
      "short" : "testindikator",
      "definition" : "Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsstatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsstatus",
      "short" : "ordinationsstatus",
      "definition" : "ordinationsstatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsstatus.radversion",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsstatus.radversion",
      "short" : "radversion",
      "definition" : "Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsstatus.ordinationsstatusStatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsstatus.ordinationsstatusStatus",
      "short" : "ordinationsstatusStatus",
      "definition" : "Status för dosunderlag, ordination eller uttag. Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsstatus.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationsstatus.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationstyp",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.ordinationstyp",
      "short" : "ordinationstyp",
      "definition" : "Typ av ordination. Anges enbart på ordinationer till dospatient. B = Helförpackning vid behov S = Helförpackning stående D = Dispenserad ordination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.radnummerNEF",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.radnummerNEF",
      "short" : "radnummerNEF",
      "definition" : "Unikt id för en rad i en receptsamling som skickas in via NEF. Radnumret är en kombination av rad inom receptsamlingen och eventuellt flerval. Id:t sätts av vårdsystemet. Radnummer utan flerval: 1,2,...n Radnummer med flerval: 1-1, 1-2, 1-n",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag",
      "short" : "senastDispenseratUttag",
      "definition" : "Senast dispenseratuttag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLId",
      "short" : "senastExpedieratNPLId",
      "definition" : "Senast expedierat NPL-id eller SB-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLPackId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLPackId",
      "short" : "senastExpedieratNPLPackId",
      "definition" : "Senast expedierat NPL Pack-id eller SB Pack-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratVarunr",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratVarunr",
      "short" : "senastExpedieratVarunr",
      "definition" : "Senast expedierat varunr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senasteExpedieradMangd",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senasteExpedieradMangd",
      "short" : "senasteExpedieradMangd",
      "definition" : "Senaste expedierad mängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senasteFormansval",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senasteFormansval",
      "short" : "senasteFormansval",
      "definition" : "Förmån som användes vid senaste expedition. R = Med förmån U = Utan förmån L = Livsmedel F = Kostnadsfritt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senasteUttagsdatum",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.senastDispenseratUttag.senasteUttagsdatum",
      "short" : "senasteUttagsdatum",
      "definition" : "Datum för senaste uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.tidigareOrdinationsId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.tidigareOrdinationsId",
      "short" : "tidigareOrdinationsId",
      "definition" : "Koppling till föregående ordination vid ordinationsförändringar. Ordinationerna behandlas som olika, fristående ordinationer. Används exempelvis vid förlängningar eller för att koppla ihop en ordination som skrivits ut på receptoriginal och registrerats in i OR igen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning",
      "short" : "utsattning",
      "definition" : "Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator.arbetsplats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.kommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.typ",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.utsattningstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.utsattning.utsattningstidpunkt",
      "short" : "utsattningstidpunkt",
      "definition" : "Datum när patienten skall avsluta intag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseradOrdinationExtension",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseradOrdinationExtension",
      "short" : "dispenseradOrdinationExtension",
      "definition" : "dispenseradOrdinationExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseradOrdinationExtension.sparradUppgiftKod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseradOrdinationExtension.sparradUppgiftKod",
      "short" : "sparradUppgiftKod",
      "definition" : "Kod för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseradOrdinationExtension.sparradUppgiftKlartext",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dispenseradordinationLista.dispenseradOrdinationExtension.sparradUppgiftKlartext",
      "short" : "sparradUppgiftKlartext",
      "definition" : "Klartext för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag",
      "short" : "dosunderlag",
      "definition" : "Dospatients dosunderlag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator",
      "short" : "dosordinator",
      "definition" : "Dosordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tid då Dosunderlaget skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosordinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosproducent",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosproducent",
      "short" : "dosproducent",
      "definition" : "Apoteks-id på dosproducent som patienten är kopplad till.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus",
      "short" : "dosunderlagsstatus",
      "definition" : "Tillståndsstatus för dosunderlag.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Förändrande apotekspersonal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.dosunderlagsstatusStatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.dosunderlagsstatusStatus",
      "short" : "dosunderlagsstatusStatus",
      "definition" : "Status för dosunderlag, ordination eller uttag. Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsstatus.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsversion",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.dosunderlagsversion",
      "short" : "dosunderlagsversion",
      "definition" : "Ny Dosunderlagsversion skapas varje gång Dosunderlaget ändrar status till \"Ej godkänt\". Dosunderlagsversionen skrivs ut på dosreceptet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut",
      "short" : "godkannandeFarmaceut",
      "definition" : "Godkännande Farmaceut.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.godkannandetidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.godkannandetidpunkt",
      "short" : "godkannandetidpunkt",
      "definition" : "Datum och tid för dosunderlagets godkännande.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.dosunderlag.godkannandeFarmaceut.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista",
      "short" : "helforpackningsordinationLista",
      "definition" : "Lista med helförpackningsordinationer.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat",
      "short" : "affResultat",
      "definition" : "Information om aff-fel för ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affFelLista",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affFelLista",
      "short" : "affFelLista",
      "definition" : "Lista med AFF-fel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "short" : "allvarlighetsgrad",
      "definition" : "Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affFelLista.felkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affFelLista.felkod",
      "short" : "felkod",
      "definition" : "Felkod enligt Automatisk format- och författningskontroll (AFF).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affFelLista.felmeddelande",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affFelLista.felmeddelande",
      "short" : "felmeddelande",
      "definition" : "Felmeddelande för AFF-fel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affStatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.affStatus",
      "short" : "affStatus",
      "definition" : "Status för hela ordinationen eller uttaget. Allvarligaste AFF-felet styr status för hela ordinationen. 0 = Accepterad, 1 = Accepterad med varning, 2 = Avvisad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.avvisningsorsak",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.avvisningsorsak",
      "short" : "avvisningsorsak",
      "definition" : "Information om avvisningsorsak.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.kontrolltidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.kontrolltidpunkt",
      "short" : "kontrolltidpunkt",
      "definition" : "Datum och tidpunkt för utförd AFF-kontroll.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.kontrolltyp",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.affResultat.kontrolltyp",
      "short" : "kontrolltyp",
      "definition" : "Typ av AFF-kontroll som har genomförts. 1 = AFF-PRENEF 2 = AFF-NEF 3 = AFF-REG 4 = AFF-KORR 5 = AFF-EXP 6 = AFF-KEX 7 = AFF-MAK 8 = AFF-NOD 9 = AFF-UTS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.apoteketsKommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.apoteketsKommentar",
      "short" : "apoteketsKommentar",
      "definition" : "Farmaceutens kommentar på ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation",
      "short" : "artikelinformation",
      "definition" : "Information om artikeln som ordinerats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation.nplId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation.nplId",
      "short" : "nplId",
      "definition" : "NPL-id alternativt SB-id som identifierar läkemedelprodukt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation.nplPackId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation.nplPackId",
      "short" : "nplPackId",
      "definition" : "NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation.utbyttArtikel",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation.utbyttArtikel",
      "short" : "utbyttArtikel",
      "definition" : "Markering om substitution har skett vid expedition. Kan endast sättas via uttag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation.varunr",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.artikelinformation.varunr",
      "short" : "varunr",
      "definition" : "Identitet på förskriven eller expedierad artikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation",
      "short" : "behandlingsinformation",
      "definition" : "behandlingsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.andamalKlartext",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.andamalKlartext",
      "short" : "andamalKlartext",
      "definition" : "Ändamål i klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.behandlingsslut",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.behandlingsslut",
      "short" : "behandlingsslut",
      "definition" : "Datum om tidpunkt då behandlingen avslutas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.behandlingsstart",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.behandlingsstart",
      "short" : "behandlingsstart",
      "definition" : "Datum om och tidpunkt då behandlingen påbörjas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.doseringstext1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.doseringstext1",
      "short" : "doseringstext1",
      "definition" : "Doseringstext från förskrivare eller korrigerad av farmaceut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.doseringstext2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.doseringstext2",
      "short" : "doseringstext2",
      "definition" : "Kompletterande doseringstext för exempelvis extempore och licensläkemedel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.sprakkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.behandlingsinformation.sprakkod",
      "short" : "sprakkod",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema",
      "short" : "doseringsschema",
      "definition" : "Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.intagstillfalle",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Beskriver tid och mängd för intag av läkemedel.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "intagsmangd",
      "definition" : "Intagsmängd per tillfälle. Null hanteras som enligt ordination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Klockslag när patienten ska inta medicinering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.periodlangd",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.doseringsschema.periodlangd",
      "short" : "periodlangd",
      "definition" : "Antal dagar som dosering skall gälla. Vid regelbunden dosering anges periodlängd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring",
      "short" : "forandring",
      "definition" : "Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator.arbetsplats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.kommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.typ",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forandring.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forskrivarKommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.forskrivarKommentar",
      "short" : "forskrivarKommentar",
      "definition" : "Förskrivarens kommentar till apoteket.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.harForandrats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.harForandrats",
      "short" : "harForandrats",
      "definition" : "Markering om ordinationen har ändrats av förskrivare eller farmaceut.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler",
      "short" : "helforpackningsregler",
      "definition" : "helforpackningsregler",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.ejTillatenSubstitution",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.ejTillatenSubstitution",
      "short" : "ejTillatenSubstitution",
      "definition" : "Markering om förskriven vara ej får bytas ut enligt förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.forman",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.forman",
      "short" : "forman",
      "definition" : "Förskrivarens uppgift om ordinationen ska innefattas i förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.forskrivetAntalUttag",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.forskrivetAntalUttag",
      "short" : "forskrivetAntalUttag",
      "definition" : "Antal tillåtna uttag på ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.forstaUttagFore",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.forstaUttagFore",
      "short" : "forstaUttagFore",
      "definition" : "Datum inom vilket första uttag av läkemedel måste göras. Sker inte någon expedition på receptet innan detta datum sätts hela ordinationen till utgången.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.insattningstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.insattningstidpunkt",
      "short" : "insattningstidpunkt",
      "definition" : "Datum när patienten skall påbörja intag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.intervall",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.intervall",
      "short" : "intervall",
      "definition" : "Absolut expeditionsintervall.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.intervall.expeditionsintervall",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.intervall.expeditionsintervall",
      "short" : "expeditionsintervall",
      "definition" : "Absolut expeditionsintervall. Av förskrivaren angiven kortaste tid mellan två expeditioner.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.intervall.intervallenhet",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.intervall.intervallenhet",
      "short" : "intervallenhet",
      "definition" : "Enhet för det absoluta expeditionsintervallet. Kan anges i dagar, veckor eller månader. Mn = Månader V = Veckor Dg = Dagar Obligatorisk parameter om Expeditionsintervall anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.resterandeAntalUttag",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.resterandeAntalUttag",
      "short" : "resterandeAntalUttag",
      "definition" : "Kvarvarande antal uttag på ordinationen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.sistaGiltighetsdag",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.sistaGiltighetsdag",
      "short" : "sistaGiltighetsdag",
      "definition" : "Ordinationens sista giltighetsdag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.slutexpedierad",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.slutexpedierad",
      "short" : "slutexpedierad",
      "definition" : "Markering om farmaceut anser att ordinationen är slutexpedierad. Används då kvarvarande mängd är minde än minsta förpackningsstorlek för aktuell artikel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.slutexpedieradAvFarmaceut",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsregler.slutexpedieradAvFarmaceut",
      "short" : "slutexpedieradAvFarmaceut",
      "definition" : "Farmaceut har markerat att ordinationen är slutexpedierad.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.historisktOrdinationsId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.historisktOrdinationsId",
      "short" : "historisktOrdinationsId",
      "definition" : "Hänvisning till en eventuell historisk post av ordinationen. Alla historiska poster har tillståndsstatus Historik (211). En historisk post skapas exempelvis vid korrigering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.korrigerbar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.korrigerbar",
      "short" : "korrigerbar",
      "definition" : "Markering om ordinationen är korrigerbar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.leveransMeddelande",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.leveransMeddelande",
      "short" : "leveransMeddelande",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering",
      "short" : "makulering",
      "definition" : "Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator.arbetsplats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.kommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.orsakskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.orsakskod",
      "short" : "orsakskod",
      "definition" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.orsakskodKlartext",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.orsakskodKlartext",
      "short" : "orsakskodKlartext",
      "definition" : "Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.paUppdragAv",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.paUppdragAv",
      "short" : "paUppdragAv",
      "definition" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.samtyckeMakulering",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.samtyckeMakulering",
      "short" : "samtyckeMakulering",
      "definition" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.typ",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.makulering.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation",
      "short" : "mangdinformation",
      "definition" : "mangdinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.antalForpackningar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.antalForpackningar",
      "short" : "antalForpackningar",
      "definition" : "Antal förpackningar per uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.ingenDygnsdos",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.ingenDygnsdos",
      "short" : "ingenDygnsdos",
      "definition" : "Markering att dygnsdos inte kan anges. Exempelvis vid ordination av kräm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.maxDygnsdos",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.maxDygnsdos",
      "short" : "maxDygnsdos",
      "definition" : "Maximal mängd läkemedel som får förbrukas per dygn enligt doseringsschema eller doseringsanvisning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.maxVeckodos",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.maxVeckodos",
      "short" : "maxVeckodos",
      "definition" : "Maximal mängd läkemedel som får förbrukas per vecka enligt doseringsschema eller doseringsanvisning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.startforpackning",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.startforpackning",
      "short" : "startforpackning",
      "definition" : "Anger om startförpackning ska expedieras vid första uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.totalmangd",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.totalmangd",
      "short" : "totalmangd",
      "definition" : "Förskriven totalmängd.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.totalmangdKvar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.mangdinformation.totalmangdKvar",
      "short" : "totalmangdKvar",
      "definition" : "Resterande mängd som finns kvar på receptet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.notatOrdination",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.notatOrdination",
      "short" : "notatOrdination",
      "definition" : "Förskrivarens notat kopplat till en specifik ordination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsId",
      "short" : "ordinationsId",
      "definition" : "Ordinationens unika id som sätts av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation",
      "short" : "ordinationsinformation",
      "definition" : "Kompletterande information om ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Den som godkänt ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.lagringstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.lagringstidpunkt",
      "short" : "lagringstidpunkt",
      "definition" : "Datum och tid då ordinationen skapades i OR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.mottagandeApotek",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.mottagandeApotek",
      "short" : "mottagandeApotek",
      "definition" : "Apoteks-id (GLN) vid direktadressering av ordinationer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinationstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinationstidpunkt",
      "short" : "ordinationstidpunkt",
      "definition" : "Datum och eventuell tid för ordinationens utfärdande.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator",
      "short" : "ordinator",
      "definition" : "Den ordinatör som utfärdat ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "short" : "kontaktuppgift",
      "definition" : "Ordinatörens kontaktinformation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "short" : "adress1",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "short" : "adress2",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "short" : "postnummer",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "short" : "postort",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.utfardarkategori",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.utfardarkategori",
      "short" : "utfardarkategori",
      "definition" : "Förskrivarens utfärdarkategori enligt NEF. LAK = Läkare ATL = AT-läkare LMF = Läkare med förordnande TAN = Tandläkare VET = Veterinär TAH = Tandhygienist BMO = Barnmorska SSK = Sjuksköterska HJM = Hjälpmedelsförskrivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.originalformat",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.originalformat",
      "short" : "originalformat",
      "definition" : "Originalhandlingens ursprung. 0 = Pappersordination 1 = Telefonordination 2 = E-recept (NEF) (3 = Faxordination patient) 4 = Faxordination 5 = E-ordination 6 = Utskrivet från OR 7 = Utskriven E-ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.originalordinationsId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.originalordinationsId",
      "short" : "originalordinationsId",
      "definition" : "Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient",
      "short" : "patient",
      "definition" : "Den patient som ordinationen gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.efternamn",
      "short" : "efternamn",
      "definition" : "Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum och kön för patienter som inte har fullständigt personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum för patient som saknar giltigt personnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "short" : "kon",
      "definition" : "Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.fornamn",
      "short" : "fornamn",
      "definition" : "Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "short" : "kontaktuppgift",
      "definition" : "Kontaktuppgifter för patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "short" : "adress1",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "short" : "adress2",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "short" : "postnummer",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "short" : "postort",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.personnummer",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.patient.personnummer",
      "short" : "personnummer",
      "definition" : "Giltigt personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "short" : "registrerandeApotekspersonal",
      "definition" : "Den som registrerat ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.testindikator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsinformation.testindikator",
      "short" : "testindikator",
      "definition" : "Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsstatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsstatus",
      "short" : "ordinationsstatus",
      "definition" : "ordinationsstatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsstatus.radversion",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsstatus.radversion",
      "short" : "radversion",
      "definition" : "Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsstatus.ordinationsstatusStatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsstatus.ordinationsstatusStatus",
      "short" : "ordinationsstatusStatus",
      "definition" : "Status för dosunderlag, ordination eller uttag. Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsstatus.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationsstatus.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationstyp",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.ordinationstyp",
      "short" : "ordinationstyp",
      "definition" : "Typ av ordination. Anges enbart på ordinationer till dospatient. B = Helförpackning vid behov S = Helförpackning stående D = Dispenserad ordination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.radnummerNEF",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.radnummerNEF",
      "short" : "radnummerNEF",
      "definition" : "Unikt id för en rad i en receptsamling som skickas in via NEF. Radnumret är en kombination av rad inom receptsamlingen och eventuellt flerval. Id:t sätts av vårdsystemet. Radnummer utan flerval: 1,2,...n Radnummer med flerval: 1-1, 1-2, 1-n",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag",
      "short" : "senasteHelforpackningsuttag",
      "definition" : "senasteHelforpackningsuttag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.nastaUttagInomFormanen",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.nastaUttagInomFormanen",
      "short" : "nastaUttagInomFormanen",
      "definition" : "Datum för nästa tillåtna uttag inom förmånen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLId",
      "short" : "senastExpedieratNPLId",
      "definition" : "Senast expedierat NPL-id eller SB-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLPackId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLPackId",
      "short" : "senastExpedieratNPLPackId",
      "definition" : "Senast expedierat NPL Pack-id eller SB Pack-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratVarunr",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratVarunr",
      "short" : "senastExpedieratVarunr",
      "definition" : "Senast expedierat varunr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteExpedieradMangd",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteExpedieradMangd",
      "short" : "senasteExpedieradMangd",
      "definition" : "Senaste expedierad mängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteFormansval",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteFormansval",
      "short" : "senasteFormansval",
      "definition" : "Förmån som användes vid senaste expedition. U = Utan förmån R = Med förmån L = Livsmedel F = Kostnadsfritt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagInomFormanen",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagInomFormanen",
      "short" : "senasteUttagInomFormanen",
      "definition" : "Datum för senaste uttag inom förmånen enligt förmånsreglerna.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagsdatum",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagsdatum",
      "short" : "senasteUttagsdatum",
      "definition" : "Datum för senaste uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.tidigareOrdinationsId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.tidigareOrdinationsId",
      "short" : "tidigareOrdinationsId",
      "definition" : "Koppling till föregående ordination vid ordinationsförändringar. Ordinationerna behandlas som olika, fristående ordinationer. Används exempelvis vid förlängningar eller för att koppla ihop en ordination som skrivits ut på receptoriginal och registrerats in i OR igen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning",
      "short" : "utsattning",
      "definition" : "Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator.arbetsplats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.kommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.typ",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.utsattningstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.utsattning.utsattningstidpunkt",
      "short" : "utsattningstidpunkt",
      "definition" : "Datum när patienten skall avsluta intag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsordinationExtension",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsordinationExtension",
      "short" : "helforpackningsordinationExtension",
      "definition" : "helforpackningsordinationExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsordinationExtension.sparradUppgiftKod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsordinationExtension.sparradUppgiftKod",
      "short" : "sparradUppgiftKod",
      "definition" : "Kod för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsordinationExtension.sparradUppgiftKlartext",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.helforpackningsordinationLista.helforpackningsordinationExtension.sparradUppgiftKlartext",
      "short" : "sparradUppgiftKlartext",
      "definition" : "Klartext för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista",
      "short" : "ordinationkortinfoLista",
      "definition" : "Lista med kortinformation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring",
      "short" : "forandring",
      "definition" : "Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering eller förändring) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator.arbetsplats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.kommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.typ",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.forandring.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering",
      "short" : "makulering",
      "definition" : "Information om eventuell historikskapande händelse (makulering). Endast en typ av historikskapande-information (makluering eller förändring) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.apoteksId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.befattningskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator.fornamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator.efternamn",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator.anvandarId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator.arbetsplats",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.kommentar",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.orsakskod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.orsakskod",
      "short" : "orsakskod",
      "definition" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.orsakskodKlartext",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.orsakskodKlartext",
      "short" : "orsakskodKlartext",
      "definition" : "Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.paUppdragAv",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.paUppdragAv",
      "short" : "paUppdragAv",
      "definition" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.samtyckeMakulering",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.samtyckeMakulering",
      "short" : "samtyckeMakulering",
      "definition" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.tidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.typ",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.makulering.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.nplPackId",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.nplPackId",
      "short" : "nplPackId",
      "definition" : "NplPackId.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationsid",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationsid",
      "short" : "ordinationsid",
      "definition" : "Ordinationens unika id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationstidpunkt",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationstidpunkt",
      "short" : "ordinationstidpunkt",
      "definition" : "Datum och eventuell tid för ordinationens utfärdande.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.sistaGiltighetsdag",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.sistaGiltighetsdag",
      "short" : "sistaGiltighetsdag",
      "definition" : "Ordinationens sista giltighetsdag.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationKortInfoStatus",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationKortInfoStatus",
      "short" : "ordinationKortInfoStatus",
      "definition" : "Ordinationens tillståndsstatus. Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.varunummer",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.varunummer",
      "short" : "varunummer",
      "definition" : "Varunummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationKortInfoExtension",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationKortInfoExtension",
      "short" : "ordinationKortInfoExtension",
      "definition" : "ordinationKortInfoExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationKortInfoExtension.sparradUppgiftKod",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationKortInfoExtension.sparradUppgiftKod",
      "short" : "sparradUppgiftKod",
      "definition" : "Kod för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationKortInfoExtension.sparradUppgiftKlartext",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.ordinationkortinfoLista.ordinationKortInfoExtension.sparradUppgiftKlartext",
      "short" : "sparradUppgiftKlartext",
      "definition" : "Klartext för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.personnummer",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.personnummer",
      "short" : "personnummer",
      "definition" : "Patientens personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.underlagsversion",
      "path" : "hamtaickeaktuellaordinationer.ordinationKortInfolista.underlagsversion",
      "short" : "underlagsversion",
      "definition" : "Version på Ordinationslista. Används för att verifiera att klientsystemet har rätt underlag vid uppdateringar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
