# GetExtendedBlocksForPatient - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetExtendedBlocksForPatient**

## Logical Model: GetExtendedBlocksForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getextendedblocksforpatient | *Version*:3.2.2 |
| Draft as of 2026-09-26 | *Computable Name*:GetExtendedBlocksForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetExtendedBlocksForPatient (RIV-TA urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2). Läser spärrar för en viss patient med utökad information inklusive aktörsinformation, historik och makulerade spärrar. Representerar responsens informationsstruktur. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-blocking|current/StructureDefinition/StructureDefinition-getextendedblocksforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getextendedblocksforpatient.csv), [Excel](StructureDefinition-getextendedblocksforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getextendedblocksforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getextendedblocksforpatient",
  "version" : "3.2.2",
  "name" : "GetExtendedBlocksForPatient",
  "title" : "GetExtendedBlocksForPatient",
  "status" : "draft",
  "date" : "2026-09-26T19:23:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetExtendedBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2).\nLäser spärrar för en viss patient med utökad information inklusive aktörsinformation,\nhistorik och makulerade spärrar. Representerar responsens informationsstruktur.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-blocking/StructureDefinition/getextendedblocksforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getextendedblocksforpatient",
      "path" : "getextendedblocksforpatient",
      "short" : "GetExtendedBlocksForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetExtendedBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2).\nLäser spärrar för en viss patient med utökad information inklusive aktörsinformation,\nhistorik och makulerade spärrar. Representerar responsens informationsstruktur."
    },
    {
      "id" : "getextendedblocksforpatient.result",
      "path" : "getextendedblocksforpatient.result",
      "short" : "Resultat av anropet",
      "definition" : "Resultat av anropet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.result.resultCode",
      "path" : "getextendedblocksforpatient.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getextendedblocksforpatient.result.resultText",
      "path" : "getextendedblocksforpatient.result.resultText",
      "short" : "Beskrivande text till svarskoden",
      "definition" : "Beskrivande text till svarskoden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks",
      "path" : "getextendedblocksforpatient.blocks",
      "short" : "Lista med utökad spärrinformation (inkl. makulerade och hävda spärrar)",
      "definition" : "Lista med utökad spärrinformation (inkl. makulerade och hävda spärrar)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.blockId",
      "path" : "getextendedblocksforpatient.blocks.blockId",
      "short" : "Unik identifierare för spärren (UUID)",
      "definition" : "Unik identifierare för spärren (UUID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.blockType",
      "path" : "getextendedblocksforpatient.blocks.blockType",
      "short" : "Typ av spärr",
      "definition" : "Typ av spärr",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-blocking/ValueSet/blocktype-vs"
      }
    },
    {
      "id" : "getextendedblocksforpatient.blocks.patientId",
      "path" : "getextendedblocksforpatient.blocks.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.informationStartDate",
      "path" : "getextendedblocksforpatient.blocks.informationStartDate",
      "short" : "Startdatum för vilken information spärren gäller",
      "definition" : "Startdatum för vilken information spärren gäller",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.informationEndDate",
      "path" : "getextendedblocksforpatient.blocks.informationEndDate",
      "short" : "Slutdatum för vilken information spärren gäller",
      "definition" : "Slutdatum för vilken information spärren gäller",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.informationCareUnitId",
      "path" : "getextendedblocksforpatient.blocks.informationCareUnitId",
      "short" : "HSA-id för vårdenhet (vid inre spärr)",
      "definition" : "HSA-id för vårdenhet (vid inre spärr)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.informationCareProviderId",
      "path" : "getextendedblocksforpatient.blocks.informationCareProviderId",
      "short" : "HSA-id för vårdgivare",
      "definition" : "HSA-id för vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.excludedInformationTypes",
      "path" : "getextendedblocksforpatient.blocks.excludedInformationTypes",
      "short" : "Informationstyper undantagna från spärren",
      "definition" : "Informationstyper undantagna från spärren",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.excludedInformationTypes.infoTypeId",
      "path" : "getextendedblocksforpatient.blocks.excludedInformationTypes.infoTypeId",
      "short" : "ID för informationstypen",
      "definition" : "ID för informationstypen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.excludedInformationTypes.infoTypeDescription",
      "path" : "getextendedblocksforpatient.blocks.excludedInformationTypes.infoTypeDescription",
      "short" : "Beskrivning av informationstypen",
      "definition" : "Beskrivning av informationstypen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo",
      "short" : "Aktörsinfo för registrering av spärren",
      "definition" : "Aktörsinfo för registrering av spärren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.requestDate",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.requestDate",
      "short" : "Datum när spärren begärdes",
      "definition" : "Datum när spärren begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.requestedBy",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.requestedBy",
      "short" : "Aktören som begärde spärren",
      "definition" : "Aktören som begärde spärren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.requestedBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.requestedBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.requestedBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.registrationDate",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.registrationDate",
      "short" : "Datum när spärren registrerades",
      "definition" : "Datum när spärren registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.registeredBy",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.registeredBy",
      "short" : "Aktören som registrerade spärren",
      "definition" : "Aktören som registrerade spärren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.registeredBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.registeredBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.registeredBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.registrationInfo.reasonText",
      "path" : "getextendedblocksforpatient.blocks.registrationInfo.reasonText",
      "short" : "Orsak till spärren (max 1024 tecken)",
      "definition" : "Orsak till spärren (max 1024 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo",
      "short" : "Aktörsinfo vid permanent hävning (om spärren hävts)",
      "definition" : "Aktörsinfo vid permanent hävning (om spärren hävts)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestDate",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestDate",
      "short" : "Datum när hävning begärdes",
      "definition" : "Datum när hävning begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestedBy",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestedBy",
      "short" : "Aktören som begärde hävningen",
      "definition" : "Aktören som begärde hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestedBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestedBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestedBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registrationDate",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registrationDate",
      "short" : "Datum när hävningen registrerades",
      "definition" : "Datum när hävningen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registeredBy",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registeredBy",
      "short" : "Aktören som registrerade hävningen",
      "definition" : "Aktören som registrerade hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registeredBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registeredBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registeredBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.reasonText",
      "path" : "getextendedblocksforpatient.blocks.permanentRevokedInfo.reasonText",
      "short" : "Orsak till hävningen",
      "definition" : "Orsak till hävningen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo",
      "short" : "Aktörsinfo vid makulering (om spärren makulerats)",
      "definition" : "Aktörsinfo vid makulering (om spärren makulerats)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.requestDate",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.requestDate",
      "short" : "Datum när makulering begärdes",
      "definition" : "Datum när makulering begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.requestedBy",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.requestedBy",
      "short" : "Aktören som begärde makuleringen",
      "definition" : "Aktören som begärde makuleringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.requestedBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.requestedBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.requestedBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.registrationDate",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.registrationDate",
      "short" : "Datum när makuleringen registrerades",
      "definition" : "Datum när makuleringen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.registeredBy",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.registeredBy",
      "short" : "Aktören som registrerade makuleringen",
      "definition" : "Aktören som registrerade makuleringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.registeredBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.registeredBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.registeredBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.deletionInfo.reasonText",
      "path" : "getextendedblocksforpatient.blocks.deletionInfo.reasonText",
      "short" : "Orsak till makuleringen",
      "definition" : "Orsak till makuleringen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes",
      "short" : "Tillfälliga hävningar (inkl. historik)",
      "definition" : "Tillfälliga hävningar (inkl. historik)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.temporaryRevokeId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.temporaryRevokeId",
      "short" : "Unik ID för tillfällig hävning",
      "definition" : "Unik ID för tillfällig hävning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.endDate",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.endDate",
      "short" : "Datum när hävningen upphör",
      "definition" : "Datum när hävningen upphör",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.revokedForCareUnitId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.revokedForCareUnitId",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.revokedForEmployeeId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.revokedForEmployeeId",
      "short" : "HSA-id för enskild medarbetare",
      "definition" : "HSA-id för enskild medarbetare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.reason",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.reason",
      "short" : "Orsak till tillfällig hävning",
      "definition" : "Orsak till tillfällig hävning",
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
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo",
      "short" : "Aktörsinfo för registrering av hävningen",
      "definition" : "Aktörsinfo för registrering av hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestDate",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestDate",
      "short" : "Datum när hävningen begärdes",
      "definition" : "Datum när hävningen begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestedBy",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestedBy",
      "short" : "Aktören som begärde hävningen",
      "definition" : "Aktören som begärde hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestedBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestedBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestedBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registrationDate",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registrationDate",
      "short" : "Datum när hävningen registrerades",
      "definition" : "Datum när hävningen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registeredBy",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registeredBy",
      "short" : "Aktören som registrerade hävningen",
      "definition" : "Aktören som registrerade hävningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registeredBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registeredBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registeredBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.reasonText",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.registrationInfo.reasonText",
      "short" : "Fritext-orsak",
      "definition" : "Fritext-orsak",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo",
      "short" : "Aktörsinfo om hävningen har återkallats",
      "definition" : "Aktörsinfo om hävningen har återkallats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestDate",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestDate",
      "short" : "Datum när återkallning begärdes",
      "definition" : "Datum när återkallning begärdes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestedBy",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestedBy",
      "short" : "Aktören som begärde återkallningen",
      "definition" : "Aktören som begärde återkallningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestedBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestedBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestedBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestedBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestedBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.requestedBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registrationDate",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registrationDate",
      "short" : "Datum när återkallningen registrerades",
      "definition" : "Datum när återkallningen registrerades",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registeredBy",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registeredBy",
      "short" : "Aktören som registrerade återkallningen",
      "definition" : "Aktören som registrerade återkallningen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registeredBy.employeeId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registeredBy.employeeId",
      "short" : "HSA-id för anställd",
      "definition" : "HSA-id för anställd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registeredBy.assignmentId",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registeredBy.assignmentId",
      "short" : "HSA-id för medarbetaruppdrag",
      "definition" : "HSA-id för medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registeredBy.assignmentName",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.registeredBy.assignmentName",
      "short" : "Namn på medarbetaruppdrag",
      "definition" : "Namn på medarbetaruppdrag",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.reasonText",
      "path" : "getextendedblocksforpatient.blocks.temporaryRevokes.cancellationInfo.reasonText",
      "short" : "Fritext-orsak",
      "definition" : "Fritext-orsak",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
