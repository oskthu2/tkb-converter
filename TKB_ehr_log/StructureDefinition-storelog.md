# StoreLog - ehr: log v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StoreLog**

## Logical Model: StoreLog 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-log/StructureDefinition/storelog | *Version*:1.2.3 |
| Draft as of 2026-09-09 | *Computable Name*:StoreLog |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet StoreLog (RIV-TA urn:riv:ehr:log:store:StoreLogResponder:1). Representerar responsens informationsstruktur (log.store:Result). Tjänsten sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-log|current/StructureDefinition/StructureDefinition-storelog.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-storelog.csv), [Excel](StructureDefinition-storelog.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "storelog",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/storelog",
  "version" : "1.2.3",
  "name" : "StoreLog",
  "title" : "StoreLog",
  "status" : "draft",
  "date" : "2026-09-09T16:53:22+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet StoreLog\n(RIV-TA urn:riv:ehr:log:store:StoreLogResponder:1).\nRepresenterar responsens informationsstruktur (log.store:Result).\nTjänsten sparar en eller flera loggposter i loggtjänsten för att möjliggöra\nuppföljning enligt PDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-log/StructureDefinition/storelog",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "storelog",
      "path" : "storelog",
      "short" : "StoreLog",
      "definition" : "Logisk modell för tjänstekontraktet StoreLog\n(RIV-TA urn:riv:ehr:log:store:StoreLogResponder:1).\nRepresenterar responsens informationsstruktur (log.store:Result).\nTjänsten sparar en eller flera loggposter i loggtjänsten för att möjliggöra\nuppföljning enligt PDL."
    },
    {
      "id" : "storelog.resultCode",
      "path" : "storelog.resultCode",
      "short" : "Resultatkod för lagringen",
      "definition" : "Statuskod som anger om loggposter sparats korrekt eller om fel uppstått.\nTillåtna värden: OK, INFO, ERROR, VALIDATIONERROR, ACCESSDENIED.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-log/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "storelog.resultText",
      "path" : "storelog.resultText",
      "short" : "Beskrivande text till resultatkoden",
      "definition" : "Fritext som beskriver resultatet eller felorsaken.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
