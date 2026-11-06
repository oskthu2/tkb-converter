# GetVersions - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetVersions**

## Logical Model: GetVersions 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getversions | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:GetVersions |
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
  "version" : "1.0",
  "name" : "GetVersions",
  "title" : "GetVersions",
  "status" : "active",
  "date" : "2026-11-06T21:43:24+00:00",
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
      "comment" : "TKB-fält: `versioner` (kardinalitet 1..1).",
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
      "definition" : "Anger när ett beslutsunderlag senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret som föranlett ett nytt datum.",
      "comment" : "TKB-fält: `../fmbSenasteVersionsuppdatering` (`DateTime`, kardinalitet 1..1).",
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
      "definition" : "Anger när ett beslutsunderlag senast uppdaterades, både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens beslutsunderlag, dvs det kan vara ett underlag som ej returnerats i svaret.",
      "comment" : "TKB-fält: `../fmbSenasteAndring` (`DateTime`, kardinalitet 1..1).",
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
      "definition" : "Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret som föranlett ett nytt datum.",
      "comment" : "TKB-fält: `../diagnosInformationSenasteVersionsuppdatering` (`DateTime`, kardinalitet 1..1).",
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
      "definition" : "Anger när diagnosinformation senast uppdaterades; både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret.",
      "comment" : "TKB-fält: `../diagnosInformationSenasteAndring` (`DateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
