# FindContent — Request - itintegration: engagementindex v1.0.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindContent — Request**

## Logical Model: FindContent — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent-request | *Version*:1.0.9 |
| Draft as of 2026-09-09 | *Computable Name*:FindContentRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet FindContent (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1). Alla angivna attribut används för exakt matchningsfiltrering av sökresultatet. Åtkomst till FindContent i nationell EI-instans är begränsad till aggregerande tjänster i den nationella aggregeringsplattformen. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-engagementindex|current/StructureDefinition/StructureDefinition-findcontent-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findcontent-request.csv), [Excel](StructureDefinition-findcontent-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findcontent-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent-request",
  "version" : "1.0.9",
  "name" : "FindContentRequest",
  "title" : "FindContent — Request",
  "status" : "draft",
  "date" : "2026-09-09T17:04:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet FindContent\n(RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).\nAlla angivna attribut används för exakt matchningsfiltrering av sökresultatet.\nÅtkomst till FindContent i nationell EI-instans är begränsad till aggregerande\ntjänster i den nationella aggregeringsplattformen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findcontent-request",
      "path" : "findcontent-request",
      "short" : "FindContent — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet FindContent\n(RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).\nAlla angivna attribut används för exakt matchningsfiltrering av sökresultatet.\nÅtkomst till FindContent i nationell EI-instans är begränsad till aggregerande\ntjänster i den nationella aggregeringsplattformen."
    },
    {
      "id" : "findcontent-request.registeredResidentIdentification",
      "path" : "findcontent-request.registeredResidentIdentification",
      "short" : "Personidentitet (sökkriterium)",
      "definition" : "Person- eller samordningsnummer enligt skatteverkets definition (12 tecken),\neller nationellt reservnummer enligt Ineras definition (12 tecken).\nFormat: CCYYMMDDNNNN eller [0-9]{8}[0-9A-Zptf]{4}.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.serviceDomain",
      "path" : "findcontent-request.serviceDomain",
      "short" : "Tjänstedomänens namnrymd (sökkriterium)",
      "definition" : "Namnrymd för tjänstedomän i URN-format.\nExempel: urn:riv:clinicalprocess:activity:request\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "findcontent-request.categorization",
      "path" : "findcontent-request.categorization",
      "short" : "Kategorisering (sökkriterium)",
      "definition" : "Kodverk enligt den tillämpande tjänstedomänens dokumentation.\nOm angivet filtreras svaret till poster med exakt matchning på detta attribut.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.logicalAddress",
      "path" : "findcontent-request.logicalAddress",
      "short" : "Logisk adress (sökkriterium)",
      "definition" : "Filtrerar svaret till poster med angiven logisk adress.\nExakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.businessObjectInstanceIdentifier",
      "path" : "findcontent-request.businessObjectInstanceIdentifier",
      "short" : "Affärsobjektets instansidentifierare (sökkriterium)",
      "definition" : "Filtrerar svaret till poster med angiven affärsobjektidentifierare.\nExakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.\nOBS: I domain-metadata angiven som engagementTransaction.engagement.businessObjectInstanceIdentifier.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.clinicalProcessInterestId",
      "path" : "findcontent-request.clinicalProcessInterestId",
      "short" : "Kliniskt processintresse-ID (sökkriterium)",
      "definition" : "Filtrerar svaret till poster med angivet kliniskt processintresse-ID.\nExakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.\nOBS: Möjlig kardinalitetsdiskrepans — i FindContent Request är fältet 0..1,\nmen i den generella informationsmodellen (avsnitt 5) kan det vara 1..1.\nBehöver verifiering mot XSD-schema.\nKardinalitet: Valfri (se öppen fråga om diskrepans).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.mostRecentContent",
      "path" : "findcontent-request.mostRecentContent",
      "short" : "Senast relevant innehållstidpunkt (sökkriterium)",
      "definition" : "Filtrerar svaret till poster med mostRecentContent >= angivet värde.\nFormat: YYYYMMDDhhmmss (svensk tidszon CET/CEST).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findcontent-request.sourceSystem",
      "path" : "findcontent-request.sourceSystem",
      "short" : "Källsystem (sökkriterium)",
      "definition" : "HSA-id för källsystemet. Filtrerar svaret till poster med angivet källsystem.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "findcontent-request.dataController",
      "path" : "findcontent-request.dataController",
      "short" : "Personuppgiftsansvarig organisation (sökkriterium)",
      "definition" : "Identitet för PUA. Filtrerar svaret till poster med angiven dataController.\nOBS: Kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent-request.owner",
      "path" : "findcontent-request.owner",
      "short" : "Ägande index (sökkriterium)",
      "definition" : "HSA-id för den organisation vars index tog emot uppdateringsbegäran.\nFiltrerar svaret till poster som registrerats i angivet index.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
