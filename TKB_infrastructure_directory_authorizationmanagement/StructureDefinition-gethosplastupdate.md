# GetHospLastUpdate - infrastructure: directory: authorizationmanagement v2.4.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHospLastUpdate**

## Logical Model: GetHospLastUpdate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethosplastupdate | *Version*:2.4.4 |
| Draft as of 2026-09-09 | *Computable Name*:GetHospLastUpdate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetHospLastUpdate (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospLastUpdate:1). Hämtar tidpunkt för då HOSP-informationen tillgängliggjorts efter det senaste utlämnandet från Socialstyrelsen. Kontraktet har inga inparametrar. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-authorizationmanagement|current/StructureDefinition/StructureDefinition-gethosplastupdate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethosplastupdate.csv), [Excel](StructureDefinition-gethosplastupdate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethosplastupdate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethosplastupdate",
  "version" : "2.4.4",
  "name" : "GetHospLastUpdate",
  "title" : "GetHospLastUpdate",
  "status" : "draft",
  "date" : "2026-09-09T16:58:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetHospLastUpdate\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospLastUpdate:1).\nHämtar tidpunkt för då HOSP-informationen tillgängliggjorts efter det senaste\nutlämnandet från Socialstyrelsen. Kontraktet har inga inparametrar.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-authorizationmanagement/StructureDefinition/gethosplastupdate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethosplastupdate",
      "path" : "gethosplastupdate",
      "short" : "GetHospLastUpdate",
      "definition" : "Logisk modell för tjänstekontraktet GetHospLastUpdate\n(RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:GetHospLastUpdate:1).\nHämtar tidpunkt för då HOSP-informationen tillgängliggjorts efter det senaste\nutlämnandet från Socialstyrelsen. Kontraktet har inga inparametrar."
    },
    {
      "id" : "gethosplastupdate.lastUpdate",
      "path" : "gethosplastupdate.lastUpdate",
      "short" : "Tidpunkt då HOSP-informationen tillgängliggjorts efter senaste utlämnande",
      "definition" : "Tidpunkt då HOSP-informationen tillgängliggjorts efter senaste utlämnande",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
