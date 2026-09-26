# KontaktuppgifterHamta — Response - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontaktuppgifterHamta — Response**

## Logical Model: KontaktuppgifterHamta — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifterhamta | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:KontaktuppgifterHamta |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i KontaktuppgifterHamta (urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4, KontaktuppgifterHamtaResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-kontaktuppgifterhamta.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kontaktuppgifterhamta.csv), [Excel](StructureDefinition-kontaktuppgifterhamta.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kontaktuppgifterhamta",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifterhamta",
  "version" : "2.0.0",
  "name" : "KontaktuppgifterHamta",
  "title" : "KontaktuppgifterHamta — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i KontaktuppgifterHamta\n(urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4, KontaktuppgifterHamtaResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifterhamta",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kontaktuppgifterhamta",
      "path" : "kontaktuppgifterhamta",
      "short" : "KontaktuppgifterHamta — Response",
      "definition" : "Logisk modell för svaret i KontaktuppgifterHamta\n(urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4, KontaktuppgifterHamtaResponseType)."
    },
    {
      "id" : "kontaktuppgifterhamta.epostadressServicedesk",
      "path" : "kontaktuppgifterhamta.epostadressServicedesk",
      "short" : "epostadressServicedesk",
      "definition" : "E-postadress till aktörens servicedesk",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista",
      "short" : "kontaktpersonLista",
      "definition" : "Kontaktpersoner",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.befattning",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.befattning",
      "short" : "befattning",
      "definition" : "Kontaktpersonens befattning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.efternamn",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.efternamn",
      "short" : "efternamn",
      "definition" : "Efternamn på kontaktperson hos aktören.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.epostadress",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.epostadress",
      "short" : "epostadress",
      "definition" : "Kontaktpersonens e-postadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.fornamn",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.fornamn",
      "short" : "fornamn",
      "definition" : "Förnamn på kontaktperson hos aktören.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.telefonnummer",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "Kontaktpersonens telefonnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.orgNr",
      "path" : "kontaktuppgifterhamta.orgNr",
      "short" : "orgNr",
      "definition" : "Aktörens organisationsnummer (xs:long i schemat.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.telefonnummerServicedesk",
      "path" : "kontaktuppgifterhamta.telefonnummerServicedesk",
      "short" : "telefonnummerServicedesk",
      "definition" : "Telefonnummer till aktörens servicedesk",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
