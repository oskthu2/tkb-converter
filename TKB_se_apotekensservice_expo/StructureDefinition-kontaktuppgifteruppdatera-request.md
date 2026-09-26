# KontaktuppgifterUppdatera — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontaktuppgifterUppdatera — Request**

## Logical Model: KontaktuppgifterUppdatera — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifteruppdatera-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:KontaktuppgifterUppdateraRequest |
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
  "version" : "2.0.0",
  "name" : "KontaktuppgifterUppdateraRequest",
  "title" : "KontaktuppgifterUppdatera — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:42:44+00:00",
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
      "id" : "kontaktuppgifteruppdatera-request.logicalAddress",
      "path" : "kontaktuppgifteruppdatera-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.forskrivarkod",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.legitimationskod",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.fornamn",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.efternamn",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.yrkesgrupp",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.befattningskod",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.arbetsplatskod",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.arbetsplatsnamn",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.postort",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.postadress",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.postnummer",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.telefonnummer",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.requestId",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.rollnamn",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.hsaID",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.katalog",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.organisationsnummer",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.systemnamn",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.systemversion",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.argosHeader.systemIp",
      "path" : "kontaktuppgifteruppdatera-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.epostadressServicedesk",
      "path" : "kontaktuppgifteruppdatera-request.epostadressServicedesk",
      "short" : "epostadressServicedesk",
      "definition" : "E-postadress till aktörens servicedesk",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista",
      "short" : "kontaktpersonLista",
      "definition" : "Kontaktpersoner. Minst en kontaktperson måste anges.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.befattning",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.befattning",
      "short" : "befattning",
      "definition" : "Kontaktpersonens befattning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.efternamn",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.efternamn",
      "short" : "efternamn",
      "definition" : "Efternamn på kontaktperson hos aktören.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.epostadress",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.epostadress",
      "short" : "epostadress",
      "definition" : "Kontaktpersonens e-postadress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.fornamn",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.fornamn",
      "short" : "fornamn",
      "definition" : "Förnamn på kontaktperson hos aktören.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.telefonnummer",
      "path" : "kontaktuppgifteruppdatera-request.kontaktpersonLista.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "Kontaktpersonens telefonnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.orgNr",
      "path" : "kontaktuppgifteruppdatera-request.orgNr",
      "short" : "orgNr",
      "definition" : "Aktörens organisationsnummer (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontaktuppgifteruppdatera-request.telefonnummerServicedesk",
      "path" : "kontaktuppgifteruppdatera-request.telefonnummerServicedesk",
      "short" : "telefonnummerServicedesk",
      "definition" : "Telefonnummer till aktörens servicedesk",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
