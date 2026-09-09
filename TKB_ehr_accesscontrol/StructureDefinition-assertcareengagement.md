# AssertCareEngagement - ehr:accesscontrol v1.0.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssertCareEngagement**

## Logical Model: AssertCareEngagement 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/assertcareengagement | *Version*:1.0.6 |
| Draft as of 2026-09-09 | *Computable Name*:AssertCareEngagement |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet AssertCareEngagement (RIV-TA urn:riv:ehr:accesscontrol:AssertCareEngagement:1). Representerar responsens informationsstruktur. 
Tjänsten ger svar på om en medarbetare med uppdrag på angiven vårdenhet ska ges möjlighet att begära åtkomst till sammanhållen journalföring (TGP — Tillgänglig Patient). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-accesscontrol|current/StructureDefinition/StructureDefinition-assertcareengagement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-assertcareengagement.csv), [Excel](StructureDefinition-assertcareengagement.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "assertcareengagement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/assertcareengagement",
  "version" : "1.0.6",
  "name" : "AssertCareEngagement",
  "title" : "AssertCareEngagement",
  "status" : "draft",
  "date" : "2026-09-09T16:51:03+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  },
  {
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet AssertCareEngagement\n(RIV-TA urn:riv:ehr:accesscontrol:AssertCareEngagement:1).\nRepresenterar responsens informationsstruktur.\n\nTjänsten ger svar på om en medarbetare med uppdrag på angiven vårdenhet ska ges\nmöjlighet att begära åtkomst till sammanhållen journalföring (TGP — Tillgänglig Patient).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/assertcareengagement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "assertcareengagement",
      "path" : "assertcareengagement",
      "short" : "AssertCareEngagement",
      "definition" : "Logisk modell för tjänstekontraktet AssertCareEngagement\n(RIV-TA urn:riv:ehr:accesscontrol:AssertCareEngagement:1).\nRepresenterar responsens informationsstruktur.\n\nTjänsten ger svar på om en medarbetare med uppdrag på angiven vårdenhet ska ges\nmöjlighet att begära åtkomst till sammanhållen journalföring (TGP — Tillgänglig Patient)."
    },
    {
      "id" : "assertcareengagement.hasCareEngagement",
      "path" : "assertcareengagement.hasCareEngagement",
      "short" : "Åtkomstberättigande vårdrelation",
      "definition" : "'true' om åtkomstberättigande vårdrelation kan anses föreligga, annars 'false'.\nKardinalitet: Obligatorisk.\nNotering: Fältnamnet anges som 'HasCareEngagement' (versalt H) i TKB-tabellen\nmen som 'hasCareEngagement' i XSD. Normaliserat till camelCase i FHIR-modellen.\nKardinaliteten anges som '1' (utan punktnotation) i TKB — tolkat som 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
