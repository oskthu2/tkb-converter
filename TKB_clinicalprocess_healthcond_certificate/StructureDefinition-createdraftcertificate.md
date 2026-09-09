# CreateDraftCertificate - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateDraftCertificate**

## Logical Model: CreateDraftCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/createdraftcertificate | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:CreateDraftCertificate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CreateDraftCertificate (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:3). Representerar responsens informationsstruktur — intygs-id på skapade intygsutkastet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-createdraftcertificate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createdraftcertificate.csv), [Excel](StructureDefinition-createdraftcertificate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createdraftcertificate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/createdraftcertificate",
  "version" : "4.1-RC1",
  "name" : "CreateDraftCertificate",
  "title" : "CreateDraftCertificate",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CreateDraftCertificate\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:3).\nRepresenterar responsens informationsstruktur — intygs-id på skapade intygsutkastet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/createdraftcertificate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createdraftcertificate",
      "path" : "createdraftcertificate",
      "short" : "CreateDraftCertificate",
      "definition" : "Logisk modell för tjänstekontraktet CreateDraftCertificate\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:3).\nRepresenterar responsens informationsstruktur — intygs-id på skapade intygsutkastet."
    },
    {
      "id" : "createdraftcertificate.intygsId",
      "path" : "createdraftcertificate.intygsId",
      "short" : "Unikt ID för det intygsutkast som skapats",
      "definition" : "Returneras om anropet lyckades. Utelämnas vid fel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createdraftcertificate.result",
      "path" : "createdraftcertificate.result",
      "short" : "Information om anropets resultat",
      "definition" : "Information om anropets resultat",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createdraftcertificate.result.resultCode",
      "path" : "createdraftcertificate.result.resultCode",
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
      "id" : "createdraftcertificate.result.resultText",
      "path" : "createdraftcertificate.result.resultText",
      "short" : "Fritext",
      "definition" : "Fritext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createdraftcertificate.result.errorId",
      "path" : "createdraftcertificate.result.errorId",
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
