# KontaktuppgifterHamta — Response - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontaktuppgifterHamta — Response**

## Logical Model: KontaktuppgifterHamta — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifterhamta | *Version*:4.0 |
| Draft as of 2026-11-09 | *Computable Name*:KontaktuppgifterHamta |
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
  "version" : "4.0",
  "name" : "KontaktuppgifterHamta",
  "title" : "KontaktuppgifterHamta — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
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
      "short" : "E-postadress till aktörens servicedesk",
      "definition" : "E-postadress till aktörens servicedesk",
      "comment" : "TKB-fält: `epostadressServicedesk` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista",
      "short" : "KontaktpersonResponse",
      "definition" : "Kontaktpersoner",
      "comment" : "TKB-fält: `kontaktpersonLista` (`KontaktpersonResponse`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.befattning",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.befattning",
      "short" : "Kontaktpersonens befattning.",
      "definition" : "Kontaktpersonens befattning.",
      "comment" : "TKB-fält: `../befattning` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.efternamn",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.efternamn",
      "short" : "Efternamn på kontaktperson hos aktören.",
      "definition" : "Efternamn på kontaktperson hos aktören.",
      "comment" : "TKB-fält: `../efternamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.epostadress",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.epostadress",
      "short" : "Kontaktpersonens e-postadress",
      "definition" : "Kontaktpersonens e-postadress",
      "comment" : "TKB-fält: `../epostadress` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.fornamn",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.fornamn",
      "short" : "Förnamn på kontaktperson hos aktören.",
      "definition" : "Förnamn på kontaktperson hos aktören.",
      "comment" : "TKB-fält: `../fornamn` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.kontaktpersonLista.telefonnummer",
      "path" : "kontaktuppgifterhamta.kontaktpersonLista.telefonnummer",
      "short" : "Kontaktpersonens telefonnummer.",
      "definition" : "Kontaktpersonens telefonnummer.",
      "comment" : "TKB-fält: `../telefonnummer` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.orgNr",
      "path" : "kontaktuppgifterhamta.orgNr",
      "short" : "Aktörens organisationsnummer",
      "definition" : "Aktörens organisationsnummer",
      "comment" : "TKB-fält: `orgNr` (`long`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifterhamta.telefonnummerServicedesk",
      "path" : "kontaktuppgifterhamta.telefonnummerServicedesk",
      "short" : "Telefonnummer till aktörens servicedesk",
      "definition" : "Telefonnummer till aktörens servicedesk",
      "comment" : "TKB-fält: `telefonnummerServicedesk` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
