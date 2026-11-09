# HamtaAktuellaOrdinationer — Request - se.apotekensservice: or — Ordinationer v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaAktuellaOrdinationer — Request**

## Logical Model: HamtaAktuellaOrdinationer — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaaktuellaordinationer-request | *Version*:5.2 |
| Active as of 2026-11-09 | *Computable Name*:HamtaAktuellaOrdinationerRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaAktuellaOrdinationer (urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5, HamtaAktuellaOrdinationerRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-or|current/StructureDefinition/StructureDefinition-hamtaaktuellaordinationer-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtaaktuellaordinationer-request.csv), [Excel](StructureDefinition-hamtaaktuellaordinationer-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtaaktuellaordinationer-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaaktuellaordinationer-request",
  "version" : "5.2",
  "name" : "HamtaAktuellaOrdinationerRequest",
  "title" : "HamtaAktuellaOrdinationer — Request",
  "status" : "active",
  "date" : "2026-11-09T03:48:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaAktuellaOrdinationer\n(urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5, HamtaAktuellaOrdinationerRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-or/StructureDefinition/hamtaaktuellaordinationer-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtaaktuellaordinationer-request",
      "path" : "hamtaaktuellaordinationer-request",
      "short" : "HamtaAktuellaOrdinationer — Request",
      "definition" : "Logisk modell för begäran i HamtaAktuellaOrdinationer\n(urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5, HamtaAktuellaOrdinationerRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "hamtaaktuellaordinationer-request.personnummer",
      "path" : "hamtaaktuellaordinationer-request.personnummer",
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
      "id" : "hamtaaktuellaordinationer-request.ordinationsId",
      "path" : "hamtaaktuellaordinationer-request.ordinationsId",
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
      "id" : "hamtaaktuellaordinationer-request.grupplegitimationskod",
      "path" : "hamtaaktuellaordinationer-request.grupplegitimationskod",
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
      "id" : "hamtaaktuellaordinationer-request.gruppforskrivarkod",
      "path" : "hamtaaktuellaordinationer-request.gruppforskrivarkod",
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
