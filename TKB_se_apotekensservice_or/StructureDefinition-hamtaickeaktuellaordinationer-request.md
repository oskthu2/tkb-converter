# HamtaIckeAktuellaOrdinationer — Request - se.apotekensservice: or — Ordinationer v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaIckeAktuellaOrdinationer — Request**

## Logical Model: HamtaIckeAktuellaOrdinationer — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaickeaktuellaordinationer-request | *Version*:6.2 |
| Active as of 2026-11-09 | *Computable Name*:HamtaIckeAktuellaOrdinationerRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaIckeAktuellaOrdinationer (urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6, HamtaIckeAktuellaOrdinationerRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-or|current/StructureDefinition/StructureDefinition-hamtaickeaktuellaordinationer-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtaickeaktuellaordinationer-request.csv), [Excel](StructureDefinition-hamtaickeaktuellaordinationer-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtaickeaktuellaordinationer-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaickeaktuellaordinationer-request",
  "version" : "6.2",
  "name" : "HamtaIckeAktuellaOrdinationerRequest",
  "title" : "HamtaIckeAktuellaOrdinationer — Request",
  "status" : "active",
  "date" : "2026-11-09T03:48:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaIckeAktuellaOrdinationer\n(urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6, HamtaIckeAktuellaOrdinationerRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaickeaktuellaordinationer-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtaickeaktuellaordinationer-request",
      "path" : "hamtaickeaktuellaordinationer-request",
      "short" : "HamtaIckeAktuellaOrdinationer — Request",
      "definition" : "Logisk modell för begäran i HamtaIckeAktuellaOrdinationer\n(urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6, HamtaIckeAktuellaOrdinationerRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtaickeaktuellaordinationer-request.fromDatum",
      "path" : "hamtaickeaktuellaordinationer-request.fromDatum",
      "short" : "Från och med datum för perioden som ska visas.",
      "definition" : "Från och med datum för perioden som ska visas.",
      "comment" : "TKB-fält: `fromDatum` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer-request.personnummer",
      "path" : "hamtaickeaktuellaordinationer-request.personnummer",
      "short" : "Giltigt personnummer för patient.",
      "definition" : "Giltigt personnummer för patient.",
      "comment" : "TKB-fält: `personnummer` (`PersonnummerType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer-request.ordinationsId",
      "path" : "hamtaickeaktuellaordinationer-request.ordinationsId",
      "short" : "OrdinationsId. Anges om bara en ordination ska returneras.",
      "definition" : "OrdinationsId. Anges om bara en ordination ska returneras.",
      "comment" : "TKB-fält: `ordinationsId` (`OrdinationsIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer-request.grupplegitimationskod",
      "path" : "hamtaickeaktuellaordinationer-request.grupplegitimationskod",
      "short" : "grupplegitimationskod",
      "definition" : "Användarens 6-ställiga grupplegitimationskod. Obligatorisk för Apotekselev, receptarieelev, Teknikerelev och Europeisk farmaceut.",
      "comment" : "TKB-fält: `grupplegitimationskod` (`LegitimationskodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "hamtaickeaktuellaordinationer-request.gruppforskrivarkod",
      "path" : "hamtaickeaktuellaordinationer-request.gruppforskrivarkod",
      "short" : "gruppforskrivarkod",
      "definition" : "Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten.",
      "comment" : "TKB-fält: `gruppforskrivarkod` (`ForskrivarkodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
