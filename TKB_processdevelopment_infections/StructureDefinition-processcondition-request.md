# ProcessCondition — Request - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessCondition — Request**

## Logical Model: ProcessCondition — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcondition-request | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:ProcessConditionRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ProcessCondition. Registrerar ett eller flera nya bedömt hälsorelaterat tillstånd med information om patient, organisatorisk enhet och tillstånd. Ett befintligt tillstånd kan uppdateras genom att ett nytt meddelande med samma tillståndsid skickas in. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-processcondition-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processcondition-request.csv), [Excel](StructureDefinition-processcondition-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processcondition-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcondition-request",
  "version" : "1.0.2",
  "name" : "ProcessConditionRequest",
  "title" : "ProcessCondition — Request",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ProcessCondition. Registrerar ett\neller flera nya bedömt hälsorelaterat tillstånd med information om\npatient, organisatorisk enhet och tillstånd. Ett befintligt tillstånd kan\nuppdateras genom att ett nytt meddelande med samma tillståndsid skickas in.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processcondition-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processcondition-request",
      "path" : "processcondition-request",
      "short" : "ProcessCondition — Request",
      "definition" : "Logisk modell för requestparametrar i ProcessCondition. Registrerar ett\neller flera nya bedömt hälsorelaterat tillstånd med information om\npatient, organisatorisk enhet och tillstånd. Ett befintligt tillstånd kan\nuppdateras genom att ett nytt meddelande med samma tillståndsid skickas in."
    },
    {
      "id" : "processcondition-request.logicalAddress",
      "path" : "processcondition-request.logicalAddress",
      "short" : "Logisk adress",
      "definition" : "Logisk adress till tjänsteimplementationen. HSA-id för organisationspost\nmotsvarande vårdgivare i HSA-trädet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcondition-request.conditionTime",
      "path" : "processcondition-request.conditionTime",
      "short" : "Tillståndstid",
      "definition" : "RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillståndstid. Då detta\nanges i elementet start_time och meddelandet omfattar flera tillstånd\nska det första (i tid mätt) tillståndets tid anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processcondition-request.careProviderId",
      "path" : "processcondition-request.careProviderId",
      "short" : "Vårdgivare",
      "definition" : "HSA-id för aktuell vårdgivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcondition-request.registeringUnitId",
      "path" : "processcondition-request.registeringUnitId",
      "short" : "Registrerande enhet",
      "definition" : "RIV-specifikation: Bedömt hälsorelaterat tillstånd.bedöms vid.Enhet.enhets-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcondition-request.conditionId",
      "path" : "processcondition-request.conditionId",
      "short" : "Tillstånds-id",
      "definition" : "RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillstånds-id.\nHSA-id + Lokalt id (HSA-id för den enhet inom vilket aktuellt\ntillstånds-id är unikt anges före det lokala id:t).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcondition-request.terminologyId",
      "path" : "processcondition-request.terminologyId",
      "short" : "Kodverksidentifierare",
      "definition" : "Identifierare som anger vilket kodverk aktuell kod tillhör. Möjliga\nvärden är OID för Snomed CT och OID för ICD-10-SE.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processcondition-request.conditionCode",
      "path" : "processcondition-request.conditionCode",
      "short" : "Tillståndskod",
      "definition" : "RIV-specifikation: Bedömt hälsorelaterat tillstånd.tillståndskod.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "processcondition-request.personIdIssuer",
      "path" : "processcondition-request.personIdIssuer",
      "short" : "Utfärdare av person-id",
      "definition" : "För personnummer och samordningsnummer: \"Skatteverket\". För lokalt\nreservnummer: \"CeHis\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcondition-request.personIdAssigner",
      "path" : "processcondition-request.personIdAssigner",
      "short" : "Tilldelare av person-id",
      "definition" : "För personnummer och samordningsnummer: \"Folkbokföringen\". För lokalt\nreservnummer: HSA-id för den enhet inom vilket aktuellt reservnummer är\nunikt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processcondition-request.patientId",
      "path" : "processcondition-request.patientId",
      "short" : "Patientens person-id",
      "definition" : "RIV-specifikation: Patient.person-id. system = OID för personnummer,\nnationellt reservnummer eller samordningsnummer (se personIdOid),\nvalue = själva numret.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processcondition-request.personIdOid",
      "path" : "processcondition-request.personIdOid",
      "short" : "OID för person-id",
      "definition" : "OID för personnummer, nationellt reservnummer eller samordningsnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processcondition-request.patientBirthTime",
      "path" : "processcondition-request.patientBirthTime",
      "short" : "Patientens födelsetidpunkt",
      "definition" : "RIV-specifikation: Patient.födelsetidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processcondition-request.patientGender",
      "path" : "processcondition-request.patientGender",
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
