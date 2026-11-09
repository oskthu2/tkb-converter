# SetSelectedCommissionForPerson - ehr: commission v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SetSelectedCommissionForPerson**

## Logical Model: SetSelectedCommissionForPerson 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-commission/StructureDefinition/setselectedcommissionforperson | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:SetSelectedCommissionForPerson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet SetSelectedCommissionForPerson (RIV-TA urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1). Representerar responsens informationsstruktur (Result). 
Tjänsten sätter vilket medarbetaruppdrag som valdes aktivt av en person. Valet är aktuellt under nästkommande 12 timmar. Möjlighet finns att nollställa valet genom att utelämna commissionHsaId. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-commission|current/StructureDefinition/StructureDefinition-setselectedcommissionforperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-setselectedcommissionforperson.csv), [Excel](StructureDefinition-setselectedcommissionforperson.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "setselectedcommissionforperson",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-commission/StructureDefinition/setselectedcommissionforperson",
  "version" : "1.0",
  "name" : "SetSelectedCommissionForPerson",
  "title" : "SetSelectedCommissionForPerson",
  "status" : "draft",
  "date" : "2026-11-09T03:29:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet SetSelectedCommissionForPerson\n(RIV-TA urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1).\nRepresenterar responsens informationsstruktur (Result).\n\nTjänsten sätter vilket medarbetaruppdrag som valdes aktivt av en person.\nValet är aktuellt under nästkommande 12 timmar.\nMöjlighet finns att nollställa valet genom att utelämna commissionHsaId.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-commission/StructureDefinition/setselectedcommissionforperson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "setselectedcommissionforperson",
      "path" : "setselectedcommissionforperson",
      "short" : "SetSelectedCommissionForPerson",
      "definition" : "Logisk modell för tjänstekontraktet SetSelectedCommissionForPerson\n(RIV-TA urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1).\nRepresenterar responsens informationsstruktur (Result).\n\nTjänsten sätter vilket medarbetaruppdrag som valdes aktivt av en person.\nValet är aktuellt under nästkommande 12 timmar.\nMöjlighet finns att nollställa valet genom att utelämna commissionHsaId."
    },
    {
      "id" : "setselectedcommissionforperson.ResultType",
      "path" : "setselectedcommissionforperson.ResultType",
      "short" : "ResultType",
      "definition" : "ResultType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "setselectedcommissionforperson.ResultType.ResultCode",
      "path" : "setselectedcommissionforperson.ResultType.ResultCode",
      "short" : "ResultCode",
      "definition" : "ResultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-commission/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "setselectedcommissionforperson.ResultType.ResultText",
      "path" : "setselectedcommissionforperson.ResultType.ResultText",
      "short" : "ResultText",
      "definition" : "ResultText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
