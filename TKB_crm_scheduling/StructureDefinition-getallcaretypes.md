# GetAllCareTypes - crm: scheduling v1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAllCareTypes**

## Logical Model: GetAllCareTypes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallcaretypes | *Version*:1.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetAllCareTypes |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetAllCareTypes (RIV-TA urn:riv:crm:scheduling:GetAllCareTypes:1). Representerar responsens informationsstruktur. Tjänst att för invånaren kunna visa en lista över vilka typer av vård som kan bokas hos en viss vårdenhet/mottagning. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-scheduling|current/StructureDefinition/StructureDefinition-getallcaretypes.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getallcaretypes.csv), [Excel](StructureDefinition-getallcaretypes.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getallcaretypes",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallcaretypes",
  "version" : "1.1",
  "name" : "GetAllCareTypes",
  "title" : "GetAllCareTypes",
  "status" : "draft",
  "date" : "2026-09-09T16:50:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAllCareTypes\n(RIV-TA urn:riv:crm:scheduling:GetAllCareTypes:1).\nRepresenterar responsens informationsstruktur.\nTjänst att för invånaren kunna visa en lista över vilka typer av vård\nsom kan bokas hos en viss vårdenhet/mottagning.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-scheduling/StructureDefinition/getallcaretypes",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getallcaretypes",
      "path" : "getallcaretypes",
      "short" : "GetAllCareTypes",
      "definition" : "Logisk modell för tjänstekontraktet GetAllCareTypes\n(RIV-TA urn:riv:crm:scheduling:GetAllCareTypes:1).\nRepresenterar responsens informationsstruktur.\nTjänst att för invånaren kunna visa en lista över vilka typer av vård\nsom kan bokas hos en viss vårdenhet/mottagning."
    },
    {
      "id" : "getallcaretypes.careTypes",
      "path" : "getallcaretypes.careTypes",
      "short" : "Lista med vårdtyper",
      "definition" : "Lista med tillgängliga vårdtyper (CareTypeType).\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getallcaretypes.careTypes.careTypeName",
      "path" : "getallcaretypes.careTypes.careTypeName",
      "short" : "Beskrivande text för vårdtypen (att visas för användare)",
      "definition" : "Beskrivande text för vårdtypen att visas för användaren.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getallcaretypes.careTypes.careTypeId",
      "path" : "getallcaretypes.careTypes.careTypeId",
      "short" : "Kod för vårdtypen (intern för vårdenheten)",
      "definition" : "Intern kod för vårdtypen hos vårdenheten.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
