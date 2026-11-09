# HamtaAktuellaOrdinationer — Response - se.apotekensservice: or — Ordinationer v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaAktuellaOrdinationer — Response**

## Logical Model: HamtaAktuellaOrdinationer — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaaktuellaordinationer | *Version*:5.2 |
| Active as of 2026-11-09 | *Computable Name*:HamtaAktuellaOrdinationer |
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
  "version" : "5.2",
  "name" : "HamtaAktuellaOrdinationer",
  "title" : "HamtaAktuellaOrdinationer — Response",
  "status" : "active",
  "date" : "2026-11-09T03:48:54+00:00",
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
      "short" : "ApoteksinformationResponse",
      "definition" : "Lista med apotek därifrån förändringar eller skapande utförts på/av ordinationerna.",
      "comment" : "TKB-fält: `apoteksInformationLista` (`ApoteksinformationResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.aktorsnamn",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.aktorsnamn",
      "short" : "Officiellt namn för aktör",
      "definition" : "Officiellt namn för aktör",
      "comment" : "TKB-fält: `../aktorsnamn` (`AktorsnamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.aktorsorgnr",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.aktorsorgnr",
      "short" : "Aktörens organisationsnummer.",
      "definition" : "Aktörens organisationsnummer.",
      "comment" : "TKB-fält: `../aktorsorgnr` (`OrgNrType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.allmantelefon",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.allmantelefon",
      "short" : "Telefonnummer för receptexpedition",
      "definition" : "Telefonnummer för receptexpedition",
      "comment" : "TKB-fält: `../allmantelefon` (`TelefonnummerBasType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.besoksadress",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.besoksadress",
      "short" : "Expeditionsställets besöksadress",
      "definition" : "Expeditionsställets besöksadress",
      "comment" : "TKB-fält: `../besoksadress` (`BesoksadressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.eReceptDjur",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.eReceptDjur",
      "short" : "Anger om apoteket expedierar erecept för djur",
      "definition" : "Anger om apoteket expedierar erecept för djur",
      "comment" : "TKB-fält: `../eReceptDjur` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.fax",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.fax",
      "short" : "Expeditionsställets faxnummer",
      "definition" : "Expeditionsställets faxnummer",
      "comment" : "TKB-fält: `../fax` (`FaxType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.glnKod",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.glnKod",
      "short" : "Expeditionsställets GLN-kod",
      "definition" : "Expeditionsställets GLN-kod",
      "comment" : "TKB-fält: `../glnKod` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.huvudtypkod",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.huvudtypkod",
      "short" : "Kod som beskriver huvudverksamheten för expeditionsstället",
      "definition" : "Kod som beskriver huvudverksamheten för expeditionsstället",
      "comment" : "TKB-fält: `../huvudtypkod` (`ExpeditionsstalleHuvudtypkodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.namn",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.namn",
      "short" : "Expeditionsställets officiella namn",
      "definition" : "Expeditionsställets officiella namn",
      "comment" : "TKB-fält: `../namn` (`ExpeditionsstalleNamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.ort",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.ort",
      "short" : "Expeditionsställets besöksort",
      "definition" : "Expeditionsställets besöksort",
      "comment" : "TKB-fält: `../ort` (`ExpeditionsstalleOrtType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.registrerad",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.registrerad",
      "short" : "Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden.",
      "definition" : "Anger om apoteket finns registrerat i EXPO. Om false så saknar alla fält utom glnKod värden.",
      "comment" : "TKB-fält: `../registrerad` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.slutdatum",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.slutdatum",
      "short" : "Datum för stängning av verksamhet",
      "definition" : "Datum för stängning av verksamhet",
      "comment" : "TKB-fält: `../slutdatum` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.apoteksInformationLista.startdatum",
      "path" : "hamtaaktuellaordinationer.apoteksInformationLista.startdatum",
      "short" : "Datum för start av verksamhet",
      "definition" : "Datum för start av verksamhet",
      "comment" : "TKB-fält: `../startdatum` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista",
      "short" : "ArbetsplatsInfoResponse",
      "definition" : "Lista med arbetsplatser därifrån förändringar utförts på ordinationerna.",
      "comment" : "TKB-fält: `arbetsplatsInfoLista` (`ArbetsplatsInfoResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsNamn",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsNamn",
      "short" : "ArbetsplatsNamn",
      "definition" : "ArbetsplatsNamn",
      "comment" : "TKB-fält: `../arbetsplatsNamn` (`ArbetsplatsNamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsOrt",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatsOrt",
      "short" : "ArbetsplatsOrt",
      "definition" : "ArbetsplatsOrt",
      "comment" : "TKB-fält: `../arbetsplatsOrt` (`ArbetsplatsOrtType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.arbetsplatskod",
      "short" : "Arbetsplatskod",
      "definition" : "Arbetsplatskod",
      "comment" : "TKB-fält: `../arbetsplatskod` (`ArbetsplatskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.faxnummer",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.faxnummer",
      "short" : "Faxnummer",
      "definition" : "Faxnummer",
      "comment" : "TKB-fält: `../faxnummer` (`FaxType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.giltigSlut",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.giltigSlut",
      "short" : "Slutdatum för arbetsplatsens giltighetsperiod.",
      "definition" : "Slutdatum för arbetsplatsens giltighetsperiod.",
      "comment" : "TKB-fält: `../giltigSlut` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.giltigStart",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.giltigStart",
      "short" : "Startdatum för arbetsplatsens giltighetsperiod.",
      "definition" : "Startdatum för arbetsplatsens giltighetsperiod.",
      "comment" : "TKB-fält: `../giltigStart` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.postadress",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.postadress",
      "short" : "Postadress",
      "definition" : "Postadress",
      "comment" : "TKB-fält: `../postadress` (`PostadressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.postnummer",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.postnummer",
      "short" : "Postnummer",
      "definition" : "Postnummer",
      "comment" : "TKB-fält: `../postnummer` (`PostnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.registrerad",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.registrerad",
      "short" : "Anger om arbetsplatsen finns registrerad i ARKO. Om false så saknar alla fält utom arbetsplatskod värden.",
      "definition" : "Anger om arbetsplatsen finns registrerad i ARKO. Om false så saknar alla fält utom arbetsplatskod värden.",
      "comment" : "TKB-fält: `../registrerad` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.telefonnummer1",
      "short" : "Telefonnummer 1",
      "definition" : "Telefonnummer 1",
      "comment" : "TKB-fält: `../telefonnummer1` (`TelefonnummerBasType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.arbetsplatsInfoLista.telefonnummer2",
      "short" : "Telefonnummer 2",
      "definition" : "Telefonnummer 2",
      "comment" : "TKB-fält: `../telefonnummer2` (`TelefonnummerBasType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista",
      "path" : "hamtaaktuellaordinationer.artikelLista",
      "short" : "ArtikelResponse",
      "definition" : "Lista med artikelinformation för de varor som ingår i ordinationerna.",
      "comment" : "TKB-fält: `artikelLista` (`ArtikelResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.alternativtAntalKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.alternativtAntalKlartext",
      "short" : "Sammanslagning av multiplar, antal och alternativ enhet. Om alternativ enhet saknas för artikeln är detta fält tomt.",
      "definition" : "Sammanslagning av multiplar, antal och alternativ enhet. Om alternativ enhet saknas för artikeln är detta fält tomt.",
      "comment" : "TKB-fält: `../alternativtAntalKlartext` (`AlternativtAntalKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.antalKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.antalKlartext",
      "short" : "Sammanslagning av multiplar, antal och enhet på storleken.",
      "definition" : "Sammanslagning av multiplar, antal och enhet på storleken.",
      "comment" : "TKB-fält: `../antalKlartext` (`AntalKlartextType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../artikelbenamning` (`ArtikelbenamningType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.atcKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.atcKlartext",
      "short" : "ATC-kod i klartext enligt lexikontabell. Språk anges på svenska (sv).",
      "definition" : "ATC-kod i klartext enligt lexikontabell. Språk anges på svenska (sv).",
      "comment" : "TKB-fält: `../atcKlartext` (`AtcKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.atcKod",
      "path" : "hamtaaktuellaordinationer.artikelLista.atcKod",
      "short" : "ATC-kod",
      "definition" : "ATC-kod",
      "comment" : "TKB-fält: `../atcKod` (`AtcKodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.avregistreringsdatum",
      "path" : "hamtaaktuellaordinationer.artikelLista.avregistreringsdatum",
      "short" : "Datum då artikeln blev avregistrerad.",
      "definition" : "Datum då artikeln blev avregistrerad.",
      "comment" : "TKB-fält: `../avregistreringsdatum` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.bestallningsstoppad",
      "path" : "hamtaaktuellaordinationer.artikelLista.bestallningsstoppad",
      "short" : "Markering om artikel enligt TLV är beställningsstoppad i gällande prisperiod.",
      "definition" : "Markering om artikel enligt TLV är beställningsstoppad i gällande prisperiod.",
      "comment" : "TKB-fält: `../bestallningsstoppad` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.foregaendePrisperiodensvara",
      "path" : "hamtaaktuellaordinationer.artikelLista.foregaendePrisperiodensvara",
      "short" : "Markering som anger om artikeln var definierad som föregående prisperiodens vara.",
      "definition" : "Markering som anger om artikeln var definierad som föregående prisperiodens vara.",
      "comment" : "TKB-fält: `../foregaendePrisperiodensvara` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.formansberattigad",
      "path" : "hamtaaktuellaordinationer.artikelLista.formansberattigad",
      "short" : "Markering som visar om artikeln är förmånsberättigad enligt VARA, vilket beslutas av TLV.",
      "definition" : "Markering som visar om artikeln är förmånsberättigad enligt VARA, vilket beslutas av TLV.",
      "comment" : "TKB-fält: `../formansberattigad` (`boolean`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../forpackningsenhet` (`ForpackningsenhetType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forpackningsinnehall",
      "path" : "hamtaaktuellaordinationer.artikelLista.forpackningsinnehall",
      "short" : "Beskrivning av förpackning, innehåll och antal.",
      "definition" : "Beskrivning av förpackning, innehåll och antal.",
      "comment" : "TKB-fält: `../forpackningsinnehall` (`ForpackningsinnehallType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forpackningsmangd",
      "path" : "hamtaaktuellaordinationer.artikelLista.forpackningsmangd",
      "short" : "Totala mängden i förpackningen. Returnerar den alternativa förpackningsmängden om sådan finns angiven för artikeln.",
      "definition" : "Totala mängden i förpackningen. Returnerar den alternativa förpackningsmängden om sådan finns angiven för artikeln.",
      "comment" : "TKB-fält: `../forpackningsmangd` (`ForpackningsmangdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forpackningstyp",
      "path" : "hamtaaktuellaordinationer.artikelLista.forpackningstyp",
      "short" : "Beskrivning av förpackningstyp för en artikel.",
      "definition" : "Beskrivning av förpackningstyp för en artikel.",
      "comment" : "TKB-fält: `../forpackningstyp` (`ForpackningstypType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../forsaljningsstoppad` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forskrivningsratter",
      "path" : "hamtaaktuellaordinationer.artikelLista.forskrivningsratter",
      "short" : "Lista med förskrivningsrätter för artikeln. Använder koder enligt NPL.",
      "definition" : "Lista med förskrivningsrätter för artikeln. Använder koder enligt NPL.",
      "comment" : "TKB-fält: `../forskrivningsratter` (`ForskrivningsratterType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken",
      "path" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken",
      "short" : "YrkesInfoResponse",
      "definition" : "Lista med yrken som har förskrivningsrätt för artikeln. Listan utvinns ur förskrivningsrättskoderna, översätts till tvåställiga yrkeskoder och klartexter. Varje yrke finns max en gång i listan.",
      "comment" : "TKB-fält: `../forskrivningsrattsyrken` (`YrkesInfoResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKod",
      "path" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKod",
      "short" : "Yrkeskod för utfärdarkategori.",
      "definition" : "Yrkeskod för utfärdarkategori.",
      "comment" : "TKB-fält: `../../yrkesKod` (`YrkeskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKodKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.forskrivningsrattsyrken.yrkesKodKlartext",
      "short" : "Yrkeskod för utfärdarkategori, klartext.",
      "definition" : "Yrkeskod för utfärdarkategori, klartext.",
      "comment" : "TKB-fält: `../../yrkesKodKlartext` (`YrkesKodKlartextType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.historiskaVarunummer",
      "path" : "hamtaaktuellaordinationer.artikelLista.historiskaVarunummer",
      "short" : "Lista över eventuella tidigare varunummer. Används om en artikel har fått nytt varunummer.",
      "definition" : "Lista över eventuella tidigare varunummer. Används om en artikel har fått nytt varunummer.",
      "comment" : "TKB-fält: `../historiskaVarunummer` (`VaruNrType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.intressent",
      "path" : "hamtaaktuellaordinationer.artikelLista.intressent",
      "short" : "Intressent (företag) som är ansvarig för artikeln.",
      "definition" : "Intressent (företag) som är ansvarig för artikeln.",
      "comment" : "TKB-fält: `../intressent` (`IntressentType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.lakemedel",
      "path" : "hamtaaktuellaordinationer.artikelLista.lakemedel",
      "short" : "Markering som visar om en artikel är ett läkemedel.",
      "definition" : "Markering som visar om en artikel är ett läkemedel.",
      "comment" : "TKB-fält: `../lakemedel` (`boolean`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../narkotikaklass` (`NarkotikaklassType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../narkotikaklassKlartext` (`NarkotikaklassKlartextType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../nplId` (`NplIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.nplPackageId",
      "path" : "hamtaaktuellaordinationer.artikelLista.nplPackageId",
      "short" : "Förpackningsid, antingen NPL-packid eller SB-packid. Unikt id för en läkemedelsartikel.",
      "definition" : "Förpackningsid, antingen NPL-packid eller SB-packid. Unikt id för en läkemedelsartikel.",
      "comment" : "TKB-fält: `../nplPackageId` (`NplPackIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.prisperiodensvara",
      "path" : "hamtaaktuellaordinationer.artikelLista.prisperiodensvara",
      "short" : "Markering som anger om artikeln är definierad som prisperiodens vara.",
      "definition" : "Markering som anger om artikeln är definierad som prisperiodens vara.",
      "comment" : "TKB-fält: `../prisperiodensvara` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.produkttyp",
      "path" : "hamtaaktuellaordinationer.artikelLista.produkttyp",
      "short" : "Artikelns produkttyp som kod.",
      "definition" : "Artikelns produkttyp som kod.",
      "comment" : "TKB-fält: `../produkttyp` (`ProdukttypType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.produkttypKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.produkttypKlartext",
      "short" : "Artikelns produkttyp som klartext enligt lexikontabell för produkttyp. Språk anges på svenska (sv).",
      "definition" : "Artikelns produkttyp som klartext enligt lexikontabell för produkttyp. Språk anges på svenska (sv).",
      "comment" : "TKB-fält: `../produkttypKlartext` (`ProdukttypKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.registrerad",
      "path" : "hamtaaktuellaordinationer.artikelLista.registrerad",
      "short" : "Anger om artikeln finns registrerad i VARA.",
      "definition" : "Anger om artikeln finns registrerad i VARA.",
      "comment" : "TKB-fält: `../registrerad` (`boolean`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../sarskiltLakemedelKod` (`SarskiltLakemedelKodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../tillhandahalls` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.utbytbar",
      "path" : "hamtaaktuellaordinationer.artikelLista.utbytbar",
      "short" : "Markering som anger om artikeln är utbytbar enligt VARA.",
      "definition" : "Markering som anger om artikeln är utbytbar enligt VARA.",
      "comment" : "TKB-fält: `../utbytbar` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.varunummer",
      "path" : "hamtaaktuellaordinationer.artikelLista.varunummer",
      "short" : "Nordiskt varunummer som är unikt för handelsvaror. För läkemedel kan dubbletter förekomma vid parallellimport.",
      "definition" : "Nordiskt varunummer som är unikt för handelsvaror. För läkemedel kan dubbletter förekomma vid parallellimport.",
      "comment" : "TKB-fält: `../varunummer` (`VaruNrType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.extension",
      "path" : "hamtaaktuellaordinationer.artikelLista.extension",
      "short" : "Extension2Type",
      "definition" : "extension",
      "comment" : "TKB-fält: `../extension` (`Extension2Type`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.extension.utlamnandebegransningKod",
      "path" : "hamtaaktuellaordinationer.artikelLista.extension.utlamnandebegransningKod",
      "short" : "utlamnandebegransningKod",
      "definition" : "Kod som anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens.",
      "comment" : "TKB-fält: `../../utlamnandebegransningKod` (`UtlamnandebegransningKodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.artikelLista.extension.utlamnandebegransningKlartext",
      "path" : "hamtaaktuellaordinationer.artikelLista.extension.utlamnandebegransningKlartext",
      "short" : "Anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens.",
      "definition" : "Anger om produkten får utlämnas från apotek endast om den har förskrivits av en läkare med viss specialistkompetens.",
      "comment" : "TKB-fält: `../../utlamnandebegransningKlartext` (`UtlamnandebegransningKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista",
      "short" : "ForskrivarinfoResponse",
      "definition" : "Lista med förskrivare som gjort förändringar i ordinationerna.",
      "comment" : "TKB-fält: `forskrivarInfoLista` (`ForskrivarinfoResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.efternamn",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.efternamn",
      "short" : "Efternamn",
      "definition" : "Efternamn",
      "comment" : "TKB-fält: `../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.fornamn",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.fornamn",
      "short" : "Förnamn",
      "definition" : "Förnamn",
      "comment" : "TKB-fält: `../fornamn` (`FornamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.forskrivarkod",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.forskrivarkod",
      "short" : "Förskrivarkod.",
      "definition" : "Förskrivarkod.",
      "comment" : "TKB-fält: `../forskrivarkod` (`ForskrivarkodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.giltig",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.giltig",
      "short" : "Sann om förskrivaren är giltig.",
      "definition" : "Sann om förskrivaren är giltig.",
      "comment" : "TKB-fält: `../giltig` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.gruppforskrivarkodKlartext",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.gruppforskrivarkodKlartext",
      "short" : "Gruppförskrivarkod klartext.",
      "definition" : "Gruppförskrivarkod klartext.",
      "comment" : "TKB-fält: `../gruppforskrivarkodKlartext` (`GruppforskrivarkodKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista",
      "short" : "YrkesKodInfoResponse",
      "definition" : "Lista av yrkeskodsinformation.",
      "comment" : "TKB-fält: `../yrkesKodInfoLista` (`YrkesKodInfoResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.specialistKodKlartext",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.specialistKodKlartext",
      "short" : "Lista med specialistkod för utfärdarkategori, klartext.",
      "definition" : "Lista med specialistkod för utfärdarkategori, klartext.",
      "comment" : "TKB-fält: `../../specialistKodKlartext` (`SpecialistKodKlartextType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.yrkesKodKlartext",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.yrkesKodKlartext",
      "short" : "Yrkeskod för utfärdarkategori, klartext.",
      "definition" : "Yrkeskod för utfärdarkategori, klartext.",
      "comment" : "TKB-fält: `../../yrkesKodKlartext` (`YrkesKodKlartextType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.inskrankt",
      "path" : "hamtaaktuellaordinationer.forskrivarInfoLista.yrkesKodInfoLista.inskrankt",
      "short" : "Sann om förskrivaren (per yrkeskod) har inskränkt förskrivningsrätt.",
      "definition" : "Sann om förskrivaren (per yrkeskod) har inskränkt förskrivningsrätt.",
      "comment" : "TKB-fält: `../../inskrankt` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista",
      "path" : "hamtaaktuellaordinationer.ordinationslista",
      "short" : "OrdinationslistaResponse",
      "definition" : "Ordinationslista",
      "comment" : "TKB-fält: `ordinationslista` (`OrdinationslistaResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista",
      "short" : "DispenseradOrdinationResponse",
      "definition" : "Lista med dispenserade ordinationer.",
      "comment" : "TKB-fält: `../dispenseradordinationLista` (`DispenseradOrdinationResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat",
      "short" : "AFFResultatResponse",
      "definition" : "Information om aff-fel för ordinationen.",
      "comment" : "TKB-fält: `../../affResultat` (`AFFResultatResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista",
      "short" : "AFFFelResponse",
      "definition" : "Lista med AFF-fel",
      "comment" : "TKB-fält: `../../../affFelLista` (`AFFFelResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "short" : "Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad.",
      "definition" : "Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad.",
      "comment" : "TKB-fält: `../../../../allvarlighetsgrad` (`AllvarlighetsgradType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.felkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.felkod",
      "short" : "Felkod enligt Automatisk format- och författningskontroll (AFF).",
      "definition" : "Felkod enligt Automatisk format- och författningskontroll (AFF).",
      "comment" : "TKB-fält: `../../../../felkod` (`AffFelkodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.felmeddelande",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.affFelLista.felmeddelande",
      "short" : "Felmeddelande för AFF-fel.",
      "definition" : "Felmeddelande för AFF-fel.",
      "comment" : "TKB-fält: `../../../../felmeddelande` (`AffFelmeddelandeType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../affStatus` (`AffStatusType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.avvisningsorsak",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.avvisningsorsak",
      "short" : "Information om avvisningsorsak.",
      "definition" : "Information om avvisningsorsak.",
      "comment" : "TKB-fält: `../../../avvisningsorsak` (`AvvisningType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.kontrolltidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.affResultat.kontrolltidpunkt",
      "short" : "Datum och tidpunkt för utförd AFF-kontroll.",
      "definition" : "Datum och tidpunkt för utförd AFF-kontroll.",
      "comment" : "TKB-fält: `../../../kontrolltidpunkt` (`dateTime`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../kontrolltyp` (`AffKontrolltypType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.akut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.akut",
      "short" : "Markering att ordinationen är akut.",
      "definition" : "Markering att ordinationen är akut.",
      "comment" : "TKB-fält: `../../akut` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.apoteketsKommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.apoteketsKommentar",
      "short" : "Farmaceutens kommentar på ordinationen.",
      "definition" : "Farmaceutens kommentar på ordinationen.",
      "comment" : "TKB-fält: `../../apoteketsKommentar` (`ApoteketsKommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation",
      "short" : "ArtikelinformationResponse",
      "definition" : "Information om artikeln som ordinerats.",
      "comment" : "TKB-fält: `../../artikelinformation` (`ArtikelinformationResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.nplId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.nplId",
      "short" : "NPL-id alternativt SB-id som identifierar läkemedelprodukt.",
      "definition" : "NPL-id alternativt SB-id som identifierar läkemedelprodukt.",
      "comment" : "TKB-fält: `../../../nplId` (`NplIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.nplPackId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.nplPackId",
      "short" : "NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.",
      "definition" : "NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.",
      "comment" : "TKB-fält: `../../../nplPackId` (`NplPackIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.utbyttArtikel",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.utbyttArtikel",
      "short" : "Markering om substitution har skett vid expedition. Kan endast sättas via uttag.",
      "definition" : "Markering om substitution har skett vid expedition. Kan endast sättas via uttag.",
      "comment" : "TKB-fält: `../../../utbyttArtikel` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.varunr",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.artikelinformation.varunr",
      "short" : "Identitet på förskriven eller expedierad artikel.",
      "definition" : "Identitet på förskriven eller expedierad artikel.",
      "comment" : "TKB-fält: `../../../varunr` (`VaruNrType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation",
      "short" : "BehandlingsinformationResponse",
      "definition" : "behandlingsinformation",
      "comment" : "TKB-fält: `../../behandlingsinformation` (`BehandlingsinformationResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.andamalKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.andamalKlartext",
      "short" : "Ändamål i klartext",
      "definition" : "Ändamål i klartext",
      "comment" : "TKB-fält: `../../../andamalKlartext` (`AndamalKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.behandlingsslut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.behandlingsslut",
      "short" : "Datum om tidpunkt då behandlingen avslutas.",
      "definition" : "Datum om tidpunkt då behandlingen avslutas.",
      "comment" : "TKB-fält: `../../../behandlingsslut` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.behandlingsstart",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.behandlingsstart",
      "short" : "Datum om och tidpunkt då behandlingen påbörjas.",
      "definition" : "Datum om och tidpunkt då behandlingen påbörjas.",
      "comment" : "TKB-fält: `../../../behandlingsstart` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.doseringstext1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.doseringstext1",
      "short" : "Doseringstext från förskrivare eller korrigerad av farmaceut",
      "definition" : "Doseringstext från förskrivare eller korrigerad av farmaceut",
      "comment" : "TKB-fält: `../../../doseringstext1` (`DoseringstextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.doseringstext2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.doseringstext2",
      "short" : "Kompletterande doseringstext för exempelvis extempore och licensläkemedel.",
      "definition" : "Kompletterande doseringstext för exempelvis extempore och licensläkemedel.",
      "comment" : "TKB-fält: `../../../doseringstext2` (`DoseringstextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.sprakkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.behandlingsinformation.sprakkod",
      "short" : "Främmande språk för doseringstext enligt ISO-639-1",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "comment" : "TKB-fält: `../../../sprakkod` (`SprakkodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler",
      "short" : "DispenseringsreglerResponse",
      "definition" : "Dispenseringsregler",
      "comment" : "TKB-fält: `../../dispenseringsregler` (`DispenseringsreglerResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.bytesEj",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.bytesEj",
      "short" : "bytesEj",
      "definition" : "Markering att farmaceut eller patient beslutat att ordinerad artikel ej får bytas ut. A=Apoteks-nej, P=Patient-nej. Får enbart anges för Ordinationstyp=D (Dispenserad ordination).",
      "comment" : "TKB-fält: `../../../bytesEj` (`DispenseringsreglerBytesEjType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.ejTillatenSubstitution",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.ejTillatenSubstitution",
      "short" : "Markering om förskriven vara ej får bytas ut enligt förskrivare.",
      "definition" : "Markering om förskriven vara ej får bytas ut enligt förskrivare.",
      "comment" : "TKB-fält: `../../../ejTillatenSubstitution` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.forman",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.forman",
      "short" : "Förskrivarens uppgift om ordinationen ska innefattas i förmånen.",
      "definition" : "Förskrivarens uppgift om ordinationen ska innefattas i förmånen.",
      "comment" : "TKB-fält: `../../../forman` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.insattningstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.insattningstidpunkt",
      "short" : "Datum när patienten skall påbörja intag.",
      "definition" : "Datum när patienten skall påbörja intag.",
      "comment" : "TKB-fält: `../../../insattningstidpunkt` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.sistaGiltighetsdag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.dispenseringsregler.sistaGiltighetsdag",
      "short" : "Ordinationens sista giltighetsdag.",
      "definition" : "Ordinationens sista giltighetsdag.",
      "comment" : "TKB-fält: `../../../sistaGiltighetsdag` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema",
      "short" : "DoseringsschemaResponse",
      "definition" : "Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov.",
      "comment" : "TKB-fält: `../../doseringsschema` (`DoseringsschemaResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle",
      "short" : "IntagstillfalleResponse",
      "definition" : "Beskriver tid och mängd för intag av läkemedel.",
      "comment" : "TKB-fält: `../../../intagstillfalle` (`IntagstillfalleResponse`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3.",
      "comment" : "TKB-fält: `../../../../dagIPeriod` (`DagIPeriodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "Intagsmängd per tillfälle. Null hanteras som enligt ordination.",
      "definition" : "Intagsmängd per tillfälle. Null hanteras som enligt ordination.",
      "comment" : "TKB-fält: `../../../../intagsmangd` (`IntagsmangdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "Klockslag när patienten ska inta medicinering.",
      "definition" : "Klockslag när patienten ska inta medicinering.",
      "comment" : "TKB-fält: `../../../../intagstillfalle` (`IntagstillfalleType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../periodlangd` (`PeriodlangdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring",
      "short" : "ForandringResponse",
      "definition" : "Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "comment" : "TKB-fält: `../../forandring` (`ForandringResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Apotekspersonal.",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator",
      "short" : "ForandrandeOrdinatorResponse",
      "definition" : "Förandrande Ordinatör.",
      "comment" : "TKB-fält: `../../../forandrandeOrdinator` (`ForandrandeOrdinatorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../../arbetsplatskod` (`ArbetsplatskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator",
      "short" : "AdministratorResponse",
      "definition" : "Administratör.",
      "comment" : "TKB-fält: `../../../administrator` (`AdministratorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.fornamn",
      "short" : "Administratörens förnamn.",
      "definition" : "Administratörens förnamn.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.efternamn",
      "short" : "Administratörens efternamn.",
      "definition" : "Administratörens efternamn.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.anvandarId",
      "short" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.administrator.arbetsplats",
      "short" : "Unik kod för identifiering av administratörens arbetsplats.",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "comment" : "TKB-fält: `../../../../arbetsplats` (`ArbetsplatsType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../kommentar` (`KommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.tidpunkt",
      "short" : "Datum och tidpunkt då ny historikpost skapades.",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forandring.typ",
      "short" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "comment" : "TKB-fält: `../../../typ` (`HistorikSkapandeTypType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forskrivarKommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.forskrivarKommentar",
      "short" : "Förskrivarens kommentar till apoteket.",
      "definition" : "Förskrivarens kommentar till apoteket.",
      "comment" : "TKB-fält: `../../forskrivarKommentar` (`EtikettTextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.harForandrats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.harForandrats",
      "short" : "Markering om ordinationen har ändrats av förskrivare eller farmaceut.",
      "definition" : "Markering om ordinationen har ändrats av förskrivare eller farmaceut.",
      "comment" : "TKB-fält: `../../harForandrats` (`boolean`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../historisktOrdinationsId` (`OrdinationsIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.korrigerbar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.korrigerbar",
      "short" : "Markering om ordinationen är korrigerbar.",
      "definition" : "Markering om ordinationen är korrigerbar.",
      "comment" : "TKB-fält: `../../korrigerbar` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.leveransMeddelande",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.leveransMeddelande",
      "short" : "Leveransinformation om ordinationen skickas till ett ombud.",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud.",
      "comment" : "TKB-fält: `../../leveransMeddelande` (`EtikettTextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering",
      "short" : "MakuleringResponse",
      "definition" : "Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "comment" : "TKB-fält: `../../makulering` (`MakuleringResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Apotekspersonal.",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator",
      "short" : "ForandrandeOrdinatorResponse",
      "definition" : "Förandrande Ordinatör.",
      "comment" : "TKB-fält: `../../../forandrandeOrdinator` (`ForandrandeOrdinatorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../../arbetsplatskod` (`ArbetsplatskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator",
      "short" : "AdministratorResponse",
      "definition" : "Administratör.",
      "comment" : "TKB-fält: `../../../administrator` (`AdministratorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.fornamn",
      "short" : "Administratörens förnamn.",
      "definition" : "Administratörens förnamn.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.efternamn",
      "short" : "Administratörens efternamn.",
      "definition" : "Administratörens efternamn.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.anvandarId",
      "short" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.administrator.arbetsplats",
      "short" : "Unik kod för identifiering av administratörens arbetsplats.",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "comment" : "TKB-fält: `../../../../arbetsplats` (`ArbetsplatsType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../kommentar` (`KommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.orsakskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.orsakskod",
      "short" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "definition" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "comment" : "TKB-fält: `../../../orsakskod` (`MakuleringOrsakskodType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../orsakskodKlartext` (`MakuleringOrsakskodKlartextType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.paUppdragAv",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.paUppdragAv",
      "short" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "definition" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "comment" : "TKB-fält: `../../../paUppdragAv` (`MakuleringPaUppdragAvType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.samtyckeMakulering",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.samtyckeMakulering",
      "short" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "definition" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "comment" : "TKB-fält: `../../../samtyckeMakulering` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.tidpunkt",
      "short" : "Datum och tidpunkt då ny historikpost skapades.",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.makulering.typ",
      "short" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "comment" : "TKB-fält: `../../../typ` (`HistorikSkapandeTypType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.notatOrdination",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.notatOrdination",
      "short" : "Förskrivarens notat kopplat till en specifik ordination.",
      "definition" : "Förskrivarens notat kopplat till en specifik ordination.",
      "comment" : "TKB-fält: `../../notatOrdination` (`KommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsId",
      "short" : "Ordinationens unika id som sätts av eHälsomyndigheten.",
      "definition" : "Ordinationens unika id som sätts av eHälsomyndigheten.",
      "comment" : "TKB-fält: `../../ordinationsId` (`OrdinationsIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation",
      "short" : "OrdinationsinformationResponse",
      "definition" : "Kompletterande information om ordinationen.",
      "comment" : "TKB-fält: `../../ordinationsinformation` (`OrdinationsinformationResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Den som godkänt ordinationen.",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.lagringstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.lagringstidpunkt",
      "short" : "Datum och tid då ordinationen skapades i OR.",
      "definition" : "Datum och tid då ordinationen skapades i OR.",
      "comment" : "TKB-fält: `../../../lagringstidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.mottagandeApotek",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.mottagandeApotek",
      "short" : "Apoteks-id (GLN) vid direktadressering av ordinationer.",
      "definition" : "Apoteks-id (GLN) vid direktadressering av ordinationer.",
      "comment" : "TKB-fält: `../../../mottagandeApotek` (`GlnKodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinationstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinationstidpunkt",
      "short" : "Datum och eventuell tid för ordinationens utfärdande.",
      "definition" : "Datum och eventuell tid för ordinationens utfärdande.",
      "comment" : "TKB-fält: `../../../ordinationstidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator",
      "short" : "OrdinatorResponse",
      "definition" : "Den ordinatör som utfärdat ordinationen.",
      "comment" : "TKB-fält: `../../../ordinator` (`OrdinatorResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../../arbetsplatskod` (`AltArbetsplatskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "short" : "KontaktuppgiftResponse",
      "definition" : "Ordinatörens kontaktinformation.",
      "comment" : "TKB-fält: `../../../../kontaktuppgift` (`KontaktuppgiftResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "short" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../adress1` (`AdressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "short" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../adress2` (`AdressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "short" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../postnummer` (`PostnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "short" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../postort` (`PostortType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "short" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../telefonnummer1` (`TelefonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "short" : "Patientens eller förskrivarens telefonnummer 2.",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "comment" : "TKB-fält: `../../../../../telefonnummer2` (`TelefonnummerType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../utfardarkategori` (`UtfardarkategoriType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../originalformat` (`OriginalformatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.originalordinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.originalordinationsId",
      "short" : "Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling.",
      "definition" : "Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling.",
      "comment" : "TKB-fält: `../../../originalordinationsId` (`OriginalordinationsIdUuidType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient",
      "short" : "PatientResponse",
      "definition" : "Den patient som ordinationen gäller för.",
      "comment" : "TKB-fält: `../../../patient` (`PatientResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.efternamn",
      "short" : "Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "definition" : "Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum",
      "short" : "FodelsedatumResponse",
      "definition" : "Födelsedatum och kön för patienter som inte har fullständigt personnummer.",
      "comment" : "TKB-fält: `../../../../fodelsedatum` (`FodelsedatumResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "short" : "Födelsedatum för patient som saknar giltigt personnummer.",
      "definition" : "Födelsedatum för patient som saknar giltigt personnummer.",
      "comment" : "TKB-fält: `../../../../../fodelsedatum` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "short" : "Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat",
      "definition" : "Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat",
      "comment" : "TKB-fält: `../../../../../kon` (`KonType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.fornamn",
      "short" : "Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "definition" : "Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "short" : "KontaktuppgiftResponse",
      "definition" : "Kontaktuppgifter för patienten.",
      "comment" : "TKB-fält: `../../../../kontaktuppgift` (`KontaktuppgiftResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "short" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../adress1` (`AdressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "short" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../adress2` (`AdressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "short" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../postnummer` (`PostnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "short" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../postort` (`PostortType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "short" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../telefonnummer1` (`TelefonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "short" : "Patientens eller förskrivarens telefonnummer 2.",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "comment" : "TKB-fält: `../../../../../telefonnummer2` (`TelefonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.personnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.patient.personnummer",
      "short" : "Giltigt personnummer.",
      "definition" : "Giltigt personnummer.",
      "comment" : "TKB-fält: `../../../../personnummer` (`PersonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "short" : "RegistrerandeApotekspersonalResponse",
      "definition" : "Den som registrerat ordinationen.",
      "comment" : "TKB-fält: `../../../registrerandeApotekspersonal` (`RegistrerandeApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.testindikator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsinformation.testindikator",
      "short" : "Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning",
      "definition" : "Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning",
      "comment" : "TKB-fält: `../../../testindikator` (`TestindikatorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus",
      "short" : "OrdinationsstatusResponse",
      "definition" : "ordinationsstatus",
      "comment" : "TKB-fält: `../../ordinationsstatus` (`OrdinationsstatusResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.radversion",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.radversion",
      "short" : "radversion",
      "definition" : "Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde.",
      "comment" : "TKB-fält: `../../../radversion` (`RadversionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.status",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.status",
      "short" : "Status för dosunderlag, ordination eller uttag.",
      "definition" : "Status för dosunderlag, ordination eller uttag.",
      "comment" : "TKB-fält: `../../../status` (`OrdinationsStatusType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.ordinationsstatus.tidpunkt",
      "short" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../ordinationstyp` (`OrdinationstypType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../radnummerNEF` (`RadnummerNEFType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag",
      "short" : "SenastDispenseratUttagResponse",
      "definition" : "Senast dispenseratuttag",
      "comment" : "TKB-fält: `../../senastDispenseratUttag` (`SenastDispenseratUttagResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLId",
      "short" : "Senast expedierat NPL-id eller SB-id.",
      "definition" : "Senast expedierat NPL-id eller SB-id.",
      "comment" : "TKB-fält: `../../../senastExpedieratNPLId` (`NplIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLPackId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratNPLPackId",
      "short" : "Senast expedierat NPL Pack-id eller SB Pack-id.",
      "definition" : "Senast expedierat NPL Pack-id eller SB Pack-id.",
      "comment" : "TKB-fält: `../../../senastExpedieratNPLPackId` (`NplPackIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratVarunr",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senastExpedieratVarunr",
      "short" : "Senast expedierat varunr",
      "definition" : "Senast expedierat varunr",
      "comment" : "TKB-fält: `../../../senastExpedieratVarunr` (`VaruNrType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteExpedieradMangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteExpedieradMangd",
      "short" : "Senaste expedierad mängd",
      "definition" : "Senaste expedierad mängd",
      "comment" : "TKB-fält: `../../../senasteExpedieradMangd` (`ExpedieradMangdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteFormansval",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteFormansval",
      "short" : "Förmån som användes vid senaste expedition. R = Med förmån U = Utan förmån L = Livsmedel F = Kostnadsfritt",
      "definition" : "Förmån som användes vid senaste expedition. R = Med förmån U = Utan förmån L = Livsmedel F = Kostnadsfritt",
      "comment" : "TKB-fält: `../../../senasteFormansval` (`FormansvalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteUttagsdatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.senastDispenseratUttag.senasteUttagsdatum",
      "short" : "Datum för senaste uttag",
      "definition" : "Datum för senaste uttag",
      "comment" : "TKB-fält: `../../../senasteUttagsdatum` (`dateTime`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../tidigareOrdinationsId` (`OrdinationsIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning",
      "short" : "UtsattningResponse",
      "definition" : "Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt.",
      "comment" : "TKB-fält: `../../utsattning` (`UtsattningResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Apotekspersonal.",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator",
      "short" : "ForandrandeOrdinatorResponse",
      "definition" : "Förandrande Ordinatör.",
      "comment" : "TKB-fält: `../../../forandrandeOrdinator` (`ForandrandeOrdinatorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../../arbetsplatskod` (`ArbetsplatskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator",
      "short" : "AdministratorResponse",
      "definition" : "Administratör.",
      "comment" : "TKB-fält: `../../../administrator` (`AdministratorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.fornamn",
      "short" : "Administratörens förnamn.",
      "definition" : "Administratörens förnamn.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.efternamn",
      "short" : "Administratörens efternamn.",
      "definition" : "Administratörens efternamn.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.anvandarId",
      "short" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.administrator.arbetsplats",
      "short" : "Unik kod för identifiering av administratörens arbetsplats.",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "comment" : "TKB-fält: `../../../../arbetsplats` (`ArbetsplatsType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../kommentar` (`KommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.tidpunkt",
      "short" : "Datum och tidpunkt då ny historikpost skapades.",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.typ",
      "short" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "comment" : "TKB-fält: `../../../typ` (`HistorikSkapandeTypType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.utsattningstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.utsattning.utsattningstidpunkt",
      "short" : "Datum när patienten skall avsluta intag.",
      "definition" : "Datum när patienten skall avsluta intag.",
      "comment" : "TKB-fält: `../../../utsattningstidpunkt` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.extension",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.extension",
      "short" : "Extension3Type",
      "definition" : "extension",
      "comment" : "TKB-fält: `../../extension` (`Extension3Type`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.extension.sparradUppgiftKod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.extension.sparradUppgiftKod",
      "short" : "Kod för spärrad uppgift i receptet.",
      "definition" : "Kod för spärrad uppgift i receptet.",
      "comment" : "TKB-fält: `../../../sparradUppgiftKod` (`SparradUppgiftKodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.extension.sparradUppgiftKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dispenseradordinationLista.extension.sparradUppgiftKlartext",
      "short" : "Klartext för spärrad uppgift i receptet.",
      "definition" : "Klartext för spärrad uppgift i receptet.",
      "comment" : "TKB-fält: `../../../sparradUppgiftKlartext` (`SparradUppgiftKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag",
      "short" : "DosunderlagResponse",
      "definition" : "Dospatients dosunderlag.",
      "comment" : "TKB-fält: `../dosunderlag` (`DosunderlagResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator",
      "short" : "DosordinatorResponse",
      "definition" : "Dosordinatör.",
      "comment" : "TKB-fält: `../../dosordinator` (`DosordinatorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../arbetsplatskod` (`AltArbetsplatskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.tidpunkt",
      "short" : "Datum och tid då Dosunderlaget skapades.",
      "definition" : "Datum och tid då Dosunderlaget skapades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosordinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosproducent",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosproducent",
      "short" : "Apoteks-id på dosproducent som patienten är kopplad till.",
      "definition" : "Apoteks-id på dosproducent som patienten är kopplad till.",
      "comment" : "TKB-fält: `../../dosproducent` (`GlnKodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus",
      "short" : "DosunderlagsstatusResponse",
      "definition" : "Tillståndsstatus för dosunderlag.",
      "comment" : "TKB-fält: `../../dosunderlagsstatus` (`DosunderlagsstatusResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Förändrande apotekspersonal",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.status",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.status",
      "short" : "Status för dosunderlag, ordination eller uttag.",
      "definition" : "Status för dosunderlag, ordination eller uttag.",
      "comment" : "TKB-fält: `../../../status` (`DosunderlagsstatusType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.dosunderlagsstatus.tidpunkt",
      "short" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../dosunderlagsversion` (`DosunderlagsversionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut",
      "short" : "GodkannandeFarmaceutResponse",
      "definition" : "Godkännande Farmaceut.",
      "comment" : "TKB-fält: `../../godkannandeFarmaceut` (`GodkannandeFarmaceutResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.godkannandetidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.godkannandetidpunkt",
      "short" : "Datum och tid för dosunderlagets godkännande.",
      "definition" : "Datum och tid för dosunderlagets godkännande.",
      "comment" : "TKB-fält: `../../../godkannandetidpunkt` (`dateTime`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.dosunderlag.godkannandeFarmaceut.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista",
      "short" : "HelforpackningsordinationResponse",
      "definition" : "Lista med helförpackningsordinationer.",
      "comment" : "TKB-fält: `../helforpackningsordinationLista` (`HelforpackningsordinationResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat",
      "short" : "AFFResultatResponse",
      "definition" : "Information om aff-fel för ordinationen.",
      "comment" : "TKB-fält: `../../affResultat` (`AFFResultatResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista",
      "short" : "AFFFelResponse",
      "definition" : "Lista med AFF-fel",
      "comment" : "TKB-fält: `../../../affFelLista` (`AFFFelResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.allvarlighetsgrad",
      "short" : "Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad.",
      "definition" : "Kod för att beskriva hur allvarligt ett AFF-fel är. 1 = Accepterad med varning, 2 = Avvisad.",
      "comment" : "TKB-fält: `../../../../allvarlighetsgrad` (`AllvarlighetsgradType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.felkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.felkod",
      "short" : "Felkod enligt Automatisk format- och författningskontroll (AFF).",
      "definition" : "Felkod enligt Automatisk format- och författningskontroll (AFF).",
      "comment" : "TKB-fält: `../../../../felkod` (`AffFelkodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.felmeddelande",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.affFelLista.felmeddelande",
      "short" : "Felmeddelande för AFF-fel.",
      "definition" : "Felmeddelande för AFF-fel.",
      "comment" : "TKB-fält: `../../../../felmeddelande` (`AffFelmeddelandeType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../affStatus` (`AffStatusType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.avvisningsorsak",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.avvisningsorsak",
      "short" : "Information om avvisningsorsak.",
      "definition" : "Information om avvisningsorsak.",
      "comment" : "TKB-fält: `../../../avvisningsorsak` (`AvvisningType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.kontrolltidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.affResultat.kontrolltidpunkt",
      "short" : "Datum och tidpunkt för utförd AFF-kontroll.",
      "definition" : "Datum och tidpunkt för utförd AFF-kontroll.",
      "comment" : "TKB-fält: `../../../kontrolltidpunkt` (`dateTime`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../kontrolltyp` (`AffKontrolltypType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.apoteketsKommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.apoteketsKommentar",
      "short" : "Farmaceutens kommentar på ordinationen.",
      "definition" : "Farmaceutens kommentar på ordinationen.",
      "comment" : "TKB-fält: `../../apoteketsKommentar` (`ApoteketsKommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation",
      "short" : "ArtikelinformationResponse",
      "definition" : "Information om artikeln som ordinerats.",
      "comment" : "TKB-fält: `../../artikelinformation` (`ArtikelinformationResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.nplId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.nplId",
      "short" : "NPL-id alternativt SB-id som identifierar läkemedelprodukt.",
      "definition" : "NPL-id alternativt SB-id som identifierar läkemedelprodukt.",
      "comment" : "TKB-fält: `../../../nplId` (`NplIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.nplPackId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.nplPackId",
      "short" : "NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.",
      "definition" : "NPL pack-id alternativt SB Pack-id som identifierar läkemedelsartikel.",
      "comment" : "TKB-fält: `../../../nplPackId` (`NplPackIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.utbyttArtikel",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.utbyttArtikel",
      "short" : "Markering om substitution har skett vid expedition. Kan endast sättas via uttag.",
      "definition" : "Markering om substitution har skett vid expedition. Kan endast sättas via uttag.",
      "comment" : "TKB-fält: `../../../utbyttArtikel` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.varunr",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.artikelinformation.varunr",
      "short" : "Identitet på förskriven eller expedierad artikel.",
      "definition" : "Identitet på förskriven eller expedierad artikel.",
      "comment" : "TKB-fält: `../../../varunr` (`VaruNrType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation",
      "short" : "BehandlingsinformationResponse",
      "definition" : "behandlingsinformation",
      "comment" : "TKB-fält: `../../behandlingsinformation` (`BehandlingsinformationResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.andamalKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.andamalKlartext",
      "short" : "Ändamål i klartext",
      "definition" : "Ändamål i klartext",
      "comment" : "TKB-fält: `../../../andamalKlartext` (`AndamalKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.behandlingsslut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.behandlingsslut",
      "short" : "Datum om tidpunkt då behandlingen avslutas.",
      "definition" : "Datum om tidpunkt då behandlingen avslutas.",
      "comment" : "TKB-fält: `../../../behandlingsslut` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.behandlingsstart",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.behandlingsstart",
      "short" : "Datum om och tidpunkt då behandlingen påbörjas.",
      "definition" : "Datum om och tidpunkt då behandlingen påbörjas.",
      "comment" : "TKB-fält: `../../../behandlingsstart` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.doseringstext1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.doseringstext1",
      "short" : "Doseringstext från förskrivare eller korrigerad av farmaceut",
      "definition" : "Doseringstext från förskrivare eller korrigerad av farmaceut",
      "comment" : "TKB-fält: `../../../doseringstext1` (`DoseringstextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.doseringstext2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.doseringstext2",
      "short" : "Kompletterande doseringstext för exempelvis extempore och licensläkemedel.",
      "definition" : "Kompletterande doseringstext för exempelvis extempore och licensläkemedel.",
      "comment" : "TKB-fält: `../../../doseringstext2` (`DoseringstextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.sprakkod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.behandlingsinformation.sprakkod",
      "short" : "Främmande språk för doseringstext enligt ISO-639-1",
      "definition" : "Främmande språk för doseringstext enligt ISO-639-1",
      "comment" : "TKB-fält: `../../../sprakkod` (`SprakkodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema",
      "short" : "DoseringsschemaResponse",
      "definition" : "Information om intag. Valfritt för stående, obligatorisk dispenserad ordination, får ej anges för vid behov.",
      "comment" : "TKB-fält: `../../doseringsschema` (`DoseringsschemaResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle",
      "short" : "IntagstillfalleResponse",
      "definition" : "Beskriver tid och mängd för intag av läkemedel.",
      "comment" : "TKB-fält: `../../../intagstillfalle` (`IntagstillfalleResponse`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.dagIPeriod",
      "short" : "dagIPeriod",
      "definition" : "Dag i perioden när intag skall göras. Exempel: Intag ska ske varje måndag och onsdag och startdatum är på en måndag. Måndag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period= 1. Onsdag Insättningsdatum = 2010-01-01, Periodlängd=7, Dag i period=3.",
      "comment" : "TKB-fält: `../../../../dagIPeriod` (`DagIPeriodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagsmangd",
      "short" : "Intagsmängd per tillfälle. Null hanteras som enligt ordination.",
      "definition" : "Intagsmängd per tillfälle. Null hanteras som enligt ordination.",
      "comment" : "TKB-fält: `../../../../intagsmangd` (`IntagsmangdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.doseringsschema.intagstillfalle.intagstillfalle",
      "short" : "Klockslag när patienten ska inta medicinering.",
      "definition" : "Klockslag när patienten ska inta medicinering.",
      "comment" : "TKB-fält: `../../../../intagstillfalle` (`IntagstillfalleType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../periodlangd` (`PeriodlangdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring",
      "short" : "ForandringResponse",
      "definition" : "Information om eventuell historikskapande händelse (förändring). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "comment" : "TKB-fält: `../../forandring` (`ForandringResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Apotekspersonal.",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator",
      "short" : "ForandrandeOrdinatorResponse",
      "definition" : "Förandrande Ordinatör.",
      "comment" : "TKB-fält: `../../../forandrandeOrdinator` (`ForandrandeOrdinatorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../../arbetsplatskod` (`ArbetsplatskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.forandrandeOrdinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator",
      "short" : "AdministratorResponse",
      "definition" : "Administratör.",
      "comment" : "TKB-fält: `../../../administrator` (`AdministratorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.fornamn",
      "short" : "Administratörens förnamn.",
      "definition" : "Administratörens förnamn.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.efternamn",
      "short" : "Administratörens efternamn.",
      "definition" : "Administratörens efternamn.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.anvandarId",
      "short" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.administrator.arbetsplats",
      "short" : "Unik kod för identifiering av administratörens arbetsplats.",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "comment" : "TKB-fält: `../../../../arbetsplats` (`ArbetsplatsType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../kommentar` (`KommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.tidpunkt",
      "short" : "Datum och tidpunkt då ny historikpost skapades.",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forandring.typ",
      "short" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "comment" : "TKB-fält: `../../../typ` (`HistorikSkapandeTypType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forskrivarKommentar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.forskrivarKommentar",
      "short" : "Förskrivarens kommentar till apoteket.",
      "definition" : "Förskrivarens kommentar till apoteket.",
      "comment" : "TKB-fält: `../../forskrivarKommentar` (`EtikettTextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.harForandrats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.harForandrats",
      "short" : "Markering om ordinationen har ändrats av förskrivare eller farmaceut.",
      "definition" : "Markering om ordinationen har ändrats av förskrivare eller farmaceut.",
      "comment" : "TKB-fält: `../../harForandrats` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler",
      "short" : "HelforpackningsreglerResponse",
      "definition" : "helforpackningsregler",
      "comment" : "TKB-fält: `../../helforpackningsregler` (`HelforpackningsreglerResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.ejTillatenSubstitution",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.ejTillatenSubstitution",
      "short" : "Markering om förskriven vara ej får bytas ut enligt förskrivare.",
      "definition" : "Markering om förskriven vara ej får bytas ut enligt förskrivare.",
      "comment" : "TKB-fält: `../../../ejTillatenSubstitution` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forman",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forman",
      "short" : "Förskrivarens uppgift om ordinationen ska innefattas i förmånen.",
      "definition" : "Förskrivarens uppgift om ordinationen ska innefattas i förmånen.",
      "comment" : "TKB-fält: `../../../forman` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forskrivetAntalUttag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.forskrivetAntalUttag",
      "short" : "Antal tillåtna uttag på ordinationen.",
      "definition" : "Antal tillåtna uttag på ordinationen.",
      "comment" : "TKB-fält: `../../../forskrivetAntalUttag` (`AntalUttagType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../forstaUttagFore` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.insattningstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.insattningstidpunkt",
      "short" : "Datum när patienten skall påbörja intag.",
      "definition" : "Datum när patienten skall påbörja intag.",
      "comment" : "TKB-fält: `../../../insattningstidpunkt` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall",
      "short" : "IntervallResponse",
      "definition" : "Absolut expeditionsintervall.",
      "comment" : "TKB-fält: `../../../intervall` (`IntervallResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall.expeditionsintervall",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.intervall.expeditionsintervall",
      "short" : "Absolut expeditionsintervall. Av förskrivaren angiven kortaste tid mellan två expeditioner.",
      "definition" : "Absolut expeditionsintervall. Av förskrivaren angiven kortaste tid mellan två expeditioner.",
      "comment" : "TKB-fält: `../../../../expeditionsintervall` (`ExpeditionsintervallType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../../intervallenhet` (`IntervallenhetType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.resterandeAntalUttag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.resterandeAntalUttag",
      "short" : "Kvarvarande antal uttag på ordinationen",
      "definition" : "Kvarvarande antal uttag på ordinationen",
      "comment" : "TKB-fält: `../../../resterandeAntalUttag` (`ResterandeAntalUttagType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.sistaGiltighetsdag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.sistaGiltighetsdag",
      "short" : "Ordinationens sista giltighetsdag.",
      "definition" : "Ordinationens sista giltighetsdag.",
      "comment" : "TKB-fält: `../../../sistaGiltighetsdag` (`dateTime`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../slutexpedierad` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.slutexpedieradAvFarmaceut",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.helforpackningsregler.slutexpedieradAvFarmaceut",
      "short" : "Farmaceut har markerat att ordinationen är slutexpedierad.",
      "definition" : "Farmaceut har markerat att ordinationen är slutexpedierad.",
      "comment" : "TKB-fält: `../../../slutexpedieradAvFarmaceut` (`boolean`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../historisktOrdinationsId` (`OrdinationsIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.korrigerbar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.korrigerbar",
      "short" : "Markering om ordinationen är korrigerbar.",
      "definition" : "Markering om ordinationen är korrigerbar.",
      "comment" : "TKB-fält: `../../korrigerbar` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.leveransMeddelande",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.leveransMeddelande",
      "short" : "Leveransinformation om ordinationen skickas till ett ombud.",
      "definition" : "Leveransinformation om ordinationen skickas till ett ombud.",
      "comment" : "TKB-fält: `../../leveransMeddelande` (`EtikettTextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering",
      "short" : "MakuleringResponse",
      "definition" : "Information om eventuell historikskapande händelse (makluering). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma.",
      "comment" : "TKB-fält: `../../makulering` (`MakuleringResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Apotekspersonal.",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator",
      "short" : "ForandrandeOrdinatorResponse",
      "definition" : "Förandrande Ordinatör.",
      "comment" : "TKB-fält: `../../../forandrandeOrdinator` (`ForandrandeOrdinatorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../../arbetsplatskod` (`ArbetsplatskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.forandrandeOrdinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator",
      "short" : "AdministratorResponse",
      "definition" : "Administratör.",
      "comment" : "TKB-fält: `../../../administrator` (`AdministratorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.fornamn",
      "short" : "Administratörens förnamn.",
      "definition" : "Administratörens förnamn.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.efternamn",
      "short" : "Administratörens efternamn.",
      "definition" : "Administratörens efternamn.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.anvandarId",
      "short" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.administrator.arbetsplats",
      "short" : "Unik kod för identifiering av administratörens arbetsplats.",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "comment" : "TKB-fält: `../../../../arbetsplats` (`ArbetsplatsType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../kommentar` (`KommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.orsakskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.orsakskod",
      "short" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "definition" : "Orsakskod som strukturerat beskriver orsak till makulering.",
      "comment" : "TKB-fält: `../../../orsakskod` (`MakuleringOrsakskodType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../orsakskodKlartext` (`MakuleringOrsakskodKlartextType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.paUppdragAv",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.paUppdragAv",
      "short" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "definition" : "Uppgift om vem som har gett i uppdrag att genomföra makulering. P = Patient, F = Förskrivare.",
      "comment" : "TKB-fält: `../../../paUppdragAv` (`MakuleringPaUppdragAvType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.samtyckeMakulering",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.samtyckeMakulering",
      "short" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "definition" : "Inhämtat samtycke från patient. Obligatorisk parameter då förskrivare makulerar recept om orsakskod = 2, 3 eller 4.",
      "comment" : "TKB-fält: `../../../samtyckeMakulering` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.tidpunkt",
      "short" : "Datum och tidpunkt då ny historikpost skapades.",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.makulering.typ",
      "short" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "comment" : "TKB-fält: `../../../typ` (`HistorikSkapandeTypType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation",
      "short" : "MangdinformationResponse",
      "definition" : "mangdinformation",
      "comment" : "TKB-fält: `../../mangdinformation` (`MangdinformationResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.antalForpackningar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.antalForpackningar",
      "short" : "Antal förpackningar per uttag",
      "definition" : "Antal förpackningar per uttag",
      "comment" : "TKB-fält: `../../../antalForpackningar` (`AntalForpackningarType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.ingenDygnsdos",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.ingenDygnsdos",
      "short" : "Markering att dygnsdos inte kan anges. Exempelvis vid ordination av kräm.",
      "definition" : "Markering att dygnsdos inte kan anges. Exempelvis vid ordination av kräm.",
      "comment" : "TKB-fält: `../../../ingenDygnsdos` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.maxDygnsdos",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.maxDygnsdos",
      "short" : "Maximal mängd läkemedel som får förbrukas per dygn enligt doseringsschema eller doseringsanvisning.",
      "definition" : "Maximal mängd läkemedel som får förbrukas per dygn enligt doseringsschema eller doseringsanvisning.",
      "comment" : "TKB-fält: `../../../maxDygnsdos` (`MaxDygnsdosType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.maxVeckodos",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.maxVeckodos",
      "short" : "Maximal mängd läkemedel som får förbrukas per vecka enligt doseringsschema eller doseringsanvisning.",
      "definition" : "Maximal mängd läkemedel som får förbrukas per vecka enligt doseringsschema eller doseringsanvisning.",
      "comment" : "TKB-fält: `../../../maxVeckodos` (`MaxVeckodosType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.startforpackning",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.startforpackning",
      "short" : "Anger om startförpackning ska expedieras vid första uttag",
      "definition" : "Anger om startförpackning ska expedieras vid första uttag",
      "comment" : "TKB-fält: `../../../startforpackning` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.totalmangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.totalmangd",
      "short" : "Förskriven totalmängd.",
      "definition" : "Förskriven totalmängd.",
      "comment" : "TKB-fält: `../../../totalmangd` (`TotalmangdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.totalmangdKvar",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.mangdinformation.totalmangdKvar",
      "short" : "Resterande mängd som finns kvar på receptet",
      "definition" : "Resterande mängd som finns kvar på receptet",
      "comment" : "TKB-fält: `../../../totalmangdKvar` (`TotalmangdKvarType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.notatOrdination",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.notatOrdination",
      "short" : "Förskrivarens notat kopplat till en specifik ordination.",
      "definition" : "Förskrivarens notat kopplat till en specifik ordination.",
      "comment" : "TKB-fält: `../../notatOrdination` (`KommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsId",
      "short" : "Ordinationens unika id som sätts av eHälsomyndigheten.",
      "definition" : "Ordinationens unika id som sätts av eHälsomyndigheten.",
      "comment" : "TKB-fält: `../../ordinationsId` (`OrdinationsIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation",
      "short" : "OrdinationsinformationResponse",
      "definition" : "Kompletterande information om ordinationen.",
      "comment" : "TKB-fält: `../../ordinationsinformation` (`OrdinationsinformationResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Den som godkänt ordinationen.",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.lagringstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.lagringstidpunkt",
      "short" : "Datum och tid då ordinationen skapades i OR.",
      "definition" : "Datum och tid då ordinationen skapades i OR.",
      "comment" : "TKB-fält: `../../../lagringstidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.mottagandeApotek",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.mottagandeApotek",
      "short" : "Apoteks-id (GLN) vid direktadressering av ordinationer.",
      "definition" : "Apoteks-id (GLN) vid direktadressering av ordinationer.",
      "comment" : "TKB-fält: `../../../mottagandeApotek` (`GlnKodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinationstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinationstidpunkt",
      "short" : "Datum och eventuell tid för ordinationens utfärdande.",
      "definition" : "Datum och eventuell tid för ordinationens utfärdande.",
      "comment" : "TKB-fält: `../../../ordinationstidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator",
      "short" : "OrdinatorResponse",
      "definition" : "Den ordinatör som utfärdat ordinationen.",
      "comment" : "TKB-fält: `../../../ordinator` (`OrdinatorResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../../arbetsplatskod` (`AltArbetsplatskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift",
      "short" : "KontaktuppgiftResponse",
      "definition" : "Ordinatörens kontaktinformation.",
      "comment" : "TKB-fält: `../../../../kontaktuppgift` (`KontaktuppgiftResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress1",
      "short" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../adress1` (`AdressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.adress2",
      "short" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../adress2` (`AdressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postnummer",
      "short" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../postnummer` (`PostnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.postort",
      "short" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../postort` (`PostortType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer1",
      "short" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../telefonnummer1` (`TelefonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.kontaktuppgift.telefonnummer2",
      "short" : "Patientens eller förskrivarens telefonnummer 2.",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "comment" : "TKB-fält: `../../../../../telefonnummer2` (`TelefonnummerType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../utfardarkategori` (`UtfardarkategoriType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.ordinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../originalformat` (`OriginalformatType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.originalordinationsId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.originalordinationsId",
      "short" : "Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling.",
      "definition" : "Unikt id för en ordination. Dock ej unikt för e-recept som tillhör receptsamling.",
      "comment" : "TKB-fält: `../../../originalordinationsId` (`OriginalordinationsIdUuidType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient",
      "short" : "PatientResponse",
      "definition" : "Den patient som ordinationen gäller för.",
      "comment" : "TKB-fält: `../../../patient` (`PatientResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.efternamn",
      "short" : "Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "definition" : "Patientens efternamn. Hämtas från första delen (före kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum",
      "short" : "FodelsedatumResponse",
      "definition" : "Födelsedatum och kön för patienter som inte har fullständigt personnummer.",
      "comment" : "TKB-fält: `../../../../fodelsedatum` (`FodelsedatumResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.fodelsedatum",
      "short" : "Födelsedatum för patient som saknar giltigt personnummer.",
      "definition" : "Födelsedatum för patient som saknar giltigt personnummer.",
      "comment" : "TKB-fält: `../../../../../fodelsedatum` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fodelsedatum.kon",
      "short" : "Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat",
      "definition" : "Patientens kön. Giltiga värden är: 1 = Man 2 = Kvinna 3 = Ej specificerat",
      "comment" : "TKB-fält: `../../../../../kon` (`KonType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.fornamn",
      "short" : "Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "definition" : "Patientens förnamn. Hämtas från andra delen (efter kommatecken) av patientens Rednamn som fås vid anrop mot FOLK.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift",
      "short" : "KontaktuppgiftResponse",
      "definition" : "Kontaktuppgifter för patienten.",
      "comment" : "TKB-fält: `../../../../kontaktuppgift` (`KontaktuppgiftResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress1",
      "short" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "definition" : "Förskrivarens lokalitet eller patientens adress 1. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../adress1` (`AdressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.adress2",
      "short" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "definition" : "Patientens adress 2 eller förskrivarens alternativt vårdcentralens gatuadress. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../adress2` (`AdressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postnummer",
      "short" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens postnummer. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../postnummer` (`PostnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.postort",
      "short" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens postort. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../postort` (`PostortType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer1",
      "short" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "definition" : "Patientens eller förskrivarens telefonnummer 1. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../../telefonnummer1` (`TelefonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.kontaktuppgift.telefonnummer2",
      "short" : "Patientens eller förskrivarens telefonnummer 2.",
      "definition" : "Patientens eller förskrivarens telefonnummer 2.",
      "comment" : "TKB-fält: `../../../../../telefonnummer2` (`TelefonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.personnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.patient.personnummer",
      "short" : "Giltigt personnummer.",
      "definition" : "Giltigt personnummer.",
      "comment" : "TKB-fält: `../../../../personnummer` (`PersonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal",
      "short" : "RegistrerandeApotekspersonalResponse",
      "definition" : "Den som registrerat ordinationen.",
      "comment" : "TKB-fält: `../../../registrerandeApotekspersonal` (`RegistrerandeApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.registrerandeApotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.testindikator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsinformation.testindikator",
      "short" : "Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning",
      "definition" : "Markering om ordinationen är äkta, för test eller för utbildning. 1 = Äkta 2 = Test 3 = Utbildning",
      "comment" : "TKB-fält: `../../../testindikator` (`TestindikatorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus",
      "short" : "OrdinationsstatusResponse",
      "definition" : "ordinationsstatus",
      "comment" : "TKB-fält: `../../ordinationsstatus` (`OrdinationsstatusResponse`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.radversion",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.radversion",
      "short" : "radversion",
      "definition" : "Ordinationens versionsnummer för intern versionshantering av en ordination. Ny radversion av ordinationen skapas vid varje uttag. Returneras alltid men kan vara utan värde.",
      "comment" : "TKB-fält: `../../../radversion` (`RadversionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.status",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.status",
      "short" : "Status för dosunderlag, ordination eller uttag.",
      "definition" : "Status för dosunderlag, ordination eller uttag.",
      "comment" : "TKB-fält: `../../../status` (`OrdinationsStatusType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.ordinationsstatus.tidpunkt",
      "short" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "definition" : "Datum och tid då dosunderlag, ordination eller uttag senast förändrades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../ordinationstyp` (`OrdinationstypType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../radnummerNEF` (`RadnummerNEFType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag",
      "short" : "SenasteHelforpackningsuttagResponse",
      "definition" : "senasteHelforpackningsuttag",
      "comment" : "TKB-fält: `../../senasteHelforpackningsuttag` (`SenasteHelforpackningsuttagResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.nastaUttagInomFormanen",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.nastaUttagInomFormanen",
      "short" : "Datum för nästa tillåtna uttag inom förmånen.",
      "definition" : "Datum för nästa tillåtna uttag inom förmånen.",
      "comment" : "TKB-fält: `../../../nastaUttagInomFormanen` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLId",
      "short" : "Senast expedierat NPL-id eller SB-id.",
      "definition" : "Senast expedierat NPL-id eller SB-id.",
      "comment" : "TKB-fält: `../../../senastExpedieratNPLId` (`NplIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLPackId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratNPLPackId",
      "short" : "Senast expedierat NPL Pack-id eller SB Pack-id.",
      "definition" : "Senast expedierat NPL Pack-id eller SB Pack-id.",
      "comment" : "TKB-fält: `../../../senastExpedieratNPLPackId` (`NplPackIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratVarunr",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senastExpedieratVarunr",
      "short" : "Senast expedierat varunr",
      "definition" : "Senast expedierat varunr",
      "comment" : "TKB-fält: `../../../senastExpedieratVarunr` (`VaruNrType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteExpedieradMangd",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteExpedieradMangd",
      "short" : "Senaste expedierad mängd",
      "definition" : "Senaste expedierad mängd",
      "comment" : "TKB-fält: `../../../senasteExpedieradMangd` (`ExpedieradMangdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteFormansval",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteFormansval",
      "short" : "Förmån som användes vid senaste expedition. U = Utan förmån R = Med förmån L = Livsmedel F = Kostnadsfritt",
      "definition" : "Förmån som användes vid senaste expedition. U = Utan förmån R = Med förmån L = Livsmedel F = Kostnadsfritt",
      "comment" : "TKB-fält: `../../../senasteFormansval` (`FormansvalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagInomFormanen",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagInomFormanen",
      "short" : "Datum för senaste uttag inom förmånen enligt förmånsreglerna.",
      "definition" : "Datum för senaste uttag inom förmånen enligt förmånsreglerna.",
      "comment" : "TKB-fält: `../../../senasteUttagInomFormanen` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagsdatum",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.senasteHelforpackningsuttag.senasteUttagsdatum",
      "short" : "Datum för senaste uttag",
      "definition" : "Datum för senaste uttag",
      "comment" : "TKB-fält: `../../../senasteUttagsdatum` (`dateTime`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../tidigareOrdinationsId` (`OrdinationsIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning",
      "short" : "UtsattningResponse",
      "definition" : "Information om eventuell historikskapande händelse (utsättning). Endast en typ av historikskapande-information (makluering, förändring eller utsättning) kan förekomma. Utsättning innehållande enbart utsättningstidpunkt kan dock förekomma i kombination med annat historikskapande objekt.",
      "comment" : "TKB-fält: `../../utsattning` (`UtsattningResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal",
      "short" : "ApotekspersonalResponse",
      "definition" : "Apotekspersonal.",
      "comment" : "TKB-fält: `../../../apotekspersonal` (`ApotekspersonalResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.anvandarId",
      "short" : "anvandarId",
      "definition" : "Användar-id för farmaceut (legitimationskod) eller apotekspersonal (för- och efternamn) som uppdaterar en ordination. Användar-id är en övergångslösning fram tills alla apoteksaktörer har övergått till ORG-gränssnittet.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.apoteksId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.apoteksId",
      "short" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "definition" : "Apoteks-id är en unik kod som definierar ett specifikt apotek tillhörande en specifik juridisk ägare.",
      "comment" : "TKB-fält: `../../../../apoteksId` (`GlnKodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.apotekspersonal.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator",
      "short" : "ForandrandeOrdinatorResponse",
      "definition" : "Förandrande Ordinatör.",
      "comment" : "TKB-fält: `../../../forandrandeOrdinator` (`ForandrandeOrdinatorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Unik kod för identifiering av förskrivarens arbetsplats vid ordinationstillfället. Saknar förskrivare ordinarie arbetsplats anges en grupparbetsplatskod. Arbetsplatskoden anges för att styra ekonomiska transaktioner vid ordinationer inom förmånen.",
      "comment" : "TKB-fält: `../../../../arbetsplatskod` (`ArbetsplatskodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.befattningskod",
      "short" : "Användarens befattningskod enligt HSA.",
      "definition" : "Användarens befattningskod enligt HSA.",
      "comment" : "TKB-fält: `../../../../befattningskod` (`BefattningskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.efternamn",
      "short" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens efternamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.fornamn",
      "short" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "definition" : "Användarens förnamn. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../forskrivarkod` (`ForskrivarkodType`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../legitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.forandrandeOrdinator.yrkeskod",
      "short" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "definition" : "Användarens yrkeskod som definierar vilken typ av legitimation som användaren innehar. Obligatorisk för förskrivare.",
      "comment" : "TKB-fält: `../../../../yrkeskod` (`YrkeskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator",
      "short" : "AdministratorResponse",
      "definition" : "Administratör.",
      "comment" : "TKB-fält: `../../../administrator` (`AdministratorResponse`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.fornamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.fornamn",
      "short" : "Administratörens förnamn.",
      "definition" : "Administratörens förnamn.",
      "comment" : "TKB-fält: `../../../../fornamn` (`FornamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.efternamn",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.efternamn",
      "short" : "Administratörens efternamn.",
      "definition" : "Administratörens efternamn.",
      "comment" : "TKB-fält: `../../../../efternamn` (`EfternamnType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.anvandarId",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.anvandarId",
      "short" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "definition" : "Användar-id för administratören, eller id för databasjobbet, som uppdaterar en ordination.",
      "comment" : "TKB-fält: `../../../../anvandarId` (`AnvandareIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.arbetsplats",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.administrator.arbetsplats",
      "short" : "Unik kod för identifiering av administratörens arbetsplats.",
      "definition" : "Unik kod för identifiering av administratörens arbetsplats.",
      "comment" : "TKB-fält: `../../../../arbetsplats` (`ArbetsplatsType`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../kommentar` (`KommentarType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.tidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.tidpunkt",
      "short" : "Datum och tidpunkt då ny historikpost skapades.",
      "definition" : "Datum och tidpunkt då ny historikpost skapades.",
      "comment" : "TKB-fält: `../../../tidpunkt` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.typ",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.typ",
      "short" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "definition" : "Anger vilken typ som avses. M =Makulering, U = Utsättning, K = Korrigerad, S = Spärrad, O = Utskrivet original.",
      "comment" : "TKB-fält: `../../../typ` (`HistorikSkapandeTypType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.utsattningstidpunkt",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.utsattning.utsattningstidpunkt",
      "short" : "Datum när patienten skall avsluta intag.",
      "definition" : "Datum när patienten skall avsluta intag.",
      "comment" : "TKB-fält: `../../../utsattningstidpunkt` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.extension",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.extension",
      "short" : "Extension3Type",
      "definition" : "extension",
      "comment" : "TKB-fält: `../../extension` (`Extension3Type`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.extension.sparradUppgiftKod",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.extension.sparradUppgiftKod",
      "short" : "Kod för spärrad uppgift i receptet.",
      "definition" : "Kod för spärrad uppgift i receptet.",
      "comment" : "TKB-fält: `../../../sparradUppgiftKod` (`SparradUppgiftKodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.extension.sparradUppgiftKlartext",
      "path" : "hamtaaktuellaordinationer.ordinationslista.helforpackningsordinationLista.extension.sparradUppgiftKlartext",
      "short" : "Klartext för spärrad uppgift i receptet.",
      "definition" : "Klartext för spärrad uppgift i receptet.",
      "comment" : "TKB-fält: `../../../sparradUppgiftKlartext` (`SparradUppgiftKlartextType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.personnummer",
      "path" : "hamtaaktuellaordinationer.ordinationslista.personnummer",
      "short" : "Patientens personnummer.",
      "definition" : "Patientens personnummer.",
      "comment" : "TKB-fält: `../personnummer` (`PersonnummerType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaaktuellaordinationer.ordinationslista.underlagsversion",
      "path" : "hamtaaktuellaordinationer.ordinationslista.underlagsversion",
      "short" : "Version på Ordinationslista. Används för att verifiera att klientsystemet har rätt underlag vid uppdateringar.",
      "definition" : "Version på Ordinationslista. Används för att verifiera att klientsystemet har rätt underlag vid uppdateringar.",
      "comment" : "TKB-fält: `../underlagsversion` (`UnderlagsversionType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
