# GetLogicalAddresseesByServiceContract — Response - itintegration: registry v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogicalAddresseesByServiceContract — Response**

## Logical Model: GetLogicalAddresseesByServiceContract — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract | *Version*:1.0 |
| Active as of 2026-10-08 | *Computable Name*:GetLogicalAddresseesByServiceContract |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetLogicalAddresseesByServiceContract (urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1, GetLogicalAddresseesByServiceContractResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-registry|current/StructureDefinition/StructureDefinition-getlogicaladdresseesbyservicecontract.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogicaladdresseesbyservicecontract.csv), [Excel](StructureDefinition-getlogicaladdresseesbyservicecontract.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogicaladdresseesbyservicecontract",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract",
  "version" : "1.0",
  "name" : "GetLogicalAddresseesByServiceContract",
  "title" : "GetLogicalAddresseesByServiceContract — Response",
  "status" : "active",
  "date" : "2026-10-08T18:40:49+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetLogicalAddresseesByServiceContract\n(urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1, GetLogicalAddresseesByServiceContractResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogicaladdresseesbyservicecontract",
      "path" : "getlogicaladdresseesbyservicecontract",
      "short" : "GetLogicalAddresseesByServiceContract — Response",
      "definition" : "Logisk modell för svaret i GetLogicalAddresseesByServiceContract\n(urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1, GetLogicalAddresseesByServiceContractResponseType)."
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract.logicalAddress",
      "path" : "getlogicaladdresseesbyservicecontract.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "logicalAddress",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
