# SkapaDosmottagare — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaDosmottagare — Request**

## Logical Model: SkapaDosmottagare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapadosmottagare-request | *Version*:4.0 |
| Draft as of 2026-11-09 | *Computable Name*:SkapaDosmottagareRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i SkapaDosmottagare (urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-skapadosmottagare-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-skapadosmottagare-request.csv), [Excel](StructureDefinition-skapadosmottagare-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "skapadosmottagare-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapadosmottagare-request",
  "version" : "4.0",
  "name" : "SkapaDosmottagareRequest",
  "title" : "SkapaDosmottagare — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i SkapaDosmottagare\n(urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapadosmottagare-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "skapadosmottagare-request",
      "path" : "skapadosmottagare-request",
      "short" : "SkapaDosmottagare — Request",
      "definition" : "Logisk modell för begäran i SkapaDosmottagare\n(urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL.",
      "constraint" : [{
        "key" : "skapadosmottagare-request-adress-when-d",
        "severity" : "error",
        "human" : "adress och postort ska anges när typ = 'D' (direktleverans).",
        "expression" : "typ = 'D' implies (adress.exists() and postort.exists())",
        "source" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapadosmottagare-request"
      }]
    },
    {
      "id" : "skapadosmottagare-request.adress",
      "path" : "skapadosmottagare-request.adress",
      "short" : "Adress till dosmottagare. Obligatorisk om typ = 'D'.",
      "definition" : "Adress till dosmottagare. Obligatorisk om typ = 'D'.",
      "comment" : "TKB-fält: `adress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.apoteksIdDosmottagare",
      "path" : "skapadosmottagare-request.apoteksIdDosmottagare",
      "short" : "Apoteks-id för dosmottagare om dosmottagare är av typen apotek.",
      "definition" : "Apoteks-id för dosmottagare om dosmottagare är av typen apotek.",
      "comment" : "TKB-fält: `apoteksIdDosmottagare` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.apoteksIdDosproducent",
      "path" : "skapadosmottagare-request.apoteksIdDosproducent",
      "short" : "Apoteks-id för dosproducent som dosmottagaren ska registreras på.",
      "definition" : "Apoteks-id för dosproducent som dosmottagaren ska registreras på.",
      "comment" : "TKB-fält: `apoteksIdDosproducent` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.arbetsplatskod",
      "path" : "skapadosmottagare-request.arbetsplatskod",
      "short" : "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning.",
      "definition" : "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning.",
      "comment" : "TKB-fält: `arbetsplatskod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.avdelning",
      "path" : "skapadosmottagare-request.avdelning",
      "short" : "Avdelning inom dosmottagare.",
      "definition" : "Avdelning inom dosmottagare.",
      "comment" : "TKB-fält: `avdelning` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.dosmottagarId",
      "path" : "skapadosmottagare-request.dosmottagarId",
      "short" : "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket.",
      "definition" : "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket.",
      "comment" : "TKB-fält: `dosmottagarId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.kommunkod",
      "path" : "skapadosmottagare-request.kommunkod",
      "short" : "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB.",
      "definition" : "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB.",
      "comment" : "TKB-fält: `kommunkod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.lanskod",
      "path" : "skapadosmottagare-request.lanskod",
      "short" : "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB.",
      "definition" : "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB.",
      "comment" : "TKB-fält: `lanskod` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.mottagarnamn",
      "path" : "skapadosmottagare-request.mottagarnamn",
      "short" : "Namn på dosmottagare.",
      "definition" : "Namn på dosmottagare.",
      "comment" : "TKB-fält: `mottagarnamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.postnummer",
      "path" : "skapadosmottagare-request.postnummer",
      "short" : "Postnummer till dosmottagare.",
      "definition" : "Postnummer till dosmottagare.",
      "comment" : "TKB-fält: `postnummer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.postort",
      "path" : "skapadosmottagare-request.postort",
      "short" : "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'.",
      "definition" : "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'.",
      "comment" : "TKB-fält: `postort` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.typ",
      "path" : "skapadosmottagare-request.typ",
      "short" : "typ",
      "definition" : "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek).",
      "comment" : "TKB-fält: `typ` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
