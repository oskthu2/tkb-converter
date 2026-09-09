# GetTerminologySubset — Request - informatics: terminology v1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTerminologySubset — Request**

## Logical Model: GetTerminologySubset — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informatics-terminology/StructureDefinition/getterminologysubset-request | *Version*:1.4 |
| Draft as of 2026-09-09 | *Computable Name*:GetTerminologySubsetRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetTerminologySubset (RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informatics-terminology|current/StructureDefinition/StructureDefinition-getterminologysubset-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getterminologysubset-request.csv), [Excel](StructureDefinition-getterminologysubset-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getterminologysubset-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informatics-terminology/StructureDefinition/getterminologysubset-request",
  "version" : "1.4",
  "name" : "GetTerminologySubsetRequest",
  "title" : "GetTerminologySubset — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:58:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetTerminologySubset\n(RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informatics-terminology/StructureDefinition/getterminologysubset-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getterminologysubset-request",
      "path" : "getterminologysubset-request",
      "short" : "GetTerminologySubset — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetTerminologySubset\n(RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1)."
    },
    {
      "id" : "getterminologysubset-request.subsetIdentity",
      "path" : "getterminologysubset-request.subsetIdentity",
      "short" : "Identifierare för urvalet",
      "definition" : "Unik identifierare för det terminologiurval som ska hämtas.\nSe sidan Tillgängliga urval för kända SubsetId-värden.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset-request.localOrganizationExtension",
      "path" : "getterminologysubset-request.localOrganizationExtension",
      "short" : "HSAId för organisationspost (vårdgivare)",
      "definition" : "HSAId för organisationspost motsvarande vårdgivare i HSA-trädet.\nOm denna anges kommer det nationella urvalet returneras tillsammans med de koder\ni urvalet som är specifika för den aktuella vårdgivaren.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getterminologysubset-request.termType",
      "path" : "getterminologysubset-request.termType",
      "short" : "Typ av term som ska användas",
      "definition" : "Typ av term som ska användas i responsen. Fixt värde: DisplayName.\nKardinalitet: Obligatorisk.\n\nASSUME: termType modelleras som string med fixt värde 'DisplayName'. Alternativt\nkan det modelleras med en fixed value constraint. Se QUESTIONS.md [ASSUME-IT-001].",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
