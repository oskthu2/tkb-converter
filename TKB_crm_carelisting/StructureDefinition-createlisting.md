# CreateListing - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateListing**

## Logical Model: CreateListing 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:CreateListing |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval) (RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1). Representerar responsens informationsstruktur. Skapar en ny listning — kopplar ett personId till en vårdenhet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-createlisting.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createlisting.csv), [Excel](StructureDefinition-createlisting.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createlisting",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting",
  "version" : "1.0.0",
  "name" : "CreateListing",
  "title" : "CreateListing",
  "status" : "draft",
  "date" : "2026-09-09T16:48:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval)\n(RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).\nRepresenterar responsens informationsstruktur.\nSkapar en ny listning — kopplar ett personId till en vårdenhet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/createlisting",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createlisting",
      "path" : "createlisting",
      "short" : "CreateListing",
      "definition" : "Logisk modell för tjänstekontraktet CreateListing (Göra tjänsteval)\n(RIV-TA urn:riv:crm:carelisting:CreateListingResponder:1).\nRepresenterar responsens informationsstruktur.\nSkapar en ny listning — kopplar ett personId till en vårdenhet."
    },
    {
      "id" : "createlisting.success",
      "path" : "createlisting.success",
      "short" : "True om listningen genomfördes framgångsrikt",
      "definition" : "True if the requested listing was successfully completed, else false.\nFalse indicates that the user needs to try another option for listing.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "createlisting.comment",
      "path" : "createlisting.comment",
      "short" : "Information som kompletterar angiven status",
      "definition" : "Informationstext som kompletterar angiven status, t.ex. felmeddelande.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting.systemCode",
      "path" : "createlisting.systemCode",
      "short" : "Kod från underliggande listningssystem",
      "definition" : "Kod från underliggande listningssystem, i syfte att användas i dialog\nmed respektive listningssystems förvaltning.\nTjänstekonsumenten får inte binda logik till värden på dessa koder.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
