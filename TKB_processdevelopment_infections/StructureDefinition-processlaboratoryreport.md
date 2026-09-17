# ProcessLaboratoryReport - processdevelopment: infections v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessLaboratoryReport**

## Logical Model: ProcessLaboratoryReport 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processlaboratoryreport | *Version*:1.0.2 |
| Draft as of 2026-09-17 | *Computable Name*:ProcessLaboratoryReport |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet ProcessLaboratoryReport (RIV-TA processdevelopment:infections). Representerar responsens informationsstruktur — bekräftar registrering av ett laboratoriesvar. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processdevelopment-infections|current/StructureDefinition/StructureDefinition-processlaboratoryreport.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processlaboratoryreport.csv), [Excel](StructureDefinition-processlaboratoryreport.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processlaboratoryreport",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processlaboratoryreport",
  "version" : "1.0.2",
  "name" : "ProcessLaboratoryReport",
  "title" : "ProcessLaboratoryReport",
  "status" : "draft",
  "date" : "2026-09-17T11:18:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet ProcessLaboratoryReport\n(RIV-TA processdevelopment:infections). Representerar responsens\ninformationsstruktur — bekräftar registrering av ett laboratoriesvar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processdevelopment-infections/StructureDefinition/processlaboratoryreport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processlaboratoryreport",
      "path" : "processlaboratoryreport",
      "short" : "ProcessLaboratoryReport",
      "definition" : "Logisk modell för tjänstekontraktet ProcessLaboratoryReport\n(RIV-TA processdevelopment:infections). Representerar responsens\ninformationsstruktur — bekräftar registrering av ett laboratoriesvar."
    },
    {
      "id" : "processlaboratoryreport.resultCode",
      "path" : "processlaboratoryreport.resultCode",
      "short" : "Resultatkod",
      "definition" : "Resultatkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/processdevelopment-infections/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "processlaboratoryreport.comment",
      "path" : "processlaboratoryreport.comment",
      "short" : "Kommentar",
      "definition" : "Beskrivning av fel som uppstått alternativt information om genomförd\nregistrering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
