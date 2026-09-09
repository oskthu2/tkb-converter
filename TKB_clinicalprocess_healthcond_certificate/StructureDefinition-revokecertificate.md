# RevokeCertificate - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RevokeCertificate**

## Logical Model: RevokeCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/revokecertificate | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:RevokeCertificate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet RevokeCertificate (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:2). Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-revokecertificate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-revokecertificate.csv), [Excel](StructureDefinition-revokecertificate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "revokecertificate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/revokecertificate",
  "version" : "4.1-RC1",
  "name" : "RevokeCertificate",
  "title" : "RevokeCertificate",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet RevokeCertificate\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:2).\nRepresenterar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/revokecertificate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "revokecertificate",
      "path" : "revokecertificate",
      "short" : "RevokeCertificate",
      "definition" : "Logisk modell för tjänstekontraktet RevokeCertificate\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:2).\nRepresenterar responsens informationsstruktur."
    },
    {
      "id" : "revokecertificate.result",
      "path" : "revokecertificate.result",
      "short" : "Information om anropets resultat",
      "definition" : "Information om anropets resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "revokecertificate.result.resultCode",
      "path" : "revokecertificate.result.resultCode",
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
      "id" : "revokecertificate.result.resultText",
      "path" : "revokecertificate.result.resultText",
      "short" : "Fritext med mer information",
      "definition" : "Fritext med mer information",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "revokecertificate.result.errorId",
      "path" : "revokecertificate.result.errorId",
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
