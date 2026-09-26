# KontrolleraSamtyckeVardsystem — Response - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KontrolleraSamtyckeVardsystem — Response**

## Logical Model: KontrolleraSamtyckeVardsystem — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/kontrollerasamtyckevardsystem | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:KontrolleraSamtyckeVardsystem |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i KontrolleraSamtyckeVardsystem (urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1, KontrolleraSamtyckeVardsystemResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-lf|current/StructureDefinition/StructureDefinition-kontrollerasamtyckevardsystem.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-kontrollerasamtyckevardsystem.csv), [Excel](StructureDefinition-kontrollerasamtyckevardsystem.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "kontrollerasamtyckevardsystem",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/kontrollerasamtyckevardsystem",
  "version" : "7.0.0",
  "name" : "KontrolleraSamtyckeVardsystem",
  "title" : "KontrolleraSamtyckeVardsystem — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:43:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i KontrolleraSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1, KontrolleraSamtyckeVardsystemResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/kontrollerasamtyckevardsystem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "kontrollerasamtyckevardsystem",
      "path" : "kontrollerasamtyckevardsystem",
      "short" : "KontrolleraSamtyckeVardsystem — Response",
      "definition" : "Logisk modell för svaret i KontrolleraSamtyckeVardsystem\n(urn:riv:se.apotekensservice:lf:KontrolleraSamtyckeVardsystemResponder:1, KontrolleraSamtyckeVardsystemResponseType)."
    },
    {
      "id" : "kontrollerasamtyckevardsystem.avliden",
      "path" : "kontrollerasamtyckevardsystem.avliden",
      "short" : "avliden",
      "definition" : "Markering om patient är avliden enligt FOLK. Sant om patient är markerad som avliden, annars falskt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem.samtycke",
      "path" : "kontrollerasamtyckevardsystem.samtycke",
      "short" : "samtycke",
      "definition" : "Anger om aktuell förskrivare har samtycke av patient. Möjliga värden är: 0 = Samtycke att läsa Läkemedelsförteckningen saknas 1= Samtycke att läsa Läkemedelsförteckningen finns 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem.samtyckesgivare",
      "path" : "kontrollerasamtyckevardsystem.samtyckesgivare",
      "short" : "samtyckesgivare",
      "definition" : "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "kontrollerasamtyckevardsystem.statusdatum",
      "path" : "kontrollerasamtyckevardsystem.statusdatum",
      "short" : "statusdatum",
      "definition" : "Datum då patient givit eller återkallat samtycke till förskrivare. Blank om uppgift om samtycke saknas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
