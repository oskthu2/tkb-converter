# ProcessCareEncounter — Request - followup: processdevelopment: infections v1.0.2-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCareEncounter — Request**

## Logical Model: ProcessCareEncounter — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processcareencounter-request | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:ProcessCareEncounterRequest |
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
  "version" : "1.0",
  "name" : "ProcessCareEncounterRequest",
  "title" : "ProcessCareEncounter — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:32:51+00:00",
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
      "id" : "processcareencounter-request.careEncounterType",
      "path" : "processcareencounter-request.careEncounterType",
      "short" : "careEncounterType",
      "definition" : "Anger vilken typ av vårdkontakt det gäller.",
      "comment" : "TKB-fält: `CareEncounterType.type` (`CVType`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "constraint" : [{
        "key" : "processcareencounter-request-location-when-performer",
        "severity" : "error",
        "human" : "När performerRole.performerRoleId anges (vårdpersonal) ska minst location.name anges (TKB Övriga regler, Fält 2).",
        "expression" : "performerRole.performerRoleId.exists() implies location.name.exists()",
        "source" : "https://fhir.inera.se/ig/followup-processdevelopment-infections/StructureDefinition/processcareencounter-request"
      }]
    }]
  }
}

```
