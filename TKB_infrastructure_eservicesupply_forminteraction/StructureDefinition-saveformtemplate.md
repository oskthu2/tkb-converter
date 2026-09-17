# SaveFormTemplate - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveFormTemplate**

## Logical Model: SaveFormTemplate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformtemplate | *Version*:2.1 |
| Draft as of 2026-09-17 | *Computable Name*:SaveFormTemplate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet SaveFormTemplate (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormTemplate:2). Representerar responsens informationsstruktur — signalerar om sparandet av formulärmallen lyckades. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-saveformtemplate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveformtemplate.csv), [Excel](StructureDefinition-saveformtemplate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveformtemplate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformtemplate",
  "version" : "2.1",
  "name" : "SaveFormTemplate",
  "title" : "SaveFormTemplate",
  "status" : "draft",
  "date" : "2026-09-17T11:14:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet SaveFormTemplate\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormTemplate:2).\nRepresenterar responsens informationsstruktur — signalerar om sparandet av\nformulärmallen lyckades.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformtemplate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveformtemplate",
      "path" : "saveformtemplate",
      "short" : "SaveFormTemplate",
      "definition" : "Logisk modell för tjänstekontraktet SaveFormTemplate\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormTemplate:2).\nRepresenterar responsens informationsstruktur — signalerar om sparandet av\nformulärmallen lyckades."
    },
    {
      "id" : "saveformtemplate.resultCode",
      "path" : "saveformtemplate.resultCode",
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
      "id" : "saveformtemplate.comment",
      "path" : "saveformtemplate.comment",
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
