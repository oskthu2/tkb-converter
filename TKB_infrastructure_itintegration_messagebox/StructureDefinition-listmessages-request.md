# ListMessages — Request - infrastructure: itintegration: messagebox v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListMessages — Request**

## Logical Model: ListMessages — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/listmessages-request | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:ListMessagesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ListMessages (urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-messagebox|current/StructureDefinition/StructureDefinition-listmessages-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listmessages-request.csv), [Excel](StructureDefinition-listmessages-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listmessages-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/listmessages-request",
  "version" : "1.0.0",
  "name" : "ListMessagesRequest",
  "title" : "ListMessages — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:32:38+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i ListMessages\n(urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-messagebox/StructureDefinition/listmessages-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listmessages-request",
      "path" : "listmessages-request",
      "short" : "ListMessages — Request",
      "definition" : "Logisk modell för begäran i ListMessages\n(urn:riv:infrastructure:itintegration:messagebox:ListMessagesResponder:1, ListMessagesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "listmessages-request.logicalAddress",
      "path" : "listmessages-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the National Service Platform",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listmessages-request.targetOrganizations",
      "path" : "listmessages-request.targetOrganizations",
      "short" : "targetOrganizations",
      "definition" : "targetOrganizations",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listmessages-request.serviceContractTypes",
      "path" : "listmessages-request.serviceContractTypes",
      "short" : "serviceContractTypes",
      "definition" : "Type which describes a service contract. Used in interaction GetSupportedServiceContracts.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listmessages-request.serviceContractTypes.ServiceContractNamespace",
      "path" : "listmessages-request.serviceContractTypes.ServiceContractNamespace",
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
