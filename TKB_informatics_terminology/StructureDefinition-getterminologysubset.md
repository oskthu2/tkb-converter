# GetTerminologySubset - informatics: terminology v1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTerminologySubset**

## Logical Model: GetTerminologySubset 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informatics-terminology/StructureDefinition/getterminologysubset | *Version*:1.4 |
| Draft as of 2026-09-09 | *Computable Name*:GetTerminologySubset |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetTerminologySubset (RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1). Representerar responsens informationsstruktur. 
Tjänsten hämtar en delmängd (subset) av en terminologi (exempelvis SNOMED CT, ICD-10, ATC-kodverket) som är användbar i ett visst sammanhang. Stöder bl.a. dynamiskt urval av orsaker till antibiotikainsättning som rapporteras till Infektionsregistret. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informatics-terminology|current/StructureDefinition/StructureDefinition-getterminologysubset.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getterminologysubset.csv), [Excel](StructureDefinition-getterminologysubset.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getterminologysubset",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informatics-terminology/StructureDefinition/getterminologysubset",
  "version" : "1.4",
  "name" : "GetTerminologySubset",
  "title" : "GetTerminologySubset",
  "status" : "draft",
  "date" : "2026-09-09T16:58:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetTerminologySubset\n(RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1).\nRepresenterar responsens informationsstruktur.\n\nTjänsten hämtar en delmängd (subset) av en terminologi (exempelvis SNOMED CT,\nICD-10, ATC-kodverket) som är användbar i ett visst sammanhang.\nStöder bl.a. dynamiskt urval av orsaker till antibiotikainsättning\nsom rapporteras till Infektionsregistret.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informatics-terminology/StructureDefinition/getterminologysubset",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getterminologysubset",
      "path" : "getterminologysubset",
      "short" : "GetTerminologySubset",
      "definition" : "Logisk modell för tjänstekontraktet GetTerminologySubset\n(RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1).\nRepresenterar responsens informationsstruktur.\n\nTjänsten hämtar en delmängd (subset) av en terminologi (exempelvis SNOMED CT,\nICD-10, ATC-kodverket) som är användbar i ett visst sammanhang.\nStöder bl.a. dynamiskt urval av orsaker till antibiotikainsättning\nsom rapporteras till Infektionsregistret."
    },
    {
      "id" : "getterminologysubset.concept",
      "path" : "getterminologysubset.concept",
      "short" : "Svaret består av en lista med begrepp",
      "definition" : "En lista med terminologibegrepp från det begärda urvalet.\nKardinalitet: Valfri, lista. Kan vara tom om urvalet saknar matchande begrepp.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getterminologysubset.concept.codeSystem",
      "path" : "getterminologysubset.concept.codeSystem",
      "short" : "Identifierare av kodsystem",
      "definition" : "Identifierare för det kodsystem som begreppet tillhör (t.ex. ICD-10, SNOMED CT, ATC).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.concept.conceptCode",
      "path" : "getterminologysubset.concept.conceptCode",
      "short" : "Begreppskod",
      "definition" : "Begreppets kod i det angivna kodsystemet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.concept.term",
      "path" : "getterminologysubset.concept.term",
      "short" : "Term som beskriver begreppet",
      "definition" : "Visningsterm för begreppet (av den typ som angavs i TermType-parametern, normalt DisplayName).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.concept.metadata",
      "path" : "getterminologysubset.concept.metadata",
      "short" : "Lista med metadata",
      "definition" : "Ytterligare metadata som krävs för att veta vilka delar av OpenEHR-templaten\nsom skall fyllas i vid sändande av t.ex. ordinationsorsak till Infektionsverktyget.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getterminologysubset.concept.metadata.metadataName",
      "path" : "getterminologysubset.concept.metadata.metadataName",
      "short" : "Identifierar typ av metadata",
      "definition" : "Nyckel som identifierar typen av metadata.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset.concept.metadata.metadataValue",
      "path" : "getterminologysubset.concept.metadata.metadataValue",
      "short" : "Metadatavärde",
      "definition" : "Värdet för den angivna metadatatypen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
