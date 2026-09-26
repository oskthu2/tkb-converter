# Prisfraga — Response - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prisfraga — Response**

## Logical Model: Prisfraga — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/prisfraga | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:Prisfraga |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i Prisfraga (urn:riv:se.apotekensservice:pris:PrisfragaResponder:4, PrisfragaResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-prisfraga.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-prisfraga.csv), [Excel](StructureDefinition-prisfraga.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "prisfraga",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/prisfraga",
  "version" : "2.0.0",
  "name" : "Prisfraga",
  "title" : "Prisfraga — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i Prisfraga\n(urn:riv:se.apotekensservice:pris:PrisfragaResponder:4, PrisfragaResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/prisfraga",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "prisfraga",
      "path" : "prisfraga",
      "short" : "Prisfraga — Response",
      "definition" : "Logisk modell för svaret i Prisfraga\n(urn:riv:se.apotekensservice:pris:PrisfragaResponder:4, PrisfragaResponseType)."
    },
    {
      "id" : "prisfraga.bruttoBeloppHogkostnad",
      "path" : "prisfraga.bruttoBeloppHogkostnad",
      "short" : "bruttoBeloppHogkostnad",
      "definition" : "Förmånsgrundande bruttobelopp kopplat till högkostnadsskyddet. Bruttobelopp inkl. ev. moms, att tillgodoräkna i högkostnadsskyddet. Gäller förmånskod = R. Vid kreditering blir detta värde negativt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.bruttoPris",
      "path" : "prisfraga.bruttoPris",
      "short" : "bruttoPris",
      "definition" : "Summa apoteksaktörs utpris inkl. ev. moms för receptexpeditionen. Vid kreditering blir detta värde negativt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.egenAvgiftHogkostnad",
      "path" : "prisfraga.egenAvgiftHogkostnad",
      "short" : "egenAvgiftHogkostnad",
      "definition" : "Summa kundens egenavgift kopplat till högkostnadsskyddet. Egenavgift inkl. ev. moms, att tillgodoräkna i högkostnadsskyddet. Gäller förmånskod = R. Vid kreditering blir detta värde negativt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.egenAvgiftLivsmedel",
      "path" : "prisfraga.egenAvgiftLivsmedel",
      "short" : "egenAvgiftLivsmedel",
      "definition" : "Summa kundens egenavgift inkl. moms för livsmedel till barn under 16 år. Gäller förmånskod = L. Max 120 kr. Vid kreditering blir detta värde negativt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.kundKostnad",
      "path" : "prisfraga.kundKostnad",
      "short" : "kundKostnad",
      "definition" : "Kostnad kunden skall betala. Egenavgift, pristillägg samt pris inkl. ev . moms för varor utan förmån. Vid kreditering blir detta värde negativt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.landstingetsFormanskostnad",
      "path" : "prisfraga.landstingetsFormanskostnad",
      "short" : "landstingetsFormanskostnad",
      "definition" : "Summa förmån inkl. ev. moms för receptexpeditionen. Gäller förmånskod = R, F och L. Vid kreditering blir detta värde negativt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.personnummer",
      "path" : "prisfraga.personnummer",
      "short" : "personnummer",
      "definition" : "Personnummer för person som prisfrågan gäller. Om personnummer saknas, använd tjänsten AnonymPrisfraga",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga.prisTillagg",
      "path" : "prisfraga.prisTillagg",
      "short" : "prisTillagg",
      "definition" : "Summa pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.rader",
      "path" : "prisfraga.rader",
      "short" : "rader",
      "definition" : "Rader",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "prisfraga.rader.bruttoPris",
      "path" : "prisfraga.rader.bruttoPris",
      "short" : "bruttoPris",
      "definition" : "Apoteksaktörs utpris för receptrad inkl. ev. moms. Vid kreditering blir detta värde negativt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.rader.prisTillagg",
      "path" : "prisfraga.rader.prisTillagg",
      "short" : "prisTillagg",
      "definition" : "Radens ev. pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga.rader.radNr",
      "path" : "prisfraga.rader.radNr",
      "short" : "radNr",
      "definition" : "Radnr.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
