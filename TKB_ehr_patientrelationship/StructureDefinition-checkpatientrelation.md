# CheckPatientRelation - ehr: patientrelationship v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckPatientRelation**

## Logical Model: CheckPatientRelation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/checkpatientrelation | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:CheckPatientRelation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CheckPatientRelation (RIV-TA urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1). Representerar responsens informationsstruktur — kontrollresultat om patientrelation finns för angiven aktör. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientrelationship|current/StructureDefinition/StructureDefinition-checkpatientrelation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkpatientrelation.csv), [Excel](StructureDefinition-checkpatientrelation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkpatientrelation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/checkpatientrelation",
  "version" : "1.0.1",
  "name" : "CheckPatientRelation",
  "title" : "CheckPatientRelation",
  "status" : "draft",
  "date" : "2026-09-09T16:55:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CheckPatientRelation\n(RIV-TA urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1).\nRepresenterar responsens informationsstruktur — kontrollresultat om patientrelation finns för angiven aktör.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientrelationship/StructureDefinition/checkpatientrelation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkpatientrelation",
      "path" : "checkpatientrelation",
      "short" : "CheckPatientRelation",
      "definition" : "Logisk modell för tjänstekontraktet CheckPatientRelation\n(RIV-TA urn:riv:ehr:patientrelationship:accesscontrol:CheckPatientRelationResponder:1).\nRepresenterar responsens informationsstruktur — kontrollresultat om patientrelation finns för angiven aktör."
    },
    {
      "id" : "checkpatientrelation.result",
      "path" : "checkpatientrelation.result",
      "short" : "Svarskod och eventuellt resultatmeddelande",
      "definition" : "Svarskod och eventuellt resultatmeddelande",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkpatientrelation.result.resultCode",
      "path" : "checkpatientrelation.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientrelationship/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "checkpatientrelation.result.resultText",
      "path" : "checkpatientrelation.result.resultText",
      "short" : "Optionellt felmeddelande",
      "definition" : "Optionellt felmeddelande",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkpatientrelation.hasPatientrelation",
      "path" : "checkpatientrelation.hasPatientrelation",
      "short" : "Anger om en giltig patientrelation gällande åtkomst för angiven aktör hittades",
      "definition" : "true = giltig patientrelation finns, false = ingen giltig patientrelation finns.\nMed giltig avses ej utgången, ej makulerad och ej återkallad patientrelation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
