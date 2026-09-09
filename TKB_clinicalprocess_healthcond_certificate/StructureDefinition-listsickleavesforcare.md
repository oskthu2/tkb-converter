# ListSickLeavesForCare - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListSickLeavesForCare**

## Logical Model: ListSickLeavesForCare 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listsickleavesforcare | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:ListSickLeavesForCare |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet ListSickLeavesForCare (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListSickLeavesForCare:1). Representerar responsens lista med pågående sjukfall på en enhet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-listsickleavesforcare.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listsickleavesforcare.csv), [Excel](StructureDefinition-listsickleavesforcare.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listsickleavesforcare",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listsickleavesforcare",
  "version" : "4.1-RC1",
  "name" : "ListSickLeavesForCare",
  "title" : "ListSickLeavesForCare",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet ListSickLeavesForCare\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListSickLeavesForCare:1).\nRepresenterar responsens lista med pågående sjukfall på en enhet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listsickleavesforcare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listsickleavesforcare",
      "path" : "listsickleavesforcare",
      "short" : "ListSickLeavesForCare",
      "definition" : "Logisk modell för tjänstekontraktet ListSickLeavesForCare\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListSickLeavesForCare:1).\nRepresenterar responsens lista med pågående sjukfall på en enhet."
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista",
      "path" : "listsickleavesforcare.sjukfallLista",
      "short" : "Lista med sjukfall",
      "definition" : "Lista med sjukfall",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall",
      "short" : "Ett pågående sjukfall",
      "definition" : "Ett pågående sjukfall",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.personId",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.personId",
      "short" : "Patientens person- eller samordningsnummer",
      "definition" : "Patientens person- eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.patientFullstandigtNamn",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.patientFullstandigtNamn",
      "short" : "Patientens namn",
      "definition" : "Patientens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.enhetsId",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.enhetsId",
      "short" : "HSA-id för enhet",
      "definition" : "HSA-id för enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.personalId",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.personalId",
      "short" : "HSA-id för HoS-person som signerat nuvarande intyg",
      "definition" : "HSA-id för HoS-person som signerat nuvarande intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.startdatum",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.startdatum",
      "short" : "Datum då sjukfallet startade",
      "definition" : "Datum då sjukfallet startade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.slutdatum",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.slutdatum",
      "short" : "Datum då sjukfallet avslutas om det ej förlängs",
      "definition" : "Datum då sjukfallet avslutas om det ej förlängs",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod",
      "short" : "Huvuddiagnoskod i giltigt intyg",
      "definition" : "Huvuddiagnoskod i giltigt intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.code",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.code",
      "short" : "Diagnoskod",
      "definition" : "Diagnoskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.codeSystem",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.codeSystem",
      "short" : "Identifierare för kodsystem (om känt)",
      "definition" : "Identifierare för kodsystem (om känt)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.codeSystemName",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.codeSystemName",
      "short" : "Namn på kodsystem (används ej)",
      "definition" : "Namn på kodsystem (används ej)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.codeSystemVersion",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.codeSystemVersion",
      "short" : "Version på kodsystem (används ej)",
      "definition" : "Version på kodsystem (används ej)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.displayName",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.displayName",
      "short" : "Klartext för kod (används ej)",
      "definition" : "Klartext för kod (används ej)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.originalText",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.diagnoskod.originalText",
      "short" : "Beskrivande text (används ej)",
      "definition" : "Beskrivande text (används ej)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.antalIntyg",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.antalIntyg",
      "short" : "Antal intyg som ingår i sjukfallet",
      "definition" : "Antal intyg som ingår i sjukfallet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningslangd",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningslangd",
      "short" : "Sjukfallets totala längd i dagar",
      "definition" : "Sjukfallets totala längd i dagar",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningsgrad",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningsgrad",
      "short" : "Sjukskrivningsgradsinfo",
      "definition" : "Sjukskrivningsgradsinfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningsgrad.aktivGrad",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningsgrad.aktivGrad",
      "short" : "Aktiv sjukskrivningsgrad (%) vid hämtningstidpunkt",
      "definition" : "Aktiv sjukskrivningsgrad (%) vid hämtningstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningsgrad.grader",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningsgrad.grader",
      "short" : "Samtliga sjukskrivningsgrader i giltigt intyg",
      "definition" : "Samtliga sjukskrivningsgrader i giltigt intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningsgrad.grader.grad",
      "path" : "listsickleavesforcare.sjukfallLista.sjukfall.sjukskrivningsgrad.grader.grad",
      "short" : "Sjukskrivningsgrad (%)",
      "definition" : "Sjukskrivningsgrad (%)",
      "min" : 1,
      "max" : "4",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
