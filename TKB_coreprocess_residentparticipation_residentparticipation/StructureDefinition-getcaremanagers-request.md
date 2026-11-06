# GetCareManagers — Request - coreprocess: residentparticipation: residentparticipation v1.0.0-rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareManagers — Request**

## Logical Model: GetCareManagers — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers-request | *Version*:1.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetCareManagersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetCareManagers (urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.coreprocess-residentparticipation-residentparticipation|current/StructureDefinition/StructureDefinition-getcaremanagers-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcaremanagers-request.csv), [Excel](StructureDefinition-getcaremanagers-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcaremanagers-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers-request",
  "version" : "1.0",
  "name" : "GetCareManagersRequest",
  "title" : "GetCareManagers — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:09:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetCareManagers\n(urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcaremanagers-request",
      "path" : "getcaremanagers-request",
      "short" : "GetCareManagers — Request",
      "definition" : "Logisk modell för begäran i GetCareManagers\n(urn:riv:coreprocess:residentparticipation:residentparticipation:GetCareManagersResponder:1, GetCareManagersType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getcaremanagers-request.logicalAddress",
      "path" : "getcaremanagers-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The county/region code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.patientId",
      "path" : "getcaremanagers-request.patientId",
      "short" : "patientId",
      "definition" : "PatientId för patient vars fasta kontakter ska hämtas",
      "comment" : "TKB-fält: `patientId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.patientId.root",
      "path" : "getcaremanagers-request.patientId.root",
      "short" : "root",
      "definition" : "Fältet sätts till OID motsvarande typ av patientidentifierare.\n\nFöljande patientId’n kan förmedlas:\n\n1) För personnummer skall Skatteverkets oid för personnummer (1.2.752.129.2.1.3.1) användas.\n\n2) För samordningsnummer skall Skatteverkets oid för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\n3) För nationellt reservid skall Ineras oid för nationellt reservid (1.2.752.74.9.1) användas.\n\nObservera:\n\nFör att en konsument och en producent ska kunna samverka behöver båda tjänstekomponenterna ha möjlighet till uppslag, antingen direkt eller indirekt, i Ineras nationella personuppgiftstjänst.",
      "comment" : "TKB-fält: `patientId.root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.patientId.iIExtension",
      "path" : "getcaremanagers-request.patientId.iIExtension",
      "short" : "iIExtension",
      "definition" : "Id för patienten. Anges med 12 tecken utan avskiljare.",
      "comment" : "TKB-fält: `patientId.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careGiverId",
      "path" : "getcaremanagers-request.careGiverId",
      "short" : "careGiverId",
      "definition" : "Frivilligt fält för filtrering av svar baserat på given vårdgivare. Sätts till HSAId för vårdgivaren.",
      "comment" : "TKB-fält: `careGiverId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.careGiverId.root",
      "path" : "getcaremanagers-request.careGiverId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careGiverId.iIExtension",
      "path" : "getcaremanagers-request.careGiverId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careUnitId",
      "path" : "getcaremanagers-request.careUnitId",
      "short" : "careUnitId",
      "definition" : "Frivilligt fält för filtrering av svar baserat på given vårdenhet. Sätts till HSAId för vårdenheten.",
      "comment" : "TKB-fält: `careUnitId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.careUnitId.root",
      "path" : "getcaremanagers-request.careUnitId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careUnitId.iIExtension",
      "path" : "getcaremanagers-request.careUnitId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType",
      "path" : "getcaremanagers-request.careManagerType",
      "short" : "careManagerType",
      "definition" : "Kod för att filtrera svaret, baserat på typ av fast kontakt. Se referens R7 – kodverk för Fasta kontakter. Konsument begär filtrering genom att ange vilken typ av fast kontakt i fältet careManagerType.code samt anger careManagerType.codeSystem = ” 1.2.752.129.5.1.69”. Övriga fält i careManagerType kan utelämnas.",
      "comment" : "TKB-fält: `careManagerType` (`CVType`, kardinalitet 0..1).\n\nObs: modellen anger 0..* där TKB:n anger 0..1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.cVCode",
      "path" : "getcaremanagers-request.careManagerType.cVCode",
      "short" : "cVCode",
      "definition" : "cVCode Heter code i schemat.",
      "comment" : "TKB-fält: `../code` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** cVCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.codeSystem",
      "path" : "getcaremanagers-request.careManagerType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "comment" : "TKB-fält: `../codeSystem` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.codeSystemName",
      "path" : "getcaremanagers-request.careManagerType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.codeSystemVersion",
      "path" : "getcaremanagers-request.careManagerType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.displayName",
      "path" : "getcaremanagers-request.careManagerType.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "comment" : "TKB-fält: `../displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careManagerType.originalText",
      "path" : "getcaremanagers-request.careManagerType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careProcessId",
      "path" : "getcaremanagers-request.careProcessId",
      "short" : "careProcessId",
      "definition" : "Unik identifierare för filtrering av svaret baserat på specifikt hälsoärende",
      "comment" : "TKB-fält: `careProcessId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcaremanagers-request.careProcessId.root",
      "path" : "getcaremanagers-request.careProcessId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers-request.careProcessId.iIExtension",
      "path" : "getcaremanagers-request.careProcessId.iIExtension",
      "short" : "iIExtension",
      "definition" : "iIExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
