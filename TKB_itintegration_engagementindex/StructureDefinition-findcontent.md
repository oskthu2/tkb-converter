# FindContent - itintegration: engagementindex v1.0.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindContent**

## Logical Model: FindContent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:FindContent |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet FindContent (RIV-TA urn:riv:itintegration:engagementindex:FindContent:1). Representerar responsens informationsstruktur — en lista av engagemangsposter som svarar mot sökkriterierna i begäran. Primärt använt av aggregerande tjänster i tjänsteplattformen. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-engagementindex|current/StructureDefinition/StructureDefinition-findcontent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findcontent.csv), [Excel](StructureDefinition-findcontent.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findcontent",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent",
  "version" : "1.0",
  "name" : "FindContent",
  "title" : "FindContent",
  "status" : "active",
  "date" : "2026-11-06T21:37:28+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet FindContent\n(RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).\nRepresenterar responsens informationsstruktur — en lista av engagemangsposter\nsom svarar mot sökkriterierna i begäran.\nPrimärt använt av aggregerande tjänster i tjänsteplattformen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/findcontent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findcontent",
      "path" : "findcontent",
      "short" : "FindContent",
      "definition" : "Logisk modell för tjänstekontraktet FindContent\n(RIV-TA urn:riv:itintegration:engagementindex:FindContent:1).\nRepresenterar responsens informationsstruktur — en lista av engagemangsposter\nsom svarar mot sökkriterierna i begäran.\nPrimärt använt av aggregerande tjänster i tjänsteplattformen."
    },
    {
      "id" : "findcontent.engagement",
      "path" : "findcontent.engagement",
      "short" : "Engagemangspost",
      "definition" : "En post i engagemangsindex som matchar sökkriterierna.\nEn tjänstekonsument kan få noll eller flera poster i svaret.\nKardinalitet: Valfri, lista.",
      "comment" : "TKB-fält: `engagement` (`EngagementType`, kardinalitet 0..*).\n\n**Modellanteckning:** En post i engagemangsindex som matchar sökkriterierna.\nEn tjänstekonsument kan få noll eller flera poster i svaret.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findcontent.engagement.registeredResidentIdentification",
      "path" : "findcontent.engagement.registeredResidentIdentification",
      "short" : "Personidentitet",
      "definition" : "Enligt formatregler i meddelandemodell",
      "comment" : "TKB-fält: `engagement.registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1).\n\n**Modellanteckning:** Person- eller samordningsnummer enligt skatteverkets definition (12 tecken),\neller nationellt reservnummer enligt Ineras definition (12 tecken).\nFormat: CCYYMMDDNNNN (personnummer/samordningsnummer) eller XXYYMMDNNGC (reservidentitet).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent.engagement.serviceDomain",
      "path" : "findcontent.engagement.serviceDomain",
      "short" : "Tjänstedomänens namnrymd (URN)",
      "definition" : "Namnrymd för Tjänstedomän\n\nexempel:\n\nurn:riv:clinicalprocess:activity:request",
      "comment" : "TKB-fält: `engagement.serviceDomain` (`URN`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "findcontent.engagement.categorization",
      "path" : "findcontent.engagement.categorization",
      "short" : "Kategorisering",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagement.categorization` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** Kategorisering enligt den tillämpande tjänstedomänens dokumentation.\nExakt betydelse definieras av respektive tjänstedomän.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent.engagement.logicalAddress",
      "path" : "findcontent.engagement.logicalAddress",
      "short" : "Logisk adress",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagement.logicalAddress` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** Logisk adress för den tjänsteproducent som har information för posten.\nExakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent.engagement.businessObjectInstanceIdentifier",
      "path" : "findcontent.engagement.businessObjectInstanceIdentifier",
      "short" : "Affärsobjektets instansidentifierare",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** Identifierare för det specifika affärsobjekt som posten avser.\nExakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.\nObs: I domain-metadata angiven som engagementTransaction.engagement.businessObjectInstanceIdentifier.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent.engagement.clinicalProcessInterestId",
      "path" : "findcontent.engagement.clinicalProcessInterestId",
      "short" : "Kliniskt processintresse-ID",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagement.clinicalProcessInterestId` (`String`, kardinalitet 0..1).\n\n**Modellanteckning:** Identifierare för kliniskt processintresse.\nExakt betydelse definieras av den tillämpande tjänstedomänens dokumentation.\nOBS: Möjlig kardinalitetsdiskrepans — i FindContent Request är fältet 0..1,\nmen i den generella informationsmodellen (avsnitt 5) kan det vara 1..1.\nAnvänd 0..1 tills verifiering mot XSD-schema är gjord.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent.engagement.mostRecentContent",
      "path" : "findcontent.engagement.mostRecentContent",
      "short" : "Senast relevant innehållstidpunkt",
      "definition" : "YYYYMMDDhhmmss",
      "comment" : "TKB-fält: `engagement.mostRecentContent` (`TS`, kardinalitet 0..1).\n\n**Modellanteckning:** Tidpunkt för senast relevant innehåll. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).\nRegler för användning av detta attribut bestäms av den tillämpande tjänstedomänens\ntjänstekontraktsbeskrivning. Från version 1.0.9 tas centrala EI-regler kring\nMostRecentContent bort ur denna TKB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findcontent.engagement.sourceSystem",
      "path" : "findcontent.engagement.sourceSystem",
      "short" : "Källsystem (HSA-id)",
      "definition" : "Källsystemet som innehåller den information som EI-posten pekar ut.\n\nI regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen.",
      "comment" : "TKB-fält: `engagement.sourceSystem` (`HSA-id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "findcontent.engagement.creationTime",
      "path" : "findcontent.engagement.creationTime",
      "short" : "Tidpunkt för skapande av indexpost",
      "definition" : "YYYYMMDDhhmmss",
      "comment" : "TKB-fält: `engagement.creationTime` (`TS`, kardinalitet 1..1).\n\n**Modellanteckning:** Tidpunkt då EI-posten skapades i engagemangsindex. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).\nSätts av engagemangsindex vid mottagning av Update — ska INTE sättas av konsumenten.\nOBS: Fältet saknar explicit fältregel i TKB-tabellen för FindContent Response,\nmen finns i XSD-typen EngagementType. Kardinalitet hämtad från informationsmodellen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findcontent.engagement.updateTime",
      "path" : "findcontent.engagement.updateTime",
      "short" : "Tidpunkt för senaste uppdatering av indexpost",
      "definition" : "YYYYMMDDhhmmss",
      "comment" : "TKB-fält: `engagement.updateTime` (`TS`, kardinalitet 0..1).\n\n**Modellanteckning:** Tidpunkt då EI-posten senast uppdaterades i engagemangsindex. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).\nSätts av engagemangsindex vid mottagning av Update — ska INTE sättas av konsumenten.\nOBS: Fältet saknar explicit fältregel i TKB-tabellen för FindContent Response,\nmen finns i XSD-typen EngagementType. Kardinalitet hämtad från informationsmodellen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findcontent.engagement.dataController",
      "path" : "findcontent.engagement.dataController",
      "short" : "Personuppgiftsansvarig organisation",
      "definition" : "Identitet för den PUA som ansvarar för postens innehåll.\n\nI första hand organisationsnummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)\n\nViktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgiftsansvarig för sin information i engagemangsindex.",
      "comment" : "TKB-fält: `engagement.dataController` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findcontent.engagement.owner",
      "path" : "findcontent.engagement.owner",
      "short" : "Ägande index (HSA-id)",
      "definition" : "HSA-id för den organisations vars index tog emot uppdateringsbegäran.",
      "comment" : "TKB-fält: `engagement.owner` (`HSA-id`, kardinalitet 1..1).\n\n**Modellanteckning:** HSA-id för den organisation vars index tog emot uppdateringsbegäran.\nAnvänds för att spåra var en indexpost ursprungligen registrerades.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).\nSätts av engagemangsindex — ska INTE sättas av konsumenten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
