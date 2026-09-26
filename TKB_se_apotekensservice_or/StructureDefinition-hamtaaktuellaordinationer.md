# HamtaAktuellaOrdinationer — Response - se.apotekensservice: or — Ordinationer v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaAktuellaOrdinationer — Response**

## Logical Model: HamtaAktuellaOrdinationer — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaaktuellaordinationer | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:HamtaAktuellaOrdinationer |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i HamtaAktuellaOrdinationer (urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5, HamtaAktuellaOrdinationerResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-or|current/StructureDefinition/StructureDefinition-hamtaaktuellaordinationer.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtaaktuellaordinationer.csv), [Excel](StructureDefinition-hamtaaktuellaordinationer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtaaktuellaordinationer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaaktuellaordinationer",
  "version" : "7.0.0",
  "name" : "HamtaAktuellaOrdinationer",
  "title" : "HamtaAktuellaOrdinationer — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:44:49+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i HamtaAktuellaOrdinationer\n(urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5, HamtaAktuellaOrdinationerResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaaktuellaordinationer",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtaaktuellaordinationer",
      "path" : "hamtaaktuellaordinationer",
      "short" : "HamtaAktuellaOrdinationer — Response",
      "definition" : "Logisk modell för svaret i HamtaAktuellaOrdinationer\n(urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5, HamtaAktuellaOrdinationerResponseType)."
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista",
      "short" : "apoteksInformationLista",
      "definition" : "Lista med apotek därifrån förändringar eller skapande utförts på/av ordinationerna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.aktorsnamn",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.aktorsnamn",
      "short" : "aktorsnamn",
      "definition" : "Officiellt namn för aktör",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.aktorsorgnr",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.aktorsorgnr",
      "short" : "aktorsorgnr",
      "definition" : "Aktörens organisationsnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.allmantelefon",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.allmantelefon",
      "short" : "allmantelefon",
      "definition" : "Telefonnummer för receptexpedition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.besoksadress",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.besoksadress",
      "short" : "besoksadress",
      "definition" : "Expeditionsställets besöksadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.eReceptDjur",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.eReceptDjur",
      "short" : "eReceptDjur",
      "definition" : "Anger om apoteket expedierar erecept för djur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.fax",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.fax",
      "short" : "fax",
      "definition" : "Expeditionsställets faxnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.glnKod",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.glnKod",
      "short" : "glnKod",
      "definition" : "Expeditionsställets GLN-kod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.huvudtypkod",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.huvudtypkod",
      "short" : "huvudtypkod",
      "definition" : "Kod som beskriver huvudverksamheten för expeditionsstället",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.namn",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.namn",
      "short" : "namn",
      "definition" : "Expeditionsställets officiella namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.ort",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.ort",
      "short" : "ort",
      "definition" : "Expeditionsställets besöksort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.registrerad",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.registrerad",
      "short" : "registrerad",
      "definition" : "Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.slutdatum",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.slutdatum",
      "short" : "slutdatum",
      "definition" : "Datum för stängning av verksamhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.startdatum",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.startdatum",
      "short" : "startdatum",
      "definition" : "Datum för start av verksamhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista",
      "short" : "arbetsplatsInfoLista",
      "definition" : "Lista med arbetsplatser därifrån förändringar utförts på ordinationerna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsNamn",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsNamn",
      "short" : "arbetsplatsNamn",
      "definition" : "ArbetsplatsNamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsOrt",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsOrt",
      "short" : "arbetsplatsOrt",
      "definition" : "ArbetsplatsOrt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Arbetsplatskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.faxnummer",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.faxnummer",
      "short" : "faxnummer",
      "definition" : "Faxnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.giltigSlut",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.giltigSlut",
      "short" : "giltigSlut",
      "definition" : "Slutdatum för arbetsplatsens giltighetsperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.giltigStart",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.giltigStart",
      "short" : "giltigStart",
      "definition" : "Startdatum för arbetsplatsens giltighetsperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.postadress",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.postadress",
      "short" : "postadress",
      "definition" : "Postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.postnummer",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.postnummer",
      "short" : "postnummer",
      "definition" : "Postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.registrerad",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.registrerad",
      "short" : "registrerad",
      "definition" : "Anger om arbetsplatsen finns registrerad i ARKO. Om false så saknar alla fält utom arbetsplatskod värden.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Telefonnummer 1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Telefonnummer 2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista",
      "path" : "hamtaaktuellaordinationer.artikelLista",
      "short" : "artikelLista",
      "definition" : "Lista med artikelinformation för de varor som ingår i ordinationerna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.alternativtAntalKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.alternativtAntalKlartext",
      "short" : "alternativtAntalKlartext",
      "definition" : "Sammanslagning av multiplar, antal och alternativ enhet. Om alternativ enhet saknas för artikeln är detta fält tomt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.antalKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.antalKlartext",
      "short" : "antalKlartext",
      "definition" : "Sammanslagning av multiplar, antal och enhet på storleken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.artikelbenamning",
      "path" : "hamtaaktuellaordinationer.artikelLista.artikelbenamning",
      "short" : "artikelbenamning",
      "definition" : "Sammanfattande beskrivning på en artikel (läkemedelsnamn + läkemedelsform + styrka + styrkans enhet + företag vid behov) Förkortningar kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.atcKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.atcKlartext",
      "short" : "atcKlartext",
      "definition" : "ATC-kod i klartext enligt lexikontabell. Språk anges på svenska (sv).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.atcKod",
      "path" : "hamtaaktuellaordinationer.artikelLista.atcKod",
      "short" : "atcKod",
      "definition" : "ATC-kod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.avregistreringsdatum",
      "path" : "hamtaaktuellaordinationer.artikelLista.avregistreringsdatum",
      "short" : "avregistreringsdatum",
      "definition" : "Datum då artikeln blev avregistrerad.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.bestallningsstoppad",
      "path" : "hamtaaktuellaordinationer.artikelLista.bestallningsstoppad",
      "short" : "bestallningsstoppad",
      "definition" : "Markering om artikel enligt TLV är beställningsstoppad i gällande prisperiod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.foregaendePrisperiodensvara",
      "path" : "hamtaaktuellaordinationer.artikelLista.foregaendePrisperiodensvara",
      "short" : "foregaendePrisperiodensvara",
      "definition" : "Markering som anger om artikeln var definierad som föregående prisperiodens vara.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.formansberattigad",
      "path" : "hamtaaktuellaordinationer.artikelLista.formansberattigad",
      "short" : "formansberattigad",
      "definition" : "Markering som visar om artikeln är förmånsberättigad enligt VARA, vilket beslutas av TLV.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forpackningsenhet",
      "path" : "hamtaaktuellaordinationer.artikelLista.forpackningsenhet",
      "short" : "forpackningsenhet",
      "definition" : "Enhet på förpackningsstorleken, i klartext. Returnerar den alternativa enheten om sådan finns angiven för artikeln. Språk anges på svenska (sv).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forpackningsinnehall",
      "path" : "hamtaaktuellaordinationer.artikelLista.forpackningsinnehall",
      "short" : "forpackningsinnehall",
      "definition" : "Beskrivning av förpackning, innehåll och antal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forpackningsmangd",
      "path" : "hamtaaktuellaordinationer.artikelLista.forpackningsmangd",
      "short" : "forpackningsmangd",
      "definition" : "Totala mängden i förpackningen. Returnerar den alternativa förpackningsmängden om sådan finns angiven för artikeln.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forpackningstyp",
      "path" : "hamtaaktuellaordinationer.artikelLista.forpackningstyp",
      "short" : "forpackningstyp",
      "definition" : "Beskrivning av förpackningstyp för en artikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forsaljningsstoppad",
      "path" : "hamtaaktuellaordinationer.artikelLista.forsaljningsstoppad",
      "short" : "forsaljningsstoppad",
      "definition" : "Markering som visar om artikeln inte längre får försäljas. Sant om antingen artikeln eller produkten är försäljningsstoppad.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forskrivningsratter",
      "path" : "hamtaaktuellaordinationer.artikelLista.forskrivningsratter",
      "short" : "forskrivningsratter",
      "definition" : "Lista med förskrivningsrätter för artikeln. Använder koder enligt NPL.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken",
      "path" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken",
      "short" : "forskrivningsrattsyrken",
      "definition" : "Lista med yrken som har förskrivningsrätt för artikeln. Listan utvinns ur förskrivningsrättskoderna, översätts till tvåställiga yrkeskoder och klartexter. Varje yrke finns max en gång i listan.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKod",
      "path" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKod",
      "short" : "yrkesKod",
      "definition" : "Yrkeskod för utfärdarkategori.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKodKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKodKlartext",
      "short" : "yrkesKodKlartext",
      "definition" : "Yrkeskod för utfärdarkategori, klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.historiskaVarunummer",
      "path" : "hamtaaktuellaordinationer.artikelLista.historiskaVarunummer",
      "short" : "historiskaVarunummer",
      "definition" : "Lista över eventuella tidigare varunummer. Används om en artikel har fått nytt varunummer.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.intressent",
      "path" : "hamtaaktuellaordinationer.artikelLista.intressent",
      "short" : "intressent",
      "definition" : "Intressent (företag) som är ansvarig för artikeln.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.lakemedel",
      "path" : "hamtaaktuellaordinationer.artikelLista.lakemedel",
      "short" : "lakemedel",
      "definition" : "Markering som visar om en artikel är ett läkemedel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.narkotikaklass",
      "path" : "hamtaaktuellaordinationer.artikelLista.narkotikaklass",
      "short" : "narkotikaklass",
      "definition" : "Koden för narkotikaklass enligt Läkemedelsverkets förteckning: - = Ospecificerad 0 = Ej narkotikaklassad 1 = II 2 = Narkotika förteckning IV/V 3 = III 4 = IV 5 = V 6 = I",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.narkotikaklassKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.narkotikaklassKlartext",
      "short" : "narkotikaklassKlartext",
      "definition" : "Narkotikaklass i klartext enligt Läkemedelsverket förteckning. Klartext enligt lexikontabell för narkotikaklass. Språk anges på svenska (sv).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.nplId",
      "path" : "hamtaaktuellaordinationer.artikelLista.nplId",
      "short" : "nplId",
      "definition" : "Produktid, antingen NPL-id eller SB-id. Unikt id för en läkemedelsprodukt. Alla förpackningar med samma styrka/form/tillverkare grupperas i samma produktid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.nplPackageId",
      "path" : "hamtaaktuellaordinationer.artikelLista.nplPackageId",
      "short" : "nplPackageId",
      "definition" : "Förpackningsid, antingen NPL-packid eller SB-packid. Unikt id för en läkemedelsartikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.prisperiodensvara",
      "path" : "hamtaaktuellaordinationer.artikelLista.prisperiodensvara",
      "short" : "prisperiodensvara",
      "definition" : "Markering som anger om artikeln är definierad som prisperiodens vara.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.produkttyp",
      "path" : "hamtaaktuellaordinationer.artikelLista.produkttyp",
      "short" : "produkttyp",
      "definition" : "Artikelns produkttyp som kod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.produkttypKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.produkttypKlartext",
      "short" : "produkttypKlartext",
      "definition" : "Artikelns produkttyp som klartext enligt lexikontabell för produkttyp. Språk anges på svenska (sv).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.registrerad",
      "path" : "hamtaaktuellaordinationer.artikelLista.registrerad",
      "short" : "registrerad",
      "definition" : "Anger om artikeln finns registrerad i VARA.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.sarskiltLakemedelKod",
      "path" : "hamtaaktuellaordinationer.artikelLista.sarskiltLakemedelKod",
      "short" : "sarskiltLakemedelKod",
      "definition" : "Kod som anger om särskild receptblankett krävs och om recept får itereras. 1 = Särskilt receptblankett krävs INTE. 2 = Särskild receptblankett krävs. Recepten får itereras. 3 = Särskild receptblankett krävs. Recepten får EJ itereras. 4 = Särskild receptblankett krävs. Recept för humant bruk får itereras. - = Ospecifierat",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.tillhandahalls",
      "path" : "hamtaaktuellaordinationer.artikelLista.tillhandahalls",
      "short" : "tillhandahalls",
      "definition" : "Markering som visar om artikeln marknadsförs på den svenska marknaden. Sant om både artikeln och produkten tillhandahålls.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.utbytbar",
      "path" : "hamtaaktuellaordinationer.artikelLista.utbytbar",
      "short" : "utbytbar",
      "definition" : "Markering som anger om artikeln är utbytbar enligt VARA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.varunummer",
      "path" : "hamtaaktuellaordinationer.artikelLista.varunummer",
      "short" : "varunummer",
      "definition" : "Nordiskt varunummer som är unikt för handelsvaror. För läkemedel kan dubbletter förekomma vid parallellimport.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.artikelExtension",
      "path" : "hamtaaktuellaordinationer.artikelLista.artikelExtension",
      "short" : "artikelExtension",
      "definition" : "artikelExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.artikelExtension.utlamnandebegransningKod",
      "path" : "hamtaaktuellaordinationer.artikelLista.artikelExtension.utlamnandebegransningKod",
      "short" : "utlamnandebegransningKod",
      "definition" : "Kod som anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.artikelExtension.utlamnandebegransningKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.artikelExtension.utlamnandebegransningKlartext",
      "short" : "utlamnandebegransningKlartext",
      "definition" : "Anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista",
      "short" : "forskrivarInfoLista",
      "definition" : "Lista med förskrivare som gjort förändringar i ordinationerna.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.efternamn",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.efternamn",
      "short" : "efternamn",
      "definition" : "Efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.fornamn",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.fornamn",
      "short" : "fornamn",
      "definition" : "Förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarkod.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.giltig",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.giltig",
      "short" : "giltig",
      "definition" : "Sann om förskrivaren är giltig.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.gruppforskrivarkodKlartext",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.gruppforskrivarkodKlartext",
      "short" : "gruppforskrivarkodKlartext",
      "definition" : "Gruppförskrivarkod klartext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista",
      "short" : "yrkesKodInfoLista",
      "definition" : "Lista av yrkeskodsinformation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.specialistKodKlartext",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.specialistKodKlartext",
      "short" : "specialistKodKlartext",
      "definition" : "Lista med specialistkod för utfärdarkategori, klartext.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.yrkesKodKlartext",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.yrkesKodKlartext",
      "short" : "yrkesKodKlartext",
      "definition" : "Yrkeskod för utfärdarkategori, klartext.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.inskrankt",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.inskrankt",
      "short" : "inskrankt",
      "definition" : "Sann om förskrivaren (per yrkeskod) har inskränkt förskrivningsrätt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista",
      "path" : "hamtaaktuellaordinationer.ordinationslista",
      "short" : "ordinationslista",
      "definition" : "Ordinationslista",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista",
      "short" : "dispenseradordinationLista",
      "definition" : "Lista med dispenserade ordinationer.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat",
      "short" : "affResultat",
      "definition" : "Information om aff-fel för ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista",
      "short" : "affFelLista",
      "definition" : "Lista med AFF-fel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "short" : "allvarlighetsgrad",
      "definition" : "Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.felkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.felkod",
      "short" : "felkod",
      "definition" : "Felkod enligt Automatisk format- och författningskontroll (AFF).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.felmeddelande",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.felmeddelande",
      "short" : "felmeddelande",
      "definition" : "Felmeddelande för AFF-fel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affStatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affStatus",
      "short" : "affStatus",
      "definition" : "Status för hela ordinationen eller uttaget. Allvarligaste AFF-felet styr status för hela ordinationen. 0 = Accepterad, 1 = Accepterad med varning, 2 = Avvisad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.avvisningsorsak",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.avvisningsorsak",
      "short" : "avvisningsorsak",
      "definition" : "Information om avvisningsorsak.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.kontrolltidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.kontrolltidpunkt",
      "short" : "kontrolltidpunkt",
      "definition" : "Datum och tidpunkt för utförd AFF-kontroll.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.kontrolltyp",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.kontrolltyp",
      "short" : "kontrolltyp",
      "definition" : "Typ av AFF-kontroll som har genomförts. 1 = AFF-PRENEF 2 = AFF-NEF 3 = AFF-REG 4 = AFF-KORR 5 = AFF-EXP 6 = AFF-KEX 7 = AFF-MAK 8 = AFF-NOD 9 = AFF-UTS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.akut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.akut",
      "short" : "akut",
      "definition" : "Markering att ordinationen är akut.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.apoteketsKommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.apoteketsKommentar",
      "short" : "apoteketsKommentar",
      "definition" : "Farmaceutens kommentar på ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation",
      "short" : "artikelinformation",
      "definition" : "Information om artikeln som ordinerats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.nplId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.nplId",
      "short" : "nplId",
      "definition" : "NPL-id alternativt SB-id som identifierar läkemedelprodukt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.nplPackId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.nplPackId",
      "short" : "nplPackId",
      "definition" : "NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.utbyttArtikel",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.utbyttArtikel",
      "short" : "utbyttArtikel",
      "definition" : "Markering om substitution har skett vid expedition. Kan endast sättas via uttag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.varunr",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.varunr",
      "short" : "varunr",
      "definition" : "Identitet på förskriven eller expedierad artikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation",
      "short" : "behandlingsinformation",
      "definition" : "behandlingsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.andamalKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.andamalKlartext",
      "short" : "andamalKlartext",
      "definition" : "Ändamål i klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.behandlingsslut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.behandlingsslut",
      "short" : "behandlingsslut",
      "definition" : "Datum om tidpunkt då behandlingen avslutas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.behandlingsstart",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.behandlingsstart",
      "short" : "behandlingsstart",
      "definition" : "Datum om och tidpunkt då behandlingen påbörjas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.doseringstext1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.doseringstext1",
      "short" : "doseringstext1",
      "definition" : "Doseringstext från förskrivare eller korrigerad av farmaceut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.doseringstext2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.doseringstext2",
      "short" : "doseringstext2",
      "definition" : "Kompletterande doseringstext för exempelvis extempore och licensläkemedel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.sprakkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.sprakkod",
      "short" : "sprakkod",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler",
      "short" : "dispenseringsregler",
      "definition" : "Dispenseringsregler",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.bytesEj",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.bytesEj",
      "short" : "bytesEj",
      "definition" : "Markering att farmaceut eller patient beslutat att ordinerad artikel ej får bytas ut. A=Apoteks-nej, P=Patient-nej. Får enbart anges för Ordinationstyp=D (Dispenserad ordination).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.ejTillatenSubstitution",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.ejTillatenSubstitution",
      "short" : "ejTillatenSubstitution",
      "definition" : "Markering om förskriven vara ej får bytas ut enligt förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.forman",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.forman",
      "short" : "forman",
      "definition" : "Förskrivarens uppgift om ordinationen ska innefattas i förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.insattningstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.insattningstidpunkt",
      "short" : "insattningstidpunkt",
      "definition" : "Datum när patienten skall påbörja intag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.sistaGiltighetsdag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.sistaGiltighetsdag",
      "short" : "sistaGiltighetsdag",
      "definition" : "Ordinationens sista giltighetsdag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema",
      "short" : "doseringsschema",
      "definition" : "Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Beskriver tid och mängd för intag av läkemedel.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "intagsmangd",
      "definition" : "Intagsmängd per tillfälle. Null hanteras som enligt ordination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Klockslag när patienten ska inta medicinering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.periodlangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.periodlangd",
      "short" : "periodlangd",
      "definition" : "Antal dagar som dosering skall gälla. Vid regelbunden dosering anges periodlängd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring",
      "short" : "forandring",
      "definition" : "Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.kommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forskrivarKommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forskrivarKommentar",
      "short" : "forskrivarKommentar",
      "definition" : "Förskrivarens kommentar till apoteket.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.harForandrats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.harForandrats",
      "short" : "harForandrats",
      "definition" : "Markering om ordinationen har ändrats av förskrivare eller farmaceut.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.historisktOrdinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.historisktOrdinationsId",
      "short" : "historisktOrdinationsId",
      "definition" : "Hänvisning till en eventuell historisk post av ordinationen. Alla historiska poster har tillståndsstatus Historik (211). En historisk post skapas exempelvis vid korrigering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.korrigerbar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.korrigerbar",
      "short" : "korrigerbar",
      "definition" : "Markering om ordinationen är korrigerbar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.leveransMeddelande",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.leveransMeddelande",
      "short" : "leveransMeddelande",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering",
      "short" : "makulering",
      "definition" : "Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.kommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.orsakskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.orsakskod",
      "short" : "orsakskod",
      "definition" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.orsakskodKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.orsakskodKlartext",
      "short" : "orsakskodKlartext",
      "definition" : "Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.paUppdragAv",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.paUppdragAv",
      "short" : "paUppdragAv",
      "definition" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.samtyckeMakulering",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.samtyckeMakulering",
      "short" : "samtyckeMakulering",
      "definition" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.notatOrdination",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.notatOrdination",
      "short" : "notatOrdination",
      "definition" : "Förskrivarens notat kopplat till en specifik ordination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsId",
      "short" : "ordinationsId",
      "definition" : "Ordinationens unika id som sätts av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation",
      "short" : "ordinationsinformation",
      "definition" : "Kompletterande information om ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Den som godkänt ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.lagringstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.lagringstidpunkt",
      "short" : "lagringstidpunkt",
      "definition" : "Datum och tid då ordinationen skapades i OR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.mottagandeApotek",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.mottagandeApotek",
      "short" : "mottagandeApotek",
      "definition" : "Apoteks-id (GLN) vid direktadressering av ordinationer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinationstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinationstidpunkt",
      "short" : "ordinationstidpunkt",
      "definition" : "Datum och eventuell tid för ordinationens utfärdande.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator",
      "short" : "ordinator",
      "definition" : "Den ordinatör som utfärdat ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "short" : "kontaktuppgift",
      "definition" : "Ordinatörens kontaktinformation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "short" : "adress1",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "short" : "adress2",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "short" : "postnummer",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "short" : "postort",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.utfardarkategori",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.utfardarkategori",
      "short" : "utfardarkategori",
      "definition" : "Förskrivarens utfärdarkategori enligt NEF. LAK = Läkare ATL = AT-läkare LMF = Läkare med förordnande TAN = Tandläkare VET = Veterinär TAH = Tandhygienist BMO = Barnmorska SSK = Sjuksköterska HJM = Hjälpmedelsförskrivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.originalformat",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.originalformat",
      "short" : "originalformat",
      "definition" : "Originalhandlingens ursprung. 0 = Pappersordination 1 = Telefonordination 2 = E-recept (NEF) (3 = Faxordination patient) 4 = Faxordination 5 = E-ordination 6 = Utskrivet från OR 7 = Utskriven E-ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.originalordinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.originalordinationsId",
      "short" : "originalordinationsId",
      "definition" : "Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient",
      "short" : "patient",
      "definition" : "Den patient som ordinationen gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.efternamn",
      "short" : "efternamn",
      "definition" : "Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum och kön för patienter som inte har fullständigt personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum för patient som saknar giltigt personnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "short" : "kon",
      "definition" : "Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fornamn",
      "short" : "fornamn",
      "definition" : "Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "short" : "kontaktuppgift",
      "definition" : "Kontaktuppgifter för patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "short" : "adress1",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "short" : "adress2",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "short" : "postnummer",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "short" : "postort",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.personnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.personnummer",
      "short" : "personnummer",
      "definition" : "Giltigt personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "short" : "registrerandeApotekspersonal",
      "definition" : "Den som registrerat ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.testindikator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.testindikator",
      "short" : "testindikator",
      "definition" : "Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus",
      "short" : "ordinationsstatus",
      "definition" : "ordinationsstatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.radversion",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.radversion",
      "short" : "radversion",
      "definition" : "Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.ordinationsstatusStatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.ordinationsstatusStatus",
      "short" : "ordinationsstatusStatus",
      "definition" : "Status för dosunderlag, ordination eller uttag. Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationstyp",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationstyp",
      "short" : "ordinationstyp",
      "definition" : "Typ av ordination. Anges enbart på ordinationer till dospatient. B = Helförpackning vid behov S = Helförpackning stående D = Dispenserad ordination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.radnummerNEF",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.radnummerNEF",
      "short" : "radnummerNEF",
      "definition" : "Unikt id för en rad i en receptsamling som skickas in via NEF. Radnumret är en kombination av rad inom receptsamlingen och eventuellt flerval. Id:t sätts av vårdsystemet. Radnummer utan flerval: 1,2,...n Radnummer med flerval: 1-1, 1-2, 1-n",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag",
      "short" : "senastDispenseratUttag",
      "definition" : "Senast dispenseratuttag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLId",
      "short" : "senastExpedieratNPLId",
      "definition" : "Senast expedierat NPL-id eller SB-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLPackId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLPackId",
      "short" : "senastExpedieratNPLPackId",
      "definition" : "Senast expedierat NPL Pack-id eller SB Pack-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratVarunr",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratVarunr",
      "short" : "senastExpedieratVarunr",
      "definition" : "Senast expedierat varunr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteExpedieradMangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteExpedieradMangd",
      "short" : "senasteExpedieradMangd",
      "definition" : "Senaste expedierad mängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteFormansval",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteFormansval",
      "short" : "senasteFormansval",
      "definition" : "Förmån som användes vid senaste expedition. R = Med förmån U = Utan förmån L = Livsmedel F = Kostnadsfritt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteUttagsdatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteUttagsdatum",
      "short" : "senasteUttagsdatum",
      "definition" : "Datum för senaste uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.tidigareOrdinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.tidigareOrdinationsId",
      "short" : "tidigareOrdinationsId",
      "definition" : "Koppling till föregående ordination vid ordinationsförändringar. Ordinationerna behandlas som olika, fristående ordinationer. Används exempelvis vid förlängningar eller för att koppla ihop en ordination som skrivits ut på receptoriginal och registrerats in i OR igen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning",
      "short" : "utsattning",
      "definition" : "Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.kommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.utsattningstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.utsattningstidpunkt",
      "short" : "utsattningstidpunkt",
      "definition" : "Datum när patienten skall avsluta intag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseradOrdinationExtension",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseradOrdinationExtension",
      "short" : "dispenseradOrdinationExtension",
      "definition" : "dispenseradOrdinationExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseradOrdinationExtension.sparradUppgiftKod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseradOrdinationExtension.sparradUppgiftKod",
      "short" : "sparradUppgiftKod",
      "definition" : "Kod för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseradOrdinationExtension.sparradUppgiftKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseradOrdinationExtension.sparradUppgiftKlartext",
      "short" : "sparradUppgiftKlartext",
      "definition" : "Klartext för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag",
      "short" : "dosunderlag",
      "definition" : "Dospatients dosunderlag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator",
      "short" : "dosordinator",
      "definition" : "Dosordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tid då Dosunderlaget skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosproducent",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosproducent",
      "short" : "dosproducent",
      "definition" : "Apoteks-id på dosproducent som patienten är kopplad till.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus",
      "short" : "dosunderlagsstatus",
      "definition" : "Tillståndsstatus för dosunderlag.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Förändrande apotekspersonal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.dosunderlagsstatusStatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.dosunderlagsstatusStatus",
      "short" : "dosunderlagsstatusStatus",
      "definition" : "Status för dosunderlag, ordination eller uttag. Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsversion",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsversion",
      "short" : "dosunderlagsversion",
      "definition" : "Ny Dosunderlagsversion skapas varje gång Dosunderlaget ändrar status till \"Ej godkänt\". Dosunderlagsversionen skrivs ut på dosreceptet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut",
      "short" : "godkannandeFarmaceut",
      "definition" : "Godkännande Farmaceut.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.godkannandetidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.godkannandetidpunkt",
      "short" : "godkannandetidpunkt",
      "definition" : "Datum och tid för dosunderlagets godkännande.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista",
      "short" : "helforpackningsordinationLista",
      "definition" : "Lista med helförpackningsordinationer.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat",
      "short" : "affResultat",
      "definition" : "Information om aff-fel för ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista",
      "short" : "affFelLista",
      "definition" : "Lista med AFF-fel",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "short" : "allvarlighetsgrad",
      "definition" : "Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.felkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.felkod",
      "short" : "felkod",
      "definition" : "Felkod enligt Automatisk format- och författningskontroll (AFF).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.felmeddelande",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.felmeddelande",
      "short" : "felmeddelande",
      "definition" : "Felmeddelande för AFF-fel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affStatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affStatus",
      "short" : "affStatus",
      "definition" : "Status för hela ordinationen eller uttaget. Allvarligaste AFF-felet styr status för hela ordinationen. 0 = Accepterad, 1 = Accepterad med varning, 2 = Avvisad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.avvisningsorsak",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.avvisningsorsak",
      "short" : "avvisningsorsak",
      "definition" : "Information om avvisningsorsak.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.kontrolltidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.kontrolltidpunkt",
      "short" : "kontrolltidpunkt",
      "definition" : "Datum och tidpunkt för utförd AFF-kontroll.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.kontrolltyp",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.kontrolltyp",
      "short" : "kontrolltyp",
      "definition" : "Typ av AFF-kontroll som har genomförts. 1 = AFF-PRENEF 2 = AFF-NEF 3 = AFF-REG 4 = AFF-KORR 5 = AFF-EXP 6 = AFF-KEX 7 = AFF-MAK 8 = AFF-NOD 9 = AFF-UTS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.apoteketsKommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.apoteketsKommentar",
      "short" : "apoteketsKommentar",
      "definition" : "Farmaceutens kommentar på ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation",
      "short" : "artikelinformation",
      "definition" : "Information om artikeln som ordinerats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.nplId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.nplId",
      "short" : "nplId",
      "definition" : "NPL-id alternativt SB-id som identifierar läkemedelprodukt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.nplPackId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.nplPackId",
      "short" : "nplPackId",
      "definition" : "NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.utbyttArtikel",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.utbyttArtikel",
      "short" : "utbyttArtikel",
      "definition" : "Markering om substitution har skett vid expedition. Kan endast sättas via uttag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.varunr",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.varunr",
      "short" : "varunr",
      "definition" : "Identitet på förskriven eller expedierad artikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation",
      "short" : "behandlingsinformation",
      "definition" : "behandlingsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.andamalKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.andamalKlartext",
      "short" : "andamalKlartext",
      "definition" : "Ändamål i klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.behandlingsslut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.behandlingsslut",
      "short" : "behandlingsslut",
      "definition" : "Datum om tidpunkt då behandlingen avslutas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.behandlingsstart",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.behandlingsstart",
      "short" : "behandlingsstart",
      "definition" : "Datum om och tidpunkt då behandlingen påbörjas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.doseringstext1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.doseringstext1",
      "short" : "doseringstext1",
      "definition" : "Doseringstext från förskrivare eller korrigerad av farmaceut",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.doseringstext2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.doseringstext2",
      "short" : "doseringstext2",
      "definition" : "Kompletterande doseringstext för exempelvis extempore och licensläkemedel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.sprakkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.sprakkod",
      "short" : "sprakkod",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema",
      "short" : "doseringsschema",
      "definition" : "Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Beskriver tid och mängd för intag av läkemedel.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "intagsmangd",
      "definition" : "Intagsmängd per tillfälle. Null hanteras som enligt ordination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "intagstillfalle",
      "definition" : "Klockslag när patienten ska inta medicinering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.periodlangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.periodlangd",
      "short" : "periodlangd",
      "definition" : "Antal dagar som dosering skall gälla. Vid regelbunden dosering anges periodlängd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring",
      "short" : "forandring",
      "definition" : "Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.kommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forskrivarKommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forskrivarKommentar",
      "short" : "forskrivarKommentar",
      "definition" : "Förskrivarens kommentar till apoteket.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.harForandrats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.harForandrats",
      "short" : "harForandrats",
      "definition" : "Markering om ordinationen har ändrats av förskrivare eller farmaceut.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler",
      "short" : "helforpackningsregler",
      "definition" : "helforpackningsregler",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.ejTillatenSubstitution",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.ejTillatenSubstitution",
      "short" : "ejTillatenSubstitution",
      "definition" : "Markering om förskriven vara ej får bytas ut enligt förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forman",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forman",
      "short" : "forman",
      "definition" : "Förskrivarens uppgift om ordinationen ska innefattas i förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forskrivetAntalUttag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forskrivetAntalUttag",
      "short" : "forskrivetAntalUttag",
      "definition" : "Antal tillåtna uttag på ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forstaUttagFore",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forstaUttagFore",
      "short" : "forstaUttagFore",
      "definition" : "Datum inom vilket första uttag av läkemedel måste göras. Sker inte någon expedition på receptet innan detta datum sätts hela ordinationen till utgången.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.insattningstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.insattningstidpunkt",
      "short" : "insattningstidpunkt",
      "definition" : "Datum när patienten skall påbörja intag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall",
      "short" : "intervall",
      "definition" : "Absolut expeditionsintervall.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall.expeditionsintervall",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall.expeditionsintervall",
      "short" : "expeditionsintervall",
      "definition" : "Absolut expeditionsintervall. Av förskrivaren angiven kortaste tid mellan två expeditioner.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall.intervallenhet",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall.intervallenhet",
      "short" : "intervallenhet",
      "definition" : "Enhet för det absoluta expeditionsintervallet. Kan anges i dagar, veckor eller månader. Mn = Månader V = Veckor Dg = Dagar Obligatorisk parameter om Expeditionsintervall anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.resterandeAntalUttag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.resterandeAntalUttag",
      "short" : "resterandeAntalUttag",
      "definition" : "Kvarvarande antal uttag på ordinationen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.sistaGiltighetsdag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.sistaGiltighetsdag",
      "short" : "sistaGiltighetsdag",
      "definition" : "Ordinationens sista giltighetsdag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.slutexpedierad",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.slutexpedierad",
      "short" : "slutexpedierad",
      "definition" : "Markering om farmaceut anser att ordinationen är slutexpedierad. Används då kvarvarande mängd är minde än minsta förpackningsstorlek för aktuell artikel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.slutexpedieradAvFarmaceut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.slutexpedieradAvFarmaceut",
      "short" : "slutexpedieradAvFarmaceut",
      "definition" : "Farmaceut har markerat att ordinationen är slutexpedierad.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.historisktOrdinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.historisktOrdinationsId",
      "short" : "historisktOrdinationsId",
      "definition" : "Hänvisning till en eventuell historisk post av ordinationen. Alla historiska poster har tillståndsstatus Historik (211). En historisk post skapas exempelvis vid korrigering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.korrigerbar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.korrigerbar",
      "short" : "korrigerbar",
      "definition" : "Markering om ordinationen är korrigerbar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.leveransMeddelande",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.leveransMeddelande",
      "short" : "leveransMeddelande",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering",
      "short" : "makulering",
      "definition" : "Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.kommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.orsakskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.orsakskod",
      "short" : "orsakskod",
      "definition" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.orsakskodKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.orsakskodKlartext",
      "short" : "orsakskodKlartext",
      "definition" : "Orsakskoder vid makulering: 1 = Fel patient. 2 = Fel läkemedel/vara/ styrka/ändamål. Patienten informerad. 3 = Utsatt lm/Inaktuell medicinering. Patienten informerad. Gäller ej dospatienter då utsättning skall användas. 4 = Annan orsak. Patienten informerad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.paUppdragAv",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.paUppdragAv",
      "short" : "paUppdragAv",
      "definition" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.samtyckeMakulering",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.samtyckeMakulering",
      "short" : "samtyckeMakulering",
      "definition" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation",
      "short" : "mangdinformation",
      "definition" : "mangdinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.antalForpackningar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.antalForpackningar",
      "short" : "antalForpackningar",
      "definition" : "Antal förpackningar per uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.ingenDygnsdos",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.ingenDygnsdos",
      "short" : "ingenDygnsdos",
      "definition" : "Markering att dygnsdos inte kan anges. Exempelvis vid ordination av kräm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.maxDygnsdos",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.maxDygnsdos",
      "short" : "maxDygnsdos",
      "definition" : "Maximal mängd läkemedel som får förbrukas per dygn enligt doseringsschema eller doseringsanvisning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.maxVeckodos",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.maxVeckodos",
      "short" : "maxVeckodos",
      "definition" : "Maximal mängd läkemedel som får förbrukas per vecka enligt doseringsschema eller doseringsanvisning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.startforpackning",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.startforpackning",
      "short" : "startforpackning",
      "definition" : "Anger om startförpackning ska expedieras vid första uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.totalmangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.totalmangd",
      "short" : "totalmangd",
      "definition" : "Förskriven totalmängd.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.totalmangdKvar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.totalmangdKvar",
      "short" : "totalmangdKvar",
      "definition" : "Resterande mängd som finns kvar på receptet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.notatOrdination",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.notatOrdination",
      "short" : "notatOrdination",
      "definition" : "Förskrivarens notat kopplat till en specifik ordination.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsId",
      "short" : "ordinationsId",
      "definition" : "Ordinationens unika id som sätts av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation",
      "short" : "ordinationsinformation",
      "definition" : "Kompletterande information om ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Den som godkänt ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.lagringstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.lagringstidpunkt",
      "short" : "lagringstidpunkt",
      "definition" : "Datum och tid då ordinationen skapades i OR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.mottagandeApotek",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.mottagandeApotek",
      "short" : "mottagandeApotek",
      "definition" : "Apoteks-id (GLN) vid direktadressering av ordinationer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinationstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinationstidpunkt",
      "short" : "ordinationstidpunkt",
      "definition" : "Datum och eventuell tid för ordinationens utfärdande.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator",
      "short" : "ordinator",
      "definition" : "Den ordinatör som utfärdat ordinationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "short" : "kontaktuppgift",
      "definition" : "Ordinatörens kontaktinformation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "short" : "adress1",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "short" : "adress2",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "short" : "postnummer",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "short" : "postort",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.utfardarkategori",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.utfardarkategori",
      "short" : "utfardarkategori",
      "definition" : "Förskrivarens utfärdarkategori enligt NEF. LAK = Läkare ATL = AT-läkare LMF = Läkare med förordnande TAN = Tandläkare VET = Veterinär TAH = Tandhygienist BMO = Barnmorska SSK = Sjuksköterska HJM = Hjälpmedelsförskrivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.originalformat",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.originalformat",
      "short" : "originalformat",
      "definition" : "Originalhandlingens ursprung. 0 = Pappersordination 1 = Telefonordination 2 = E-recept (NEF) (3 = Faxordination patient) 4 = Faxordination 5 = E-ordination 6 = Utskrivet från OR 7 = Utskriven E-ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.originalordinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.originalordinationsId",
      "short" : "originalordinationsId",
      "definition" : "Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient",
      "short" : "patient",
      "definition" : "Den patient som ordinationen gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.efternamn",
      "short" : "efternamn",
      "definition" : "Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum och kön för patienter som inte har fullständigt personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Födelsedatum för patient som saknar giltigt personnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "short" : "kon",
      "definition" : "Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fornamn",
      "short" : "fornamn",
      "definition" : "Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "short" : "kontaktuppgift",
      "definition" : "Kontaktuppgifter för patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "short" : "adress1",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "short" : "adress2",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "short" : "postnummer",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "short" : "postort",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "short" : "telefonnummer1",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "short" : "telefonnummer2",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.personnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.personnummer",
      "short" : "personnummer",
      "definition" : "Giltigt personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "short" : "registrerandeApotekspersonal",
      "definition" : "Den som registrerat ordinationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.testindikator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.testindikator",
      "short" : "testindikator",
      "definition" : "Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus",
      "short" : "ordinationsstatus",
      "definition" : "ordinationsstatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.radversion",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.radversion",
      "short" : "radversion",
      "definition" : "Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.ordinationsstatusStatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.ordinationsstatusStatus",
      "short" : "ordinationsstatusStatus",
      "definition" : "Status för dosunderlag, ordination eller uttag. Heter status i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationstyp",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationstyp",
      "short" : "ordinationstyp",
      "definition" : "Typ av ordination. Anges enbart på ordinationer till dospatient. B = Helförpackning vid behov S = Helförpackning stående D = Dispenserad ordination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.radnummerNEF",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.radnummerNEF",
      "short" : "radnummerNEF",
      "definition" : "Unikt id för en rad i en receptsamling som skickas in via NEF. Radnumret är en kombination av rad inom receptsamlingen och eventuellt flerval. Id:t sätts av vårdsystemet. Radnummer utan flerval: 1,2,...n Radnummer med flerval: 1-1, 1-2, 1-n",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag",
      "short" : "senasteHelforpackningsuttag",
      "definition" : "senasteHelforpackningsuttag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.nastaUttagInomFormanen",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.nastaUttagInomFormanen",
      "short" : "nastaUttagInomFormanen",
      "definition" : "Datum för nästa tillåtna uttag inom förmånen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLId",
      "short" : "senastExpedieratNPLId",
      "definition" : "Senast expedierat NPL-id eller SB-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLPackId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLPackId",
      "short" : "senastExpedieratNPLPackId",
      "definition" : "Senast expedierat NPL Pack-id eller SB Pack-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratVarunr",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratVarunr",
      "short" : "senastExpedieratVarunr",
      "definition" : "Senast expedierat varunr",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteExpedieradMangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteExpedieradMangd",
      "short" : "senasteExpedieradMangd",
      "definition" : "Senaste expedierad mängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteFormansval",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteFormansval",
      "short" : "senasteFormansval",
      "definition" : "Förmån som användes vid senaste expedition. U = Utan förmån R = Med förmån L = Livsmedel F = Kostnadsfritt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagInomFormanen",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagInomFormanen",
      "short" : "senasteUttagInomFormanen",
      "definition" : "Datum för senaste uttag inom förmånen enligt förmånsreglerna.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagsdatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagsdatum",
      "short" : "senasteUttagsdatum",
      "definition" : "Datum för senaste uttag",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.tidigareOrdinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.tidigareOrdinationsId",
      "short" : "tidigareOrdinationsId",
      "definition" : "Koppling till föregående ordination vid ordinationsförändringar. Ordinationerna behandlas som olika, fristående ordinationer. Används exempelvis vid förlängningar eller för att koppla ihop en ordination som skrivits ut på receptoriginal och registrerats in i OR igen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning",
      "short" : "utsattning",
      "definition" : "Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal",
      "short" : "apotekspersonal",
      "definition" : "Apotekspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.apoteksId",
      "short" : "apoteksId",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator",
      "short" : "forandrandeOrdinator",
      "definition" : "Förandrande Ordinatör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "short" : "befattningskod",
      "definition" : "Användarens befattningskod enligt HSA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "short" : "efternamn",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "short" : "fornamn",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "Förskrivarens individuella 7-ställiga legitimationskod eller förskrivarens gruppförskrivarkod då individuell kod saknas. Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.legitimationskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "Förskrivares 7-ställiga förskrivarkod alternativt legitimerad användares 6-ställiga legitimationskod enligt Socialstyrelsen. Obligatorisk för gruppförskrivare (ej läkare) och för farmaceuter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator",
      "short" : "administrator",
      "definition" : "Administratör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.fornamn",
      "short" : "fornamn",
      "definition" : "Administratörens förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.efternamn",
      "short" : "efternamn",
      "definition" : "Administratörens efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.arbetsplats",
      "short" : "arbetsplats",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.kommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar vid förändring, utsättning eller makulering av ordination. Obligatorisk parameter utom vid makulering med orsakskod annan än 4.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.tidpunkt",
      "short" : "tidpunkt",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.typ",
      "short" : "typ",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.utsattningstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.utsattningstidpunkt",
      "short" : "utsattningstidpunkt",
      "definition" : "Datum när patienten skall avsluta intag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsordinationExtension",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsordinationExtension",
      "short" : "helforpackningsordinationExtension",
      "definition" : "helforpackningsordinationExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsordinationExtension.sparradUppgiftKod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsordinationExtension.sparradUppgiftKod",
      "short" : "sparradUppgiftKod",
      "definition" : "Kod för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsordinationExtension.sparradUppgiftKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsordinationExtension.sparradUppgiftKlartext",
      "short" : "sparradUppgiftKlartext",
      "definition" : "Klartext för spärrad uppgift i receptet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.personnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.personnummer",
      "short" : "personnummer",
      "definition" : "Patientens personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.underlagsversion",
      "path" : "hamtaaktuellaordinationer.ordinationslista.underlagsversion",
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
