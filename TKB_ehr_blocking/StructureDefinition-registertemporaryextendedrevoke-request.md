# RegisterTemporaryExtendedRevoke — Request - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterTemporaryExtendedRevoke — Request**

## Logical Model: RegisterTemporaryExtendedRevoke — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryextendedrevoke-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:RegisterTemporaryExtendedRevokeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i RegisterTemporaryExtendedRevoke. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-registertemporaryextendedrevoke-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registertemporaryextendedrevoke-request.csv), [Excel](StructureDefinition-registertemporaryextendedrevoke-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registertemporaryextendedrevoke-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryextendedrevoke-request",
  "version" : "2.0",
  "name" : "RegisterTemporaryExtendedRevokeRequest",
  "title" : "RegisterTemporaryExtendedRevoke — Request",
  "status" : "active",
  "date" : "2026-11-09T03:28:23+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i RegisterTemporaryExtendedRevoke.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/registertemporaryextendedrevoke-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registertemporaryextendedrevoke-request",
      "path" : "registertemporaryextendedrevoke-request",
      "short" : "RegisterTemporaryExtendedRevoke — Request",
      "definition" : "Logisk modell för requestparametrar i RegisterTemporaryExtendedRevoke."
    },
    {
      "id" : "registertemporaryextendedrevoke-request.temporaryRevokeId",
      "path" : "registertemporaryextendedrevoke-request.temporaryRevokeId",
      "short" : "Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et.",
      "definition" : "Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et.",
      "comment" : "TKB-fält: `temporaryRevokeId` (`blocking:Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.blockId",
      "path" : "registertemporaryextendedrevoke-request.blockId",
      "short" : "Identifierare för den spärr som skall tillfälligt hävas.",
      "definition" : "Identifierare för den spärr som skall tillfälligt hävas.",
      "comment" : "TKB-fält: `blockId` (`blocking:Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.endDate",
      "path" : "registertemporaryextendedrevoke-request.endDate",
      "short" : "Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat.",
      "definition" : "Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat.",
      "comment" : "TKB-fält: `endDate` (`xs:dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.revokedForCareUnitId",
      "path" : "registertemporaryextendedrevoke-request.revokedForCareUnitId",
      "short" : "HSA-id för den vårdenhet hävningen gäller för.",
      "definition" : "Anger HSA-id för den vårdenhet hävningen gäller för.",
      "comment" : "TKB-fält: `revokedForCareUnitId` (`blocking:HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.revokedForEmployeeId",
      "path" : "registertemporaryextendedrevoke-request.revokedForEmployeeId",
      "short" : "HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten.",
      "definition" : "Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten.",
      "comment" : "TKB-fält: `revokedForEmployeeId` (`blocking:HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo",
      "short" : "Aktörsinfo för registrering av hävningen",
      "definition" : "Aktörsinfo för registrering av hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.requestDate",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.requestDate",
      "short" : "Datum när hävningen begärdes",
      "definition" : "Datum när hävningen begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.requestedBy",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.requestedBy",
      "short" : "Aktören som begärde hävningen",
      "definition" : "Aktören som begärde hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.requestedBy.employeeId",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.requestedBy.assignmentId",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.requestedBy.assignmentName",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.registrationDate",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.registrationDate",
      "short" : "Datum när hävningen registrerades",
      "definition" : "Datum när hävningen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.registeredBy",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.registeredBy",
      "short" : "Aktören som registrerade hävningen",
      "definition" : "Aktören som registrerade hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.registeredBy.employeeId",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.registeredBy.assignmentId",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.registrationInfo.registeredBy.assignmentName",
      "path" : "registertemporaryextendedrevoke-request.registrationInfo.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.revokeReason",
      "path" : "registertemporaryextendedrevoke-request.revokeReason",
      "short" : "Enumerationsvärde för orsak till tillfällig hävning",
      "definition" : "Enumerationsvärde för orsak till tillfällig hävning.",
      "comment" : "TKB-fält: `revokeReason` (`blocking:TemporaryRevokeReason`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/temporaryrevokereason-vs"
      }
    },
    {
      "id" : "registertemporaryextendedrevoke-request.revokeReasonText",
      "path" : "registertemporaryextendedrevoke-request.revokeReasonText",
      "short" : "Kompletterande text för orsak till tillfällig hävning",
      "definition" : "Obligatorisk, kompletterande text för orsak till tillfällig hävning.",
      "comment" : "TKB-fält: `revokeReasonText` (`blocking:ReasonText`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registertemporaryextendedrevoke-request.replicationTimeout",
      "path" : "registertemporaryextendedrevoke-request.replicationTimeout",
      "short" : "Anger hur replikering till nationell spärrtjänst ska ske (millisekunder). -1 = anropet väntar på replikering (misslyckas vid timeout). 0 = anropet avslutas direkt, replikering sker asynkront. >0 = anropet väntar angiven tid innan det avslutas; ej klar replikering fortsätter asynkront.",
      "definition" : "Anger hur replikering till nationell spärrtjänst ska ske.\n\n-   Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas.\n\n-   Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt.\n\n-   Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt.",
      "comment" : "TKB-fält: `replicationTimeout` (`xs:int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
