# GetAllTimeTypes - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllTimeTypes**

## Logical Model: GetAllTimeTypes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getalltimetypes | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetAllTimeTypes |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAllTimeTypes (RIV-TA urn:riv:crm:scheduling:GetAllTimeTypes:1). Representerar responsens informationsstruktur. Tjänsten hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getalltimetypes.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getalltimetypes.csv), [Excel](StructureDefinition-getalltimetypes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getalltimetypes",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getalltimetypes",
  "version" : "1.1",
  "name" : "GetAllTimeTypes",
  "title" : "GetAllTimeTypes",
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAllTimeTypes\n(RIV-TA urn:riv:crm:scheduling:GetAllTimeTypes:1).\nRepresenterar responsens informationsstruktur.\nTjänsten hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getalltimetypes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getalltimetypes",
      "path" : "getalltimetypes",
      "short" : "GetAllTimeTypes",
      "definition" : "Logisk modell för tjänstekontraktet GetAllTimeTypes\n(RIV-TA urn:riv:crm:scheduling:GetAllTimeTypes:1).\nRepresenterar responsens informationsstruktur.\nTjänsten hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet."
    },
    {
      "id" : "getalltimetypes.listOfTimeTypes",
      "path" : "getalltimetypes.listOfTimeTypes",
      "short" : "Lista med tillgängliga tidstyper",
      "definition" : "Lista med tillgängliga tidstyper (TimeTypeType).\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getalltimetypes.listOfTimeTypes.timeTypeName",
      "path" : "getalltimetypes.listOfTimeTypes.timeTypeName",
      "short" : "Namnet på tidstypen",
      "definition" : "Namnet på tidstypen att visas för användaren.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getalltimetypes.listOfTimeTypes.timeTypeId",
      "path" : "getalltimetypes.listOfTimeTypes.timeTypeId",
      "short" : "Identifierare för tidstypen",
      "definition" : "Identifierare för tidstypen (TimeTypeIDType).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
