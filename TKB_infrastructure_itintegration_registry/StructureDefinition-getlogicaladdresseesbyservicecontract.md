# GetLogicalAddresseesByServiceContract - infrastructure: itintegration: registry v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLogicalAddresseesByServiceContract**

## Logical Model: GetLogicalAddresseesByServiceContract 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract | *Version*:2 |
| Draft as of 2026-09-14 | *Computable Name*:GetLogicalAddresseesByServiceContract |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetLogicalAddresseesByServiceContract (RIV-TA urn:riv:infrastructure:itintegration:registry:GetLogicalAddresseesByServiceContract:2). Representerar responsens informationsstruktur: en lista över logiska adressater som har en tjänsteproducent för angivet tjänstekontrakt och anropsbehörighet för angiven tjänstekonsument. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-registry|current/StructureDefinition/StructureDefinition-getlogicaladdresseesbyservicecontract.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlogicaladdresseesbyservicecontract.csv), [Excel](StructureDefinition-getlogicaladdresseesbyservicecontract.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlogicaladdresseesbyservicecontract",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract",
  "version" : "2",
  "name" : "GetLogicalAddresseesByServiceContract",
  "title" : "GetLogicalAddresseesByServiceContract",
  "status" : "draft",
  "date" : "2026-09-14T12:50:54+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetLogicalAddresseesByServiceContract\n(RIV-TA urn:riv:infrastructure:itintegration:registry:GetLogicalAddresseesByServiceContract:2).\nRepresenterar responsens informationsstruktur: en lista över logiska\nadressater som har en tjänsteproducent för angivet tjänstekontrakt och\nanropsbehörighet för angiven tjänstekonsument.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlogicaladdresseesbyservicecontract",
      "path" : "getlogicaladdresseesbyservicecontract",
      "short" : "GetLogicalAddresseesByServiceContract",
      "definition" : "Logisk modell för tjänstekontraktet GetLogicalAddresseesByServiceContract\n(RIV-TA urn:riv:infrastructure:itintegration:registry:GetLogicalAddresseesByServiceContract:2).\nRepresenterar responsens informationsstruktur: en lista över logiska\nadressater som har en tjänsteproducent för angivet tjänstekontrakt och\nanropsbehörighet för angiven tjänstekonsument."
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord",
      "path" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord",
      "short" : "Logisk adressat som matchar frågan",
      "definition" : "Post för en logisk adressat med tjänsteproducent för angivet\ntjänstekontrakt och anropsbehörighet för angiven tjänstekonsument.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getlogicaladdresseesbyservicecontract-filter-authorization",
        "severity" : "warning",
        "human" : "R2 (TKB avsnitt 7.1, \"Övriga regler\"): behörighetsfiltrering är en\nflerstegsregel över listan av filter-poster (saknas filter-poster ska\nanropet tillåtas; annars måste meddelandets serviceDomain matcha en\nfilter-post, och om den matchande posten har categorization måste\nmeddelandets categorization matcha en av dessa). Detta kräver iteration\növer en lista med kombinerad AND/OR-logik mellan filter-poster och kan\ninte uttryckas fullständigt som en enkel FHIRPath-invariant på fältnivå.\nSe QUESTIONS.md för domänexpert-verifiering av en ev. förenklad\nFHIRPath-representation.",
        "source" : "https://fhir.inera.se/ig/infrastructure-itintegration-registry/StructureDefinition/getlogicaladdresseesbyservicecontract"
      }]
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord.logicalAddress",
      "path" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord.logicalAddress",
      "short" : "Logisk adress",
      "definition" : "Tjänstekontrakt som stöds av angiven tjänstekonsument vid tidpunkten\nför anropet av GetLogicalAddresseesByServiceContract.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord.filter",
      "path" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord.filter",
      "short" : "Behörighetsfilter",
      "definition" : "Behörighetsfilter för adressaten. Se invariant och TKB avsnitt 7.1\n\"Övriga regler\" (R2) för fullständig matchningssemantik.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord.filter.serviceDomain",
      "path" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord.filter.serviceDomain",
      "short" : "Tjänstedomän",
      "definition" : "Namnrymd för Tjänstedomän enligt RIVTA-förvaltningens förvaltade\ntjänstedomäner, på formatet <regelverk>:<huvuddomän>:<underdomän>.\nAnges utan versionsnummer. Exempel: \"urn:riv:crm:scheduling\".\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord.filter.categorization",
      "path" : "getlogicaladdresseesbyservicecontract.logicalAddressRecord.filter.categorization",
      "short" : "Kategorisering",
      "definition" : "Kodverk enligt tjänstedomänens dokumentation. Matchning görs enligt\nR3 (TKB avsnitt 7.1) utan hänsyn till versaler/gemener (IgnoreCase).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
