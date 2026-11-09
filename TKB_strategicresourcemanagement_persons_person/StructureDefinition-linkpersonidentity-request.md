# LinkPersonIdentity — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LinkPersonIdentity — Request**

## Logical Model: LinkPersonIdentity — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/linkpersonidentity-request | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:LinkPersonIdentityRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i LinkPersonIdentity (urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentityResponder:4, LinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-linkpersonidentity-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-linkpersonidentity-request.csv), [Excel](StructureDefinition-linkpersonidentity-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "linkpersonidentity-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/linkpersonidentity-request",
  "version" : "4.0",
  "name" : "LinkPersonIdentityRequest",
  "title" : "LinkPersonIdentity — Request",
  "status" : "active",
  "date" : "2026-11-09T03:51:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i LinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentityResponder:4, LinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/linkpersonidentity-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "linkpersonidentity-request",
      "path" : "linkpersonidentity-request",
      "short" : "LinkPersonIdentity — Request",
      "definition" : "Logisk modell för begäran i LinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentityResponder:4, LinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "linkpersonidentity-request.actor",
      "path" : "linkpersonidentity-request.actor",
      "short" : "ActorType",
      "definition" : "Den aktör som utför kopplingen",
      "comment" : "TKB-fält: `actor` (`urn:riv:strategicresourcemanagement:persons:person:5:ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.id",
      "path" : "linkpersonidentity-request.actor.id",
      "short" : "id",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.professional",
      "path" : "linkpersonidentity-request.actor.professional",
      "short" : "ProfessionalType",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "comment" : "TKB-fält: `../professional` (`ProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.professional.organizationId",
      "path" : "linkpersonidentity-request.actor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../organizationId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.updateTime",
      "path" : "linkpersonidentity-request.actor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "comment" : "TKB-fält: `../updateTime` (`Timestamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.fromIdentity",
      "path" : "linkpersonidentity-request.fromIdentity",
      "short" : "fromIdentity",
      "definition" : "Den identitet som man vill koppla till en huvudidentitet.",
      "comment" : "TKB-fält: `fromIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "linkpersonidentity-request.toIdentity",
      "path" : "linkpersonidentity-request.toIdentity",
      "short" : "toIdentity",
      "definition" : "Den huvudidentitet som man vill koppla till",
      "comment" : "TKB-fält: `toIdentity` (`urn:riv:strategicresourcemanagement:persons:person:5:IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    }]
  }
}

```
