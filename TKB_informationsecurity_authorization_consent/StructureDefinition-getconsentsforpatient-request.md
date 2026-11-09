# GetConsentsForPatient — Request - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConsentsForPatient — Request**

## Logical Model: GetConsentsForPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforpatient-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetConsentsForPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetConsentsForPatient (urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-getconsentsforpatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconsentsforpatient-request.csv), [Excel](StructureDefinition-getconsentsforpatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconsentsforpatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforpatient-request",
  "version" : "2.0",
  "name" : "GetConsentsForPatientRequest",
  "title" : "GetConsentsForPatient — Request",
  "status" : "active",
  "date" : "2026-11-09T03:35:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetConsentsForPatient\n(urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforpatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconsentsforpatient-request",
      "path" : "getconsentsforpatient-request",
      "short" : "GetConsentsForPatient — Request",
      "definition" : "Logisk modell för begäran i GetConsentsForPatient\n(urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getconsentsforpatient-request.careProviderId",
      "path" : "getconsentsforpatient-request.careProviderId",
      "short" : "careProviderId",
      "definition" : "Obligatoriskt id på den vårdgivare vars samtycken skall hämtas.",
      "comment" : "TKB-fält: `careProviderId` (`urn:riv:informationsecurity:authorization:consent:2:HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient-request.patientId",
      "path" : "getconsentsforpatient-request.patientId",
      "short" : "patientId",
      "definition" : "Personidentitet på patienten/brukaren vars samtycken skall hämtas.",
      "comment" : "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    }]
  }
}

```
