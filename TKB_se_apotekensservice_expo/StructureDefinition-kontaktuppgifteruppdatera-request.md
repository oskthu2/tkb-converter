# KontaktuppgifterUppdatera — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontaktuppgifterUppdatera — Request**

## Logical Model: KontaktuppgifterUppdatera — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifteruppdatera-request | *Version*:5.0 |
| Draft as of 2026-11-09 | *Computable Name*:KontaktuppgifterUppdateraRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i KontaktuppgifterUppdatera (urn:riv:se.apotekensservice:expo:KontaktuppgifterUppdateraResponder:5, KontaktuppgifterUppdateraRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-kontaktuppgifteruppdatera-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kontaktuppgifteruppdatera-request.csv), [Excel](StructureDefinition-kontaktuppgifteruppdatera-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kontaktuppgifteruppdatera-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifteruppdatera-request",
  "version" : "5.0",
  "name" : "KontaktuppgifterUppdateraRequest",
  "title" : "KontaktuppgifterUppdatera — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i KontaktuppgifterUppdatera\n(urn:riv:se.apotekensservice:expo:KontaktuppgifterUppdateraResponder:5, KontaktuppgifterUppdateraRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifteruppdatera-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kontaktuppgifteruppdatera-request",
      "path" : "kontaktuppgifteruppdatera-request",
      "short" : "KontaktuppgifterUppdatera — Request",
      "definition" : "Logisk modell för begäran i KontaktuppgifterUppdatera\n(urn:riv:se.apotekensservice:expo:KontaktuppgifterUppdateraResponder:5, KontaktuppgifterUppdateraRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.epostadressServicedesk",
      "path" : "kontaktuppgifteruppdatera-request.epostadressServicedesk",
      "short" : "E-postadress till aktörens servicedesk",
      "definition" : "E-postadress till aktörens servicedesk",
      "comment" : "TKB-fält: `epostadressServicedesk` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista",
      "short" : "KontaktpersonRequest",
      "definition" : "Kontaktpersoner. Minst en kontaktperson måste anges.",
      "comment" : "TKB-fält: `kontaktpersonLista` (`KontaktpersonRequest`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.befattning",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.befattning",
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
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.efternamn",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.efternamn",
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
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.epostadress",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.epostadress",
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
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.fornamn",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.fornamn",
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
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.telefonnummer",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.telefonnummer",
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
      "id" : "kontaktuppgifteruppdatera-request.orgNr",
      "path" : "kontaktuppgifteruppdatera-request.orgNr",
      "short" : "Aktörens organisationsnummer",
      "definition" : "Aktörens organisationsnummer",
      "comment" : "TKB-fält: `orgNr` (`long`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.telefonnummerServicedesk",
      "path" : "kontaktuppgifteruppdatera-request.telefonnummerServicedesk",
      "short" : "Telefonnummer till aktörens servicedesk",
      "definition" : "Telefonnummer till aktörens servicedesk",
      "comment" : "TKB-fält: `telefonnummerServicedesk` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
