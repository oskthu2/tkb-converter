# GetObservations - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetObservations**

## Logical Model: GetObservations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations | *Version*:1.2 |
| Active as of 2026-11-09 | *Computable Name*:GetObservations |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetObservations 1.2 (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse). Representerar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient, utförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer (TKB avsnitt 5.1) motsvarar svarsmeddelandet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-basic|current/StructureDefinition/StructureDefinition-getobservations.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getobservations.csv), [Excel](StructureDefinition-getobservations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getobservations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations",
  "version" : "1.2",
  "name" : "GetObservations",
  "title" : "GetObservations",
  "status" : "active",
  "date" : "2026-11-09T03:20:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetObservations 1.2\n(RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse).\nRepresenterar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient,\nutförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer\n(TKB avsnitt 5.1) motsvarar svarsmeddelandet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getobservations",
      "path" : "getobservations",
      "short" : "GetObservations",
      "definition" : "Logisk modell för tjänstekontraktet GetObservations 1.2\n(RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse).\nRepresenterar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient,\nutförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer\n(TKB avsnitt 5.1) motsvarar svarsmeddelandet."
    },
    {
      "id" : "getobservations.observationGroup",
      "path" : "getobservations.observationGroup",
      "short" : "ObservationGroupType",
      "definition" : "Grupp av observationer som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera observationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck). Denna klass är en teknisk optimering som inte speglas i NI 2015:1.",
      "comment" : "TKB-fält: `observationGroup` (`ObservationGroupType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient",
      "path" : "getobservations.observationGroup.patient",
      "short" : "PatientType",
      "definition" : "Den patient som observationsgruppen avser.",
      "comment" : "TKB-fält: `patient` (`PatientType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.id",
      "path" : "getobservations.observationGroup.patient.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.name",
      "path" : "getobservations.observationGroup.patient.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.dateOfBirth",
      "path" : "getobservations.observationGroup.patient.dateOfBirth",
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
      "id" : "getobservations.observationGroup.patient.gender",
      "path" : "getobservations.observationGroup.patient.gender",
      "short" : "CVType",
      "definition" : "gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.gender.code",
      "path" : "getobservations.observationGroup.patient.gender.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.gender.codeSystem",
      "path" : "getobservations.observationGroup.patient.gender.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.gender.codeSystemName",
      "path" : "getobservations.observationGroup.patient.gender.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.gender.codeSystemVersion",
      "path" : "getobservations.observationGroup.patient.gender.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.gender.displayName",
      "path" : "getobservations.observationGroup.patient.gender.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole",
      "path" : "getobservations.observationGroup.performerRole",
      "short" : "PerformerRoleType",
      "definition" : "Den som utfört observationerna inom gruppen.",
      "comment" : "TKB-fält: `performerRole` (`PerformerRoleType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-performer-careunit",
        "severity" : "warning",
        "human" : "Regel 2.1: careUnit ska endast anges då utföraren är hälso- och sjukvårdspersonal (performerRole.id angivet med HSA-id).",
        "expression" : "careUnit.exists() implies id.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.id",
      "path" : "getobservations.observationGroup.performerRole.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.code",
      "path" : "getobservations.observationGroup.performerRole.code",
      "short" : "CVType",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.code.code",
      "path" : "getobservations.observationGroup.performerRole.code.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.code.codeSystem",
      "path" : "getobservations.observationGroup.performerRole.code.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.code.codeSystemName",
      "path" : "getobservations.observationGroup.performerRole.code.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.code.codeSystemVersion",
      "path" : "getobservations.observationGroup.performerRole.code.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.code.displayName",
      "path" : "getobservations.observationGroup.performerRole.code.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.person",
      "path" : "getobservations.observationGroup.performerRole.person",
      "short" : "PersonType",
      "definition" : "person",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-person-id-or-name",
        "severity" : "warning",
        "human" : "Om person.id inte anges måste person.name vara angiven (regel 2.1).",
        "expression" : "id.exists() or name.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.person.id",
      "path" : "getobservations.observationGroup.performerRole.person.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.person.name",
      "path" : "getobservations.observationGroup.performerRole.person.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit",
      "path" : "getobservations.observationGroup.performerRole.careUnit",
      "short" : "CareUnitType",
      "definition" : "careUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.id",
      "path" : "getobservations.observationGroup.performerRole.careUnit.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.name",
      "path" : "getobservations.observationGroup.performerRole.careUnit.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.careGiver",
      "path" : "getobservations.observationGroup.performerRole.careUnit.careGiver",
      "short" : "CareGiverType",
      "definition" : "careGiver",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.careGiver.id",
      "path" : "getobservations.observationGroup.performerRole.careUnit.careGiver.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.careGiver.name",
      "path" : "getobservations.observationGroup.performerRole.careUnit.careGiver.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator",
      "path" : "getobservations.observationGroup.legalAuthenticator",
      "short" : "LegalAuthenticatorType",
      "definition" : "Den som signerat observationerna inom gruppen.",
      "comment" : "TKB-fält: `legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-legalauthenticator-id-or-name",
        "severity" : "error",
        "human" : "Regel 2.3: Minst ett av attributen LegalAuthenticator.id eller LegalAuthenticator.name ska anges.",
        "expression" : "id.exists() or name.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.id",
      "path" : "getobservations.observationGroup.legalAuthenticator.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.time",
      "path" : "getobservations.observationGroup.legalAuthenticator.time",
      "short" : "PartialTimeStampType",
      "definition" : "time",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.time.format",
      "path" : "getobservations.observationGroup.legalAuthenticator.time.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.time.value",
      "path" : "getobservations.observationGroup.legalAuthenticator.time.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.name",
      "path" : "getobservations.observationGroup.legalAuthenticator.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant",
      "path" : "getobservations.observationGroup.additionalParticipant",
      "short" : "AdditionalParticipantType",
      "definition" : "Övriga deltagare relaterat till observationerna inom gruppen.",
      "comment" : "TKB-fält: `additionalParticipant` (`AdditionalParticipantType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-participant-one-kind",
        "severity" : "error",
        "human" : "Endast en av person, organisation, device och location får anges för en ytterligare deltagare.",
        "expression" : "(person.count() + organisation.count() + device.count() + location.count()) <= 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.id",
      "path" : "getobservations.observationGroup.additionalParticipant.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.type",
      "path" : "getobservations.observationGroup.additionalParticipant.type",
      "short" : "CVType",
      "definition" : "type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.type.code",
      "path" : "getobservations.observationGroup.additionalParticipant.type.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.type.codeSystem",
      "path" : "getobservations.observationGroup.additionalParticipant.type.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.type.codeSystemName",
      "path" : "getobservations.observationGroup.additionalParticipant.type.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.type.codeSystemVersion",
      "path" : "getobservations.observationGroup.additionalParticipant.type.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.type.displayName",
      "path" : "getobservations.observationGroup.additionalParticipant.type.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.role",
      "path" : "getobservations.observationGroup.additionalParticipant.role",
      "short" : "CVType",
      "definition" : "role",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.role.code",
      "path" : "getobservations.observationGroup.additionalParticipant.role.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.role.codeSystem",
      "path" : "getobservations.observationGroup.additionalParticipant.role.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.role.codeSystemName",
      "path" : "getobservations.observationGroup.additionalParticipant.role.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.role.codeSystemVersion",
      "path" : "getobservations.observationGroup.additionalParticipant.role.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.role.displayName",
      "path" : "getobservations.observationGroup.additionalParticipant.role.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.time",
      "path" : "getobservations.observationGroup.additionalParticipant.time",
      "short" : "time",
      "definition" : "time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.person",
      "path" : "getobservations.observationGroup.additionalParticipant.person",
      "short" : "PersonType",
      "definition" : "person",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.person.id",
      "path" : "getobservations.observationGroup.additionalParticipant.person.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.person.name",
      "path" : "getobservations.observationGroup.additionalParticipant.person.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.organisation",
      "path" : "getobservations.observationGroup.additionalParticipant.organisation",
      "short" : "OrganisationType",
      "definition" : "organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.organisation.id",
      "path" : "getobservations.observationGroup.additionalParticipant.organisation.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.organisation.name",
      "path" : "getobservations.observationGroup.additionalParticipant.organisation.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device",
      "path" : "getobservations.observationGroup.additionalParticipant.device",
      "short" : "DeviceType",
      "definition" : "device",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.id",
      "path" : "getobservations.observationGroup.additionalParticipant.device.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.type",
      "path" : "getobservations.observationGroup.additionalParticipant.device.type",
      "short" : "CVType",
      "definition" : "type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.type.code",
      "path" : "getobservations.observationGroup.additionalParticipant.device.type.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.type.codeSystem",
      "path" : "getobservations.observationGroup.additionalParticipant.device.type.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.type.codeSystemName",
      "path" : "getobservations.observationGroup.additionalParticipant.device.type.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.type.codeSystemVersion",
      "path" : "getobservations.observationGroup.additionalParticipant.device.type.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.type.displayName",
      "path" : "getobservations.observationGroup.additionalParticipant.device.type.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model",
      "short" : "SCType",
      "definition" : "model",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.code",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.code",
      "short" : "CVType",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.code.code",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.code.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.code.codeSystem",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.code.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.code.codeSystemName",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.code.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.code.codeSystemVersion",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.code.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.code.displayName",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.code.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.value",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.value",
      "short" : "value",
      "definition" : "value",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location",
      "path" : "getobservations.observationGroup.additionalParticipant.location",
      "short" : "LocationType",
      "definition" : "location",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.id",
      "path" : "getobservations.observationGroup.additionalParticipant.location.id",
      "short" : "id",
      "definition" : "id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.name",
      "path" : "getobservations.observationGroup.additionalParticipant.location.name",
      "short" : "name",
      "definition" : "name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address",
      "short" : "AddressType",
      "definition" : "address",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address.use",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address.use",
      "short" : "use",
      "definition" : "use Tillåtna värden: PHYS, H, HV, WP, TMP.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/postaladdressuse-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address.part",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address.part",
      "short" : "AddressPartType",
      "definition" : "part",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address.part.value",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address.part.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address.part.type",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address.part.type",
      "short" : "type",
      "definition" : "type Tillåtna värden: SAL, CAR, CEN, CNT, CPA, CTY, POB, ZIP, PRE, STA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/addressparttype-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress",
      "path" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress",
      "short" : "TelType",
      "definition" : "electronicAddress",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress.use",
      "path" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress.use",
      "short" : "use",
      "definition" : "use Tillåtna värden: voice, fax, data, sms.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/teltype-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress.value",
      "path" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.sourceSystem",
      "path" : "getobservations.observationGroup.sourceSystem",
      "short" : "SourceSystemType",
      "definition" : "Källsystem som observationsgruppen lagras i.",
      "comment" : "TKB-fält: `sourceSystem` (`SourceSystemType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.sourceSystem.id",
      "path" : "getobservations.observationGroup.sourceSystem.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation",
      "path" : "getobservations.observationGroup.observation",
      "short" : "ObservationType",
      "definition" : "De observationer som ligger inom denna grupp av observationer.",
      "comment" : "TKB-fält: `observation` (`ObservationType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-status-not-used",
        "severity" : "warning",
        "human" : "TKB: status har kardinalitet 0..0 — denna version av specifikationen tillåter endast faktiskt utförda observationer (schemat tillåter 0..1).",
        "expression" : "status.empty()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.id",
      "path" : "getobservations.observationGroup.observation.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.type",
      "path" : "getobservations.observationGroup.observation.type",
      "short" : "CVType",
      "definition" : "type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.type.code",
      "path" : "getobservations.observationGroup.observation.type.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.type.codeSystem",
      "path" : "getobservations.observationGroup.observation.type.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.type.codeSystemName",
      "path" : "getobservations.observationGroup.observation.type.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.type.codeSystemVersion",
      "path" : "getobservations.observationGroup.observation.type.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.type.displayName",
      "path" : "getobservations.observationGroup.observation.type.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.status",
      "path" : "getobservations.observationGroup.observation.status",
      "short" : "CVType",
      "definition" : "status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.status.code",
      "path" : "getobservations.observationGroup.observation.status.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.status.codeSystem",
      "path" : "getobservations.observationGroup.observation.status.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.status.codeSystemName",
      "path" : "getobservations.observationGroup.observation.status.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.status.codeSystemVersion",
      "path" : "getobservations.observationGroup.observation.status.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.status.displayName",
      "path" : "getobservations.observationGroup.observation.status.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.time",
      "path" : "getobservations.observationGroup.observation.time",
      "short" : "PartialTimePeriodType",
      "definition" : "time",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-period-bound",
        "severity" : "error",
        "human" : "Minst en av start och end måste vara angiven.",
        "expression" : "start.exists() or end.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.time.start",
      "path" : "getobservations.observationGroup.observation.time.start",
      "short" : "PartialTimeStampType",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.time.start.format",
      "path" : "getobservations.observationGroup.observation.time.start.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.time.start.value",
      "path" : "getobservations.observationGroup.observation.time.start.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.time.end",
      "path" : "getobservations.observationGroup.observation.time.end",
      "short" : "PartialTimeStampType",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.time.end.format",
      "path" : "getobservations.observationGroup.observation.time.end.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.time.end.value",
      "path" : "getobservations.observationGroup.observation.time.end.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.method",
      "path" : "getobservations.observationGroup.observation.method",
      "short" : "CVType",
      "definition" : "method",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.method.code",
      "path" : "getobservations.observationGroup.observation.method.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.method.codeSystem",
      "path" : "getobservations.observationGroup.observation.method.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.method.codeSystemName",
      "path" : "getobservations.observationGroup.observation.method.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.method.codeSystemVersion",
      "path" : "getobservations.observationGroup.observation.method.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.method.displayName",
      "path" : "getobservations.observationGroup.observation.method.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value",
      "path" : "getobservations.observationGroup.observation.value",
      "short" : "ValueANYType",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-value-one-type",
        "severity" : "error",
        "human" : "En och endast en av huvudtyperna cv, pq, ivl_pq, ts och ivl_ts ska anges i value (ValueANYType).",
        "expression" : "(cv.count() + pq.count() + ivl_pq.count() + ts.count() + ivl_ts.count()) = 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.pq",
      "path" : "getobservations.observationGroup.observation.value.pq",
      "short" : "PQType",
      "definition" : "pq",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.pq.value",
      "path" : "getobservations.observationGroup.observation.value.pq.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.pq.unit",
      "path" : "getobservations.observationGroup.observation.value.pq.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ts",
      "path" : "getobservations.observationGroup.observation.value.ts",
      "short" : "PartialTimeStampType",
      "definition" : "ts",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ts.format",
      "path" : "getobservations.observationGroup.observation.value.ts.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ts.value",
      "path" : "getobservations.observationGroup.observation.value.ts.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-ts",
      "path" : "getobservations.observationGroup.observation.value.ivl_ts",
      "short" : "PartialTimePeriodType",
      "definition" : "ivl_ts",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-period-bound",
        "severity" : "error",
        "human" : "Minst en av start och end måste vara angiven.",
        "expression" : "start.exists() or end.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-ts.start",
      "path" : "getobservations.observationGroup.observation.value.ivl_ts.start",
      "short" : "PartialTimeStampType",
      "definition" : "start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-ts.start.format",
      "path" : "getobservations.observationGroup.observation.value.ivl_ts.start.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-ts.start.value",
      "path" : "getobservations.observationGroup.observation.value.ivl_ts.start.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-ts.end",
      "path" : "getobservations.observationGroup.observation.value.ivl_ts.end",
      "short" : "PartialTimeStampType",
      "definition" : "end",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-ts.end.format",
      "path" : "getobservations.observationGroup.observation.value.ivl_ts.end.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-ts.end.value",
      "path" : "getobservations.observationGroup.observation.value.ivl_ts.end.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.cv",
      "path" : "getobservations.observationGroup.observation.value.cv",
      "short" : "CVType",
      "definition" : "cv",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.cv.code",
      "path" : "getobservations.observationGroup.observation.value.cv.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.cv.codeSystem",
      "path" : "getobservations.observationGroup.observation.value.cv.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.cv.codeSystemName",
      "path" : "getobservations.observationGroup.observation.value.cv.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.cv.codeSystemVersion",
      "path" : "getobservations.observationGroup.observation.value.cv.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.cv.displayName",
      "path" : "getobservations.observationGroup.observation.value.cv.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-pq",
      "path" : "getobservations.observationGroup.observation.value.ivl_pq",
      "short" : "PQIntervalType",
      "definition" : "ivl_pq",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getobservations-ivlpq-bound",
        "severity" : "error",
        "human" : "Minst ett av fälten low och high måste anges i ivl_pq.",
        "expression" : "low.exists() or high.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-pq.low",
      "path" : "getobservations.observationGroup.observation.value.ivl_pq.low",
      "short" : "low",
      "definition" : "low",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-pq.lowClosed",
      "path" : "getobservations.observationGroup.observation.value.ivl_pq.lowClosed",
      "short" : "lowClosed",
      "definition" : "lowClosed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-pq.high",
      "path" : "getobservations.observationGroup.observation.value.ivl_pq.high",
      "short" : "high",
      "definition" : "high",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-pq.highClosed",
      "path" : "getobservations.observationGroup.observation.value.ivl_pq.highClosed",
      "short" : "highClosed",
      "definition" : "highClosed",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.value.ivl-pq.unit",
      "path" : "getobservations.observationGroup.observation.value.ivl_pq.unit",
      "short" : "unit",
      "definition" : "unit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.targetSite",
      "path" : "getobservations.observationGroup.observation.targetSite",
      "short" : "CVType",
      "definition" : "targetSite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.targetSite.code",
      "path" : "getobservations.observationGroup.observation.targetSite.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.targetSite.codeSystem",
      "path" : "getobservations.observationGroup.observation.targetSite.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.targetSite.codeSystemName",
      "path" : "getobservations.observationGroup.observation.targetSite.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.targetSite.codeSystemVersion",
      "path" : "getobservations.observationGroup.observation.targetSite.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.targetSite.displayName",
      "path" : "getobservations.observationGroup.observation.targetSite.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.valueNegation",
      "path" : "getobservations.observationGroup.observation.valueNegation",
      "short" : "valueNegation",
      "definition" : "valueNegation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.description",
      "path" : "getobservations.observationGroup.observation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.approvedForPatient",
      "path" : "getobservations.observationGroup.observation.approvedForPatient",
      "short" : "approvedForPatient",
      "definition" : "approvedForPatient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.registrationTime",
      "path" : "getobservations.observationGroup.observation.registrationTime",
      "short" : "registrationTime",
      "definition" : "registrationTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation",
      "path" : "getobservations.observationGroup.observation.relation",
      "short" : "RelationType",
      "definition" : "relation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.code",
      "path" : "getobservations.observationGroup.observation.relation.code",
      "short" : "CVType",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.code.code",
      "path" : "getobservations.observationGroup.observation.relation.code.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.code.codeSystem",
      "path" : "getobservations.observationGroup.observation.relation.code.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.code.codeSystemName",
      "path" : "getobservations.observationGroup.observation.relation.code.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.code.codeSystemVersion",
      "path" : "getobservations.observationGroup.observation.relation.code.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.code.displayName",
      "path" : "getobservations.observationGroup.observation.relation.code.displayName",
      "short" : "displayName",
      "definition" : "displayName",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation",
      "short" : "ReferredInformationType",
      "definition" : "referredInformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.id",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.time",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.time",
      "short" : "PartialTimeStampType",
      "definition" : "time",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.time.format",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.time.format",
      "short" : "format",
      "definition" : "format Tillåtna värden: YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.time.value",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.time.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/PartialTimeStampValueType"]
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.type",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.type",
      "short" : "type",
      "definition" : "type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.informationOwner",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.informationOwner",
      "short" : "InformationOwnerType",
      "definition" : "informationOwner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.informationOwner.id",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.informationOwner.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/IIType"
      }]
    }]
  }
}

```
