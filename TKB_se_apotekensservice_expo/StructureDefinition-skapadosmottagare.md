# SkapaDosmottagare — Response - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaDosmottagare — Response**

## Logical Model: SkapaDosmottagare — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapadosmottagare | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:SkapaDosmottagare |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i SkapaDosmottagare (urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-skapadosmottagare.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skapadosmottagare.csv), [Excel](StructureDefinition-skapadosmottagare.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skapadosmottagare",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapadosmottagare",
  "version" : "2.0.0",
  "name" : "SkapaDosmottagare",
  "title" : "SkapaDosmottagare — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i SkapaDosmottagare\n(urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapadosmottagare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skapadosmottagare",
      "path" : "skapadosmottagare",
      "short" : "SkapaDosmottagare — Response",
      "definition" : "Logisk modell för svaret i SkapaDosmottagare\n(urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareResponseType)."
    },
    {
      "id" : "skapadosmottagare.adress",
      "path" : "skapadosmottagare.adress",
      "short" : "adress",
      "definition" : "Adress till dosmottagare. Obligatorisk om typ = 'D'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.apoteksIdDosmottagare",
      "path" : "skapadosmottagare.apoteksIdDosmottagare",
      "short" : "apoteksIdDosmottagare",
      "definition" : "Apoteks-id för dosmottagare om dosmottagare är av typen apotek.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.arbetsplatskod",
      "path" : "skapadosmottagare.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.avdelning",
      "path" : "skapadosmottagare.avdelning",
      "short" : "avdelning",
      "definition" : "Avdelning inom dosmottagare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.dosmottagarId",
      "path" : "skapadosmottagare.dosmottagarId",
      "short" : "dosmottagarId",
      "definition" : "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.kommunkod",
      "path" : "skapadosmottagare.kommunkod",
      "short" : "kommunkod",
      "definition" : "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.lanskod",
      "path" : "skapadosmottagare.lanskod",
      "short" : "lanskod",
      "definition" : "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.mottagarnamn",
      "path" : "skapadosmottagare.mottagarnamn",
      "short" : "mottagarnamn",
      "definition" : "Namn på dosmottagare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.postnummer",
      "path" : "skapadosmottagare.postnummer",
      "short" : "postnummer",
      "definition" : "Postnummer till dosmottagare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.postort",
      "path" : "skapadosmottagare.postort",
      "short" : "postort",
      "definition" : "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare.typ",
      "path" : "skapadosmottagare.typ",
      "short" : "typ",
      "definition" : "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
