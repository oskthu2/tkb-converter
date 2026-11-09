# GetFmb - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFmb**

## Logical Model: GetFmb 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getfmb | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:GetFmb |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetFmb (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1). Representerar responsens informationsstruktur — beslutsunderlag från FMB (Försäkringsmedicinskt beslutsstöd). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processmanagement-decisionsupport-insurancemedicinedecisio|current/StructureDefinition/StructureDefinition-getfmb.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getfmb.csv), [Excel](StructureDefinition-getfmb.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getfmb",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getfmb",
  "version" : "1.0",
  "name" : "GetFmb",
  "title" : "GetFmb",
  "status" : "active",
  "date" : "2026-11-09T03:46:58+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetFmb\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1).\nRepresenterar responsens informationsstruktur — beslutsunderlag från FMB\n(Försäkringsmedicinskt beslutsstöd).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getfmb",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getfmb",
      "path" : "getfmb",
      "short" : "GetFmb",
      "definition" : "Logisk modell för tjänstekontraktet GetFmb\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetFmb:1).\nRepresenterar responsens informationsstruktur — beslutsunderlag från FMB\n(Försäkringsmedicinskt beslutsstöd)."
    },
    {
      "id" : "getfmb.beslutsunderlag",
      "path" : "getfmb.beslutsunderlag",
      "short" : "BeslutsunderlagType",
      "definition" : "Beslutsunderlag innehåller information om beslutsunderlag som kan användas vid bedömning om sjukskrivning. Ett beslutunderlag kan användas som underlag för bedömning när samtliga villkor kopplades till klassen är uppfyllda.",
      "comment" : "TKB-fält: `beslutsunderlag` (`BeslutsunderlagType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.underlagsId",
      "path" : "getfmb.beslutsunderlag.underlagsId",
      "short" : "underlagsId",
      "definition" : "Globalt unik identifierare för beslutsunderlaget.",
      "comment" : "TKB-fält: `../underlagsId` (`IItype`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.giltighetstid",
      "path" : "getfmb.beslutsunderlag.giltighetstid",
      "short" : "IVLType",
      "definition" : "Tid då en rekommendation är giltig. Starttiden i intervallet skall alltid anges. Om sluttid ej anges är beslutsrekommendationen aktiv. Ett beslutsunderlag som inte är aktiv skall innehålla ett slutdatum, som ligger tidigare än aktuellt datum, eller ett startdatum som ligger senare än aktuellt datum.",
      "comment" : "TKB-fält: `../giltighetstid` (`IVL`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.giltighetstid.start",
      "path" : "getfmb.beslutsunderlag.giltighetstid.start",
      "short" : "start",
      "definition" : "Starttid",
      "comment" : "TKB-fält: `../../start` (`Date`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/DatumType"]
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.giltighetstid.slut",
      "path" : "getfmb.beslutsunderlag.giltighetstid.slut",
      "short" : "slut",
      "definition" : "Sluttid",
      "comment" : "TKB-fält: `../../slut` (`Date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/DatumType"]
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.version",
      "path" : "getfmb.beslutsunderlag.version",
      "short" : "version",
      "definition" : "Versionsnummer för ett beslutsunderlag. Versionen räknas upp när ett beslutsunderlag förändrats i sin innebörd eller ändrar giltighetstid.",
      "comment" : "TKB-fält: `../version` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.textuelltUnderlag",
      "path" : "getfmb.beslutsunderlag.textuelltUnderlag",
      "short" : "textuelltUnderlag",
      "definition" : "Varje beslutsunderlag beskrivs i textuell form, som omfattar alla villkor och rekommendationer som omfattas av beslutsunderlag samt annan information som är relevant i beslutsfattandet även om den informationen inte finns representerad i kodad form.",
      "comment" : "TKB-fält: `../textuelltUnderlag` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.sjukskrivningstidText",
      "path" : "getfmb.beslutsunderlag.sjukskrivningstidText",
      "short" : "sjukskrivningstidText",
      "definition" : "sjukskrivningstidText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.sjukskrivningstid",
      "path" : "getfmb.beslutsunderlag.sjukskrivningstid",
      "short" : "PQType",
      "definition" : "Totala sjukskrivningstidens längd med början från första intygsdag. Anges ej om sjukskrivningstiden inte kan kvantifieras.",
      "comment" : "TKB-fält: `../sjukskrivningstid` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.sjukskrivningstid.value",
      "path" : "getfmb.beslutsunderlag.sjukskrivningstid.value",
      "short" : "value",
      "definition" : "Värde för tidsangivelsen",
      "comment" : "TKB-fält: `../../value` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.sjukskrivningstid.unit",
      "path" : "getfmb.beslutsunderlag.sjukskrivningstid.unit",
      "short" : "unit",
      "definition" : "Enhet för tidsangivelsen enligt UCUM, månad=\"mo\", vecka = \"wk\", dag = \"d\"",
      "comment" : "TKB-fält: `../../unit` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.sjukskrivningsgrad",
      "path" : "getfmb.beslutsunderlag.sjukskrivningsgrad",
      "short" : "sjukskrivningsgrad",
      "definition" : "Anger grad av sjukskrivning. Exempel på värden: Heltid, Deltid",
      "comment" : "TKB-fält: `../sjukskrivningsgrad` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.senastAndrad",
      "path" : "getfmb.beslutsunderlag.senastAndrad",
      "short" : "senastAndrad",
      "definition" : "Anger när ett beslutsunderlag senast ändrats",
      "comment" : "TKB-fält: `../senastAndrad` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/TidpunktType"]
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.rehabiliteringsInformation",
      "path" : "getfmb.beslutsunderlag.rehabiliteringsInformation",
      "short" : "RehabilieringsinformationTyp",
      "definition" : "rehabiliteringsInformation",
      "comment" : "TKB-fält: `../rehabiliteringsInformation` (`RehabiliteringsInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.rehabiliteringsInformation.beskrivning",
      "path" : "getfmb.beslutsunderlag.rehabiliteringsInformation.beskrivning",
      "short" : "beskrivning",
      "definition" : "Text som beskriver en rehabiliteringsåtgärd",
      "comment" : "TKB-fält: `../../beskrivning` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor",
      "path" : "getfmb.beslutsunderlag.villkor",
      "short" : "VillkorType",
      "definition" : "Villkor för att ett beslutsunderlag skall vara uppfyllt.",
      "comment" : "TKB-fält: `../villkor*` (`VillkorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalArbetsbelastning",
      "path" : "getfmb.beslutsunderlag.villkor.urvalArbetsbelastning",
      "short" : "UrvalArbetsbelastningType",
      "definition" : "Anges om villkoret är beroende av en eller flera koder för arbetsbelastning",
      "comment" : "TKB-fält: `../../urvalArbetsbelastning` (`UrvalArbetsbelastningType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalArbetsbelastning.arbetsbelastning",
      "path" : "getfmb.beslutsunderlag.villkor.urvalArbetsbelastning.arbetsbelastning",
      "short" : "ArbetsbelastningType",
      "definition" : "Anger koder för arbetsbelastning för vilka minst en måste vara sann.",
      "comment" : "TKB-fält: `../../../arbetsbelastning` (`ArbetsbelastningType`, kardinalitet 1..*).\n\nObs: modellen anger 0..* där TKB:n anger 1..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalArbetsbelastning.arbetsbelastning.kod",
      "path" : "getfmb.beslutsunderlag.villkor.urvalArbetsbelastning.arbetsbelastning.kod",
      "short" : "GeneriskCVType",
      "definition" : "Arbetsbelastning som anges med ett lokalt småkodverk.",
      "comment" : "TKB-fält: `../../../../kod` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalKomplicerandeFaktor",
      "path" : "getfmb.beslutsunderlag.villkor.urvalKomplicerandeFaktor",
      "short" : "UrvalKomplicerandeFaktorType",
      "definition" : "Anges om villkoret är beroende av en eller flera koder för komplicerande faktorer",
      "comment" : "TKB-fält: `../../urvalKomplicerandeFaktor` (`UrvalKomplicerandeFaktorType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalKomplicerandeFaktor.komplicerandeFaktor",
      "path" : "getfmb.beslutsunderlag.villkor.urvalKomplicerandeFaktor.komplicerandeFaktor",
      "short" : "KomplicerandeFaktorType",
      "definition" : "Anger koder för komplicerande faktorer för vilka minst en måste vara sann.",
      "comment" : "TKB-fält: `../../../komplicerandeFaktor` (`KomplicerandeFaktorType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalKomplicerandeFaktor.komplicerandeFaktor.kod",
      "path" : "getfmb.beslutsunderlag.villkor.urvalKomplicerandeFaktor.komplicerandeFaktor.kod",
      "short" : "SnomedCTType",
      "definition" : "Komplicerandefaktor som anges med en kod. (Kod för den typ av observation som avses.)",
      "comment" : "TKB-fält: `../../../../kod` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalPlaneradAtgard",
      "path" : "getfmb.beslutsunderlag.villkor.urvalPlaneradAtgard",
      "short" : "UrvalPlaneradAtgardType",
      "definition" : "Anges om villkoret är beroende av en eller flera koder för planerade åtgärder",
      "comment" : "TKB-fält: `../../urvalPlaneradAtgard` (`UrvalPlaneradAtgardType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalPlaneradAtgard.planeradAtgard",
      "path" : "getfmb.beslutsunderlag.villkor.urvalPlaneradAtgard.planeradAtgard",
      "short" : "PlaneradAtgardType",
      "definition" : "Anger koder för planerade åtgärder för vilka minst en måste vara sann.",
      "comment" : "TKB-fält: `../../../planeradAtgard` (`PlaneradAtgardType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalPlaneradAtgard.planeradAtgard.kod",
      "path" : "getfmb.beslutsunderlag.villkor.urvalPlaneradAtgard.planeradAtgard.kod",
      "short" : "GeneriskCVType",
      "definition" : "Åtgärd som anges med en kod",
      "comment" : "TKB-fält: `../../../../kod` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalPagaendeAtgard",
      "path" : "getfmb.beslutsunderlag.villkor.urvalPagaendeAtgard",
      "short" : "UrvalPagaendeAtgardType",
      "definition" : "Anges om villkoret är beroende av en eller flera koder för pågående åtgärder",
      "comment" : "TKB-fält: `../../urvalPagaendeAtgard` (`UrvalPagaendeAtgardType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalPagaendeAtgard.pagaendeAtgard",
      "path" : "getfmb.beslutsunderlag.villkor.urvalPagaendeAtgard.pagaendeAtgard",
      "short" : "PagaendeAtgardType",
      "definition" : "Anger koder för pågående åtgärder för vilka minst en måste vara sann.",
      "comment" : "TKB-fält: `../../../pagaendeAtgard` (`PagaendeAtgardType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalPagaendeAtgard.pagaendeAtgard.kod",
      "path" : "getfmb.beslutsunderlag.villkor.urvalPagaendeAtgard.pagaendeAtgard.kod",
      "short" : "GeneriskCVType",
      "definition" : "Åtgärd som anges med en kod",
      "comment" : "TKB-fält: `../../../../kod` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSamsjuklighet",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSamsjuklighet",
      "short" : "UrvalSamsjuklighetType",
      "definition" : "Anges om villkoret är beroende av en eller flera koder för samsjuklighet",
      "comment" : "TKB-fält: `../../urvalSamsjuklighet` (`UrvalSamsjuklighetType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSamsjuklighet.samsjuklighet",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSamsjuklighet.samsjuklighet",
      "short" : "SamsjuklighetType",
      "definition" : "Anger koder för samsjuklighet för vilka minst en måste vara sann.",
      "comment" : "TKB-fält: `../../../samsjuklighet` (`SamsjuklighetType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSamsjuklighet.samsjuklighet.kod",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSamsjuklighet.samsjuklighet.kod",
      "short" : "ICD10SEType",
      "definition" : "Diagnos som anges med kod. (Kod för den typ av observation som avses.) Anges med ICD-10-SE kodverket",
      "comment" : "TKB-fält: `../../../../kod` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSjukdomsforlopp",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSjukdomsforlopp",
      "short" : "UrvalSjukdomsforloppType",
      "definition" : "Anges om villkoret är beroende av en eller flera koder för sjukdomsforlopp",
      "comment" : "TKB-fält: `../../UrvalSjukdomsforlopp` (`UrvalSjukdomsforloppType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSjukdomsforlopp.sjukdomsforlopp",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSjukdomsforlopp.sjukdomsforlopp",
      "short" : "SjukdomsforloppType",
      "definition" : "Anger koder för sjukdomsforlopp för vilka minst en måste vara sann.",
      "comment" : "TKB-fält: `../../../sjukdomsforlopp` (`SjukdomsforloppType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSjukdomsforlopp.sjukdomsforlopp.kod",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSjukdomsforlopp.sjukdomsforlopp.kod",
      "short" : "SnomedCTType",
      "definition" : "kod",
      "comment" : "TKB-fält: `../../../../kod` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSvarighetsgrad",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSvarighetsgrad",
      "short" : "UrvalSvarighetsgradType",
      "definition" : "Anges om villkoret är beroende av en eller flera koder för svårighetsgrad",
      "comment" : "TKB-fält: `../../urvalSvarighetsgrad` (`UrvalSvarighetsgradType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSvarighetsgrad.svarighetsgrad",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSvarighetsgrad.svarighetsgrad",
      "short" : "SvarighetsgradType",
      "definition" : "Anger koder för svårighetsgrad för vilka minst en måste vara sann.",
      "comment" : "TKB-fält: `../../../svarighetsgrad` (`SvarighetsgradType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalSvarighetsgrad.svarighetsgrad.kod",
      "path" : "getfmb.beslutsunderlag.villkor.urvalSvarighetsgrad.svarighetsgrad.kod",
      "short" : "SnomedCTType",
      "definition" : "Svårighetsgrad som anges med ett lokalt småkodverk. Giltiga värden är Lindrig, Medelsvår eller Svår.",
      "comment" : "TKB-fält: `../../../../kod` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalUtfordAtgard",
      "path" : "getfmb.beslutsunderlag.villkor.urvalUtfordAtgard",
      "short" : "UrvalUtfordAtgardType",
      "definition" : "urvalUtfordAtgard",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalUtfordAtgard.utfordAtgard",
      "path" : "getfmb.beslutsunderlag.villkor.urvalUtfordAtgard.utfordAtgard",
      "short" : "UtfordAtgardType",
      "definition" : "utfordAtgard",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.villkor.urvalUtfordAtgard.utfordAtgard.kod",
      "path" : "getfmb.beslutsunderlag.villkor.urvalUtfordAtgard.utfordAtgard.kod",
      "short" : "GeneriskCVType",
      "definition" : "Åtgärd som anges med en kod",
      "comment" : "TKB-fält: `../../../../kod` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.huvuddiagnos",
      "path" : "getfmb.beslutsunderlag.huvuddiagnos",
      "short" : "HuvuddiagnosType",
      "definition" : "Den diagnos för vilken beslutsunderlaget gäller.",
      "comment" : "TKB-fält: `../huvudDiagnos` (`HuvudDiagnosType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.beslutsunderlag.huvuddiagnos.kod",
      "path" : "getfmb.beslutsunderlag.huvuddiagnos.kod",
      "short" : "ICD10SEType",
      "definition" : "kod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.version",
      "path" : "getfmb.version",
      "short" : "VersionType",
      "definition" : "Versioninformation för hela FMB",
      "comment" : "TKB-fält: `version` (`versionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getfmb.version.senasteVersionsuppdatering",
      "path" : "getfmb.version.senasteVersionsuppdatering",
      "short" : "senasteVersionsuppdatering",
      "definition" : "Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret som föranlett ett nytt datum.",
      "comment" : "TKB-fält: `../senasteVersionsuppdatering` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/TidpunktType"]
      }]
    },
    {
      "id" : "getfmb.version.senateAndring",
      "path" : "getfmb.version.senateAndring",
      "short" : "senateAndring",
      "definition" : "senateAndring",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/TidpunktType"]
      }]
    }]
  }
}

```
