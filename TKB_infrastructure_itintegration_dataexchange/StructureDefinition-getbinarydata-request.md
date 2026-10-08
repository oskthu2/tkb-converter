# GetBinaryData — Request - infrastructure: itintegration: dataexchange v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetBinaryData — Request**

## Logical Model: GetBinaryData — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-dataexchange/StructureDefinition/getbinarydata-request | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetBinaryDataRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetBinaryData (urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1, GetBinaryDataType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-dataexchange|current/StructureDefinition/StructureDefinition-getbinarydata-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getbinarydata-request.csv), [Excel](StructureDefinition-getbinarydata-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getbinarydata-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-dataexchange/StructureDefinition/getbinarydata-request",
  "version" : "1.0",
  "name" : "GetBinaryDataRequest",
  "title" : "GetBinaryData — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:35:37+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetBinaryData\n(urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1, GetBinaryDataType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-dataexchange/StructureDefinition/getbinarydata-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getbinarydata-request",
      "path" : "getbinarydata-request",
      "short" : "GetBinaryData — Request",
      "definition" : "Logisk modell för begäran i GetBinaryData\n(urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1, GetBinaryDataType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getbinarydata-request.logicalAddress",
      "path" : "getbinarydata-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. National: The HSA-id of Inera AB (\"national\" aggregation service) Regional: The HSA-id of region (regional aggregation service) Specific Source system: The HSA-id of the source system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getbinarydata-request.getBinaryDataId",
      "path" : "getbinarydata-request.getBinaryDataId",
      "short" : "getBinaryDataId",
      "definition" : "getBinaryDataId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
