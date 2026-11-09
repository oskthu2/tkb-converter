# IIType - financial: billing: claim v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IIType**

## Logical Model: IIType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/IIType | *Version*: |
| Active as of 2026-11-09 | *Computable Name*:IIType |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
IIType enligt domänens schema: den gemensamma RIV-TA-typen IIType med snävare kardinalitet. 

**Usages:**

* Use this Logical Model: [ProcessClaimSpecification — Request](StructureDefinition-processclaimspecification-request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.financial-billing-claim|current/StructureDefinition/StructureDefinition-IIType.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IIType.csv), [Excel](StructureDefinition-IIType.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IIType",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-type"
  }],
  "url" : "https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/IIType",
  "name" : "IIType",
  "title" : "IIType",
  "status" : "active",
  "date" : "2026-11-09T03:31:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "IIType enligt domänens schema: den gemensamma RIV-TA-typen IIType med snävare kardinalitet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/financial-billing-claim/StructureDefinition/IIType",
  "baseDefinition" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "IIType",
      "path" : "IIType",
      "definition" : "IIType enligt domänens schema: den gemensamma RIV-TA-typen IIType med snävare kardinalitet."
    },
    {
      "id" : "IIType.extension",
      "path" : "IIType.extension",
      "min" : 1
    }]
  }
}

```
