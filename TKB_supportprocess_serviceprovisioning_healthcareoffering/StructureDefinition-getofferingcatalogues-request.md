# GetOfferingCatalogues — Request - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetOfferingCatalogues — Request**

## Logical Model: GetOfferingCatalogues — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getofferingcatalogues-request | *Version*:2.0 |
| Active as of 2026-10-08 | *Computable Name*:GetOfferingCataloguesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetOfferingCatalogues (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-serviceprovisioning-healthcareoffering|current/StructureDefinition/StructureDefinition-getofferingcatalogues-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getofferingcatalogues-request.csv), [Excel](StructureDefinition-getofferingcatalogues-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getofferingcatalogues-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getofferingcatalogues-request",
  "version" : "2.0",
  "name" : "GetOfferingCataloguesRequest",
  "title" : "GetOfferingCatalogues — Request",
  "status" : "active",
  "date" : "2026-10-08T18:58:01+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetOfferingCatalogues\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getofferingcatalogues-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getofferingcatalogues-request",
      "path" : "getofferingcatalogues-request",
      "short" : "GetOfferingCatalogues — Request",
      "definition" : "Logisk modell för begäran i GetOfferingCatalogues\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getofferingcatalogues-request.logicalAddress",
      "path" : "getofferingcatalogues-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the careservice provider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization",
      "path" : "getofferingcatalogues-request.providingOrganization",
      "short" : "providingOrganization",
      "definition" : "providingOrganization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.providingOrganizationId",
      "path" : "getofferingcatalogues-request.providingOrganization.providingOrganizationId",
      "short" : "providingOrganizationId",
      "definition" : "providingOrganizationId",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.providingOrganizationId.root",
      "path" : "getofferingcatalogues-request.providingOrganization.providingOrganizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.providingOrganizationId.iiExtension",
      "path" : "getofferingcatalogues-request.providingOrganization.providingOrganizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.management",
      "path" : "getofferingcatalogues-request.providingOrganization.management",
      "short" : "management",
      "definition" : "management",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.management.cvCode",
      "path" : "getofferingcatalogues-request.providingOrganization.management.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.management.codeSystem",
      "path" : "getofferingcatalogues-request.providingOrganization.management.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.management.codeSystemName",
      "path" : "getofferingcatalogues-request.providingOrganization.management.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.management.codeSystemVersion",
      "path" : "getofferingcatalogues-request.providingOrganization.management.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.management.displayName",
      "path" : "getofferingcatalogues-request.providingOrganization.management.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.management.originalText",
      "path" : "getofferingcatalogues-request.providingOrganization.management.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues-request.providingOrganization.publicProvider",
      "path" : "getofferingcatalogues-request.providingOrganization.publicProvider",
      "short" : "publicProvider",
      "definition" : "publicProvider",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
