# GetVersions - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetVersions**

## Logical Model: GetVersions 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getversions | *Version*:1.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetVersions |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetVersions (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetVersions:1). Returnerar tidpunkten när FMB och diagnosinformation senast versionsuppdaterades, respektive senast ändrades. Begäran har inga inparametrar. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processmanagement-decisionsupport-insurancemedicinedecisio|current/StructureDefinition/StructureDefinition-getversions.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getversions.csv), [Excel](StructureDefinition-getversions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getversions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getversions",
  "version" : "1.0.0",
  "name" : "GetVersions",
  "title" : "GetVersions",
  "status" : "draft",
  "date" : "2026-09-09T17:05:30+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetVersions\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetVersions:1).\nReturnerar tidpunkten när FMB och diagnosinformation senast versionsuppdaterades,\nrespektive senast ändrades. Begäran har inga inparametrar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getversions",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getversions",
      "path" : "getversions",
      "short" : "GetVersions",
      "definition" : "Logisk modell för tjänstekontraktet GetVersions\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetVersions:1).\nReturnerar tidpunkten när FMB och diagnosinformation senast versionsuppdaterades,\nrespektive senast ändrades. Begäran har inga inparametrar."
    },
    {
      "id" : "getversions.versioner",
      "path" : "getversions.versioner",
      "short" : "Versionsinformation för FMB och diagnosinformation",
      "definition" : "Versionsinformation för FMB och diagnosinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getversions.versioner.fmbSenasteVersionsuppdatering",
      "path" : "getversions.versioner.fmbSenasteVersionsuppdatering",
      "short" : "FMB — tidpunkt för senaste versionsuppdatering",
      "definition" : "Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort)\nbland alla producentens beslutsunderlag. Det kan vara ett underlag som ej returnerats i svaret\nsom föranlett ett nytt datum.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getversions.versioner.fmbSenasteAndring",
      "path" : "getversions.versioner.fmbSenasteAndring",
      "short" : "FMB — tidpunkt för senaste ändring",
      "definition" : "Anger när ett beslutsunderlag senast uppdaterades, både mindre förändringar som ej givit en ny version\nOCH versionsuppdateringar bland alla producentens beslutsunderlag. Det kan vara ett underlag som ej\nreturnerats i svaret.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getversions.versioner.diagnosInformationSenasteVersionsuppdatering",
      "path" : "getversions.versioner.diagnosInformationSenasteVersionsuppdatering",
      "short" : "Diagnosinformation — tidpunkt för senaste versionsuppdatering",
      "definition" : "Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort)\nbland alla diagnosinformation. Det kan vara diagnosinformation som ej returnerats i svaret som\nföranlett ett nytt datum.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getversions.versioner.diagnosInformationSenasteAndring",
      "path" : "getversions.versioner.diagnosInformationSenasteAndring",
      "short" : "Diagnosinformation — tidpunkt för senaste ändring",
      "definition" : "Anger när diagnosinformation senast uppdaterades; både mindre förändringar som ej givit en ny version\nOCH versionsuppdateringar bland alla producentens diagnosinformation. Det kan vara diagnosinformation\nsom ej returnerats i svaret.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
