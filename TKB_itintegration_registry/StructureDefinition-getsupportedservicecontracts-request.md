# GetSupportedServiceContracts — Request - itintegration: registry v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetSupportedServiceContracts — Request**

## Logical Model: GetSupportedServiceContracts — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getsupportedservicecontracts-request | *Version*:1.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetSupportedServiceContractsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetSupportedServiceContracts (urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1, GetSupportedServiceContractsType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-registry|current/StructureDefinition/StructureDefinition-getsupportedservicecontracts-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getsupportedservicecontracts-request.csv), [Excel](StructureDefinition-getsupportedservicecontracts-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getsupportedservicecontracts-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getsupportedservicecontracts-request",
  "version" : "1.0.0",
  "name" : "GetSupportedServiceContractsRequest",
  "title" : "GetSupportedServiceContracts — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:12:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetSupportedServiceContracts\n(urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1, GetSupportedServiceContractsType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getsupportedservicecontracts-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getsupportedservicecontracts-request",
      "path" : "getsupportedservicecontracts-request",
      "short" : "GetSupportedServiceContracts — Request",
      "definition" : "Logisk modell för begäran i GetSupportedServiceContracts\n(urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1, GetSupportedServiceContractsType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getsupportedservicecontracts-request.logicalAddress",
      "path" : "getsupportedservicecontracts-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the receiving organisation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsupportedservicecontracts-request.serviceConsumerHsaId",
      "path" : "getsupportedservicecontracts-request.serviceConsumerHsaId",
      "short" : "serviceConsumerHsaId",
      "definition" : "serviceConsumerHsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getsupportedservicecontracts-request.logicalAdress",
      "path" : "getsupportedservicecontracts-request.logicalAdress",
      "short" : "logicalAdress",
      "definition" : "logicalAdress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
