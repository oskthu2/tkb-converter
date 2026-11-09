# AnswerInquiry — Begäran - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AnswerInquiry — Begäran**

## Logical Model: AnswerInquiry — Begäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/answerinquiry | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:AnswerInquiry |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i AnswerInquiry (urn:riv:supportprocess:personalresources:interpretation:AnswerInquiryResponder:1, AnswerInquiryType). Tolkförmedlingen besvarar en förfrågan om tolkuppdrag. Svaret beskrivs av InterpretationResult. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-answerinquiry.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-answerinquiry.csv), [Excel](StructureDefinition-answerinquiry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "answerinquiry",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/answerinquiry",
  "version" : "1.0",
  "name" : "AnswerInquiry",
  "title" : "AnswerInquiry — Begäran",
  "status" : "draft",
  "date" : "2026-11-09T03:53:35+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i AnswerInquiry (urn:riv:supportprocess:personalresources:interpretation:AnswerInquiryResponder:1, AnswerInquiryType). Tolkförmedlingen besvarar en förfrågan om tolkuppdrag. Svaret beskrivs av InterpretationResult.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/answerinquiry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "answerinquiry",
      "path" : "answerinquiry",
      "short" : "AnswerInquiry — Begäran",
      "definition" : "Logisk modell för begäran i AnswerInquiry (urn:riv:supportprocess:personalresources:interpretation:AnswerInquiryResponder:1, AnswerInquiryType). Tolkförmedlingen besvarar en förfrågan om tolkuppdrag. Svaret beskrivs av InterpretationResult."
    },
    {
      "id" : "answerinquiry.InquiryResponse",
      "path" : "answerinquiry.InquiryResponse",
      "short" : "InquiryResponse",
      "definition" : "Svar på förfrågan.",
      "comment" : "TKB-fält: `InquiryResponse` (`InquryResponse / (se 6.6.12)`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
