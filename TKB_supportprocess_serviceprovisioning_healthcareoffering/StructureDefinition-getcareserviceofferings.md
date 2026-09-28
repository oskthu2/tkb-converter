# GetCareServiceOfferings — Response - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareServiceOfferings — Response**

## Logical Model: GetCareServiceOfferings — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings | *Version*:3.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetCareServiceOfferings |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetCareServiceOfferings (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-serviceprovisioning-healthcareoffering|current/StructureDefinition/StructureDefinition-getcareserviceofferings.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcareserviceofferings.csv), [Excel](StructureDefinition-getcareserviceofferings.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcareserviceofferings",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings",
  "version" : "3.0.0",
  "name" : "GetCareServiceOfferings",
  "title" : "GetCareServiceOfferings — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:27:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetCareServiceOfferings\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getcareserviceofferings",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcareserviceofferings",
      "path" : "getcareserviceofferings",
      "short" : "GetCareServiceOfferings — Response",
      "definition" : "Logisk modell för svaret i GetCareServiceOfferings\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetCareServiceOfferingsResponder:3, GetCareServiceOfferingsResponseType)."
    },
    {
      "id" : "getcareserviceofferings.careService",
      "path" : "getcareserviceofferings.careService",
      "short" : "careService",
      "definition" : "careService",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.careServiceId",
      "path" : "getcareserviceofferings.careService.careServiceId",
      "short" : "careServiceId",
      "definition" : "careServiceId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.careServiceId.root",
      "path" : "getcareserviceofferings.careService.careServiceId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.careServiceId.iiExtension",
      "path" : "getcareserviceofferings.careService.careServiceId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService",
      "path" : "getcareserviceofferings.careService.typeOfCareService",
      "short" : "typeOfCareService",
      "definition" : "typeOfCareService",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.cvCode",
      "path" : "getcareserviceofferings.careService.typeOfCareService.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.codeSystem",
      "path" : "getcareserviceofferings.careService.typeOfCareService.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.codeSystemName",
      "path" : "getcareserviceofferings.careService.typeOfCareService.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.typeOfCareService.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.displayName",
      "path" : "getcareserviceofferings.careService.typeOfCareService.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareService.originalText",
      "path" : "getcareserviceofferings.careService.typeOfCareService.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription",
      "short" : "typeOfCareServiceDescription",
      "definition" : "typeOfCareServiceDescription",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionText",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.cvCode",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystem",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.displayName",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.originalText",
      "path" : "getcareserviceofferings.careService.typeOfCareServiceDescription.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.validity",
      "path" : "getcareserviceofferings.careService.validity",
      "short" : "validity",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.validity.start",
      "path" : "getcareserviceofferings.careService.validity.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.validity.end",
      "path" : "getcareserviceofferings.careService.validity.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.careServiceStatus",
      "path" : "getcareserviceofferings.careService.careServiceStatus",
      "short" : "careServiceStatus",
      "definition" : "careServiceStatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/ValueSet/healthcareoffering-careservicestatus-vs"
      }
    },
    {
      "id" : "getcareserviceofferings.careService.careOption",
      "path" : "getcareserviceofferings.careService.careOption",
      "short" : "careOption",
      "definition" : "careOption",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.referralRequired",
      "path" : "getcareserviceofferings.careService.referralRequired",
      "short" : "referralRequired",
      "definition" : "referralRequired",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description",
      "path" : "getcareserviceofferings.careService.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionText",
      "path" : "getcareserviceofferings.careService.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role",
      "path" : "getcareserviceofferings.careService.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.displayName",
      "path" : "getcareserviceofferings.careService.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.description.role.originalText",
      "path" : "getcareserviceofferings.careService.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator",
      "path" : "getcareserviceofferings.careService.indicator",
      "short" : "indicator",
      "definition" : "indicator",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator.indicatorId",
      "path" : "getcareserviceofferings.careService.indicator.indicatorId",
      "short" : "indicatorId",
      "definition" : "indicatorId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator.indicatorId.root",
      "path" : "getcareserviceofferings.careService.indicator.indicatorId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator.indicatorId.iiExtension",
      "path" : "getcareserviceofferings.careService.indicator.indicatorId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.indicator.logicalAddress",
      "path" : "getcareserviceofferings.careService.indicator.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "logicalAddress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.requestTemplate",
      "path" : "getcareserviceofferings.careService.requestTemplate",
      "short" : "requestTemplate",
      "definition" : "requestTemplate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.requestTemplate.address",
      "path" : "getcareserviceofferings.careService.requestTemplate.address",
      "short" : "address",
      "definition" : "address",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.requestTemplate.mandatory",
      "path" : "getcareserviceofferings.careService.requestTemplate.mandatory",
      "short" : "mandatory",
      "definition" : "mandatory",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization",
      "path" : "getcareserviceofferings.careService.providingOrganization",
      "short" : "providingOrganization",
      "definition" : "providingOrganization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId",
      "path" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId",
      "short" : "providingOrganizationId",
      "definition" : "providingOrganizationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId.root",
      "path" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId.iiExtension",
      "path" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationName",
      "path" : "getcareserviceofferings.careService.providingOrganization.providingOrganizationName",
      "short" : "providingOrganizationName",
      "definition" : "providingOrganizationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management",
      "path" : "getcareserviceofferings.careService.providingOrganization.management",
      "short" : "management",
      "definition" : "management",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.cvCode",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.codeSystem",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.codeSystemName",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.displayName",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.management.originalText",
      "path" : "getcareserviceofferings.careService.providingOrganization.management.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.publicProvider",
      "path" : "getcareserviceofferings.careService.providingOrganization.publicProvider",
      "short" : "publicProvider",
      "definition" : "publicProvider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description",
      "path" : "getcareserviceofferings.careService.providingOrganization.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionText",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.displayName",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.providingOrganization.description.role.originalText",
      "path" : "getcareserviceofferings.careService.providingOrganization.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization",
      "path" : "getcareserviceofferings.careService.performingOrganization",
      "short" : "performingOrganization",
      "definition" : "performingOrganization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId",
      "path" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId",
      "short" : "performingOrganizationId",
      "definition" : "performingOrganizationId Heter id i schemat.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId.root",
      "path" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId.iiExtension",
      "path" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationName",
      "path" : "getcareserviceofferings.careService.performingOrganization.performingOrganizationName",
      "short" : "performingOrganizationName",
      "definition" : "performingOrganizationName Heter name i schemat.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization",
      "short" : "responsibleOrganization",
      "definition" : "responsibleOrganization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId",
      "short" : "responsibleOrganizationId",
      "definition" : "responsibleOrganizationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId.root",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId.iiExtension",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.responsibleOrganizationName",
      "short" : "responsibleOrganizationName",
      "definition" : "responsibleOrganizationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionText",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.responsibleOrganization.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.availableTime",
      "path" : "getcareserviceofferings.careService.performingOrganization.availableTime",
      "short" : "availableTime",
      "definition" : "availableTime",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness",
      "short" : "typeOfBusiness",
      "definition" : "typeOfBusiness",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.typeOfBusiness.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description",
      "path" : "getcareserviceofferings.careService.performingOrganization.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionText",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.displayName",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.performingOrganization.description.role.originalText",
      "path" : "getcareserviceofferings.careService.performingOrganization.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.patientFee",
      "path" : "getcareserviceofferings.careService.patientFee",
      "short" : "patientFee",
      "definition" : "patientFee",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.patientFee.moValue",
      "path" : "getcareserviceofferings.careService.patientFee.moValue",
      "short" : "moValue",
      "definition" : "moValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.patientFee.currency",
      "path" : "getcareserviceofferings.careService.patientFee.currency",
      "short" : "currency",
      "definition" : "currency",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup",
      "path" : "getcareserviceofferings.careService.targetGroup",
      "short" : "targetGroup",
      "definition" : "targetGroup",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.age",
      "path" : "getcareserviceofferings.careService.targetGroup.age",
      "short" : "age",
      "definition" : "age",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.age.start",
      "path" : "getcareserviceofferings.careService.targetGroup.age.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.age.end",
      "path" : "getcareserviceofferings.careService.targetGroup.age.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender",
      "path" : "getcareserviceofferings.careService.targetGroup.gender",
      "short" : "gender",
      "definition" : "gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.cvCode",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.codeSystem",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.codeSystemName",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.displayName",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.gender.originalText",
      "path" : "getcareserviceofferings.careService.targetGroup.gender.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute",
      "short" : "targetGroupAttribute",
      "definition" : "targetGroupAttribute",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute",
      "short" : "typeOfPersonalAttribute",
      "definition" : "typeOfPersonalAttribute",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.cvCode",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystem",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystemName",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.displayName",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.originalText",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.typeOfPersonalAttribute.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.attributeValue",
      "path" : "getcareserviceofferings.careService.targetGroup.targetGroupAttribute.attributeValue",
      "short" : "attributeValue",
      "definition" : "attributeValue",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location",
      "path" : "getcareserviceofferings.careService.location",
      "short" : "location",
      "definition" : "location",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation",
      "short" : "geographicalLocation",
      "definition" : "geographicalLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county",
      "short" : "county",
      "definition" : "county",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.cvCode",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystem",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystemName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.displayName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.county.originalText",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.county.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality",
      "short" : "municipality",
      "definition" : "municipality",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.cvCode",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystem",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystemName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.displayName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.originalText",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.municipality.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation",
      "short" : "otherLocation",
      "definition" : "otherLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon",
      "short" : "polygon",
      "definition" : "polygon",
      "min" : 3,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon.north",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon.north",
      "short" : "north",
      "definition" : "north (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon.east",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.polygon.east",
      "short" : "east",
      "definition" : "east (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.otherLocationName",
      "path" : "getcareserviceofferings.careService.location.geographicalLocation.otherLocation.otherLocationName",
      "short" : "otherLocationName",
      "definition" : "otherLocationName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation",
      "path" : "getcareserviceofferings.careService.location.physicalLocation",
      "short" : "physicalLocation",
      "definition" : "physicalLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation.locationAddress",
      "path" : "getcareserviceofferings.careService.location.physicalLocation.locationAddress",
      "short" : "locationAddress",
      "definition" : "locationAddress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates",
      "path" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates",
      "short" : "geographicalCoordinates",
      "definition" : "geographicalCoordinates",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates.north",
      "path" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates.north",
      "short" : "north",
      "definition" : "north (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates.east",
      "path" : "getcareserviceofferings.careService.location.physicalLocation.geographicalCoordinates.east",
      "short" : "east",
      "definition" : "east (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.virtualLocation",
      "path" : "getcareserviceofferings.careService.location.virtualLocation",
      "short" : "virtualLocation",
      "definition" : "virtualLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.virtualLocation.virtualLocationId",
      "path" : "getcareserviceofferings.careService.location.virtualLocation.virtualLocationId",
      "short" : "virtualLocationId",
      "definition" : "virtualLocationId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description",
      "path" : "getcareserviceofferings.careService.location.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionText",
      "path" : "getcareserviceofferings.careService.location.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.location.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role",
      "path" : "getcareserviceofferings.careService.location.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.location.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.location.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.location.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.location.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.displayName",
      "path" : "getcareserviceofferings.careService.location.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.location.description.role.originalText",
      "path" : "getcareserviceofferings.careService.location.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation",
      "path" : "getcareserviceofferings.careService.contactInformation",
      "short" : "contactInformation",
      "definition" : "contactInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.ranking",
      "path" : "getcareserviceofferings.careService.contactInformation.ranking",
      "short" : "ranking",
      "definition" : "ranking",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole",
      "short" : "forRole",
      "definition" : "forRole",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.cvCode",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystem",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystemName",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.displayName",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.forRole.originalText",
      "path" : "getcareserviceofferings.careService.contactInformation.forRole.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.purpose",
      "path" : "getcareserviceofferings.careService.contactInformation.purpose",
      "short" : "purpose",
      "definition" : "purpose",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.address",
      "path" : "getcareserviceofferings.careService.contactInformation.address",
      "short" : "address",
      "definition" : "address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.availableTime",
      "path" : "getcareserviceofferings.careService.contactInformation.availableTime",
      "short" : "availableTime",
      "definition" : "availableTime",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom",
      "short" : "telecom",
      "definition" : "telecom",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom",
      "short" : "typeOfTelecom",
      "definition" : "typeOfTelecom",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.cvCode",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystem",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystemName",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.displayName",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.originalText",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.typeOfTelecom.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.telecom.contactPoint",
      "path" : "getcareserviceofferings.careService.contactInformation.telecom.contactPoint",
      "short" : "contactPoint",
      "definition" : "contactPoint",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description",
      "path" : "getcareserviceofferings.careService.contactInformation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionText",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.contactInformation.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.displayName",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.contactInformation.description.role.originalText",
      "path" : "getcareserviceofferings.careService.contactInformation.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation",
      "path" : "getcareserviceofferings.careService.cooperation",
      "short" : "cooperation",
      "definition" : "cooperation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.typeOfCooperation",
      "path" : "getcareserviceofferings.careService.cooperation.typeOfCooperation",
      "short" : "typeOfCooperation",
      "definition" : "typeOfCooperation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.validity",
      "path" : "getcareserviceofferings.careService.cooperation.validity",
      "short" : "validity",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.validity.start",
      "path" : "getcareserviceofferings.careService.cooperation.validity.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.validity.end",
      "path" : "getcareserviceofferings.careService.cooperation.validity.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId",
      "path" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId",
      "short" : "referenceToCareServiceId",
      "definition" : "referenceToCareServiceId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId.root",
      "path" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId.iiExtension",
      "path" : "getcareserviceofferings.careService.cooperation.referenceToCareServiceId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description",
      "path" : "getcareserviceofferings.careService.cooperation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionText",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.cooperation.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role",
      "path" : "getcareserviceofferings.careService.cooperation.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.displayName",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.cooperation.description.role.originalText",
      "path" : "getcareserviceofferings.careService.cooperation.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource",
      "path" : "getcareserviceofferings.careService.resource",
      "short" : "resource",
      "definition" : "resource",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource",
      "short" : "typeOfResource",
      "definition" : "typeOfResource",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.cvCode",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystem",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystemName",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.displayName",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.typeOfResource.originalText",
      "path" : "getcareserviceofferings.careService.resource.typeOfResource.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.resourceAttribute",
      "path" : "getcareserviceofferings.careService.resource.resourceAttribute",
      "short" : "resourceAttribute",
      "definition" : "resourceAttribute",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.availableTime",
      "path" : "getcareserviceofferings.careService.resource.availableTime",
      "short" : "availableTime",
      "definition" : "availableTime",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description",
      "path" : "getcareserviceofferings.careService.resource.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionText",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.resource.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role",
      "path" : "getcareserviceofferings.careService.resource.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.resource.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.resource.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.resource.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.resource.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.displayName",
      "path" : "getcareserviceofferings.careService.resource.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.resource.description.role.originalText",
      "path" : "getcareserviceofferings.careService.resource.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation",
      "path" : "getcareserviceofferings.careService.interferenceInformation",
      "short" : "interferenceInformation",
      "definition" : "interferenceInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.datePeriod",
      "path" : "getcareserviceofferings.careService.interferenceInformation.datePeriod",
      "short" : "datePeriod",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.datePeriod.start",
      "path" : "getcareserviceofferings.careService.interferenceInformation.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.datePeriod.end",
      "path" : "getcareserviceofferings.careService.interferenceInformation.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference",
      "short" : "typeOfInterference",
      "definition" : "typeOfInterference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.cvCode",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystem",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystemName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.displayName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.originalText",
      "path" : "getcareserviceofferings.careService.interferenceInformation.typeOfInterference.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionText",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionText",
      "short" : "descriptionText",
      "definition" : "descriptionText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage",
      "short" : "descriptionLanguage",
      "definition" : "descriptionLanguage Heter language i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.cvCode",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystem",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystemName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.displayName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.originalText",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.descriptionLanguage.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.cvCode",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.cvCode",
      "short" : "cvCode",
      "definition" : "cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystem",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystemName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystemVersion",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.displayName",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareserviceofferings.careService.interferenceInformation.description.role.originalText",
      "path" : "getcareserviceofferings.careService.interferenceInformation.description.role.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
