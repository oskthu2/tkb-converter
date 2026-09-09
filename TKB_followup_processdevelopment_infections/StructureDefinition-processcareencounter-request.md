# ProcessCareEncounter — Request - followup: processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCareEncounter — Request**

## Logical Model: ProcessCareEncounter — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processcareencounter-request | *Version*:1.0.2 |
| Draft as of 2026-09-09 | *Computable Name*:ProcessCareEncounterRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet ProcessCareEncounter (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1). Skriver vårdkontaktsdata till Infektionsverktyget. En vårdkontakt kan uppdateras genom att ett nytt meddelande med samma vårdkontaktsid skickas in. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-processdevelopment-infections|current/StructureDefinition/StructureDefinition-processcareencounter-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processcareencounter-request.csv), [Excel](StructureDefinition-processcareencounter-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processcareencounter-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processcareencounter-request",
  "version" : "1.0.2",
  "name" : "ProcessCareEncounterRequest",
  "title" : "ProcessCareEncounter — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:56:39+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet ProcessCareEncounter\n(RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1).\nSkriver vårdkontaktsdata till Infektionsverktyget. En vårdkontakt kan uppdateras\ngenom att ett nytt meddelande med samma vårdkontaktsid skickas in.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processcareencounter-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processcareencounter-request",
      "path" : "processcareencounter-request",
      "short" : "ProcessCareEncounter — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet ProcessCareEncounter\n(RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1).\nSkriver vårdkontaktsdata till Infektionsverktyget. En vårdkontakt kan uppdateras\ngenom att ett nytt meddelande med samma vårdkontaktsid skickas in."
    },
    {
      "id" : "processcareencounter-request.careEncounter",
      "path" : "processcareencounter-request.careEncounter",
      "short" : "Vårdkontaktsuppgifter",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.careEncounterId",
      "path" : "processcareencounter-request.careEncounter.careEncounterId",
      "short" : "Unikt värde för vårdkontakten",
      "definition" : "Root: nationell OID för lokala id:n: 1.2.752.129.2.1.2.1\nExtension: HSA-id för källsystemet + \":\" + ID.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.type",
      "path" : "processcareencounter-request.careEncounter.type",
      "short" : "Typ av vårdkontakt",
      "definition" : "Anger vilken typ av vårdkontakt det gäller.\nKardinalitet: Valfri (XSD anger 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.time",
      "path" : "processcareencounter-request.careEncounter.time",
      "short" : "Tidsperiod för vårdkontakten",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.time.start",
      "path" : "processcareencounter-request.careEncounter.time.start",
      "short" : "Startdatum (YYYYMMDDhhmmss)",
      "definition" : "Startdatum (YYYYMMDDhhmmss)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.time.end",
      "path" : "processcareencounter-request.careEncounter.time.end",
      "short" : "Slutdatum (YYYYMMDDhhmmss)",
      "definition" : "Slutdatum (YYYYMMDDhhmmss)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.status",
      "path" : "processcareencounter-request.careEncounter.status",
      "short" : "Status på vårdkontakten",
      "definition" : "Kardinalitet: Valfri (XSD anger 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.reason",
      "path" : "processcareencounter-request.careEncounter.reason",
      "short" : "Fritextbeskrivning av orsaken till vårdkontakten",
      "definition" : "Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.location",
      "path" : "processcareencounter-request.careEncounter.location",
      "short" : "Plats för vårdkontakten",
      "definition" : "Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.location.locationId",
      "path" : "processcareencounter-request.careEncounter.location.locationId",
      "short" : "Identifiering för platsen (HSA-id om vårdenhet)",
      "definition" : "Root: OID för HSA-id: 1.2.752.129.2.1.4.1\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.location.name",
      "path" : "processcareencounter-request.careEncounter.location.name",
      "short" : "Namn på platsen där vårdkontakt genomförts",
      "definition" : "Obligatorisk när performerRole.performerRoleId anges (dvs. involverar vårdpersonal).\nKardinalitet: Obligatorisk (se övriga regler).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.location.address",
      "path" : "processcareencounter-request.careEncounter.location.address",
      "short" : "Platsens adress",
      "definition" : "Platsens adress",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.location.telecom",
      "path" : "processcareencounter-request.careEncounter.location.telecom",
      "short" : "Platsens telekomadressen",
      "definition" : "Platsens telekomadressen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.patient",
      "path" : "processcareencounter-request.careEncounter.patient",
      "short" : "Patientuppgifter",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.patient.patientId",
      "path" : "processcareencounter-request.careEncounter.patient.patientId",
      "short" : "Patientens identifierare",
      "definition" : "Root: OID för typ av identifierare (personnummer 1.2.752.129.2.1.3.1,\nsamordningsnummer 1.2.752.129.2.1.3.3, reservnummer 1.2.752.129.2.1.2.1).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.patient.dateOfBirth",
      "path" : "processcareencounter-request.careEncounter.patient.dateOfBirth",
      "short" : "Patientens födelsedag (ÅÅÅÅMMDD)",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.patient.gender",
      "path" : "processcareencounter-request.careEncounter.patient.gender",
      "short" : "Patientens kön",
      "definition" : "Kodverk KV Kön, OID: 1.2.752.129.2.2.1.1\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.sourceSystem",
      "path" : "processcareencounter-request.careEncounter.sourceSystem",
      "short" : "HSA-id för källsystemet",
      "definition" : "Root: OID för HSA-id: 1.2.752.129.2.1.4.1\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole",
      "path" : "processcareencounter-request.careEncounter.performerRole",
      "short" : "Utförarens roll",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole.performerRoleId",
      "path" : "processcareencounter-request.careEncounter.performerRole.performerRoleId",
      "short" : "Personens identitet av utförarrollen (HSA-id)",
      "definition" : "Lämnas tomt om vårdkontakten utförs av patienten själv eller annan person.\nHSAid anges om utföraren är en vårdpersonal.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole.code",
      "path" : "processcareencounter-request.careEncounter.performerRole.code",
      "short" : "Utförarens roll",
      "definition" : "Baseras på HL7 RoleCode med OID 2.16.840.1.113883.5.111\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole.careUnit",
      "path" : "processcareencounter-request.careEncounter.performerRole.careUnit",
      "short" : "Vårdenhet kopplad till utföraren",
      "definition" : "Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole.careUnit.careUnitId",
      "path" : "processcareencounter-request.careEncounter.performerRole.careUnit.careUnitId",
      "short" : "HSAid för PDL vårdenhet",
      "definition" : "Root: OID för HSA-id: 1.2.752.129.2.1.4.1\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole.careUnit.name",
      "path" : "processcareencounter-request.careEncounter.performerRole.careUnit.name",
      "short" : "Vårdenhetens namn",
      "definition" : "Vårdenhetens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole.careUnit.careGiver",
      "path" : "processcareencounter-request.careEncounter.performerRole.careUnit.careGiver",
      "short" : "Vårdgivaren",
      "definition" : "Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole.careUnit.careGiver.careGiverId",
      "path" : "processcareencounter-request.careEncounter.performerRole.careUnit.careGiver.careGiverId",
      "short" : "HSAid för vårdgivaren",
      "definition" : "Root: OID för HSA-id: 1.2.752.129.2.1.4.1\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounter.performerRole.careUnit.careGiver.name",
      "path" : "processcareencounter-request.careEncounter.performerRole.careUnit.careGiver.name",
      "short" : "Vårdgivarens namn",
      "definition" : "Vårdgivarens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
