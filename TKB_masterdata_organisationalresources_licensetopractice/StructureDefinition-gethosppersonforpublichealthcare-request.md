# GetHospPersonForPublicHealthcare — Request - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHospPersonForPublicHealthcare — Request**

## Logical Model: GetHospPersonForPublicHealthcare — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforpublichealthcare-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetHospPersonForPublicHealthcareRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetHospPersonForPublicHealthcare. Antingen anges personId, eller ett eller flera av fälten efternamn, fornamn, fodelsedatum. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-organisationalresources-licensetopractice|current/StructureDefinition/StructureDefinition-gethosppersonforpublichealthcare-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethosppersonforpublichealthcare-request.csv), [Excel](StructureDefinition-gethosppersonforpublichealthcare-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethosppersonforpublichealthcare-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforpublichealthcare-request",
  "version" : "2.0",
  "name" : "GetHospPersonForPublicHealthcareRequest",
  "title" : "GetHospPersonForPublicHealthcare — Request",
  "status" : "active",
  "date" : "2026-11-09T03:45:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetHospPersonForPublicHealthcare.\nAntingen anges personId, eller ett eller flera av fälten efternamn, fornamn, fodelsedatum.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforpublichealthcare-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethosppersonforpublichealthcare-request",
      "path" : "gethosppersonforpublichealthcare-request",
      "short" : "GetHospPersonForPublicHealthcare — Request",
      "definition" : "Logisk modell för requestparametrar i GetHospPersonForPublicHealthcare.\nAntingen anges personId, eller ett eller flera av fälten efternamn, fornamn, fodelsedatum.",
      "constraint" : [{
        "key" : "gethosppersonforpublichealthcare-request-search-criteria",
        "severity" : "error",
        "human" : "Antingen anges personId, eller minst ett av efternamn, fornamn och fodelsedatum.",
        "expression" : "personId.exists() or efternamn.exists() or fornamn.exists() or fodelsedatum.exists()",
        "source" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforpublichealthcare-request"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare-request.personId",
      "path" : "gethosppersonforpublichealthcare-request.personId",
      "short" : "PersonIdType",
      "definition" : "Ett personnummer eller samordningsnummer för en person",
      "comment" : "TKB-fält: `personId*` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare-request.personId.extension",
      "path" : "gethosppersonforpublichealthcare-request.personId.extension",
      "short" : "extension",
      "definition" : "Identitet i form av ÅÅÅÅMMDDXXXX.",
      "comment" : "TKB-fält: `../ extension` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PersonIdentitet"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare-request.personId.root",
      "path" : "gethosppersonforpublichealthcare-request.personId.root",
      "short" : "root",
      "definition" : "Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: \"1.2.752.129.2.1.3.1\"\n\nSamordningsnummer: \"1.2.752.129.2.1.3.3\"",
      "comment" : "TKB-fält: `../ root` (`String`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare-request.efternamn",
      "path" : "gethosppersonforpublichealthcare-request.efternamn",
      "short" : "efternamn",
      "definition" : "Söker personer efter efternamn",
      "comment" : "TKB-fält: `efternamn` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare-request.fornamn",
      "path" : "gethosppersonforpublichealthcare-request.fornamn",
      "short" : "fornamn",
      "definition" : "Söker personer efter förnamn",
      "comment" : "TKB-fält: `fornamn` (`String`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare-request.fodelsedatum",
      "path" : "gethosppersonforpublichealthcare-request.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Söker personer efter födelsedatum",
      "comment" : "TKB-fält: `födelseDatum` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    }]
  }
}

```
