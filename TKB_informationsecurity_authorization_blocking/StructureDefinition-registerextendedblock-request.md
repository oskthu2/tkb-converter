# RegisterExtendedBlock — Request - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterExtendedBlock — Request**

## Logical Model: RegisterExtendedBlock — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerextendedblock-request | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:RegisterExtendedBlockRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RegisterExtendedBlock (urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-registerextendedblock-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerextendedblock-request.csv), [Excel](StructureDefinition-registerextendedblock-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerextendedblock-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerextendedblock-request",
  "version" : "4.0",
  "name" : "RegisterExtendedBlockRequest",
  "title" : "RegisterExtendedBlock — Request",
  "status" : "active",
  "date" : "2026-11-09T03:35:16+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RegisterExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerextendedblock-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerextendedblock-request",
      "path" : "registerextendedblock-request",
      "short" : "RegisterExtendedBlock — Request",
      "definition" : "Logisk modell för begäran i RegisterExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "registerextendedblock-request.blockId",
      "path" : "registerextendedblock-request.blockId",
      "short" : "blockId",
      "definition" : "Unik, global identifierare för spärren. Tjänstekonsumenten ansvarar för att generera id:et.",
      "comment" : "TKB-fält: `blockId` (`urn:riv:informationsecurity:authorization:blocking:4:Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.blockType",
      "path" : "registerextendedblock-request.blockType",
      "short" : "blockType",
      "definition" : "Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare).",
      "comment" : "TKB-fält: `blockType` (`urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType`, kardinalitet 1..1).\n\n**Modellanteckning:** blockType Tillåtna värden: Inner, Outer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/ValueSet/authorization-blocking-blocktype-vs"
      }
    },
    {
      "id" : "registerextendedblock-request.patientId",
      "path" : "registerextendedblock-request.patientId",
      "short" : "patientId",
      "definition" : "Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer.",
      "comment" : "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:blocking:4:IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "registerextendedblock-request.informationStartDate",
      "path" : "registerextendedblock-request.informationStartDate",
      "short" : "informationStartDate",
      "definition" : "Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt.",
      "comment" : "TKB-fält: `informationStartDate` (`xs:DateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerextendedblock-request.informationEndDate",
      "path" : "registerextendedblock-request.informationEndDate",
      "short" : "informationEndDate",
      "definition" : "Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt.",
      "comment" : "TKB-fält: `informationEndDate` (`xs:DateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerextendedblock-request.informationCareUnitId",
      "path" : "registerextendedblock-request.informationCareUnitId",
      "short" : "informationCareUnitId",
      "definition" : "Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för.",
      "comment" : "TKB-fält: `informationCareUnitId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.informationCareProviderId",
      "path" : "registerextendedblock-request.informationCareProviderId",
      "short" : "informationCareProviderId",
      "definition" : "Obligatoriskt HSA-id för den vårdgivare spärren gäller för.",
      "comment" : "TKB-fält: `informationCareProviderId` (`urn:riv:informationsecurity:authorization:blocking:4:HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.excludedInformationTypes",
      "path" : "registerextendedblock-request.excludedInformationTypes",
      "short" : "excludedInformationTypes",
      "definition" : "Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'.",
      "comment" : "TKB-fält: `excludedInformationTypes` (`urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction",
      "path" : "registerextendedblock-request.registerAction",
      "short" : "ActionType",
      "definition" : "Identifierar de personer som begärt och registrerat spärren samt tidpunkter för dessa.",
      "comment" : "TKB-fält: `registerAction` (`urn:riv:informationsecurity:authorization:blocking:4:ActionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestDate",
      "path" : "registerextendedblock-request.registerAction.requestDate",
      "short" : "requestDate",
      "definition" : "requestDate",
      "comment" : "TKB-fält: `../requestDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestedBy",
      "path" : "registerextendedblock-request.registerAction.requestedBy",
      "short" : "ActorType",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../requestedBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestedBy.employeeId",
      "path" : "registerextendedblock-request.registerAction.requestedBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestedBy.assignmentId",
      "path" : "registerextendedblock-request.registerAction.requestedBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.requestedBy.assignmentName",
      "path" : "registerextendedblock-request.registerAction.requestedBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registrationDate",
      "path" : "registerextendedblock-request.registerAction.registrationDate",
      "short" : "registrationDate",
      "definition" : "registrationDate",
      "comment" : "TKB-fält: `../registrationDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registeredBy",
      "path" : "registerextendedblock-request.registerAction.registeredBy",
      "short" : "ActorType",
      "definition" : "Datatyp som identifierar en medarbetare/person.",
      "comment" : "TKB-fält: `../registeredBy` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registeredBy.employeeId",
      "path" : "registerextendedblock-request.registerAction.registeredBy.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registeredBy.assignmentId",
      "path" : "registerextendedblock-request.registerAction.registeredBy.assignmentId",
      "short" : "assignmentId",
      "definition" : "assignmentId",
      "comment" : "TKB-fält: `../../assignmentId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.registeredBy.assignmentName",
      "path" : "registerextendedblock-request.registerAction.registeredBy.assignmentName",
      "short" : "assignmentName",
      "definition" : "assignmentName",
      "comment" : "TKB-fält: `../../assignmentName` (`AssignmentNameType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.registerAction.reasonText",
      "path" : "registerextendedblock-request.registerAction.reasonText",
      "short" : "reasonText",
      "definition" : "reasonText",
      "comment" : "TKB-fält: `../reasonText` (`ReasonText`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerextendedblock-request.replicationTimeout",
      "path" : "registerextendedblock-request.replicationTimeout",
      "short" : "replicationTimeout",
      "definition" : "Anger hur replikering till nationell spärrtjänst ska ske.\n\n-   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas.\n\n-   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt.\n\n-   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt.",
      "comment" : "TKB-fält: `replicationTimeout` (`xs:Int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
