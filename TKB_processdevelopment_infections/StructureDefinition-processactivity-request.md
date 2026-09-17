# ProcessActivity — Request - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessActivity — Request**

## Logical Model: ProcessActivity — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processactivity-request | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:ProcessActivityRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ProcessActivity. Registrerar en eller flera aktiviteter som utförts på en patient på en viss enhet. En befintlig aktivitet kan uppdateras genom att ett nytt meddelande med samma aktivitetsid skickas in. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-processactivity-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processactivity-request.csv), [Excel](StructureDefinition-processactivity-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processactivity-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processactivity-request",
  "version" : "1.0.2",
  "name" : "ProcessActivityRequest",
  "title" : "ProcessActivity — Request",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ProcessActivity. Registrerar en eller\nflera aktiviteter som utförts på en patient på en viss enhet. En befintlig\naktivitet kan uppdateras genom att ett nytt meddelande med samma\naktivitetsid skickas in.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processactivity-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processactivity-request",
      "path" : "processactivity-request",
      "short" : "ProcessActivity — Request",
      "definition" : "Logisk modell för requestparametrar i ProcessActivity. Registrerar en eller\nflera aktiviteter som utförts på en patient på en viss enhet. En befintlig\naktivitet kan uppdateras genom att ett nytt meddelande med samma\naktivitetsid skickas in."
    },
    {
      "id" : "processactivity-request.logicalAddress",
      "path" : "processactivity-request.logicalAddress",
      "short" : "Logisk adress",
      "definition" : "Logisk adress till tjänsteimplementationen. HSA-id för organisationspost\nmotsvarande vårdgivare i HSA-trädet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processactivity-request.activityMomentTime",
      "path" : "processactivity-request.activityMomentTime",
      "short" : "Aktivitetsmomenttid",
      "definition" : "RIV-specifikation: Aktivitetsmoment.aktivitetsmomenttid. Då detta anges i\nelementet start_time och meddelandet omfattar flera aktiviteter ska den\nförsta (i tid mätt) aktivitetens tid anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processactivity-request.careProviderId",
      "path" : "processactivity-request.careProviderId",
      "short" : "Vårdgivare",
      "definition" : "HSA-id för aktuell vårdgivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processactivity-request.registeringUnitId",
      "path" : "processactivity-request.registeringUnitId",
      "short" : "Registrerande enhet",
      "definition" : "RIV-specifikation: Aktivitetsmoment.utförs vid.Enhet.enhets-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processactivity-request.activityId",
      "path" : "processactivity-request.activityId",
      "short" : "Aktivitets-id",
      "definition" : "RIV-specifikation: Aktivitet.aktivitets-id. HSA-id + Lokalt id (HSA-id\nför den enhet inom vilket aktuellt aktivitets-id är unikt anges före\ndet lokala id:t).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processactivity-request.terminologyId",
      "path" : "processactivity-request.terminologyId",
      "short" : "Kodverksidentifierare",
      "definition" : "Identifierare som anger vilket kodverk aktuell kod tillhör. Möjliga\nvärden är OID för Snomed CT och OID för KVÅ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processactivity-request.activityCode",
      "path" : "processactivity-request.activityCode",
      "short" : "Aktivitetskod",
      "definition" : "RIV-specifikation: Aktivitetsmoment.aktivitetskod.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "processactivity-request.unitActivityId",
      "path" : "processactivity-request.unitActivityId",
      "short" : "Enhet för aktivitets-id",
      "definition" : "HSA-id för den enhet inom vilket aktuellt aktivitets-id är unikt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processactivity-request.personIdIssuer",
      "path" : "processactivity-request.personIdIssuer",
      "short" : "Utfärdare av person-id",
      "definition" : "För personnummer och samordningsnummer: \"Skatteverket\". För lokalt\nreservnummer: \"CeHis\".",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processactivity-request.personIdAssigner",
      "path" : "processactivity-request.personIdAssigner",
      "short" : "Tilldelare av person-id",
      "definition" : "För personnummer och samordningsnummer: \"Folkbokföringen\". För lokalt\nreservnummer: HSA-id för den enhet inom vilket aktuellt reservnummer är\nunikt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processactivity-request.patientId",
      "path" : "processactivity-request.patientId",
      "short" : "Patientens person-id",
      "definition" : "RIV-specifikation: Patient.person-id. system = OID för personnummer,\nnationellt reservnummer eller samordningsnummer (se personIdOid),\nvalue = själva numret.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processactivity-request.personIdOid",
      "path" : "processactivity-request.personIdOid",
      "short" : "OID för person-id",
      "definition" : "OID för personnummer, nationellt reservnummer eller samordningsnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processactivity-request.patientBirthTime",
      "path" : "processactivity-request.patientBirthTime",
      "short" : "Patientens födelsetidpunkt",
      "definition" : "RIV-specifikation: Patient.födelsetidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processactivity-request.patientGender",
      "path" : "processactivity-request.patientGender",
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
