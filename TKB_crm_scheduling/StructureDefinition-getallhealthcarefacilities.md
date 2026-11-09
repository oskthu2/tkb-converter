# GetAllHealthcareFacilities - crm: scheduling v1.1.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllHealthcareFacilities**

## Logical Model: GetAllHealthcareFacilities 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallhealthcarefacilities | *Version*:1.1 |
| Active as of 2026-11-09 | *Computable Name*:GetAllHealthcareFacilities |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAllHealthcareFacilities (RIV-TA urn:riv:crm:scheduling:GetAllHealthcareFacilities:1). Representerar responsens informationsstruktur. Tjänst för att hämta alla vårdenheter som erbjuds för ombokning eller nybokning för aktuell invånare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getallhealthcarefacilities.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallhealthcarefacilities.csv), [Excel](StructureDefinition-getallhealthcarefacilities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallhealthcarefacilities",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallhealthcarefacilities",
  "version" : "1.1",
  "name" : "GetAllHealthcareFacilities",
  "title" : "GetAllHealthcareFacilities",
  "status" : "active",
  "date" : "2026-11-09T03:26:43+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAllHealthcareFacilities\n(RIV-TA urn:riv:crm:scheduling:GetAllHealthcareFacilities:1).\nRepresenterar responsens informationsstruktur.\nTjänst för att hämta alla vårdenheter som erbjuds för ombokning eller nybokning för aktuell invånare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallhealthcarefacilities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallhealthcarefacilities",
      "path" : "getallhealthcarefacilities",
      "short" : "GetAllHealthcareFacilities",
      "definition" : "Logisk modell för tjänstekontraktet GetAllHealthcareFacilities\n(RIV-TA urn:riv:crm:scheduling:GetAllHealthcareFacilities:1).\nRepresenterar responsens informationsstruktur.\nTjänst för att hämta alla vårdenheter som erbjuds för ombokning eller nybokning för aktuell invånare."
    },
    {
      "id" : "getallhealthcarefacilities.healthcareFacilityInfos",
      "path" : "getallhealthcarefacilities.healthcareFacilityInfos",
      "short" : "HealthcareFacilityInfoType",
      "definition" : "healthcareFacilityInfos",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getallhealthcarefacilities.healthcareFacilityInfos.healthcare-facility",
      "path" : "getallhealthcarefacilities.healthcareFacilityInfos.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallhealthcarefacilities.healthcareFacilityInfos.healthcare-facility-name",
      "path" : "getallhealthcarefacilities.healthcareFacilityInfos.healthcare_facility_name",
      "short" : "healthcare_facility_name",
      "definition" : "healthcare_facility_name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
