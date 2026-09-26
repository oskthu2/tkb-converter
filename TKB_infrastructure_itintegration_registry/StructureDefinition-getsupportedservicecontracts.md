# GetSupportedServiceContracts - infrastructure: itintegration: registry v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetSupportedServiceContracts**

## Logical Model: GetSupportedServiceContracts 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-itintegration-registry/StructureDefinition/getsupportedservicecontracts | *Version*:2 |
| Draft as of 2026-09-26 | *Computable Name*:GetSupportedServiceContracts |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetSupportedServiceContracts (RIV-TA urn:riv:infrastructure:itintegration:registry:GetSupportedServiceContracts:2). Representerar responsens informationsstruktur: en lista över tjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat. Varje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-itintegration-registry|current/StructureDefinition/StructureDefinition-getsupportedservicecontracts.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getsupportedservicecontracts.csv), [Excel](StructureDefinition-getsupportedservicecontracts.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getsupportedservicecontracts",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-itintegration-registry/StructureDefinition/getsupportedservicecontracts",
  "version" : "2",
  "name" : "GetSupportedServiceContracts",
  "title" : "GetSupportedServiceContracts",
  "status" : "draft",
  "date" : "2026-09-26T19:33:53+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetSupportedServiceContracts\n(RIV-TA urn:riv:infrastructure:itintegration:registry:GetSupportedServiceContracts:2).\nRepresenterar responsens informationsstruktur: en lista över\ntjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat.\nVarje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-itintegration-registry/StructureDefinition/getsupportedservicecontracts",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getsupportedservicecontracts",
      "path" : "getsupportedservicecontracts",
      "short" : "GetSupportedServiceContracts",
      "definition" : "Logisk modell för tjänstekontraktet GetSupportedServiceContracts\n(RIV-TA urn:riv:infrastructure:itintegration:registry:GetSupportedServiceContracts:2).\nRepresenterar responsens informationsstruktur: en lista över\ntjänstekontrakt (namnrymder) som stöds av en specifik logisk adressat.\nVarje huvudversion uppträder som ett eget tjänstekontrakt (namnrymd)."
    },
    {
      "id" : "getsupportedservicecontracts.serviceContractNamespace",
      "path" : "getsupportedservicecontracts.serviceContractNamespace",
      "short" : "Tjänstekontrakt (namnrymd)",
      "definition" : "Tjänstekontrakt som stöds av angiven logisk adress vid tidpunkten för\nanropet av GetSupportedServiceContracts. Om requestens\nserviceConsumerHsaId är angiven filtreras svaret enligt R1 (TKB\navsnitt 7.2 \"Övriga regler\") till endast de kontrakt konsumenten har\nrättighet att använda.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "uri"
      }]
    }]
  }
}

```
