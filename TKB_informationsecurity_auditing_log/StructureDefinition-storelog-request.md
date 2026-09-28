# StoreLog — Request - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StoreLog — Request**

## Logical Model: StoreLog — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/storelog-request | *Version*:2.0.8 |
| Draft as of 2026-09-28 | *Computable Name*:StoreLogRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i StoreLog (urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-auditing-log|current/StructureDefinition/StructureDefinition-storelog-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-storelog-request.csv), [Excel](StructureDefinition-storelog-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "storelog-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/storelog-request",
  "version" : "2.0.8",
  "name" : "StoreLogRequest",
  "title" : "StoreLog — Request",
  "status" : "draft",
  "date" : "2026-09-28T09:01:27+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i StoreLog\n(urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-auditing-log/StructureDefinition/storelog-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "storelog-request",
      "path" : "storelog-request",
      "short" : "StoreLog — Request",
      "definition" : "Logisk modell för begäran i StoreLog\n(urn:riv:informationsecurity:auditing:log:StoreLogResponder:2, StoreLogType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "storelog-request.logicalAddress",
      "path" : "storelog-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Ineras nationella HSA-id SE165565594230-1000.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log",
      "path" : "storelog-request.log",
      "short" : "log",
      "definition" : "Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.logId",
      "path" : "storelog-request.log.logId",
      "short" : "logId",
      "definition" : "logId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.system",
      "path" : "storelog-request.log.system",
      "short" : "system",
      "definition" : "Datatyp som representerar ett system i loggposten. Det system som skapar loggposten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.system.systemId",
      "path" : "storelog-request.log.system.systemId",
      "short" : "systemId",
      "definition" : "systemId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.system.systemName",
      "path" : "storelog-request.log.system.systemName",
      "short" : "systemName",
      "definition" : "systemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.activity",
      "path" : "storelog-request.log.activity",
      "short" : "activity",
      "definition" : "Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.activity.activityType",
      "path" : "storelog-request.log.activity.activityType",
      "short" : "activityType",
      "definition" : "activityType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.activity.activityLevel",
      "path" : "storelog-request.log.activity.activityLevel",
      "short" : "activityLevel",
      "definition" : "activityLevel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.activity.activityArgs",
      "path" : "storelog-request.log.activity.activityArgs",
      "short" : "activityArgs",
      "definition" : "activityArgs",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.activity.startDate",
      "path" : "storelog-request.log.activity.startDate",
      "short" : "startDate",
      "definition" : "startDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "storelog-request.log.activity.purpose",
      "path" : "storelog-request.log.activity.purpose",
      "short" : "purpose",
      "definition" : "purpose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user",
      "path" : "storelog-request.log.user",
      "short" : "user",
      "definition" : "Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.user.userId",
      "path" : "storelog-request.log.user.userId",
      "short" : "userId",
      "definition" : "userId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.userName",
      "path" : "storelog-request.log.user.userName",
      "short" : "userName",
      "definition" : "userName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.personId",
      "path" : "storelog-request.log.user.personId",
      "short" : "personId",
      "definition" : "En universellt unik identifierare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.user.personId.root",
      "path" : "storelog-request.log.user.personId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.personId.iiExtension",
      "path" : "storelog-request.log.user.personId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.assignment",
      "path" : "storelog-request.log.user.assignment",
      "short" : "assignment",
      "definition" : "assignment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.title",
      "path" : "storelog-request.log.user.title",
      "short" : "title",
      "definition" : "title",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.careProvider",
      "path" : "storelog-request.log.user.careProvider",
      "short" : "careProvider",
      "definition" : "Datatyp som representerar en vårdgivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.user.careProvider.careProviderId",
      "path" : "storelog-request.log.user.careProvider.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.careProvider.careProviderName",
      "path" : "storelog-request.log.user.careProvider.careProviderName",
      "short" : "careProviderName",
      "definition" : "careProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.careUnit",
      "path" : "storelog-request.log.user.careUnit",
      "short" : "careUnit",
      "definition" : "Datatyp som representerar en vårdenhet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.user.careUnit.careUnitId",
      "path" : "storelog-request.log.user.careUnit.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.user.careUnit.careUnitName",
      "path" : "storelog-request.log.user.careUnit.careUnitName",
      "short" : "careUnitName",
      "definition" : "careUnitName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.resources",
      "path" : "storelog-request.log.resources",
      "short" : "resources",
      "definition" : "Information om aktuella resurser. En loggpost kan hålla en eller flera resurser.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource",
      "path" : "storelog-request.log.resources.resource",
      "short" : "resource",
      "definition" : "Datatyp som representerar en resurs i loggposten.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.resourceType",
      "path" : "storelog-request.log.resources.resource.resourceType",
      "short" : "resourceType",
      "definition" : "resourceType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.patient",
      "path" : "storelog-request.log.resources.resource.patient",
      "short" : "patient",
      "definition" : "Datatyp som representerar en patient i en resurs.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.patient.patientId",
      "path" : "storelog-request.log.resources.resource.patient.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.patient.patientId.root",
      "path" : "storelog-request.log.resources.resource.patient.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.patient.patientId.iiExtension",
      "path" : "storelog-request.log.resources.resource.patient.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.patient.patientName",
      "path" : "storelog-request.log.resources.resource.patient.patientName",
      "short" : "patientName",
      "definition" : "patientName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.careProvider",
      "path" : "storelog-request.log.resources.resource.careProvider",
      "short" : "careProvider",
      "definition" : "Datatyp som representerar en vårdgivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.careProvider.careProviderId",
      "path" : "storelog-request.log.resources.resource.careProvider.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.careProvider.careProviderName",
      "path" : "storelog-request.log.resources.resource.careProvider.careProviderName",
      "short" : "careProviderName",
      "definition" : "careProviderName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.careUnit",
      "path" : "storelog-request.log.resources.resource.careUnit",
      "short" : "careUnit",
      "definition" : "Datatyp som representerar en vårdenhet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.careUnit.careUnitId",
      "path" : "storelog-request.log.resources.resource.careUnit.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "storelog-request.log.resources.resource.careUnit.careUnitName",
      "path" : "storelog-request.log.resources.resource.careUnit.careUnitName",
      "short" : "careUnitName",
      "definition" : "careUnitName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
