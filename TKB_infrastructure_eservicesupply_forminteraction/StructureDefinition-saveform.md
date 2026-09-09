# SaveForm - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveForm**

## Logical Model: SaveForm 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveform | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:SaveForm |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet SaveForm (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveForm:2). Representerar responsens informationsstruktur — signalerar om formuläravslutet lyckades. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-saveform.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveform.csv), [Excel](StructureDefinition-saveform.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveform",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveform",
  "version" : "2.1",
  "name" : "SaveForm",
  "title" : "SaveForm",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet SaveForm\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveForm:2).\nRepresenterar responsens informationsstruktur — signalerar om formuläravslutet lyckades.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveform",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveform",
      "path" : "saveform",
      "short" : "SaveForm",
      "definition" : "Logisk modell för tjänstekontraktet SaveForm\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveForm:2).\nRepresenterar responsens informationsstruktur — signalerar om formuläravslutet lyckades."
    },
    {
      "id" : "saveform.resultCode",
      "path" : "saveform.resultCode",
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
      "id" : "saveform.comment",
      "path" : "saveform.comment",
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
