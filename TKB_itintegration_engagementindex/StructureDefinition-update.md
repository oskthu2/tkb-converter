# Update - itintegration: engagementindex v1.0.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Update**

## Logical Model: Update 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/update | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:Update |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet Update (RIV-TA urn:riv:itintegration:engagementindex:Update:1). Representerar responsens informationsstruktur — ett statusbesked som anger om uppdateringsoperationen lyckades eller misslyckades. 
Kontraktet används av källsystem för att skapa, uppdatera och radera indexposter i ett engagemangsindex. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-engagementindex|current/StructureDefinition/StructureDefinition-update.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-update.csv), [Excel](StructureDefinition-update.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "update",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/update",
  "version" : "1.0",
  "name" : "Update",
  "title" : "Update",
  "status" : "active",
  "date" : "2026-11-09T03:42:52+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet Update\n(RIV-TA urn:riv:itintegration:engagementindex:Update:1).\nRepresenterar responsens informationsstruktur — ett statusbesked\nsom anger om uppdateringsoperationen lyckades eller misslyckades.\n\nKontraktet används av källsystem för att skapa, uppdatera och radera\nindexposter i ett engagemangsindex.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/update",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "update",
      "path" : "update",
      "short" : "Update",
      "definition" : "Logisk modell för tjänstekontraktet Update\n(RIV-TA urn:riv:itintegration:engagementindex:Update:1).\nRepresenterar responsens informationsstruktur — ett statusbesked\nsom anger om uppdateringsoperationen lyckades eller misslyckades.\n\nKontraktet används av källsystem för att skapa, uppdatera och radera\nindexposter i ett engagemangsindex."
    },
    {
      "id" : "update.ResultCode",
      "path" : "update.ResultCode",
      "short" : "ResultCode",
      "definition" : "Status enligt generell regel.",
      "comment" : "TKB-fält: `ResultCode` (`Kodverk`, kardinalitet 1..1).\n\n**Modellanteckning:** ResultCode Tillåtna värden: OK, ERROR, INFO.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "update.comment",
      "path" : "update.comment",
      "short" : "comment",
      "definition" : "Meddelande enligt generell regel",
      "comment" : "TKB-fält: `comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
