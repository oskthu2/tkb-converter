# UnlinkPersonIdentity — Request - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UnlinkPersonIdentity — Request**

## Logical Model: UnlinkPersonIdentity — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/unlinkpersonidentity-request | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:UnlinkPersonIdentityRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UnlinkPersonIdentity (urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-persons-person|current/StructureDefinition/StructureDefinition-unlinkpersonidentity-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-unlinkpersonidentity-request.csv), [Excel](StructureDefinition-unlinkpersonidentity-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "unlinkpersonidentity-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/unlinkpersonidentity-request",
  "version" : "5.1.0",
  "name" : "UnlinkPersonIdentityRequest",
  "title" : "UnlinkPersonIdentity — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UnlinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/StructureDefinition/unlinkpersonidentity-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "unlinkpersonidentity-request",
      "path" : "unlinkpersonidentity-request",
      "short" : "UnlinkPersonIdentity — Request",
      "definition" : "Logisk modell för begäran i UnlinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "unlinkpersonidentity-request.logicalAddress",
      "path" : "unlinkpersonidentity-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. http://tempuri.org",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor",
      "path" : "unlinkpersonidentity-request.actor",
      "short" : "actor",
      "definition" : "Datatyp som identifierar en aktör.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor.actorId",
      "path" : "unlinkpersonidentity-request.actor.actorId",
      "short" : "actorId",
      "definition" : "En universellt unik identifierare. Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor.actorId.root",
      "path" : "unlinkpersonidentity-request.actor.actorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor.actorId.iiExtension",
      "path" : "unlinkpersonidentity-request.actor.actorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor.professional",
      "path" : "unlinkpersonidentity-request.actor.professional",
      "short" : "professional",
      "definition" : "Datatyp som identifierar en aktör inom en profession.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor.professional.organizationId",
      "path" : "unlinkpersonidentity-request.actor.professional.organizationId",
      "short" : "organizationId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor.professional.organizationId.root",
      "path" : "unlinkpersonidentity-request.actor.professional.organizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor.professional.organizationId.iiExtension",
      "path" : "unlinkpersonidentity-request.actor.professional.organizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.actor.updateTime",
      "path" : "unlinkpersonidentity-request.actor.updateTime",
      "short" : "updateTime",
      "definition" : "updateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.unlinkFromIdentity",
      "path" : "unlinkpersonidentity-request.unlinkFromIdentity",
      "short" : "unlinkFromIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.unlinkFromIdentity.root",
      "path" : "unlinkpersonidentity-request.unlinkFromIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.unlinkFromIdentity.iiExtension",
      "path" : "unlinkpersonidentity-request.unlinkFromIdentity.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.unlinkIdentity",
      "path" : "unlinkpersonidentity-request.unlinkIdentity",
      "short" : "unlinkIdentity",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.unlinkIdentity.root",
      "path" : "unlinkpersonidentity-request.unlinkIdentity.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "unlinkpersonidentity-request.unlinkIdentity.iiExtension",
      "path" : "unlinkpersonidentity-request.unlinkIdentity.iiExtension",
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
