# LookupResidentsForProfile — Request - masterdata: citizen: citizen v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LookupResidentsForProfile — Request**

## Logical Model: LookupResidentsForProfile — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-citizen-citizen/StructureDefinition/lookupresidentsforprofile-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:LookupResidentsForProfileRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i LookupResidentsForProfile (urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2, LookupResidentsForProfileType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-citizen-citizen|current/StructureDefinition/StructureDefinition-lookupresidentsforprofile-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lookupresidentsforprofile-request.csv), [Excel](StructureDefinition-lookupresidentsforprofile-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lookupresidentsforprofile-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/StructureDefinition/lookupresidentsforprofile-request",
  "version" : "2.0",
  "name" : "LookupResidentsForProfileRequest",
  "title" : "LookupResidentsForProfile — Request",
  "status" : "active",
  "date" : "2026-11-09T03:44:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i LookupResidentsForProfile\n(urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2, LookupResidentsForProfileType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/StructureDefinition/lookupresidentsforprofile-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "lookupresidentsforprofile-request",
      "path" : "lookupresidentsforprofile-request",
      "short" : "LookupResidentsForProfile — Request",
      "definition" : "Logisk modell för begäran i LookupResidentsForProfile\n(urn:riv:masterdata:citizen:citizen:LookupResidentsForProfileResponder:2, LookupResidentsForProfileType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "lookupresidentsforprofile-request.personId",
      "path" : "lookupresidentsforprofile-request.personId",
      "short" : "PersonalIdentityType",
      "definition" : "Array med personidentiteter som efterfrågas. Maxantal 500",
      "comment" : "TKB-fält: `personId` (`PersonalIdentity`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "lookupresidentsforprofile-request.personId.id",
      "path" : "lookupresidentsforprofile-request.personId.id",
      "short" : "id",
      "definition" : "id",
      "comment" : "TKB-fält: `../id` (`PersonalIdentityNumber`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile-request.personId.type",
      "path" : "lookupresidentsforprofile-request.personId.type",
      "short" : "type",
      "definition" : "type",
      "comment" : "TKB-fält: `../type` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "lookupresidentsforprofile-request.profile",
      "path" : "lookupresidentsforprofile-request.profile",
      "short" : "profile",
      "definition" : "Profil för returnerat data.",
      "comment" : "TKB-fält: `profile` (`LookupProfile`, kardinalitet 1..1).\n\n**Modellanteckning:** profile Tillåtna värden: P1, P2, P3, P4, P5, P6, P7, P8, P9, P10.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-citizen/ValueSet/masterdata-citizen-citizen-lookupprofile-vs"
      }
    }]
  }
}

```
