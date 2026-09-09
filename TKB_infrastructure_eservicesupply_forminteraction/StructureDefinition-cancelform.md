# CancelForm - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelForm**

## Logical Model: CancelForm 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/cancelform | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:CancelForm |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CancelForm (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CancelForm:2). Representerar responsens informationsstruktur — signalerar om avbrytningen lyckades. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-cancelform.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cancelform.csv), [Excel](StructureDefinition-cancelform.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cancelform",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/cancelform",
  "version" : "2.1",
  "name" : "CancelForm",
  "title" : "CancelForm",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CancelForm\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CancelForm:2).\nRepresenterar responsens informationsstruktur — signalerar om avbrytningen lyckades.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/cancelform",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelform",
      "path" : "cancelform",
      "short" : "CancelForm",
      "definition" : "Logisk modell för tjänstekontraktet CancelForm\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CancelForm:2).\nRepresenterar responsens informationsstruktur — signalerar om avbrytningen lyckades."
    },
    {
      "id" : "cancelform.resultCode",
      "path" : "cancelform.resultCode",
      "short" : "Resultatkod",
      "definition" : "Objekt för att signalera status på operationen.",
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
      "id" : "cancelform.comment",
      "path" : "cancelform.comment",
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
