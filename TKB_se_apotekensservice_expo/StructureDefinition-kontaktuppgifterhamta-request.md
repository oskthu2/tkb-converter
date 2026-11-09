# KontaktuppgifterHamta — Request - se.apotekensservice: expo — Expeditionsställen och dosmottagare v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontaktuppgifterHamta — Request**

## Logical Model: KontaktuppgifterHamta — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifterhamta-request | *Version*:4.0 |
| Draft as of 2026-11-09 | *Computable Name*:KontaktuppgifterHamtaRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i KontaktuppgifterHamta (urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4, KontaktuppgifterHamtaRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-expo|current/StructureDefinition/StructureDefinition-kontaktuppgifterhamta-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kontaktuppgifterhamta-request.csv), [Excel](StructureDefinition-kontaktuppgifterhamta-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kontaktuppgifterhamta-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifterhamta-request",
  "version" : "4.0",
  "name" : "KontaktuppgifterHamtaRequest",
  "title" : "KontaktuppgifterHamta — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:47:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i KontaktuppgifterHamta\n(urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4, KontaktuppgifterHamtaRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-expo/StructureDefinition/kontaktuppgifterhamta-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kontaktuppgifterhamta-request",
      "path" : "kontaktuppgifterhamta-request",
      "short" : "KontaktuppgifterHamta — Request",
      "definition" : "Logisk modell för begäran i KontaktuppgifterHamta\n(urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4, KontaktuppgifterHamtaRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "kontaktuppgifterhamta-request.orgNr",
      "path" : "kontaktuppgifterhamta-request.orgNr",
      "short" : "Aktörens organisationsnummer",
      "definition" : "Aktörens organisationsnummer",
      "comment" : "TKB-fält: `orgNr` (`long`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
