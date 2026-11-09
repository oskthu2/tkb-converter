# GetCareManagers — Response - coreprocess: residentparticipation: residentparticipation v1.0.0-rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareManagers — Response**

## Logical Model: GetCareManagers — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/getcaremanagers | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetCareManagers |
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
  "date" : "2026-11-09T03:25:04+00:00",
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
      "short" : "PractitionerRoleType",
      "definition" : "Lista med fasta kontakter.",
      "comment" : "TKB-fält: `careManager` (`PractitionerRoleType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader",
      "path" : "getcaremanagers.careManager.careManagerHeader",
      "short" : "HeaderType",
      "definition" : "Generell gemensam datatyp som används för tjänstekontrakt/informationsmängder som faller under Sammanhållen vård- och omsorgsdokumentation (SVOD).\n\nJämför med tjänstekontrakt som bär journal- och läkemedelsinformation.",
      "comment" : "TKB-fält: `careManager.careManagerHeader` (`HeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader",
      "short" : "AccessControlHeaderType",
      "definition" : "Generell information som syftar till att bl a ge underlag för konsumenters följsamhet till eventuellt spärrade journaluppgifter.\n\nSe detaljerad beskrivning av datatypen AccessControlHeaderType och dess olika fält.",
      "comment" : "TKB-fält: `careManagerHeader.accessControlHeader` (`AccessControlHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableHealthcareProviderId",
      "short" : "accountableHealthcareProviderId",
      "definition" : "accountableHealthcareProviderId",
      "comment" : "TKB-fält: `../../../accountableHealthcareProviderId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableCareUnitId",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.accountableCareUnitId",
      "short" : "accountableCareUnitId",
      "definition" : "accountableCareUnitId",
      "comment" : "TKB-fält: `../../../accountableCareUnitId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.patientId",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.patientId",
      "short" : "patientId",
      "definition" : "patientId",
      "comment" : "TKB-fält: `../../../patientId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.careProcessId",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.careProcessId",
      "short" : "careProcessId",
      "definition" : "careProcessId",
      "comment" : "TKB-fält: `../../../careProcessId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.blockComparisonTime",
      "path" : "getcaremanagers.careManager.careManagerHeader.accessControlHeader.blockComparisonTime",
      "short" : "blockComparisonTime",
      "definition" : "blockComparisonTime",
      "comment" : "TKB-fält: `../../../blockComparisonTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careManagerHeader.sourceSystemId",
      "path" : "getcaremanagers.careManager.careManagerHeader.sourceSystemId",
      "short" : "sourceSystemId",
      "definition" : "sourceSystemId",
      "comment" : "TKB-fält: `../../sourceSystemId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.code",
      "path" : "getcaremanagers.careManager.code",
      "short" : "code",
      "definition" : "code",
      "comment" : "TKB-fält: `../code` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner",
      "path" : "getcaremanagers.careManager.practitioner",
      "short" : "PractitionerType",
      "definition" : "Medarbetaren som tilldelats denna roll, så som fast kontakt",
      "comment" : "TKB-fält: `careManager.practitioner` (`PractitionerType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.hsaId",
      "path" : "getcaremanagers.careManager.practitioner.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId",
      "comment" : "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.practitioner.name",
      "path" : "getcaremanagers.careManager.practitioner.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../name` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../qualification` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam",
      "path" : "getcaremanagers.careManager.careTeam",
      "short" : "CareTeamType",
      "definition" : "Team som medarbetaren är del av, i sin roll som fast kontakt.",
      "comment" : "TKB-fält: `careManager.careTeam` (`CareTeamType`, kardinalitet 0..*).\n\nObs: modellen anger 0..1 där TKB:n anger 0..*.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.id",
      "path" : "getcaremanagers.careManager.careTeam.id",
      "short" : "id",
      "definition" : "id",
      "comment" : "TKB-fält: `../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.name",
      "path" : "getcaremanagers.careManager.careTeam.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../name` (`string`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../internalNotes` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../externalNotes` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact",
      "path" : "getcaremanagers.careManager.careTeam.contact",
      "short" : "ContactType",
      "definition" : "Gemensamt kontaktsätt för att nå teamet",
      "comment" : "TKB-fält: `careManager.careTeam.contact` (`ContactType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom",
      "short" : "ContactPointSystemType",
      "definition" : "telecom",
      "comment" : "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.system",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "comment" : "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.value",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.careTeam.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address",
      "path" : "getcaremanagers.careManager.careTeam.contact.address",
      "short" : "AddressType",
      "definition" : "address",
      "comment" : "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.type",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.type",
      "short" : "type",
      "definition" : "type",
      "comment" : "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.line",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "comment" : "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careTeam.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.careTeam.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.period",
      "path" : "getcaremanagers.careManager.period",
      "short" : "period",
      "definition" : "period",
      "comment" : "TKB-fält: `../period` (`DatePeriodType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.internalNotes",
      "path" : "getcaremanagers.careManager.internalNotes",
      "short" : "internalNotes",
      "definition" : "internalNotes",
      "comment" : "TKB-fält: `../internalNotes` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../externalNotes` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver",
      "path" : "getcaremanagers.careManager.managingCareGiver",
      "short" : "OrganizationType",
      "definition" : "Vård- eller omsorgsgivare som medarbetaren har sitt uppdrag i för denna roll (typ av fast kontakt)",
      "comment" : "TKB-fält: `careManager.managingCareGiver` (`OrganizationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.hsaId",
      "path" : "getcaremanagers.careManager.managingCareGiver.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId",
      "comment" : "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.name",
      "path" : "getcaremanagers.careManager.managingCareGiver.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact",
      "short" : "ContactType",
      "definition" : "Se detaljerad beskrivning av datatypen ContactType och dess olika fält",
      "comment" : "TKB-fält: `careManager. managingCareGiver .contact.*` (`ContactType .*`, kardinalitet -).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom",
      "short" : "ContactPointSystemType",
      "definition" : "telecom",
      "comment" : "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "comment" : "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.value",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address",
      "short" : "AddressType",
      "definition" : "address",
      "comment" : "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.type",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.type",
      "short" : "type",
      "definition" : "type",
      "comment" : "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.line",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "comment" : "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.managingCareGiver.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit",
      "path" : "getcaremanagers.careManager.managingCareUnit",
      "short" : "OrganizationType",
      "definition" : "managingCareUnit",
      "comment" : "TKB-fält: `../managingCareUnit` (`OrganizationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.hsaId",
      "path" : "getcaremanagers.careManager.managingCareUnit.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId",
      "comment" : "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.name",
      "path" : "getcaremanagers.careManager.managingCareUnit.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact",
      "short" : "ContactType",
      "definition" : "Se detaljerad beskrivning av datatypen ContactType och dess olika fält",
      "comment" : "TKB-fält: `careManager. managingCareUnit .contact.*` (`ContactType .*`, kardinalitet -).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom",
      "short" : "ContactPointSystemType",
      "definition" : "telecom",
      "comment" : "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "comment" : "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.value",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address",
      "short" : "AddressType",
      "definition" : "address",
      "comment" : "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.type",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.type",
      "short" : "type",
      "definition" : "type",
      "comment" : "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.line",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "comment" : "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.managingCareUnit.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit",
      "short" : "OrganizationType",
      "definition" : "careProvidingCareUnit",
      "comment" : "TKB-fält: `../careProvidingCareUnit` (`OrganizationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.hsaId",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.hsaId",
      "short" : "hsaId",
      "definition" : "hsaId",
      "comment" : "TKB-fält: `../../hsaId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.name",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact",
      "short" : "ContactType",
      "definition" : "Se detaljerad beskrivning av datatypen ContactType och dess olika fält",
      "comment" : "TKB-fält: `careManager. careProvidingCareUnit .contact.*` (`ContactType .*`, kardinalitet -).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom",
      "short" : "ContactPointSystemType",
      "definition" : "telecom",
      "comment" : "TKB-fält: `../../../telecom` (`ContactPointSystemType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "comment" : "TKB-fält: `../../../../system` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.value",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../../value` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address",
      "short" : "AddressType",
      "definition" : "address",
      "comment" : "TKB-fält: `../../../address` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.type",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.type",
      "short" : "type",
      "definition" : "type",
      "comment" : "TKB-fält: `../../../../type` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.line",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "comment" : "TKB-fält: `../../../../line` (`string`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../../city` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.careProvidingCareUnit.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact",
      "path" : "getcaremanagers.careManager.contact",
      "short" : "ContactType",
      "definition" : "Kontaktsätt för att nå den fasta kontakten (medarbetaren)",
      "comment" : "TKB-fält: `careManager.contact` (`ContactType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom",
      "path" : "getcaremanagers.careManager.contact.telecom",
      "short" : "ContactPointSystemType",
      "definition" : "telecom",
      "comment" : "TKB-fält: `../../telecom` (`ContactPointSystemType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.system",
      "path" : "getcaremanagers.careManager.contact.telecom.system",
      "short" : "system",
      "definition" : "system",
      "comment" : "TKB-fält: `../../../system` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.value",
      "path" : "getcaremanagers.careManager.contact.telecom.value",
      "short" : "value",
      "definition" : "value",
      "comment" : "TKB-fält: `../../../value` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period",
      "path" : "getcaremanagers.careManager.contact.telecom.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.datePeriod",
      "path" : "getcaremanagers.careManager.contact.telecom.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.weekDay",
      "path" : "getcaremanagers.careManager.contact.telecom.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.time.start",
      "path" : "getcaremanagers.careManager.contact.telecom.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.telecom.period.time.end",
      "path" : "getcaremanagers.careManager.contact.telecom.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address",
      "path" : "getcaremanagers.careManager.contact.address",
      "short" : "AddressType",
      "definition" : "address",
      "comment" : "TKB-fält: `../../address` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.type",
      "path" : "getcaremanagers.careManager.contact.address.type",
      "short" : "type",
      "definition" : "type",
      "comment" : "TKB-fält: `../../../type` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.line",
      "path" : "getcaremanagers.careManager.contact.address.line",
      "short" : "line",
      "definition" : "line",
      "comment" : "TKB-fält: `../../../line` (`string`, kardinalitet 0..*).",
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
      "comment" : "TKB-fält: `../../../city` (`string`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../postalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period",
      "path" : "getcaremanagers.careManager.contact.address.period",
      "short" : "HoursOfServiceType",
      "definition" : "period",
      "comment" : "TKB-fält: `../../../period` (`HoursOfServiceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.datePeriod",
      "path" : "getcaremanagers.careManager.contact.address.period.datePeriod",
      "short" : "datePeriod",
      "definition" : "datePeriod",
      "comment" : "TKB-fält: `../../../../datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.weekDay",
      "path" : "getcaremanagers.careManager.contact.address.period.weekDay",
      "short" : "weekDay",
      "definition" : "weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
      "comment" : "TKB-fält: `../../../../weekDay` (`WeekDaysEnum`, kardinalitet 0..7).\n\n**Modellanteckning:** weekDay Tillåtna värden: Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday.",
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
      "definition" : "month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
      "comment" : "TKB-fält: `../../../../month` (`MonthsEnum`, kardinalitet 0..*).\n\n**Modellanteckning:** month Tillåtna värden: January, February, March, April, May, June, July, August, September, October, November, December.",
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
      "short" : "TimePeriodType",
      "definition" : "Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss",
      "comment" : "TKB-fält: `../../../../time` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.time.start",
      "path" : "getcaremanagers.careManager.contact.address.period.time.start",
      "short" : "start",
      "definition" : "start",
      "comment" : "TKB-fält: `../../../../../start` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    },
    {
      "id" : "getcaremanagers.careManager.contact.address.period.time.end",
      "path" : "getcaremanagers.careManager.contact.address.period.time.end",
      "short" : "end",
      "definition" : "end",
      "comment" : "TKB-fält: `../../../../../end` (`TimeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/coreprocess-residentparticipation-residentparticipation/StructureDefinition/TimeType"]
      }]
    }]
  }
}

```
