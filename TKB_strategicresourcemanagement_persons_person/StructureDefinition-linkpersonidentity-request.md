# LinkPersonIdentity — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LinkPersonIdentity — Request**

## Logical Model: LinkPersonIdentity — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/linkpersonidentity-request | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:LinkPersonIdentityRequest |
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
  "version" : "5.1.0",
  "name" : "LinkPersonIdentityRequest",
  "title" : "LinkPersonIdentity — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
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
      "id" : "linkpersonidentity-request.logicalAddress",
      "path" : "linkpersonidentity-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. http://tempuri.org",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor",
      "path" : "linkpersonidentity-request.actor",
      "short" : "actor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.actorId",
      "path" : "linkpersonidentity-request.actor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.actorId.root",
      "path" : "linkpersonidentity-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.actorId.iiExtension",
      "path" : "linkpersonidentity-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.professional",
      "path" : "linkpersonidentity-request.actor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.professional.organizationId",
      "path" : "linkpersonidentity-request.actor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.professional.organizationId.root",
      "path" : "linkpersonidentity-request.actor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.professional.organizationId.iiExtension",
      "path" : "linkpersonidentity-request.actor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.actor.updateTime",
      "path" : "linkpersonidentity-request.actor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
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
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "linkpersonidentity-request.fromIdentity.root",
      "path" : "linkpersonidentity-request.fromIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.fromIdentity.iiExtension",
      "path" : "linkpersonidentity-request.fromIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.toIdentity",
      "path" : "linkpersonidentity-request.toIdentity",
      "short" : "toIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "linkpersonidentity-request.toIdentity.root",
      "path" : "linkpersonidentity-request.toIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "linkpersonidentity-request.toIdentity.iiExtension",
      "path" : "linkpersonidentity-request.toIdentity.iiExtension",
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
