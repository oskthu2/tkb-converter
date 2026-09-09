# GetListingTypes - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListingTypes**

## Logical Model: GetListingTypes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlistingtypes | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetListingTypes |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetListingTypes (Visa listningstyp) (RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1). Representerar responsens informationsstruktur. Hämtar lista med möjliga listningstyper som en given person kan bruka vid listning. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-getlistingtypes.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlistingtypes.csv), [Excel](StructureDefinition-getlistingtypes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlistingtypes",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlistingtypes",
  "version" : "1.0.0",
  "name" : "GetListingTypes",
  "title" : "GetListingTypes",
  "status" : "draft",
  "date" : "2026-09-09T16:48:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetListingTypes (Visa listningstyp)\n(RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1).\nRepresenterar responsens informationsstruktur.\nHämtar lista med möjliga listningstyper som en given person kan bruka vid listning.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlistingtypes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlistingtypes",
      "path" : "getlistingtypes",
      "short" : "GetListingTypes",
      "definition" : "Logisk modell för tjänstekontraktet GetListingTypes (Visa listningstyp)\n(RIV-TA urn:riv:crm:carelisting:GetListingTypesResponder:1).\nRepresenterar responsens informationsstruktur.\nHämtar lista med möjliga listningstyper som en given person kan bruka vid listning."
    },
    {
      "id" : "getlistingtypes.listingType",
      "path" : "getlistingtypes.listingType",
      "short" : "Lista med koder som avser listningstyper",
      "definition" : "Lista med koder som avser listningstyper, t.ex. BVC.\nListningstyp saknar centralt kodverk — värden är fritext (se QUESTIONS.md).\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
