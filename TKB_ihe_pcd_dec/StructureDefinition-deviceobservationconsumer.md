# DeviceObservationConsumer — Response - ihe: pcd: dec v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeviceObservationConsumer — Response**

## Logical Model: DeviceObservationConsumer — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ihe-pcd-dec/StructureDefinition/deviceobservationconsumer | *Version*:1.0 |
| Active as of 2026-10-08 | *Computable Name*:DeviceObservationConsumer |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i DeviceObservationConsumer (urn:ihe:pcd:dec:2010, CommunicatePCDDataResponse). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ihe-pcd-dec|current/StructureDefinition/StructureDefinition-deviceobservationconsumer.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deviceobservationconsumer.csv), [Excel](StructureDefinition-deviceobservationconsumer.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deviceobservationconsumer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ihe-pcd-dec/StructureDefinition/deviceobservationconsumer",
  "version" : "1.0",
  "name" : "DeviceObservationConsumer",
  "title" : "DeviceObservationConsumer — Response",
  "status" : "active",
  "date" : "2026-10-08T18:27:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i DeviceObservationConsumer\n(urn:ihe:pcd:dec:2010, CommunicatePCDDataResponse).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ihe-pcd-dec/StructureDefinition/deviceobservationconsumer",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deviceobservationconsumer",
      "path" : "deviceobservationconsumer",
      "short" : "DeviceObservationConsumer — Response",
      "definition" : "Logisk modell för svaret i DeviceObservationConsumer\n(urn:ihe:pcd:dec:2010, CommunicatePCDDataResponse)."
    },
    {
      "id" : "deviceobservationconsumer.communicatePCDDataResponse",
      "path" : "deviceobservationconsumer.communicatePCDDataResponse",
      "short" : "CommunicatePCDDataResponse",
      "definition" : "HL7 v2.6-kvittens (ACK) i ER7-format enligt Continua Design Guidelines (H.812).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
