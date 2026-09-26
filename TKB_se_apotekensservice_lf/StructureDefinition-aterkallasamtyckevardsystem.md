# AterkallaSamtyckeVardsystem — Response - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AterkallaSamtyckeVardsystem — Response**

## Logical Model: AterkallaSamtyckeVardsystem — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/aterkallasamtyckevardsystem | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:AterkallaSamtyckeVardsystem |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i AterkallaSamtyckeVardsystem (urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1, AterkallaSamtyckeVardsystemResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-lf|current/StructureDefinition/StructureDefinition-aterkallasamtyckevardsystem.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-aterkallasamtyckevardsystem.csv), [Excel](StructureDefinition-aterkallasamtyckevardsystem.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "aterkallasamtyckevardsystem",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/aterkallasamtyckevardsystem",
  "version" : "7.0.0",
  "name" : "AterkallaSamtyckeVardsystem",
  "title" : "AterkallaSamtyckeVardsystem — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:43:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i AterkallaSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1, AterkallaSamtyckeVardsystemResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/aterkallasamtyckevardsystem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "aterkallasamtyckevardsystem",
      "path" : "aterkallasamtyckevardsystem",
      "short" : "AterkallaSamtyckeVardsystem — Response",
      "definition" : "Logisk modell för svaret i AterkallaSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:AterkallaSamtyckeVardsystemResponder:1, AterkallaSamtyckeVardsystemResponseType)."
    },
    {
      "id" : "aterkallasamtyckevardsystem.aterkallandedatum",
      "path" : "aterkallasamtyckevardsystem.aterkallandedatum",
      "short" : "aterkallandedatum",
      "definition" : "Datum då tillsvidaresamtycke återkallades. Ej angiven om samtycke saknades.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "aterkallasamtyckevardsystem.samtycke",
      "path" : "aterkallasamtyckevardsystem.samtycke",
      "short" : "samtycke",
      "definition" : "Anger status efter återkallande. Möjliga värden är: 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
