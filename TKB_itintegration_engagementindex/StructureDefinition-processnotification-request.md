# ProcessNotification — Request - itintegration: engagementindex v1.0.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessNotification — Request**

## Logical Model: ProcessNotification — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/processnotification-request | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:ProcessNotificationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet ProcessNotification (RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1). 
Används för konsolidering av indexinformation mellan engagemangsindexinstanser. Innehållet i begäran ska exakt spegla begäran i ursprunglig Update, med tillägg av owner, creationTime och updateTime (som INTE ingår i Update-begäran men är obligatoriska här). 
OBS: Ovanlig dubbel roll — engagemangsindex kan agera BÅDA producent och konsument för detta kontrakt. Fr.o.m. version 1.0.9 agerar nationellt EI enbart som producent (tar emot notifieringar). Lokala index agerar konsument och skickar till nationellt EI. 
Regel pR4: Om notifiering mottas där owner är samma som den egna instansen ska ingen uppdatering eller notifiering ske (för att undvika rundgång). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-engagementindex|current/StructureDefinition/StructureDefinition-processnotification-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processnotification-request.csv), [Excel](StructureDefinition-processnotification-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processnotification-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/processnotification-request",
  "version" : "1.0",
  "name" : "ProcessNotificationRequest",
  "title" : "ProcessNotification — Request",
  "status" : "active",
  "date" : "2026-11-06T21:37:28+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet ProcessNotification\n(RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).\n\nAnvänds för konsolidering av indexinformation mellan engagemangsindexinstanser.\nInnehållet i begäran ska exakt spegla begäran i ursprunglig Update,\nmed tillägg av owner, creationTime och updateTime (som INTE ingår i Update-begäran\nmen är obligatoriska här).\n\nOBS: Ovanlig dubbel roll — engagemangsindex kan agera BÅDA producent och konsument\nför detta kontrakt. Fr.o.m. version 1.0.9 agerar nationellt EI enbart som producent\n(tar emot notifieringar). Lokala index agerar konsument och skickar till nationellt EI.\n\nRegel pR4: Om notifiering mottas där owner är samma som den egna instansen ska\ningen uppdatering eller notifiering ske (för att undvika rundgång).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/processnotification-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processnotification-request",
      "path" : "processnotification-request",
      "short" : "ProcessNotification — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet ProcessNotification\n(RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).\n\nAnvänds för konsolidering av indexinformation mellan engagemangsindexinstanser.\nInnehållet i begäran ska exakt spegla begäran i ursprunglig Update,\nmed tillägg av owner, creationTime och updateTime (som INTE ingår i Update-begäran\nmen är obligatoriska här).\n\nOBS: Ovanlig dubbel roll — engagemangsindex kan agera BÅDA producent och konsument\nför detta kontrakt. Fr.o.m. version 1.0.9 agerar nationellt EI enbart som producent\n(tar emot notifieringar). Lokala index agerar konsument och skickar till nationellt EI.\n\nRegel pR4: Om notifiering mottas där owner är samma som den egna instansen ska\ningen uppdatering eller notifiering ske (för att undvika rundgång)."
    },
    {
      "id" : "processnotification-request.engagementTransaction",
      "path" : "processnotification-request.engagementTransaction",
      "short" : "Engagemangstransaktion",
      "definition" : "En eller flera engagemangstransaktioner. Varje transaktion avser en indexpost.\nInnehållet ska spegla ursprunglig Update-begäran med tillägg av owner, creationTime\noch updateTime.\nKardinalitet: Obligatorisk, lista (minst en transaktion krävs).",
      "comment" : "TKB-fält: `engagementTransaction` (`EngagementTransactionType`, kardinalitet 1..*).\n\n**Modellanteckning:** En eller flera engagemangstransaktioner. Varje transaktion avser en indexpost.\nInnehållet ska spegla ursprunglig Update-begäran med tillägg av owner, creationTime\noch updateTime.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.deleteFlag",
      "path" : "processnotification-request.engagementTransaction.deleteFlag",
      "short" : "Raderingsflagga",
      "definition" : "”true” anger att posten ska tas bort. False anger att posten ska skapas/uppdateras.",
      "comment" : "TKB-fält: `engagementTransaction.deleteFlag` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement",
      "path" : "processnotification-request.engagementTransaction.engagement",
      "short" : "Engagemangspost",
      "definition" : "Engagemangspostens datavärden inklusive systemgenererade fält\n(owner, creationTime, updateTime) som skickas vidare från det sändande indexet.\nKardinalitet: Obligatorisk.",
      "comment" : "TKB-fält: `engagementTransaction .engagement` (`EngagementType`, kardinalitet 1..1).\n\n**Modellanteckning:** Engagemangspostens datavärden inklusive systemgenererade fält\n(owner, creationTime, updateTime) som skickas vidare från det sändande indexet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.registeredResidentIdentification",
      "path" : "processnotification-request.engagementTransaction.engagement.registeredResidentIdentification",
      "short" : "Personidentitet",
      "definition" : "Enligt formatregler i meddelandemodell",
      "comment" : "TKB-fält: `engagementTransaction .engagement.registeredResidentIdentification` (`Nationell accepterad personidentitet`, kardinalitet 1..1).\n\n**Modellanteckning:** Person- eller samordningsnummer (12 tecken) eller nationellt reservnummer (12 tecken).\nFormat: CCYYMMDDNNNN eller [0-9]{8}[0-9A-Zptf]{4}.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.serviceDomain",
      "path" : "processnotification-request.engagementTransaction.engagement.serviceDomain",
      "short" : "Tjänstedomänens namnrymd (URN)",
      "definition" : "Namnrymd för Tjänstedomän\n\nexempel:\n\nurn:riv:clinicalprocess:activity:request",
      "comment" : "TKB-fält: `engagementTransaction .engagement.serviceDomain` (`URN`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.categorization",
      "path" : "processnotification-request.engagementTransaction.engagement.categorization",
      "short" : "Kategorisering",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.categorization` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.logicalAddress",
      "path" : "processnotification-request.engagementTransaction.engagement.logicalAddress",
      "short" : "Logisk adress",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.logicalAddress` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** Logisk adress för den tjänsteproducent som har information för posten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.businessObjectInstanceIdentifier",
      "path" : "processnotification-request.engagementTransaction.engagement.businessObjectInstanceIdentifier",
      "short" : "Affärsobjektets instansidentifierare",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.businessObjectInstanceIdentifier` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** Identifierare för det specifika affärsobjekt som posten avser.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.clinicalProcessInterestId",
      "path" : "processnotification-request.engagementTransaction.engagement.clinicalProcessInterestId",
      "short" : "Kliniskt processintresse-ID",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.clinicalProcessInterestId` (`HSA-id`, kardinalitet 1..1).\n\n**Modellanteckning:** Identifierare för kliniskt processintresse.\nOBS: I ProcessNotification Request anges typen som HSA-id i TKB, till skillnad från\nstring i Update Request. Modelleras som Identifier med HSA OID.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.mostRecentContent",
      "path" : "processnotification-request.engagementTransaction.engagement.mostRecentContent",
      "short" : "Senast relevant innehållstidpunkt",
      "definition" : "Enligt tjänstedomänens dokumentation.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.mostRecentContent` (`TS`, kardinalitet 0..1).\n\n**Modellanteckning:** Tidpunkt för senast relevant innehåll. Format: YYYYMMDDhhmmss (svensk tidszon CET/CEST).\nRegler för användning bestäms av den tillämpande tjänstedomänens TKB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.sourceSystem",
      "path" : "processnotification-request.engagementTransaction.engagement.sourceSystem",
      "short" : "Källsystem (HSA-id)",
      "definition" : "Källsystemet som innehåller den information som EI-posten pekar ut.\n\nI regel det vårdsystem som skapade informationen eller det system hos vårdgivaren som är master för informationen.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.sourceSystem` (`HSA-id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.creationTime",
      "path" : "processnotification-request.engagementTransaction.engagement.creationTime",
      "short" : "Tidpunkt för skapande av indexpost",
      "definition" : "YYYYMMDDhhmmss",
      "comment" : "TKB-fält: `engagementTransaction .engagement.creationTime` (`TS`, kardinalitet 1..1).\n\n**Modellanteckning:** Tidpunkt då indexposten ursprungligen skapades i det sändande indexet.\nFormat: YYYYMMDDhhmmss (svensk tidszon CET/CEST).\nOBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt\ni ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.\nProducenten (mottagande index) ska använda värdet från begäran, inte generera ett eget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.updateTime",
      "path" : "processnotification-request.engagementTransaction.engagement.updateTime",
      "short" : "Tidpunkt för senaste uppdatering",
      "definition" : "YYYYMMDDhhmmss",
      "comment" : "TKB-fält: `engagementTransaction .engagement.updateTime` (`TS`, kardinalitet 1..1).\n\n**Modellanteckning:** Tidpunkt då indexposten senast uppdaterades i det sändande indexet.\nFormat: YYYYMMDDhhmmss (svensk tidszon CET/CEST).\nOBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt\ni ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.\nProducenten (mottagande index) ska använda värdet från begäran, inte generera ett eget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.dataController",
      "path" : "processnotification-request.engagementTransaction.engagement.dataController",
      "short" : "Personuppgiftsansvarig organisation",
      "definition" : "Identitet för den PUA som ansvarar för postens innehåll.\n\nI första hand organisations-nummer eller HSA-id för den PUA som ansvarar för postens innehåll, i andra hand en källsystemsintern identitet för PUA. (Tidigare har även källsystemets HSA-id tillåtits.)\n\nViktigt att välja ett värde som PUA kan använda för att fullgöra sin roll som personuppgifts-ansvarig för sin information i engagemangsindex.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.dataController` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** Identitet för den personuppgiftsansvariga organisation (PUA) som ansvarar för postens innehåll.\nI första hand organisationsnummer eller HSA-id för PUA.\nOBS: Kan innehålla organisationsnummer, HSA-id eller källsystemsintern identitet —\ningen entydig FHIR Identifier-typ. Modelleras som string; se öppen fråga.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processnotification-request.engagementTransaction.engagement.owner",
      "path" : "processnotification-request.engagementTransaction.engagement.owner",
      "short" : "Ägande index (HSA-id)",
      "definition" : "HSA-id för den organisations vars index tog emot ursprunglig uppdateringsbegäran.",
      "comment" : "TKB-fält: `engagementTransaction .engagement.owner` (`HSA-id`, kardinalitet 1..1).\n\n**Modellanteckning:** HSA-id för den organisation vars index tog emot ursprunglig uppdateringsbegäran.\nOBS: Detta fält ingår INTE i Update-begäran (sätts av EI), men är obligatoriskt\ni ProcessNotification-begäran och ska vidarebefordras från det sändande indexet.\nProducenten (mottagande index) ska använda värdet från begäran, inte generera ett eget.\npR4: Om owner är samma som den egna instansen ska ingen uppdatering ske (undvika rundgång).\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA-id OID).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
