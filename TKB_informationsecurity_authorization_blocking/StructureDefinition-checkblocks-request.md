# CheckBlocks — Request - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CheckBlocks — Request**

## Logical Model: CheckBlocks — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/checkblocks-request | *Version*:4.0 |
| Active as of 2026-11-06 | *Computable Name*:CheckBlocksRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i CheckBlocks (urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-checkblocks-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-checkblocks-request.csv), [Excel](StructureDefinition-checkblocks-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "checkblocks-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/checkblocks-request",
  "version" : "4.0",
  "name" : "CheckBlocksRequest",
  "title" : "CheckBlocks — Request",
  "status" : "active",
  "date" : "2026-11-06T21:26:19+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i CheckBlocks\n(urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/checkblocks-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "checkblocks-request",
      "path" : "checkblocks-request",
      "short" : "CheckBlocks — Request",
      "definition" : "Logisk modell för begäran i CheckBlocks\n(urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "checkblocks-request.logicalAddress",
      "path" : "checkblocks-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Om anropet sker på nationell nivå används SE165565594230-1000, i annat fall anges HSA-id för den organisation vars tjänst adresseras (t ex HSA-id för Region Skåne) Undantagsvis kan s.k. källsystembaserad adressering användas, (t ex. HSA-id för Region Skånes lokala spärrtjänst).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.accessingActor",
      "path" : "checkblocks-request.accessingActor",
      "short" : "accessingActor",
      "definition" : "Representerar den aktör/person som önskar åtkomst till informationen.",
      "comment" : "TKB-fält: `accessingActor` (`urn:riv:informationsecurity:authorization:blocking:4:AccessingActorType`, kardinalitet 1..1).\n\n**Modellanteckning:** Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkblocks-request.accessingActor.employeeId",
      "path" : "checkblocks-request.accessingActor.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.accessingActor.careProviderId",
      "path" : "checkblocks-request.accessingActor.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "comment" : "TKB-fält: `../careProviderId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.accessingActor.careUnitId",
      "path" : "checkblocks-request.accessingActor.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "comment" : "TKB-fält: `../careUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.patientId",
      "path" : "checkblocks-request.patientId",
      "short" : "patientId",
      "definition" : "Personidentitet på patienten vars information aktören önskar åtkomst till.",
      "comment" : "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:blocking:4:IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkblocks-request.patientId.root",
      "path" : "checkblocks-request.patientId.root",
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
      "id" : "checkblocks-request.patientId.iiExtension",
      "path" : "checkblocks-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities",
      "path" : "checkblocks-request.informationEntities",
      "short" : "informationEntities",
      "definition" : "Lista över de informationsentiteter som aktören önskar åtkomst till.",
      "comment" : "TKB-fält: `informationEntities` (`urn:riv:informationsecurity:authorization:blocking:4:InformationEntityType`, kardinalitet 1..*).\n\n**Modellanteckning:** Datatyp som representerar den information som behövs vid en kontroll om spärr föreligger.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.informationStartDate",
      "path" : "checkblocks-request.informationEntities.informationStartDate",
      "short" : "informationStartDate",
      "definition" : "informationStartDate",
      "comment" : "TKB-fält: `../informationStartDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.informationEndDate",
      "path" : "checkblocks-request.informationEntities.informationEndDate",
      "short" : "informationEndDate",
      "definition" : "informationEndDate",
      "comment" : "TKB-fält: `../informationEndDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.informationCareUnitId",
      "path" : "checkblocks-request.informationEntities.informationCareUnitId",
      "short" : "informationCareUnitId",
      "definition" : "informationCareUnitId",
      "comment" : "TKB-fält: `../informationCareUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.informationCareProviderId",
      "path" : "checkblocks-request.informationEntities.informationCareProviderId",
      "short" : "informationCareProviderId",
      "definition" : "informationCareProviderId",
      "comment" : "TKB-fält: `../informationCareProviderId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.informationType",
      "path" : "checkblocks-request.informationEntities.informationType",
      "short" : "informationType",
      "definition" : "informationType",
      "comment" : "TKB-fält: `../informationType` (`InformationTypeIdValue`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "checkblocks-request.informationEntities.rowNumber",
      "path" : "checkblocks-request.informationEntities.rowNumber",
      "short" : "rowNumber",
      "definition" : "rowNumber",
      "comment" : "TKB-fält: `../rowNumber` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
