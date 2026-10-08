# GetCareManagers — Response - coreprocess: residentparticipation: residentparticipation v1.0.0-rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareManagers — Response**

## Logical Model: GetCareManagers — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetCareManagers |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetCareManagers (urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.coreprocess-residentparticipation-residentparticipation|current/StructureDefinition/StructureDefinition-getcaremanagers.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcaremanagers.csv), [Excel](StructureDefinition-getcaremanagers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcaremanagers",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers",
  "version" : "1.0",
  "name" : "GetCareManagers",
  "title" : "GetCareManagers — Response",
  "status" : "draft",
  "date" : "2026-10-08T18:13:26+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetCareManagers\n(urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcaremanagers",
      "path" : "getcaremanagers",
      "short" : "GetCareManagers — Response",
      "definition" : "Logisk modell för svaret i GetCareManagers\n(urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersResponseType)."
    },
    {
      "id" : "getcaremanagers.careManager",
      "path" : "getcaremanagers.careManager",
      "short" : "careManager",
      "definition" : "careManager",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader",
      "path" : "getcaremanagers.careManager.careManagerHeader",
      "short" : "careManagerHeader",
      "definition" : "careManagerHeader",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader",
      "short" : "accessControlHeader",
      "definition" : "accessControlHeader",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId",
      "short" : "accountableHealthcareProviderId",
      "definition" : "accountableHealthcareProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId.root",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId.iIExtension",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableCareUnitId",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableCareUnitId",
      "short" : "accountableCareUnitId",
      "definition" : "accountableCareUnitId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableCareUnitId.root",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableCareUnitId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableCareUnitId.iIExtension",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableCareUnitId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.patientId",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.patientId",
      "short" : "patientId",
      "definition" : "patientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.patientId.root",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.patientId.iIExtension",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.patientId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.careProcessId",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.careProcessId",
      "short" : "careProcessId",
      "definition" : "careProcessId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.careProcessId.root",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.careProcessId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.careProcessId.iIExtension",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.careProcessId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.blockComparisonTime",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.blockComparisonTime",
      "short" : "blockComparisonTime",
      "definition" : "blockComparisonTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.sourceSystemId",
      "path" : "getcaremanagers.careManager.careManagerHeader.sourceSystemId",
      "short" : "sourceSystemId",
      "definition" : "sourceSystemId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.sourceSystemId.root",
      "path" : "getcaremanagers.careManager.careManagerHeader.sourceSystemId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.sourceSystemId.iIExtension",
      "path" : "getcaremanagers.careManager.careManagerHeader.sourceSystemId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitionerRoleCode",
      "path" : "getcaremanagers.careManager.practitionerRoleCode",
      "short" : "practitionerRoleCode",
      "definition" : "practitionerRoleCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitionerRoleCode.cVCode",
      "path" : "getcaremanagers.careManager.practitionerRoleCode.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitionerRoleCode.codeSystem",
      "path" : "getcaremanagers.careManager.practitionerRoleCode.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitionerRoleCode.codeSystemName",
      "path" : "getcaremanagers.careManager.practitionerRoleCode.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitionerRoleCode.codeSystemVersion",
      "path" : "getcaremanagers.careManager.practitionerRoleCode.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitionerRoleCode.displayName",
      "path" : "getcaremanagers.careManager.practitionerRoleCode.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitionerRoleCode.originalText",
      "path" : "getcaremanagers.careManager.practitionerRoleCode.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner",
      "path" : "getcaremanagers.careManager.practitioner",
      "short" : "practitioner",
      "definition" : "practitioner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.hsaId",
      "path" : "getcaremanagers.careManager.practitioner.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.hsaId.root",
      "path" : "getcaremanagers.careManager.practitioner.hsaId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.hsaId.iIExtension",
      "path" : "getcaremanagers.careManager.practitioner.hsaId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.practitionerName",
      "path" : "getcaremanagers.careManager.practitioner.practitionerName",
      "short" : "practitionerName",
      "definition" : "practitionerName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.qualification",
      "path" : "getcaremanagers.careManager.practitioner.qualification",
      "short" : "qualification",
      "definition" : "qualification",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.qualification.cVCode",
      "path" : "getcaremanagers.careManager.practitioner.qualification.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.qualification.codeSystem",
      "path" : "getcaremanagers.careManager.practitioner.qualification.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.qualification.codeSystemName",
      "path" : "getcaremanagers.careManager.practitioner.qualification.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.qualification.codeSystemVersion",
      "path" : "getcaremanagers.careManager.practitioner.qualification.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.qualification.displayName",
      "path" : "getcaremanagers.careManager.practitioner.qualification.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.qualification.originalText",
      "path" : "getcaremanagers.careManager.practitioner.qualification.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam",
      "path" : "getcaremanagers.careManager.careTeam",
      "short" : "careTeam",
      "definition" : "careTeam",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.careTeamId",
      "path" : "getcaremanagers.careManager.careTeam.careTeamId",
      "short" : "careTeamId",
      "definition" : "careTeamId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.careTeamId.root",
      "path" : "getcaremanagers.careManager.careTeam.careTeamId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.careTeamId.iIExtension",
      "path" : "getcaremanagers.careManager.careTeam.careTeamId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.careTeamName",
      "path" : "getcaremanagers.careManager.careTeam.careTeamName",
      "short" : "careTeamName",
      "definition" : "careTeamName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.internalNotes",
      "path" : "getcaremanagers.careManager.careTeam.internalNotes",
      "short" : "internalNotes",
      "definition" : "internalNotes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.externalNotes",
      "path" : "getcaremanagers.careManager.careTeam.externalNotes",
      "short" : "externalNotes",
      "definition" : "externalNotes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact",
      "path" : "getcaremanagers.careManager.careTeam.contact",
      "short" : "contact",
      "definition" : "contact",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom",
      "short" : "telecom",
      "definition" : "telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.system",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.system.cVCode",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.system.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.system.codeSystem",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.system.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.system.codeSystemName",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.system.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.system.codeSystemVersion",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.system.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.system.displayName",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.system.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.system.originalText",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.system.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.contactPointSystemValue",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.contactPointSystemValue",
      "short" : "contactPointSystemValue",
      "definition" : "contactPointSystemValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.month",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address",
      "path" : "getcaremanagers.careManager.careTeam.contact.address",
      "short" : "address",
      "definition" : "address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.addressType",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.addressType",
      "short" : "addressType",
      "definition" : "addressType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.addressType.cVCode",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.addressType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.addressType.codeSystem",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.addressType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.addressType.codeSystemName",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.addressType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.addressType.codeSystemVersion",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.addressType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.addressType.displayName",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.addressType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.addressType.originalText",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.addressType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.line",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.city",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.postalCode",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.month",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.time",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.period",
      "path" : "getcaremanagers.careManager.period",
      "short" : "period",
      "definition" : "period",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.period.start",
      "path" : "getcaremanagers.careManager.period.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.period.end",
      "path" : "getcaremanagers.careManager.period.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.internalNotes",
      "path" : "getcaremanagers.careManager.internalNotes",
      "short" : "internalNotes",
      "definition" : "internalNotes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.externalNotes",
      "path" : "getcaremanagers.careManager.externalNotes",
      "short" : "externalNotes",
      "definition" : "externalNotes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver",
      "path" : "getcaremanagers.careManager.managingCareGiver",
      "short" : "managingCareGiver",
      "definition" : "managingCareGiver",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.hsaId",
      "path" : "getcaremanagers.careManager.managingCareGiver.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.hsaId.root",
      "path" : "getcaremanagers.careManager.managingCareGiver.hsaId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.hsaId.iIExtension",
      "path" : "getcaremanagers.careManager.managingCareGiver.hsaId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.organizationName",
      "path" : "getcaremanagers.careManager.managingCareGiver.organizationName",
      "short" : "organizationName",
      "definition" : "organizationName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact",
      "short" : "contact",
      "definition" : "contact",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom",
      "short" : "telecom",
      "definition" : "telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.cVCode",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.codeSystem",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.codeSystemName",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.codeSystemVersion",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.displayName",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.originalText",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.contactPointSystemValue",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.contactPointSystemValue",
      "short" : "contactPointSystemValue",
      "definition" : "contactPointSystemValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.month",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address",
      "short" : "address",
      "definition" : "address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType",
      "short" : "addressType",
      "definition" : "addressType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.cVCode",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.codeSystem",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.codeSystemName",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.codeSystemVersion",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.displayName",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.originalText",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.addressType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.line",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.city",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.postalCode",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.month",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit",
      "path" : "getcaremanagers.careManager.managingCareUnit",
      "short" : "managingCareUnit",
      "definition" : "managingCareUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.hsaId",
      "path" : "getcaremanagers.careManager.managingCareUnit.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.hsaId.root",
      "path" : "getcaremanagers.careManager.managingCareUnit.hsaId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.hsaId.iIExtension",
      "path" : "getcaremanagers.careManager.managingCareUnit.hsaId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.organizationName",
      "path" : "getcaremanagers.careManager.managingCareUnit.organizationName",
      "short" : "organizationName",
      "definition" : "organizationName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact",
      "short" : "contact",
      "definition" : "contact",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom",
      "short" : "telecom",
      "definition" : "telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.cVCode",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.codeSystem",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.codeSystemName",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.codeSystemVersion",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.displayName",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.originalText",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.contactPointSystemValue",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.contactPointSystemValue",
      "short" : "contactPointSystemValue",
      "definition" : "contactPointSystemValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.month",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address",
      "short" : "address",
      "definition" : "address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType",
      "short" : "addressType",
      "definition" : "addressType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.cVCode",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.codeSystem",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.codeSystemName",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.codeSystemVersion",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.displayName",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.originalText",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.addressType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.line",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.city",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.postalCode",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.month",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit",
      "short" : "careProvidingCareUnit",
      "definition" : "careProvidingCareUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.hsaId",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.hsaId.root",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.hsaId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.hsaId.iIExtension",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.hsaId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.organizationName",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.organizationName",
      "short" : "organizationName",
      "definition" : "organizationName Heter name i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact",
      "short" : "contact",
      "definition" : "contact",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom",
      "short" : "telecom",
      "definition" : "telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.cVCode",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.codeSystem",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.codeSystemName",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.codeSystemVersion",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.displayName",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.originalText",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.contactPointSystemValue",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.contactPointSystemValue",
      "short" : "contactPointSystemValue",
      "definition" : "contactPointSystemValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.month",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address",
      "short" : "address",
      "definition" : "address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType",
      "short" : "addressType",
      "definition" : "addressType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.cVCode",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.codeSystem",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.codeSystemName",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.codeSystemVersion",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.displayName",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.originalText",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.addressType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.line",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.city",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.postalCode",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.month",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact",
      "path" : "getcaremanagers.careManager.contact",
      "short" : "contact",
      "definition" : "contact",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom",
      "path" : "getcaremanagers.careManager.contact.telecom",
      "short" : "telecom",
      "definition" : "telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.system",
      "path" : "getcaremanagers.careManager.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.system.cVCode",
      "path" : "getcaremanagers.careManager.contact.telecom.system.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.system.codeSystem",
      "path" : "getcaremanagers.careManager.contact.telecom.system.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.system.codeSystemName",
      "path" : "getcaremanagers.careManager.contact.telecom.system.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.system.codeSystemVersion",
      "path" : "getcaremanagers.careManager.contact.telecom.system.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.system.displayName",
      "path" : "getcaremanagers.careManager.contact.telecom.system.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.system.originalText",
      "path" : "getcaremanagers.careManager.contact.telecom.system.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.contactPointSystemValue",
      "path" : "getcaremanagers.careManager.contact.telecom.contactPointSystemValue",
      "short" : "contactPointSystemValue",
      "definition" : "contactPointSystemValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period",
      "path" : "getcaremanagers.careManager.contact.telecom.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.contact.telecom.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.contact.telecom.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.month",
      "path" : "getcaremanagers.careManager.contact.telecom.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.time",
      "path" : "getcaremanagers.careManager.contact.telecom.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address",
      "path" : "getcaremanagers.careManager.contact.address",
      "short" : "address",
      "definition" : "address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.addressType",
      "path" : "getcaremanagers.careManager.contact.address.addressType",
      "short" : "addressType",
      "definition" : "addressType Heter type i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.addressType.cVCode",
      "path" : "getcaremanagers.careManager.contact.address.addressType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.addressType.codeSystem",
      "path" : "getcaremanagers.careManager.contact.address.addressType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.addressType.codeSystemName",
      "path" : "getcaremanagers.careManager.contact.address.addressType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.addressType.codeSystemVersion",
      "path" : "getcaremanagers.careManager.contact.address.addressType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.addressType.displayName",
      "path" : "getcaremanagers.careManager.contact.address.addressType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.addressType.originalText",
      "path" : "getcaremanagers.careManager.contact.address.addressType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.line",
      "path" : "getcaremanagers.careManager.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.city",
      "path" : "getcaremanagers.careManager.contact.address.city",
      "short" : "city",
      "definition" : "city",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.postalCode",
      "path" : "getcaremanagers.careManager.contact.address.postalCode",
      "short" : "postalCode",
      "definition" : "postalCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period",
      "path" : "getcaremanagers.careManager.contact.address.period",
      "short" : "period",
      "definition" : "period",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.datePeriod.start",
      "path" : "getcaremanagers.careManager.contact.address.period.datePeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.datePeriod.end",
      "path" : "getcaremanagers.careManager.contact.address.period.datePeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay",
      "min" : 0,
      "max" : "7",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-weekdays-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.month",
      "path" : "getcaremanagers.careManager.contact.address.period.month",
      "short" : "month",
      "definition" : "month",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/ValueSet/residentparticipation-months-vs"
      }
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.time",
      "path" : "getcaremanagers.careManager.contact.address.period.time",
      "short" : "time",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
