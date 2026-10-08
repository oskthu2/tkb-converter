# GetSupportedServiceContracts — Response - itintegration: registry v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetSupportedServiceContracts — Response**

## Logical Model: GetSupportedServiceContracts — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getsupportedservicecontracts | *Version*:1.0 |
| Active as of 2026-10-08 | *Computable Name*:GetSupportedServiceContracts |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetSupportedServiceContracts (urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1, GetSupportedServiceContractsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-registry|current/StructureDefinition/StructureDefinition-getsupportedservicecontracts.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getsupportedservicecontracts.csv), [Excel](StructureDefinition-getsupportedservicecontracts.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getsupportedservicecontracts",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getsupportedservicecontracts",
  "version" : "1.0",
  "name" : "GetSupportedServiceContracts",
  "title" : "GetSupportedServiceContracts — Response",
  "status" : "active",
  "date" : "2026-10-08T18:40:49+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetSupportedServiceContracts\n(urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1, GetSupportedServiceContractsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-registry/StructureDefinition/getsupportedservicecontracts",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getsupportedservicecontracts",
      "path" : "getsupportedservicecontracts",
      "short" : "GetSupportedServiceContracts — Response",
      "definition" : "Logisk modell för svaret i GetSupportedServiceContracts\n(urn:riv:itintegration:registry:GetSupportedServiceContractsResponder:1, GetSupportedServiceContractsResponseType)."
    },
    {
      "id" : "getsupportedservicecontracts.serviceContractNamespace",
      "path" : "getsupportedservicecontracts.serviceContractNamespace",
      "short" : "serviceContractNamespace",
      "definition" : "Type which describes a service contract.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getsupportedservicecontracts.serviceContractNamespace.ServiceContractNamespace",
      "path" : "getsupportedservicecontracts.serviceContractNamespace.ServiceContractNamespace",
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
