# RegisterBlock — Request - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterBlock — Request**

## Logical Model: RegisterBlock — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerblock-request | *Version*:4.0 |
| Active as of 2026-11-09 | *Computable Name*:RegisterBlockRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RegisterBlock (urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-blocking|current/StructureDefinition/StructureDefinition-registerblock-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registerblock-request.csv), [Excel](StructureDefinition-registerblock-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registerblock-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerblock-request",
  "version" : "4.0",
  "name" : "RegisterBlockRequest",
  "title" : "RegisterBlock — Request",
  "status" : "active",
  "date" : "2026-11-09T03:35:16+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RegisterBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/StructureDefinition/registerblock-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registerblock-request",
      "path" : "registerblock-request",
      "short" : "RegisterBlock — Request",
      "definition" : "Logisk modell för begäran i RegisterBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "registerblock-request.blockId",
      "path" : "registerblock-request.blockId",
      "short" : "blockId",
      "definition" : "Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et.",
      "comment" : "TKB-fält: `blockId` (`urn:riv:informationsecurity:authorization:blocking:4:Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.blockType",
      "path" : "registerblock-request.blockType",
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
      "id" : "registerblock-request.patientId",
      "path" : "registerblock-request.patientId",
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
      "id" : "registerblock-request.informationStartDate",
      "path" : "registerblock-request.informationStartDate",
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
      "id" : "registerblock-request.informationEndDate",
      "path" : "registerblock-request.informationEndDate",
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
      "id" : "registerblock-request.informationCareUnitId",
      "path" : "registerblock-request.informationCareUnitId",
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
      "id" : "registerblock-request.informationCareProviderId",
      "path" : "registerblock-request.informationCareProviderId",
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
      "id" : "registerblock-request.excludedInformationTypes",
      "path" : "registerblock-request.excludedInformationTypes",
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
      "id" : "registerblock-request.temporaryRevokeRegistration",
      "path" : "registerblock-request.temporaryRevokeRegistration",
      "short" : "TemporaryRevokeRegistrationType",
      "definition" : "Ej obligatorisk lista med tillfälliga hävningar. Detta möjliggör registrering/överföring av en spärr och tillhörande hävningar på en och samma gång. Denna lista lämnas tom i normalfallet.",
      "comment" : "TKB-fält: `temporaryRevokeRegistration` (`urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.temporaryRevokeId",
      "path" : "registerblock-request.temporaryRevokeRegistration.temporaryRevokeId",
      "short" : "temporaryRevokeId",
      "definition" : "temporaryRevokeId",
      "comment" : "TKB-fält: `../temporaryRevokeId` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.blockId",
      "path" : "registerblock-request.temporaryRevokeRegistration.blockId",
      "short" : "blockId",
      "definition" : "blockId",
      "comment" : "TKB-fält: `../blockId` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.endDate",
      "path" : "registerblock-request.temporaryRevokeRegistration.endDate",
      "short" : "endDate",
      "definition" : "endDate",
      "comment" : "TKB-fält: `../endDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.revokedForCareUnitId",
      "path" : "registerblock-request.temporaryRevokeRegistration.revokedForCareUnitId",
      "short" : "revokedForCareUnitId",
      "definition" : "revokedForCareUnitId",
      "comment" : "TKB-fält: `../revokedForCareUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registerblock-request.temporaryRevokeRegistration.revokedForEmployeeId",
      "path" : "registerblock-request.temporaryRevokeRegistration.revokedForEmployeeId",
      "short" : "revokedForEmployeeId",
      "definition" : "revokedForEmployeeId",
      "comment" : "TKB-fält: `../revokedForEmployeeId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
