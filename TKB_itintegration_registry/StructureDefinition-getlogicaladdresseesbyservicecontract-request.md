# GetLogicalAddresseesByServiceContract — Request - itintegration: registry v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogicalAddresseesByServiceContract — Request**

## Logical Model: GetLogicalAddresseesByServiceContract — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract-request | *Version*:1.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetLogicalAddresseesByServiceContractRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetLogicalAddresseesByServiceContract (urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1, GetLogicalAddresseesByServiceContractType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-registry|current/StructureDefinition/StructureDefinition-getlogicaladdresseesbyservicecontract-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogicaladdresseesbyservicecontract-request.csv), [Excel](StructureDefinition-getlogicaladdresseesbyservicecontract-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogicaladdresseesbyservicecontract-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract-request",
  "version" : "1.0.0",
  "name" : "GetLogicalAddresseesByServiceContractRequest",
  "title" : "GetLogicalAddresseesByServiceContract — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:12:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetLogicalAddresseesByServiceContract\n(urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1, GetLogicalAddresseesByServiceContractType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogicaladdresseesbyservicecontract-request",
      "path" : "getlogicaladdresseesbyservicecontract-request",
      "short" : "GetLogicalAddresseesByServiceContract — Request",
      "definition" : "Logisk modell för begäran i GetLogicalAddresseesByServiceContract\n(urn:riv:itintegration:registry:GetLogicalAddresseesByServiceContractResponder:1, GetLogicalAddresseesByServiceContractType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract-request.logicalAddress",
      "path" : "getlogicaladdresseesbyservicecontract-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The hsaid of the organisation owning the repository to be queried.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract-request.serviceConsumerHsaId",
      "path" : "getlogicaladdresseesbyservicecontract-request.serviceConsumerHsaId",
      "short" : "serviceConsumerHsaId",
      "definition" : "serviceConsumerHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract-request.serviceContractNameSpace",
      "path" : "getlogicaladdresseesbyservicecontract-request.serviceContractNameSpace",
      "short" : "serviceContractNameSpace",
      "definition" : "Type which describes a service contract.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract-request.serviceContractNameSpace.ServiceContractNamespace",
      "path" : "getlogicaladdresseesbyservicecontract-request.serviceContractNameSpace.ServiceContractNamespace",
      "short" : "ServiceContractNamespace",
      "definition" : "ServiceContractNamespace",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    }]
  }
}

```
