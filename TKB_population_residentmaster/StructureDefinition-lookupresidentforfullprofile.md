# LookupResidentForFullProfile - population: residentmaster v1.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LookupResidentForFullProfile**

## Logical Model: LookupResidentForFullProfile 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/lookupresidentforfullprofile | *Version*:1.2 |
| Draft as of 2026-09-26 | *Computable Name*:LookupResidentForFullProfile |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret från tjänstekontraktet LookupResidentForFullProfile (RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1). Representerar en post (ResidentType, fullständig profil "Full") i svarets lista av träffar. Svaret som helhet innehåller 0..* sådana poster, en per efterfrågat och matchat personnummer (se avsnitt 7). Fält som inte ingår i den aktuella profilen utelämnas normalt inte i denna modell (den täcker hela ResidentType-bruttolistan), men kan i ett faktiskt svar sakna värde eftersom endast Full-profilens fält (se avsnitt 6.1) faktiskt populeras av producenten. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.population-residentmaster|current/StructureDefinition/StructureDefinition-lookupresidentforfullprofile.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lookupresidentforfullprofile.csv), [Excel](StructureDefinition-lookupresidentforfullprofile.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lookupresidentforfullprofile",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/lookupresidentforfullprofile",
  "version" : "1.2",
  "name" : "LookupResidentForFullProfile",
  "title" : "LookupResidentForFullProfile",
  "status" : "draft",
  "date" : "2026-09-26T19:38:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret från tjänstekontraktet LookupResidentForFullProfile\n(RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1).\nRepresenterar en post (ResidentType, fullständig profil \"Full\") i svarets lista av\nträffar. Svaret som helhet innehåller 0..* sådana poster, en per efterfrågat och\nmatchat personnummer (se avsnitt 7). Fält som inte ingår i den aktuella profilen\nutelämnas normalt inte i denna modell (den täcker hela ResidentType-bruttolistan),\nmen kan i ett faktiskt svar sakna värde eftersom endast Full-profilens fält (se\navsnitt 6.1) faktiskt populeras av producenten.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/lookupresidentforfullprofile",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lookupresidentforfullprofile",
      "path" : "lookupresidentforfullprofile",
      "short" : "LookupResidentForFullProfile",
      "definition" : "Logisk modell för svaret från tjänstekontraktet LookupResidentForFullProfile\n(RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1).\nRepresenterar en post (ResidentType, fullständig profil \"Full\") i svarets lista av\nträffar. Svaret som helhet innehåller 0..* sådana poster, en per efterfrågat och\nmatchat personnummer (se avsnitt 7). Fält som inte ingår i den aktuella profilen\nutelämnas normalt inte i denna modell (den täcker hela ResidentType-bruttolistan),\nmen kan i ett faktiskt svar sakna värde eftersom endast Full-profilens fält (se\navsnitt 6.1) faktiskt populeras av producenten."
    },
    {
      "id" : "lookupresidentforfullprofile.residentSekretessmarkering",
      "path" : "lookupresidentforfullprofile.residentSekretessmarkering",
      "short" : "Sekretessmarkering",
      "definition" : "true = personen har sekretessmarkering (J), false = personen har inte\nsekretessmarkering (N). Poster med sekretessmarkering innehåller normalt inte\nannan information än personnummer och detta fält.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.senasteAndringFolkbokforing",
      "path" : "lookupresidentforfullprofile.senasteAndringFolkbokforing",
      "short" : "Senaste ändring i folkbokföringen",
      "definition" : "Datum när personen uppdaterades senast i folkbokföringen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost",
      "path" : "lookupresidentforfullprofile.personPost",
      "short" : "Personpost",
      "definition" : "Personpost",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personId",
      "path" : "lookupresidentforfullprofile.personPost.personId",
      "short" : "Personnummer/samordningsnummer/reservnummer",
      "definition" : "value = personnummer på formatet ÅÅÅÅMMDDNNNN, eller (för regional/lokal\ntjänstekonsument) ett reservnummer enligt aktuellt reservnummerkodverk.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personKon",
      "path" : "lookupresidentforfullprofile.personPost.personKon",
      "short" : "Kön",
      "definition" : "Kön",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/kon-vs"
      }
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personFodelsetid",
      "path" : "lookupresidentforfullprofile.personPost.personFodelsetid",
      "short" : "Födelsetid",
      "definition" : "Kan saknas för personer utan fastställd födelsetid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.avregistrering",
      "path" : "lookupresidentforfullprofile.personPost.avregistrering",
      "short" : "Avregistreringsuppgifter",
      "definition" : "Avregistreringsuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.avregistrering.avregistreringsorsakKod",
      "path" : "lookupresidentforfullprofile.personPost.avregistrering.avregistreringsorsakKod",
      "short" : "Avregistreringsorsak",
      "definition" : "Utgår i ResidentType version 2 — ersätts av avregistreringsorsakKodKomplett.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/avregistreringsorsak-vs"
      }
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.avregistrering.avregistreringsdatum",
      "path" : "lookupresidentforfullprofile.personPost.avregistrering.avregistreringsdatum",
      "short" : "Avregistreringsdatum",
      "definition" : "Format ÅÅÅÅMMDD, men kan vara ett ofullständigt datum (4–8 tecken).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.avregistrering.avregistreringsorsakKodKomplett",
      "path" : "lookupresidentforfullprofile.personPost.avregistrering.avregistreringsorsakKodKomplett",
      "short" : "Avregistreringsorsak (komplett kodverk)",
      "definition" : "Avregistreringsorsak (komplett kodverk)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/avregistreringsorsakkomplett-vs"
      }
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personNamn",
      "path" : "lookupresidentforfullprofile.personPost.personNamn",
      "short" : "Namnuppgifter",
      "definition" : "Namnuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personNamn.aviseringsnamn",
      "path" : "lookupresidentforfullprofile.personPost.personNamn.aviseringsnamn",
      "short" : "Aviseringsnamn",
      "definition" : "Mellannamn, efternamn och förnamn i den ordningen, max 36 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personNamn.fornamn",
      "path" : "lookupresidentforfullprofile.personPost.personNamn.fornamn",
      "short" : "Förnamn",
      "definition" : "Alla förnamn med mellanslag emellan, max 80 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personNamn.tilltalsnamnsmarkering",
      "path" : "lookupresidentforfullprofile.personPost.personNamn.tilltalsnamnsmarkering",
      "short" : "Tilltalsnamnsmarkering",
      "definition" : "Positionskod (10–99) som anger vilket av förnamnen som är tilltalsnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personNamn.mellannamn",
      "path" : "lookupresidentforfullprofile.personPost.personNamn.mellannamn",
      "short" : "Mellannamn",
      "definition" : "Max 40 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.personNamn.efternamn",
      "path" : "lookupresidentforfullprofile.personPost.personNamn.efternamn",
      "short" : "Efternamn",
      "definition" : "Max 60 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress",
      "short" : "Folkbokföringsadress",
      "definition" : "Folkbokföringsadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.lanKod",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.lanKod",
      "short" : "Länskod",
      "definition" : "Länskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.kommunKod",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.kommunKod",
      "short" : "Kommunkod",
      "definition" : "Kommunkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.forsamlingKod",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.forsamlingKod",
      "short" : "Församlingskod",
      "definition" : "Församlingskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.fastighetsbeteckning",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.fastighetsbeteckning",
      "short" : "Fastighetsbeteckning",
      "definition" : "Fastighetsbeteckning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.careOf",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.careOf",
      "short" : "Care of",
      "definition" : "Care of",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.utdelningsadress1",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.utdelningsadress1",
      "short" : "Utdelningsadress, rad 1",
      "definition" : "Utdelningsadress, rad 1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.utdelningsadress2",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.utdelningsadress2",
      "short" : "Utdelningsadress, rad 2",
      "definition" : "Utdelningsadress, rad 2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.postnummer",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.postnummer",
      "short" : "Postnummer",
      "definition" : "Fem tecken, inga mellanslag.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.postort",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.postort",
      "short" : "Postort",
      "definition" : "Postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.folkbokforingsdatum",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.folkbokforingsdatum",
      "short" : "Folkbokföringsdatum",
      "definition" : "Format ÅÅÅÅMMDD, men kan vara ett ofullständigt datum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.scbNyckelkod",
      "path" : "lookupresidentforfullprofile.personPost.folkbokforingsadress.scbNyckelkod",
      "short" : "SCB Nyckelkod",
      "definition" : "Sex tecken, ej från Navet-avisering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress",
      "short" : "Särskild postadress",
      "definition" : "Samma struktur som folkbokföringsadress (SvenskAdressTYPE).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.lanKod",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.lanKod",
      "short" : "Länskod",
      "definition" : "Länskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.kommunKod",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.kommunKod",
      "short" : "Kommunkod",
      "definition" : "Kommunkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.forsamlingKod",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.forsamlingKod",
      "short" : "Församlingskod",
      "definition" : "Församlingskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.fastighetsbeteckning",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.fastighetsbeteckning",
      "short" : "Fastighetsbeteckning",
      "definition" : "Fastighetsbeteckning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.careOf",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.careOf",
      "short" : "Care of",
      "definition" : "Care of",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.utdelningsadress1",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.utdelningsadress1",
      "short" : "Utdelningsadress, rad 1",
      "definition" : "Utdelningsadress, rad 1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.utdelningsadress2",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.utdelningsadress2",
      "short" : "Utdelningsadress, rad 2",
      "definition" : "Utdelningsadress, rad 2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.postnummer",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.postnummer",
      "short" : "Postnummer",
      "definition" : "Postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.postort",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.postort",
      "short" : "Postort",
      "definition" : "Postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.folkbokforingsdatum",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.folkbokforingsdatum",
      "short" : "Folkbokföringsdatum",
      "definition" : "Folkbokföringsdatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.sarskildPostadress.scbNyckelkod",
      "path" : "lookupresidentforfullprofile.personPost.sarskildPostadress.scbNyckelkod",
      "short" : "SCB Nyckelkod",
      "definition" : "SCB Nyckelkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.hanvisningsPersonNr",
      "path" : "lookupresidentforfullprofile.personPost.hanvisningsPersonNr",
      "short" : "Hänvisningspersonnummer",
      "definition" : "value = personnummer eller tilldelat personnummer/samordningsnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.utlandsadress",
      "path" : "lookupresidentforfullprofile.personPost.utlandsadress",
      "short" : "Utlandsadress",
      "definition" : "Utlandsadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.utlandsadress.utdelningsadress1",
      "path" : "lookupresidentforfullprofile.personPost.utlandsadress.utdelningsadress1",
      "short" : "Utdelningsadress, rad 1",
      "definition" : "Utdelningsadress, rad 1",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.utlandsadress.utdelningsadress2",
      "path" : "lookupresidentforfullprofile.personPost.utlandsadress.utdelningsadress2",
      "short" : "Utdelningsadress, rad 2",
      "definition" : "Utdelningsadress, rad 2",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.utlandsadress.utdelningsadress3",
      "path" : "lookupresidentforfullprofile.personPost.utlandsadress.utdelningsadress3",
      "short" : "Utdelningsadress, rad 3",
      "definition" : "Utdelningsadress, rad 3",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.utlandsadress.land",
      "path" : "lookupresidentforfullprofile.personPost.utlandsadress.land",
      "short" : "Land",
      "definition" : "Land",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.utlandsadress.utlandsadressdatum",
      "path" : "lookupresidentforfullprofile.personPost.utlandsadress.utlandsadressdatum",
      "short" : "Datum för utlandsadress",
      "definition" : "Datum för utlandsadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.utlandsadress.rostrattsdatum",
      "path" : "lookupresidentforfullprofile.personPost.utlandsadress.rostrattsdatum",
      "short" : "Datum för rösträtt",
      "definition" : "Datum för rösträtt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.civilstand",
      "path" : "lookupresidentforfullprofile.personPost.civilstand",
      "short" : "Civilstånd",
      "definition" : "Civilstånd",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.civilstand.civilstandKod",
      "path" : "lookupresidentforfullprofile.personPost.civilstand.civilstandKod",
      "short" : "Civilståndskod",
      "definition" : "Civilståndskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/civilstandkod-vs"
      }
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.civilstand.civilstandsdatum",
      "path" : "lookupresidentforfullprofile.personPost.civilstand.civilstandsdatum",
      "short" : "Civilståndsdatum",
      "definition" : "Civilståndsdatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.fodelse",
      "path" : "lookupresidentforfullprofile.personPost.fodelse",
      "short" : "Födelseuppgifter",
      "definition" : "Födelseuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.fodelse.hemortSverige",
      "path" : "lookupresidentforfullprofile.personPost.fodelse.hemortSverige",
      "short" : "Hemort i Sverige",
      "definition" : "Hemort i Sverige",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.fodelse.hemortSverige.fodelselanKod",
      "path" : "lookupresidentforfullprofile.personPost.fodelse.hemortSverige.fodelselanKod",
      "short" : "Kod för födelselän",
      "definition" : "Kod för födelselän",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.fodelse.hemortSverige.fodelseforsamling",
      "path" : "lookupresidentforfullprofile.personPost.fodelse.hemortSverige.fodelseforsamling",
      "short" : "Kod för födelseförsamling",
      "definition" : "Kod för födelseförsamling",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.fodelse.ortUtlandet",
      "path" : "lookupresidentforfullprofile.personPost.fodelse.ortUtlandet",
      "short" : "Födelseort i utlandet",
      "definition" : "Födelseort i utlandet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.fodelse.ortUtlandet.fodelseortUtland",
      "path" : "lookupresidentforfullprofile.personPost.fodelse.ortUtlandet.fodelseortUtland",
      "short" : "Födelseort vid utlandsfödsel",
      "definition" : "Födelseort vid utlandsfödsel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.fodelse.ortUtlandet.styrkt",
      "path" : "lookupresidentforfullprofile.personPost.fodelse.ortUtlandet.styrkt",
      "short" : "Födelsen är styrkt",
      "definition" : "Födelsen är styrkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.fodelse.ortUtlandet.fodelseland",
      "path" : "lookupresidentforfullprofile.personPost.fodelse.ortUtlandet.fodelseland",
      "short" : "Födelseland",
      "definition" : "Födelseland",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.invandring",
      "path" : "lookupresidentforfullprofile.personPost.invandring",
      "short" : "Invandringsuppgifter",
      "definition" : "Invandringsuppgifter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.invandring.invandringsdatum",
      "path" : "lookupresidentforfullprofile.personPost.invandring.invandringsdatum",
      "short" : "Invandringsdatum",
      "definition" : "Invandringsdatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer",
      "path" : "lookupresidentforfullprofile.personPost.relationer",
      "short" : "Relationer till andra personer",
      "definition" : "Relationer till andra personer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation",
      "short" : "Relation",
      "definition" : "Relation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationId",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationId",
      "short" : "Identitet för den relaterade personen",
      "definition" : "Identitet för den relaterade personen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "lookupresidentforfullprofile-relation-id-xor",
        "severity" : "error",
        "human" : "Exakt ett av relationPersonNr och relationFodelsetidNr ska anges för en relation (enligt kommentar i källschemat: 'ett av värdena måste vara satta, men inte båda').",
        "expression" : "relationPersonNr.exists() xor relationFodelsetidNr.exists()",
        "source" : "https://fhir.inera.se/ig/population-residentmaster/StructureDefinition/lookupresidentforfullprofile"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationId.relationPersonNr",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationId.relationPersonNr",
      "short" : "Personnummer för den relaterade personen",
      "definition" : "Personnummer för den relaterade personen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationId.relationFodelsetidNr",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationId.relationFodelsetidNr",
      "short" : "Födelsetid+nollor för relaterad person utan personnummer",
      "definition" : "Används när relationen aldrig folkbokförts eller saknar korrekt personnummer. Format ÅÅÅÅMMDD0000 (kan ha nollor i hela eller delar av födelsetiden).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationstyp",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationstyp",
      "short" : "Relationstyp",
      "definition" : "Relationstyp",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/relationstyp-vs"
      }
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationFromdatum",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationFromdatum",
      "short" : "Relation från-och-med-datum",
      "definition" : "Relation från-och-med-datum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationTomdatum",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationTomdatum",
      "short" : "Relation till-och-med-datum",
      "definition" : "Relation till-och-med-datum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn",
      "short" : "Namnuppgifter för den relaterade personen",
      "definition" : "Samma poststruktur som personPost.personNamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.aviseringsnamn",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.aviseringsnamn",
      "short" : "Aviseringsnamn",
      "definition" : "Aviseringsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.fornamn",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.fornamn",
      "short" : "Förnamn",
      "definition" : "Förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.tilltalsnamnsmarkering",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.tilltalsnamnsmarkering",
      "short" : "Tilltalsnamnsmarkering",
      "definition" : "Tilltalsnamnsmarkering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.mellannamn",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.mellannamn",
      "short" : "Mellannamn",
      "definition" : "Mellannamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.efternamn",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationNamn.efternamn",
      "short" : "Efternamn",
      "definition" : "Efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationAvregistrering",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationAvregistrering",
      "short" : "Avregistreringsuppgifter för den relaterade personen",
      "definition" : "Samma poststruktur som personPost.avregistrering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationAvregistrering.avregistreringsorsakKod",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationAvregistrering.avregistreringsorsakKod",
      "short" : "Avregistreringsorsak",
      "definition" : "Avregistreringsorsak",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/avregistreringsorsak-vs"
      }
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationAvregistrering.avregistreringsdatum",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationAvregistrering.avregistreringsdatum",
      "short" : "Avregistreringsdatum",
      "definition" : "Avregistreringsdatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationAvregistrering.avregistreringsorsakKodKomplett",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationAvregistrering.avregistreringsorsakKodKomplett",
      "short" : "Avregistreringsorsak (komplett kodverk)",
      "definition" : "Avregistreringsorsak (komplett kodverk)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/avregistreringsorsakkomplett-vs"
      }
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.relationer.relation.relationStatus",
      "path" : "lookupresidentforfullprofile.personPost.relationer.relation.relationStatus",
      "short" : "Relationsstatus",
      "definition" : "Aviseras endast vid regelbunden ändringspost.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/population-residentmaster/ValueSet/relationstatus-vs"
      }
    },
    {
      "id" : "lookupresidentforfullprofile.personPost.distriktskod",
      "path" : "lookupresidentforfullprofile.personPost.distriktskod",
      "short" : "Distriktskod",
      "definition" : "Enligt Skatteverket. Heltal 0–999999.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
