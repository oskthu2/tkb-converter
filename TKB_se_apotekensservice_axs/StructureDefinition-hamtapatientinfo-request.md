# HamtaPatientInfo — Request - se.apotekensservice: axs — Hämta patientinformation v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HamtaPatientInfo — Request**

## Logical Model: HamtaPatientInfo — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-axs/StructureDefinition/hamtapatientinfo-request | *Version*:6.0 |
| Active as of 2026-11-09 | *Computable Name*:HamtaPatientInfoRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i HamtaPatientInfo (urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType), inklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-axs|current/StructureDefinition/StructureDefinition-hamtapatientinfo-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-hamtapatientinfo-request.csv), [Excel](StructureDefinition-hamtapatientinfo-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "hamtapatientinfo-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-axs/StructureDefinition/hamtapatientinfo-request",
  "version" : "6.0",
  "name" : "HamtaPatientInfoRequest",
  "title" : "HamtaPatientInfo — Request",
  "status" : "active",
  "date" : "2026-11-09T03:47:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i HamtaPatientInfo\n(urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType),\ninklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-axs/StructureDefinition/hamtapatientinfo-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "hamtapatientinfo-request",
      "path" : "hamtapatientinfo-request",
      "short" : "HamtaPatientInfo — Request",
      "definition" : "Logisk modell för begäran i HamtaPatientInfo\n(urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType),\ninklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader)."
    },
    {
      "id" : "hamtapatientinfo-request.personnummer",
      "path" : "hamtapatientinfo-request.personnummer",
      "short" : "Giltigt personnummer för patient.",
      "definition" : "Giltigt personnummer för patient.",
      "comment" : "TKB-fält: `personnummer` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
