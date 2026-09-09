# GetHospPersonForIVO — Request - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHospPersonForIVO — Request**

## Logical Model: GetHospPersonForIVO — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforivo-request | *Version*:2.0.0 |
| Draft as of 2026-09-09 | *Computable Name*:GetHospPersonForIVORequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetHospPersonForIVO. IVO har utökade sökparametrar jämfört med den publika tjänsten, bland annat möjlighet att filtrera på länskod, kommunkod, folkbokföringsort, förskrivarkod, yrke och specialistinriktning. Sökfälten folkbokforingsort, yrke och specialistinriktning stöder wildcard-sökning. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-organisationalresources-licensetopractice|current/StructureDefinition/StructureDefinition-gethosppersonforivo-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethosppersonforivo-request.csv), [Excel](StructureDefinition-gethosppersonforivo-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethosppersonforivo-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforivo-request",
  "version" : "2.0.0",
  "name" : "GetHospPersonForIVORequest",
  "title" : "GetHospPersonForIVO — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:04:47+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetHospPersonForIVO.\nIVO har utökade sökparametrar jämfört med den publika tjänsten, bland annat möjlighet att\nfiltrera på länskod, kommunkod, folkbokföringsort, förskrivarkod, yrke och specialistinriktning.\nSökfälten folkbokforingsort, yrke och specialistinriktning stöder wildcard-sökning.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforivo-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethosppersonforivo-request",
      "path" : "gethosppersonforivo-request",
      "short" : "GetHospPersonForIVO — Request",
      "definition" : "Logisk modell för requestparametrar i GetHospPersonForIVO.\nIVO har utökade sökparametrar jämfört med den publika tjänsten, bland annat möjlighet att\nfiltrera på länskod, kommunkod, folkbokföringsort, förskrivarkod, yrke och specialistinriktning.\nSökfälten folkbokforingsort, yrke och specialistinriktning stöder wildcard-sökning."
    },
    {
      "id" : "gethosppersonforivo-request.personnummer",
      "path" : "gethosppersonforivo-request.personnummer",
      "short" : "Personnummer",
      "definition" : "Söker en person efter personnummer. Format: ÅÅÅÅMMDDXXXX (12 siffror).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.samordningsnummer",
      "path" : "gethosppersonforivo-request.samordningsnummer",
      "short" : "Samordningsnummer",
      "definition" : "Söker en person efter samordningsnummer. Format: ÅÅÅÅMMDDXXXX (12 siffror).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.efternamn",
      "path" : "gethosppersonforivo-request.efternamn",
      "short" : "Efternamn",
      "definition" : "Söker personer efter efternamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.fornamn",
      "path" : "gethosppersonforivo-request.fornamn",
      "short" : "Förnamn",
      "definition" : "Söker personer efter förnamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.fodelsedatum",
      "path" : "gethosppersonforivo-request.fodelsedatum",
      "short" : "Födelsedatum (ÅÅÅÅMMDD)",
      "definition" : "Söker personer efter födelsedatum. Format: ÅÅÅÅMMDD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.lansKod",
      "path" : "gethosppersonforivo-request.lansKod",
      "short" : "Länskod",
      "definition" : "Filtrerar sökning efter person utifrån länskod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.kommunKod",
      "path" : "gethosppersonforivo-request.kommunKod",
      "short" : "Kommunkod",
      "definition" : "Filtrerar sökning efter person utifrån kommunkod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.folkbokforingsort",
      "path" : "gethosppersonforivo-request.folkbokforingsort",
      "short" : "Folkbokföringsort",
      "definition" : "Filtrerar sökning efter person utifrån folkbokföringsort.\nTillåter wildcard: '*' eller '%' matchar delar av text, '?' eller '_' matchar ett tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.forskrivarkod",
      "path" : "gethosppersonforivo-request.forskrivarkod",
      "short" : "Förskrivarkod",
      "definition" : "Filtrerar sökning efter person utifrån förskrivarkod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.yrke",
      "path" : "gethosppersonforivo-request.yrke",
      "short" : "Yrke",
      "definition" : "Filtrerar sökning efter person utifrån grundyrke.\nTillåter wildcard: '*' eller '%' matchar delar av text, '?' eller '_' matchar ett tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforivo-request.specialistinriktning",
      "path" : "gethosppersonforivo-request.specialistinriktning",
      "short" : "Specialistinriktning",
      "definition" : "Filtrerar sökning efter person utifrån specialistinriktning.\nTillåter wildcard i angiven sträng. Tillåter även att en av Socialstyrelsens specialistinriktningskoder anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
