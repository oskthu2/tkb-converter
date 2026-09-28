# ProcessCervixScreeningInformation — Response - clinicalprocess: logistics: cervixscreening v1.0.0-rc4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCervixScreeningInformation — Response**

## Logical Model: ProcessCervixScreeningInformation — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/processcervixscreeninginformation | *Version*:1.0.0-rc4 |
| Draft as of 2026-09-28 | *Computable Name*:ProcessCervixScreeningInformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i ProcessCervixScreeningInformation (urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-logistics-cervixscreening|current/StructureDefinition/StructureDefinition-processcervixscreeninginformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processcervixscreeninginformation.csv), [Excel](StructureDefinition-processcervixscreeninginformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processcervixscreeninginformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/processcervixscreeninginformation",
  "version" : "1.0.0-rc4",
  "name" : "ProcessCervixScreeningInformation",
  "title" : "ProcessCervixScreeningInformation — Response",
  "status" : "draft",
  "date" : "2026-09-28T08:47:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i ProcessCervixScreeningInformation\n(urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/StructureDefinition/processcervixscreeninginformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processcervixscreeninginformation",
      "path" : "processcervixscreeninginformation",
      "short" : "ProcessCervixScreeningInformation — Response",
      "definition" : "Logisk modell för svaret i ProcessCervixScreeningInformation\n(urn:riv:clinicalprocess:logistics:cervixscreening:ProcessCervixScreeningInformationResponder:1, ProcessCervixScreeningInformationResponseType)."
    },
    {
      "id" : "processcervixscreeninginformation.resultCode",
      "path" : "processcervixscreeninginformation.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-logistics-cervixscreening/ValueSet/CervixScreening-resultcode-vs"
      }
    },
    {
      "id" : "processcervixscreeninginformation.resultText",
      "path" : "processcervixscreeninginformation.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
