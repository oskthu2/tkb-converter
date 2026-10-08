# GetExtendedBlocksForPatient — Request - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetExtendedBlocksForPatient — Request**

## Logical Model: GetExtendedBlocksForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/getextendedblocksforpatient-request | *Version*:4.0 |
| Active as of 2026-10-08 | *Computable Name*:GetExtendedBlocksForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetExtendedBlocksForPatient (urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatientResponder:4, GetExtendedBlocksForPatientType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-getextendedblocksforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getextendedblocksforpatient-request.csv), [Excel](StructureDefinition-getextendedblocksforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getextendedblocksforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/getextendedblocksforpatient-request",
  "version" : "4.0",
  "name" : "GetExtendedBlocksForPatientRequest",
  "title" : "GetExtendedBlocksForPatient — Request",
  "status" : "active",
  "date" : "2026-10-08T18:28:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetExtendedBlocksForPatient\n(urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatientResponder:4, GetExtendedBlocksForPatientType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/getextendedblocksforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getextendedblocksforpatient-request",
      "path" : "getextendedblocksforpatient-request",
      "short" : "GetExtendedBlocksForPatient — Request",
      "definition" : "Logisk modell för begäran i GetExtendedBlocksForPatient\n(urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatientResponder:4, GetExtendedBlocksForPatientType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getextendedblocksforpatient-request.logicalAddress",
      "path" : "getextendedblocksforpatient-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för tjänstekonsumentens vårdgivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient-request.careProviderId",
      "path" : "getextendedblocksforpatient-request.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient-request.patientId",
      "path" : "getextendedblocksforpatient-request.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient-request.patientId.root",
      "path" : "getextendedblocksforpatient-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient-request.patientId.iiExtension",
      "path" : "getextendedblocksforpatient-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
