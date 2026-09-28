# GetPatientContactInformation — Request - masterdata: citizen: patient v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPatientContactInformation — Request**

## Logical Model: GetPatientContactInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/getpatientcontactinformation-request | *Version*:1.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetPatientContactInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetPatientContactInformation (urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-citizen-patient|current/StructureDefinition/StructureDefinition-getpatientcontactinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpatientcontactinformation-request.csv), [Excel](StructureDefinition-getpatientcontactinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpatientcontactinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/getpatientcontactinformation-request",
  "version" : "1.0.0",
  "name" : "GetPatientContactInformationRequest",
  "title" : "GetPatientContactInformation — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:13:45+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetPatientContactInformation\n(urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/getpatientcontactinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpatientcontactinformation-request",
      "path" : "getpatientcontactinformation-request",
      "short" : "GetPatientContactInformation — Request",
      "definition" : "Logisk modell för begäran i GetPatientContactInformation\n(urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getpatientcontactinformation-request.logicalAddress",
      "path" : "getpatientcontactinformation-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. National: The HSA-id of Inera AB (\"national\" aggregation service) Regional: The HSA-id of Inera AB (regional aggregation service) Specific Source system: The HSA-id of the source system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation-request.patientId",
      "path" : "getpatientcontactinformation-request.patientId",
      "short" : "patientId",
      "definition" : "patientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation-request.patientId.root",
      "path" : "getpatientcontactinformation-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation-request.patientId.iiExtension",
      "path" : "getpatientcontactinformation-request.patientId.iiExtension",
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
