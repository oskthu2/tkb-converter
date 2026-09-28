# DeviceObservationConsumer — Request - ihe: pcd: dec v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeviceObservationConsumer — Request**

## Logical Model: DeviceObservationConsumer — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ihe-pcd-dec/StructureDefinition/deviceobservationconsumer-request | *Version*:1.0.1 |
| Draft as of 2026-09-28 | *Computable Name*:DeviceObservationConsumerRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i DeviceObservationConsumer (urn:ihe:pcd:dec:2010, CommunicatePCDData), inklusive SOAP-huvud enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ihe-pcd-dec|current/StructureDefinition/StructureDefinition-deviceobservationconsumer-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deviceobservationconsumer-request.csv), [Excel](StructureDefinition-deviceobservationconsumer-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deviceobservationconsumer-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ihe-pcd-dec/StructureDefinition/deviceobservationconsumer-request",
  "version" : "1.0.1",
  "name" : "DeviceObservationConsumerRequest",
  "title" : "DeviceObservationConsumer — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:00:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i DeviceObservationConsumer\n(urn:ihe:pcd:dec:2010, CommunicatePCDData), inklusive SOAP-huvud enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ihe-pcd-dec/StructureDefinition/deviceobservationconsumer-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deviceobservationconsumer-request",
      "path" : "deviceobservationconsumer-request",
      "short" : "DeviceObservationConsumer — Request",
      "definition" : "Logisk modell för begäran i DeviceObservationConsumer\n(urn:ihe:pcd:dec:2010, CommunicatePCDData), inklusive SOAP-huvud enligt WSDL."
    },
    {
      "id" : "deviceobservationconsumer-request.logicalAddress",
      "path" : "deviceobservationconsumer-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud wsa:To (WS-Addressing). Tjänstekonsumentens (Device Observation Consumer) logiska adress, se TKB avsnitt 3.2.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deviceobservationconsumer-request.communicatePCDData",
      "path" : "deviceobservationconsumer-request.communicatePCDData",
      "short" : "CommunicatePCDData",
      "definition" : "HL7 v2.6-meddelande ORU^R01^ORU_R01 i ER7-format enligt IHE PCD-01 och Continua Design Guidelines (H.812), med de förtydliganden för segmenten MSH, PID, OBR och OBX som TKB:n anger. Reserverade XML-tecken ska ersättas med entiteter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
