# GetActivities - clinicalprocess: activity: actions v1.3.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetActivities**

## Logical Model: GetActivities 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities | *Version*:1.3 |
| Active as of 2026-11-09 | *Computable Name*:GetActivities |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetActivities (RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1). Representerar responsens informationsstruktur — en lista av activityGroup-element. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activity-actions|current/StructureDefinition/StructureDefinition-getactivities.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getactivities.csv), [Excel](StructureDefinition-getactivities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getactivities",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities",
  "version" : "1.3",
  "name" : "GetActivities",
  "title" : "GetActivities",
  "status" : "active",
  "date" : "2026-11-09T03:13:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetActivities\n(RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1).\nRepresenterar responsens informationsstruktur — en lista av activityGroup-element.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getactivities",
      "path" : "getactivities",
      "short" : "GetActivities",
      "definition" : "Logisk modell för tjänstekontraktet GetActivities\n(RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1).\nRepresenterar responsens informationsstruktur — en lista av activityGroup-element."
    },
    {
      "id" : "getactivities.activityGroup",
      "path" : "getactivities.activityGroup",
      "short" : "ActivityGroupType",
      "definition" : "Grupp av aktiviteter som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera aktiviteter gjorts med samma medverkande (exempelvis de aktiviteter som utförts under ett visst operationstillfälle). Denna klass är en teknisk optimering som inte speglas i NI 2015:1.",
      "comment" : "TKB-fält: `activityGroup` (`ActivityGroupType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient",
      "path" : "getactivities.activityGroup.patient",
      "short" : "PatientType",
      "definition" : "Den patient som aktivitetsgruppen avser.",
      "comment" : "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient.id",
      "path" : "getactivities.activityGroup.patient.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient.dateOfBirth",
      "path" : "getactivities.activityGroup.patient.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "dateOfBirth",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient.gender",
      "path" : "getactivities.activityGroup.patient.gender",
      "short" : "CVType",
      "definition" : "gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient.gender.code",
      "path" : "getactivities.activityGroup.patient.gender.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient.gender.codeSystem",
      "path" : "getactivities.activityGroup.patient.gender.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient.gender.codeSystemName",
      "path" : "getactivities.activityGroup.patient.gender.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient.gender.codeSystemVersion",
      "path" : "getactivities.activityGroup.patient.gender.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.patient.gender.displayName",
      "path" : "getactivities.activityGroup.patient.gender.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole",
      "path" : "getactivities.activityGroup.performerRole",
      "short" : "PerformerRoleType",
      "definition" : "Den som utfört aktiviteter inom gruppen.",
      "comment" : "TKB-fält: `performerRole` (`PerformerRoleType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.id",
      "path" : "getactivities.activityGroup.performerRole.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.code",
      "path" : "getactivities.activityGroup.performerRole.code",
      "short" : "CVType",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.code.code",
      "path" : "getactivities.activityGroup.performerRole.code.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.code.codeSystem",
      "path" : "getactivities.activityGroup.performerRole.code.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.code.codeSystemName",
      "path" : "getactivities.activityGroup.performerRole.code.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.code.codeSystemVersion",
      "path" : "getactivities.activityGroup.performerRole.code.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.code.displayName",
      "path" : "getactivities.activityGroup.performerRole.code.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.person",
      "path" : "getactivities.activityGroup.performerRole.person",
      "short" : "PersonType",
      "definition" : "person",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.person.id",
      "path" : "getactivities.activityGroup.performerRole.person.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.person.name",
      "path" : "getactivities.activityGroup.performerRole.person.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.careUnit",
      "path" : "getactivities.activityGroup.performerRole.careUnit",
      "short" : "CareUnitType",
      "definition" : "careUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.careUnit.id",
      "path" : "getactivities.activityGroup.performerRole.careUnit.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.careUnit.name",
      "path" : "getactivities.activityGroup.performerRole.careUnit.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.careUnit.careGiver",
      "path" : "getactivities.activityGroup.performerRole.careUnit.careGiver",
      "short" : "CareGiverType",
      "definition" : "careGiver",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.careUnit.careGiver.id",
      "path" : "getactivities.activityGroup.performerRole.careUnit.careGiver.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.performerRole.careUnit.careGiver.name",
      "path" : "getactivities.activityGroup.performerRole.careUnit.careGiver.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.legalAuthenticator",
      "path" : "getactivities.activityGroup.legalAuthenticator",
      "short" : "LegalAuthenticatorType",
      "definition" : "Den som signerat aktiviteterna inom gruppen.",
      "comment" : "TKB-fält: `legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getactivities-legalauthenticator-id-or-name",
        "severity" : "error",
        "human" : "Minst ett av legalAuthenticatorId och name ska anges (TKB Regel 2.4).",
        "expression" : "id.exists() or name.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities"
      }]
    },
    {
      "id" : "getactivities.activityGroup.legalAuthenticator.id",
      "path" : "getactivities.activityGroup.legalAuthenticator.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.legalAuthenticator.time",
      "path" : "getactivities.activityGroup.legalAuthenticator.time",
      "short" : "PartialTimeStampType",
      "definition" : "time",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.legalAuthenticator.time.format",
      "path" : "getactivities.activityGroup.legalAuthenticator.time.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.legalAuthenticator.time.value",
      "path" : "getactivities.activityGroup.legalAuthenticator.time.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.legalAuthenticator.name",
      "path" : "getactivities.activityGroup.legalAuthenticator.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant",
      "path" : "getactivities.activityGroup.additionalParticipant",
      "short" : "AdditionalParticipantType",
      "definition" : "Övriga deltagare relaterat till aktiviteterna inom gruppen.",
      "comment" : "TKB-fält: `additionalParticipant` (`AdditionalParticipantType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getactivities-additionalparticipant-one-participant",
        "severity" : "error",
        "human" : "Exakt en av person, organisation, device och location ska anges i additionalParticipant (TKB 7.1, AdditionalParticipantType: 'Endast en av nedanstående').",
        "expression" : "person.count() + organisation.count() + device.count() + location.count() = 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.id",
      "path" : "getactivities.activityGroup.additionalParticipant.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.type",
      "path" : "getactivities.activityGroup.additionalParticipant.type",
      "short" : "CVType",
      "definition" : "type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.type.code",
      "path" : "getactivities.activityGroup.additionalParticipant.type.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.type.codeSystem",
      "path" : "getactivities.activityGroup.additionalParticipant.type.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.type.codeSystemName",
      "path" : "getactivities.activityGroup.additionalParticipant.type.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.type.codeSystemVersion",
      "path" : "getactivities.activityGroup.additionalParticipant.type.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.type.displayName",
      "path" : "getactivities.activityGroup.additionalParticipant.type.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.role",
      "path" : "getactivities.activityGroup.additionalParticipant.role",
      "short" : "CVType",
      "definition" : "role",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.role.code",
      "path" : "getactivities.activityGroup.additionalParticipant.role.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.role.codeSystem",
      "path" : "getactivities.activityGroup.additionalParticipant.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.role.codeSystemName",
      "path" : "getactivities.activityGroup.additionalParticipant.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.role.codeSystemVersion",
      "path" : "getactivities.activityGroup.additionalParticipant.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.role.displayName",
      "path" : "getactivities.activityGroup.additionalParticipant.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.time",
      "path" : "getactivities.activityGroup.additionalParticipant.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.person",
      "path" : "getactivities.activityGroup.additionalParticipant.person",
      "short" : "PersonType",
      "definition" : "person",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.person.id",
      "path" : "getactivities.activityGroup.additionalParticipant.person.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.person.name",
      "path" : "getactivities.activityGroup.additionalParticipant.person.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.organisation",
      "path" : "getactivities.activityGroup.additionalParticipant.organisation",
      "short" : "OrganisationType",
      "definition" : "organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.organisation.id",
      "path" : "getactivities.activityGroup.additionalParticipant.organisation.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.organisation.name",
      "path" : "getactivities.activityGroup.additionalParticipant.organisation.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device",
      "path" : "getactivities.activityGroup.additionalParticipant.device",
      "short" : "DeviceType",
      "definition" : "Deltagande artefakt\n\nAnvänd dessa i additionalParticipant i stället.",
      "comment" : "TKB-fält: `device` (`DeviceType`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.id",
      "path" : "getactivities.activityGroup.additionalParticipant.device.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.type",
      "path" : "getactivities.activityGroup.additionalParticipant.device.type",
      "short" : "CVType",
      "definition" : "type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.type.code",
      "path" : "getactivities.activityGroup.additionalParticipant.device.type.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.type.codeSystem",
      "path" : "getactivities.activityGroup.additionalParticipant.device.type.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.type.codeSystemName",
      "path" : "getactivities.activityGroup.additionalParticipant.device.type.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.type.codeSystemVersion",
      "path" : "getactivities.activityGroup.additionalParticipant.device.type.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.type.displayName",
      "path" : "getactivities.activityGroup.additionalParticipant.device.type.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.model",
      "path" : "getactivities.activityGroup.additionalParticipant.device.model",
      "short" : "SCType",
      "definition" : "model",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.model.code",
      "path" : "getactivities.activityGroup.additionalParticipant.device.model.code",
      "short" : "CVType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.model.code.code",
      "path" : "getactivities.activityGroup.additionalParticipant.device.model.code.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.model.code.codeSystem",
      "path" : "getactivities.activityGroup.additionalParticipant.device.model.code.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.model.code.codeSystemName",
      "path" : "getactivities.activityGroup.additionalParticipant.device.model.code.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.model.code.codeSystemVersion",
      "path" : "getactivities.activityGroup.additionalParticipant.device.model.code.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.model.code.displayName",
      "path" : "getactivities.activityGroup.additionalParticipant.device.model.code.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.device.model.value",
      "path" : "getactivities.activityGroup.additionalParticipant.device.model.value",
      "short" : "value",
      "definition" : "value",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location",
      "path" : "getactivities.activityGroup.additionalParticipant.location",
      "short" : "LocationType",
      "definition" : "Plats för aktiviteten\n\nAnvänd dessa i additionalParticipant i stället.",
      "comment" : "TKB-fält: `location` (`LocationType`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.id",
      "path" : "getactivities.activityGroup.additionalParticipant.location.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.name",
      "path" : "getactivities.activityGroup.additionalParticipant.location.name",
      "short" : "name",
      "definition" : "name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.address",
      "path" : "getactivities.activityGroup.additionalParticipant.location.address",
      "short" : "AddressType",
      "definition" : "address",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.address.use",
      "path" : "getactivities.activityGroup.additionalParticipant.location.address.use",
      "short" : "use",
      "definition" : "use Tillåtna värden: PHYS, H, HV, WP, TMP.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.address.part",
      "path" : "getactivities.activityGroup.additionalParticipant.location.address.part",
      "short" : "AddressPartType",
      "definition" : "part",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.address.part.value",
      "path" : "getactivities.activityGroup.additionalParticipant.location.address.part.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.address.part.type",
      "path" : "getactivities.activityGroup.additionalParticipant.location.address.part.type",
      "short" : "type",
      "definition" : "type Tillåtna värden: AL, ADL, UNIT, UNID, DAL, DINSTA, DINSTQ, DINST, DMOD, DMODID, SAL, BNR, BNN, BNS, STR, STB, STTYP, DIR, INT, CAR, CEN, CNT, CPA, DEL, CTY, POB, ZIP, PRE, STA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.electronicAddress",
      "path" : "getactivities.activityGroup.additionalParticipant.location.electronicAddress",
      "short" : "TelType",
      "definition" : "electronicAddress",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.electronicAddress.use",
      "path" : "getactivities.activityGroup.additionalParticipant.location.electronicAddress.use",
      "short" : "use",
      "definition" : "use Tillåtna värden: voice, fax, data, tty, sms.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.additionalParticipant.location.electronicAddress.value",
      "path" : "getactivities.activityGroup.additionalParticipant.location.electronicAddress.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.sourceSystem",
      "path" : "getactivities.activityGroup.sourceSystem",
      "short" : "SourceSystemType",
      "definition" : "Källsystem som aktivitetsgruppen lagras i.",
      "comment" : "TKB-fält: `sourceSystem` (`SourceSystemType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.sourceSystem.id",
      "path" : "getactivities.activityGroup.sourceSystem.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.careProcessId",
      "path" : "getactivities.activityGroup.careProcessId",
      "short" : "careProcessId",
      "definition" : "UUID för den individanpassade vårdprocess som denna aktivitet ingår i",
      "comment" : "TKB-fält: `careProcessId` (`UUIDType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/UUIDType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity",
      "path" : "getactivities.activityGroup.activity",
      "short" : "ActivityType",
      "definition" : "De aktiviteter som ligger inom denna grupp av aktiviteter.",
      "comment" : "TKB-fält: `activity` (`ActivityType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getactivities-activity-time-when-performed",
        "severity" : "error",
        "human" : "time ska anges när status är utförd (SNOMED CT 398166005) eller saknas (TKB Regel 2.3).",
        "expression" : "(status.empty() or status.where(code = '398166005').exists()) implies time.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.id",
      "path" : "getactivities.activityGroup.activity.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.status",
      "path" : "getactivities.activityGroup.activity.status",
      "short" : "CVType",
      "definition" : "status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.status.code",
      "path" : "getactivities.activityGroup.activity.status.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.status.codeSystem",
      "path" : "getactivities.activityGroup.activity.status.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.status.codeSystemName",
      "path" : "getactivities.activityGroup.activity.status.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.status.codeSystemVersion",
      "path" : "getactivities.activityGroup.activity.status.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.status.displayName",
      "path" : "getactivities.activityGroup.activity.status.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.code",
      "path" : "getactivities.activityGroup.activity.code",
      "short" : "CVType",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.code.code",
      "path" : "getactivities.activityGroup.activity.code.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.code.codeSystem",
      "path" : "getactivities.activityGroup.activity.code.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.code.codeSystemName",
      "path" : "getactivities.activityGroup.activity.code.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.code.codeSystemVersion",
      "path" : "getactivities.activityGroup.activity.code.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.code.displayName",
      "path" : "getactivities.activityGroup.activity.code.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.targetSite",
      "path" : "getactivities.activityGroup.activity.targetSite",
      "short" : "CVType",
      "definition" : "targetSite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.targetSite.code",
      "path" : "getactivities.activityGroup.activity.targetSite.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.targetSite.codeSystem",
      "path" : "getactivities.activityGroup.activity.targetSite.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.targetSite.codeSystemName",
      "path" : "getactivities.activityGroup.activity.targetSite.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.targetSite.codeSystemVersion",
      "path" : "getactivities.activityGroup.activity.targetSite.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.targetSite.displayName",
      "path" : "getactivities.activityGroup.activity.targetSite.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.time",
      "path" : "getactivities.activityGroup.activity.time",
      "short" : "PartialTimePeriodType",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getactivities-activity-time-start-or-end",
        "severity" : "error",
        "human" : "Minst en av start och end ska anges i aktivitetens tidsperiod (PartialTimePeriodType).",
        "expression" : "start.exists() or end.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/getactivities"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.time.start",
      "path" : "getactivities.activityGroup.activity.time.start",
      "short" : "PartialTimeStampType",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.time.start.format",
      "path" : "getactivities.activityGroup.activity.time.start.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.time.start.value",
      "path" : "getactivities.activityGroup.activity.time.start.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.time.end",
      "path" : "getactivities.activityGroup.activity.time.end",
      "short" : "PartialTimeStampType",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.time.end.format",
      "path" : "getactivities.activityGroup.activity.time.end.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.time.end.value",
      "path" : "getactivities.activityGroup.activity.time.end.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.method",
      "path" : "getactivities.activityGroup.activity.method",
      "short" : "CVType",
      "definition" : "method",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.method.code",
      "path" : "getactivities.activityGroup.activity.method.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.method.codeSystem",
      "path" : "getactivities.activityGroup.activity.method.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.method.codeSystemName",
      "path" : "getactivities.activityGroup.activity.method.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.method.codeSystemVersion",
      "path" : "getactivities.activityGroup.activity.method.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.method.displayName",
      "path" : "getactivities.activityGroup.activity.method.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.description",
      "path" : "getactivities.activityGroup.activity.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.approvedForPatient",
      "path" : "getactivities.activityGroup.activity.approvedForPatient",
      "short" : "approvedForPatient",
      "definition" : "approvedForPatient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.registrationTime",
      "path" : "getactivities.activityGroup.activity.registrationTime",
      "short" : "registrationTime",
      "definition" : "registrationTime",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation",
      "path" : "getactivities.activityGroup.activity.relation",
      "short" : "RelationType",
      "definition" : "relation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.code",
      "path" : "getactivities.activityGroup.activity.relation.code",
      "short" : "CVType",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.code.code",
      "path" : "getactivities.activityGroup.activity.relation.code.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.code.codeSystem",
      "path" : "getactivities.activityGroup.activity.relation.code.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.code.codeSystemName",
      "path" : "getactivities.activityGroup.activity.relation.code.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.code.codeSystemVersion",
      "path" : "getactivities.activityGroup.activity.relation.code.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.code.displayName",
      "path" : "getactivities.activityGroup.activity.relation.code.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.referredInformation",
      "path" : "getactivities.activityGroup.activity.relation.referredInformation",
      "short" : "ReferredInformationType",
      "definition" : "referredInformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.referredInformation.id",
      "path" : "getactivities.activityGroup.activity.relation.referredInformation.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.referredInformation.time",
      "path" : "getactivities.activityGroup.activity.relation.referredInformation.time",
      "short" : "PartialTimeStampType",
      "definition" : "time",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.referredInformation.time.format",
      "path" : "getactivities.activityGroup.activity.relation.referredInformation.time.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.referredInformation.time.value",
      "path" : "getactivities.activityGroup.activity.relation.referredInformation.time.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.referredInformation.type",
      "path" : "getactivities.activityGroup.activity.relation.referredInformation.type",
      "short" : "type",
      "definition" : "type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.referredInformation.informationOwner",
      "path" : "getactivities.activityGroup.activity.relation.referredInformation.informationOwner",
      "short" : "InformationOwnerType",
      "definition" : "informationOwner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.relation.referredInformation.informationOwner.id",
      "path" : "getactivities.activityGroup.activity.relation.referredInformation.informationOwner.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation",
      "path" : "getactivities.activityGroup.activity.additionalInformation",
      "short" : "AdditionalInformationType",
      "definition" : "additionalInformation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.key",
      "path" : "getactivities.activityGroup.activity.additionalInformation.key",
      "short" : "key",
      "definition" : "key",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value",
      "short" : "ValueANYType",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.pq",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.pq",
      "short" : "PQType",
      "definition" : "pq",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.pq.value",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.pq.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.pq.unit",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.pq.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ts",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ts",
      "short" : "PartialTimeStampType",
      "definition" : "ts",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ts.format",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ts.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ts.value",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ts.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ivl-ts",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ivl_ts",
      "short" : "PartialTimePeriodType",
      "definition" : "ivl_ts",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ivl-ts.start",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ivl_ts.start",
      "short" : "PartialTimeStampType",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ivl-ts.start.format",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ivl_ts.start.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ivl-ts.start.value",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ivl_ts.start.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ivl-ts.end",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ivl_ts.end",
      "short" : "PartialTimeStampType",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ivl-ts.end.format",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ivl_ts.end.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.ivl-ts.end.value",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.ivl_ts.end.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-actions/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.cv",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.cv",
      "short" : "CVType",
      "definition" : "cv",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.cv.code",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.cv.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.cv.codeSystem",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.cv.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.cv.codeSystemName",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.cv.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.cv.codeSystemVersion",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.cv.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getactivities.activityGroup.activity.additionalInformation.value.cv.displayName",
      "path" : "getactivities.activityGroup.activity.additionalInformation.value.cv.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
