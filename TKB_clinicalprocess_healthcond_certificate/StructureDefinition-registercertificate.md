# RegisterCertificate - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterCertificate**

## Logical Model: RegisterCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/registercertificate | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:RegisterCertificate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RegisterCertificate (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:3). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-registercertificate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registercertificate.csv), [Excel](StructureDefinition-registercertificate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registercertificate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/registercertificate",
  "version" : "4.1-RC1",
  "name" : "RegisterCertificate",
  "title" : "RegisterCertificate",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RegisterCertificate\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:3).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/registercertificate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registercertificate",
      "path" : "registercertificate",
      "short" : "RegisterCertificate",
      "definition" : "Logisk modell för tjänstekontraktet RegisterCertificate\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RegisterCertificate:3).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "registercertificate.result",
      "path" : "registercertificate.result",
      "short" : "Information om anropets resultat",
      "definition" : "Information om anropets resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registercertificate.result.resultCode",
      "path" : "registercertificate.result.resultCode",
      "short" : "Resultatkod (OK/INFO/ERROR)",
      "definition" : "Resultatkod (OK/INFO/ERROR)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/resultkod-vs"
      }
    },
    {
      "id" : "registercertificate.result.resultText",
      "path" : "registercertificate.result.resultText",
      "short" : "Fritext med mer information om resultatet",
      "definition" : "Fritext med mer information om resultatet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registercertificate.result.errorId",
      "path" : "registercertificate.result.errorId",
      "short" : "Felkod vid ERROR",
      "definition" : "Felkod vid ERROR",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/errorid-vs"
      }
    }]
  }
}

```
