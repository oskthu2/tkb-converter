# DeleteFormTemplate - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteFormTemplate**

## Logical Model: DeleteFormTemplate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/deleteformtemplate | *Version*:2.1 |
| Draft as of 2026-09-17 | *Computable Name*:DeleteFormTemplate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet DeleteFormTemplate (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:DeleteFormTemplate:1). Representerar responsens informationsstruktur — signalerar om makuleringen av formulärmallen lyckades. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-deleteformtemplate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteformtemplate.csv), [Excel](StructureDefinition-deleteformtemplate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteformtemplate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/deleteformtemplate",
  "version" : "2.1",
  "name" : "DeleteFormTemplate",
  "title" : "DeleteFormTemplate",
  "status" : "draft",
  "date" : "2026-09-17T11:14:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet DeleteFormTemplate\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:DeleteFormTemplate:1).\nRepresenterar responsens informationsstruktur — signalerar om makuleringen av\nformulärmallen lyckades.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/deleteformtemplate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteformtemplate",
      "path" : "deleteformtemplate",
      "short" : "DeleteFormTemplate",
      "definition" : "Logisk modell för tjänstekontraktet DeleteFormTemplate\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:DeleteFormTemplate:1).\nRepresenterar responsens informationsstruktur — signalerar om makuleringen av\nformulärmallen lyckades."
    },
    {
      "id" : "deleteformtemplate.resultCode",
      "path" : "deleteformtemplate.resultCode",
      "short" : "Resultatkod",
      "definition" : "Signalerar status på operationen (OK, INFO, ERROR).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "deleteformtemplate.resultText",
      "path" : "deleteformtemplate.resultText",
      "short" : "Kommentar",
      "definition" : "Attribut för felsignalering. Skall kunna visas för slutanvändaren.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
