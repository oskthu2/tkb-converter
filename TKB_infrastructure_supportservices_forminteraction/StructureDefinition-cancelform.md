# CancelForm - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CancelForm**

## Logical Model: CancelForm 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/cancelform | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:CancelForm |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svar (response) i tjänstekontraktet CancelForm (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2). Bekräftar att formuläret har avbrutits och raderats. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-supportservices-forminteraction|current/StructureDefinition/StructureDefinition-cancelform.json)

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
  "url" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/cancelform",
  "version" : "2.0.0",
  "name" : "CancelForm",
  "title" : "CancelForm",
  "status" : "draft",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svar (response) i tjänstekontraktet CancelForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2).\nBekräftar att formuläret har avbrutits och raderats.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-supportservices-forminteraction/StructureDefinition/cancelform",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cancelform",
      "path" : "cancelform",
      "short" : "CancelForm",
      "definition" : "Logisk modell för svar (response) i tjänstekontraktet CancelForm\n(RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CancelForm:2).\nBekräftar att formuläret har avbrutits och raderats."
    },
    {
      "id" : "cancelform.resultCode",
      "path" : "cancelform.resultCode",
      "short" : "Svarskod (OK = formuläret har avbrutits)",
      "definition" : "Svarskod (OK = formuläret har avbrutits)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "cancelform.comment",
      "path" : "cancelform.comment",
      "short" : "Kommentar",
      "definition" : "Kommentar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
