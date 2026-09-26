# SkapaDosmottagare — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SkapaDosmottagare — Request**

## Logical Model: SkapaDosmottagare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/skapadosmottagare-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:SkapaDosmottagareRequest |
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
  "version" : "2.0.0",
  "name" : "SkapaDosmottagareRequest",
  "title" : "SkapaDosmottagare — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
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
      "definition" : "Logisk modell för begäran i SkapaDosmottagare\n(urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "skapadosmottagare-request.logicalAddress",
      "path" : "skapadosmottagare-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader",
      "path" : "skapadosmottagare-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.forskrivarkod",
      "path" : "skapadosmottagare-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.legitimationskod",
      "path" : "skapadosmottagare-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.fornamn",
      "path" : "skapadosmottagare-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.efternamn",
      "path" : "skapadosmottagare-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.yrkesgrupp",
      "path" : "skapadosmottagare-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.befattningskod",
      "path" : "skapadosmottagare-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.arbetsplatskod",
      "path" : "skapadosmottagare-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.arbetsplatsnamn",
      "path" : "skapadosmottagare-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.postort",
      "path" : "skapadosmottagare-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.postadress",
      "path" : "skapadosmottagare-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.postnummer",
      "path" : "skapadosmottagare-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.telefonnummer",
      "path" : "skapadosmottagare-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.requestId",
      "path" : "skapadosmottagare-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.rollnamn",
      "path" : "skapadosmottagare-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.hsaID",
      "path" : "skapadosmottagare-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.katalog",
      "path" : "skapadosmottagare-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.organisationsnummer",
      "path" : "skapadosmottagare-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.systemnamn",
      "path" : "skapadosmottagare-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.systemversion",
      "path" : "skapadosmottagare-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.argosHeader.systemIp",
      "path" : "skapadosmottagare-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.adress",
      "path" : "skapadosmottagare-request.adress",
      "short" : "adress",
      "definition" : "Adress till dosmottagare. Obligatorisk om typ = 'D'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.apoteksIdDosmottagare",
      "path" : "skapadosmottagare-request.apoteksIdDosmottagare",
      "short" : "apoteksIdDosmottagare",
      "definition" : "Apoteks-id för dosmottagare om dosmottagare är av typen apotek.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.apoteksIdDosproducent",
      "path" : "skapadosmottagare-request.apoteksIdDosproducent",
      "short" : "apoteksIdDosproducent",
      "definition" : "Apoteks-id för dosproducent som dosmottagaren ska registreras på.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.arbetsplatskod",
      "path" : "skapadosmottagare-request.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.avdelning",
      "path" : "skapadosmottagare-request.avdelning",
      "short" : "avdelning",
      "definition" : "Avdelning inom dosmottagare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.dosmottagarId",
      "path" : "skapadosmottagare-request.dosmottagarId",
      "short" : "dosmottagarId",
      "definition" : "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.kommunkod",
      "path" : "skapadosmottagare-request.kommunkod",
      "short" : "kommunkod",
      "definition" : "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.lanskod",
      "path" : "skapadosmottagare-request.lanskod",
      "short" : "lanskod",
      "definition" : "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.mottagarnamn",
      "path" : "skapadosmottagare-request.mottagarnamn",
      "short" : "mottagarnamn",
      "definition" : "Namn på dosmottagare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.postnummer",
      "path" : "skapadosmottagare-request.postnummer",
      "short" : "postnummer",
      "definition" : "Postnummer till dosmottagare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "skapadosmottagare-request.postort",
      "path" : "skapadosmottagare-request.postort",
      "short" : "postort",
      "definition" : "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'.",
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
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
