# ProcessCareEncounter — Request - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCareEncounter — Request**

## Logical Model: ProcessCareEncounter — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcareencounter-request | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:ProcessCareEncounterRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ProcessCareEncounter. Registrerar en ny patientplacering med information om patient, organisatorisk enhet och period för placeringen. En befintlig patientplacering kan uppdateras genom att ett nytt meddelande med samma vårdkontaktid skickas in. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-processcareencounter-request.json)

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
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcareencounter-request",
  "version" : "1.0.2",
  "name" : "ProcessCareEncounterRequest",
  "title" : "ProcessCareEncounter — Request",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ProcessCareEncounter. Registrerar en\nny patientplacering med information om patient, organisatorisk enhet och\nperiod för placeringen. En befintlig patientplacering kan uppdateras genom\natt ett nytt meddelande med samma vårdkontaktid skickas in.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcareencounter-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processcareencounter-request",
      "path" : "processcareencounter-request",
      "short" : "ProcessCareEncounter — Request",
      "definition" : "Logisk modell för requestparametrar i ProcessCareEncounter. Registrerar en\nny patientplacering med information om patient, organisatorisk enhet och\nperiod för placeringen. En befintlig patientplacering kan uppdateras genom\natt ett nytt meddelande med samma vårdkontaktid skickas in."
    },
    {
      "id" : "processcareencounter-request.logicalAddress",
      "path" : "processcareencounter-request.logicalAddress",
      "short" : "Logisk adress",
      "definition" : "Logisk adress till tjänsteimplementationen. HSA-id för organisationspost\nmotsvarande vårdgivare i HSA-trädet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.careEncounterId",
      "path" : "processcareencounter-request.careEncounterId",
      "short" : "Vårdkontakt-id",
      "definition" : "RIV-specifikation: Vårdkontakt.vårdkontakt-id. HSA-id + Lokalt id\n(HSA-id för den enhet inom vilket aktuellt id är unikt anges före det\nlokala id:t).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-request.startTime",
      "path" : "processcareencounter-request.startTime",
      "short" : "Vårdkontaktens starttidpunkt",
      "definition" : "RIV-specifikation: Vårdkontakt.vårdkontakttid.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "constraint" : [{
        "key" : "processcareencounter-end-after-start",
        "severity" : "error",
        "human" : "Sluttidpunkt för vårdkontakten (om angiven) måste vara efter starttidpunkten (RIV-TA felkod 50003).",
        "expression" : "endTime.exists() implies startTime <= endTime",
        "source" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcareencounter-request"
      }]
    },
    {
      "id" : "processcareencounter-request.endTime",
      "path" : "processcareencounter-request.endTime",
      "short" : "Vårdkontaktens sluttidpunkt",
      "definition" : "RIV-specifikation: Vårdkontakt.vårdkontakttid.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processcareencounter-request.careProviderId",
      "path" : "processcareencounter-request.careProviderId",
      "short" : "Vårdgivare",
      "definition" : "HSA-id för aktuell vårdgivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.registeringUnitId",
      "path" : "processcareencounter-request.registeringUnitId",
      "short" : "Registrerande enhet",
      "definition" : "RIV-specifikation: Vårdkontakt.utförs vid.Enhet.enhets-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.personIdIssuer",
      "path" : "processcareencounter-request.personIdIssuer",
      "short" : "Utfärdare av person-id",
      "definition" : "För personnummer och samordningsnummer: \"Skatteverket\". För lokalt\nreservnummer: \"CeHis\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-request.personIdAssigner",
      "path" : "processcareencounter-request.personIdAssigner",
      "short" : "Tilldelare av person-id",
      "definition" : "För personnummer och samordningsnummer: \"Folkbokföringen\". För lokalt\nreservnummer: HSA-id för den enhet inom vilket aktuellt reservnummer är\nunikt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcareencounter-request.patientId",
      "path" : "processcareencounter-request.patientId",
      "short" : "Patientens person-id",
      "definition" : "RIV-specifikation: Patient.person-id. system = OID för personnummer,\nnationellt reservnummer eller samordningsnummer (se personIdOid),\nvalue = själva numret.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcareencounter-request.personIdOid",
      "path" : "processcareencounter-request.personIdOid",
      "short" : "OID för person-id",
      "definition" : "OID för personnummer, nationellt reservnummer eller samordningsnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processcareencounter-request.patientBirthTime",
      "path" : "processcareencounter-request.patientBirthTime",
      "short" : "Patientens födelsetidpunkt",
      "definition" : "RIV-specifikation: Patient.födelsetidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processcareencounter-request.patientGender",
      "path" : "processcareencounter-request.patientGender",
      "short" : "Patientens kön",
      "definition" : "RIV-specifikation: Patient.kön. Kodverk anges externt i\nRIV-specifikation Infektionsverktyget.pdf — inte återgivet i TKB-texten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
