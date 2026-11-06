# CreateListing — Request - supportprocess: logistics: carelisting v2.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateListing — Request**

## Logical Model: CreateListing — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting-request | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:CreateListingRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i CreateListing (urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-carelisting|current/StructureDefinition/StructureDefinition-createlisting-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createlisting-request.csv), [Excel](StructureDefinition-createlisting-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createlisting-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting-request",
  "version" : "2.0",
  "name" : "CreateListingRequest",
  "title" : "CreateListing — Request",
  "status" : "active",
  "date" : "2026-11-06T21:53:25+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i CreateListing\n(urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/StructureDefinition/createlisting-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createlisting-request",
      "path" : "createlisting-request",
      "short" : "CreateListing — Request",
      "definition" : "Logisk modell för begäran i CreateListing\n(urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "createlisting-request.logicalAddress",
      "path" : "createlisting-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The region code (länskod)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.actor",
      "path" : "createlisting-request.actor",
      "short" : "actor",
      "definition" : "Den aktör som utför handlingen. Aktören kan exempelvis vara invånaren eller vårdnadshavare som utför åtgärden åt invånaren. Inga andra aktörer tillåts nyttja detta tjänstekontakt.",
      "comment" : "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.actor.actorId",
      "path" : "createlisting-request.actor.actorId",
      "short" : "actorId",
      "definition" : "Id för den aktören som utför handlingen.",
      "comment" : "TKB-fält: `actor.actorId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.actor.actorId.root",
      "path" : "createlisting-request.actor.actorId.root",
      "short" : "root",
      "definition" : "OID som visar typ av id.\n\nOm aktören representeras av invånare eller vårdnadshavare kan OID vara:\n\n”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.\n\n” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV\n\nOm aktören är en organisation ska ett HSAId förmedlas som pekar ut organisationen. Fältet sätts då till ” 1.2.752.129.2.1.4.1”",
      "comment" : "TKB-fält: `actor.actorId.root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.actor.actorId.iIExtension",
      "path" : "createlisting-request.actor.actorId.iIExtension",
      "short" : "iIExtension",
      "definition" : "Id för aktören som kan vara ett personnummer eller samordningsnummer om aktören är invånare eller vårdnadshavare, alternativt ett organisations-HSAId om aktören är en organisation.",
      "comment" : "TKB-fält: `actor.actorId.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.actor.actorType",
      "path" : "createlisting-request.actor.actorType",
      "short" : "actorType",
      "definition" : "actorType",
      "comment" : "TKB-fält: `../actorType` (`ActorTypeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-logistics-carelisting/ValueSet/carelisting-actortype-vs"
      }
    },
    {
      "id" : "createlisting-request.personId",
      "path" : "createlisting-request.personId",
      "short" : "personId",
      "definition" : "Invånares personnummer",
      "comment" : "TKB-fält: `personId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.personId.root",
      "path" : "createlisting-request.personId.root",
      "short" : "root",
      "definition" : "OID som visar typ av person-id som förmedlas. Kan vara:\n\n”1.2.752.129.2.1.3.1” = Person-id för någon som är folkbokförd i Sverige enligt SKV704.\n\n” 1.2.752.129.2.1.3.3” = Samordningsnummer, SKV",
      "comment" : "TKB-fält: `personId.root` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.personId.iIExtension",
      "path" : "createlisting-request.personId.iIExtension",
      "short" : "iIExtension",
      "definition" : "Personnummer eller samordningsnummer, uttrycks med sekel och utan bindestreck.",
      "comment" : "TKB-fält: `personId.extension` (`String`).\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.healthcareFacilityHSAId",
      "path" : "createlisting-request.healthcareFacilityHSAId",
      "short" : "healthcareFacilityHSAId",
      "definition" : "Den valda listningsbara mottagningens HSAId.\n\nEn producent bör kunna hantera HSAId:n som uttrycks både med versaler eller gemener.\n\nExempelvis är:\n\n”se12345-xyz” = ”SE12345-XYZ”",
      "comment" : "TKB-fält: `healthcareFacilityHSAId` (`HSAIdType / (string)`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType",
      "path" : "createlisting-request.listingType",
      "short" : "listingType",
      "definition" : "Kod för listningstyp. Denna kod har tidigare hämtats från de listningstyper som vald region stödjer, exempelvis via tjänstekontraktet GetListingTypes.",
      "comment" : "TKB-fält: `listingType` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.listingType.cVCode",
      "path" : "createlisting-request.listingType.cVCode",
      "short" : "cVCode",
      "definition" : "Kod för listningstypen. Om listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara PV. Regioner har möjlighet att definiera egna regionala listningstyper. Det är i sådant fall upp till regionen att upprätta och förvalta det regionala kodverket.",
      "comment" : "TKB-fält: `listingType.code` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** cVCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.codeSystem",
      "path" : "createlisting-request.listingType.codeSystem",
      "short" : "codeSystem",
      "definition" : "Sätts till den OID, urn eller liknande som visar på från vilket kodverk den angivna koden innefattas i.\n\nOm listningstypen motsvarar den nationella listningstypen för primärvård (i enlighet med det fria vårdvalet) ska värdet vara 1.2.752.129.5.1.27.\n\nhttps://inera.atlassian.net/wiki/download/attachments/2648506471/Kv%20nationella%20listningstyper.xlsx?api=v2",
      "comment" : "TKB-fält: `listingType.codeSystem` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.codeSystemName",
      "path" : "createlisting-request.listingType.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "codeSystemName",
      "comment" : "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.codeSystemVersion",
      "path" : "createlisting-request.listingType.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "codeSystemVersion",
      "comment" : "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.displayName",
      "path" : "createlisting-request.listingType.displayName",
      "short" : "displayName",
      "definition" : "Fältet kan utelämnas av konsument. Det är producentens (regionens listningssystem) ansvar att tillhandahålla listningstypens namn. En producent kan ignorera detta värde om konsument ändå skickar med ett namn på listningtyp.",
      "comment" : "TKB-fält: `listingType.displayName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.listingType.originalText",
      "path" : "createlisting-request.listingType.originalText",
      "short" : "originalText",
      "definition" : "originalText",
      "comment" : "TKB-fält: `../originalText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.healthcarePersonnel",
      "path" : "createlisting-request.healthcarePersonnel",
      "short" : "healthcarePersonnel",
      "definition" : "Vald vårdpersonals-/husläkares HSAId.\n\nDet är frivilligt för mottagningen att dessutom erbjuda val av vårdpersonal. Mottagningens valbara vårdpersonal fås genom tjänstekontraktet GetAvailableHealthcarePersonnel.\n\nObservera:\n\nOm invånaren redan är listad på mottagningen sedan tidigare ska detta anrop ses som att invånaren endast vill förändra sitt val av fast läkarkontakt.",
      "comment" : "TKB-fält: `healthcarePersonnel` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.addToQueue",
      "path" : "createlisting-request.addToQueue",
      "short" : "addToQueue",
      "definition" : "Förmedlar om invånare vill ställa sig i kö om den tilltänkta listningsbara mottagningen inte tillåts ta emot mer än ett maximalt antal listade invånare och om mottagningen erbjuder möjlighet att ställa sig i listningskö. Huruvida en mottagning erbjuder listningskö eller inte kan hämtas via tjänstekontraktet GetAvailableHealthcareFacilities.\n\n”TRUE” = Invånare vill ställa sig i listningskö.\n\n”FALSE” eller att attributet är utelämnat = Invånare vill inte ställa sig i listningskö eller vill gå ur kön.\n\nObservera:\n\nOm invånaren redan står i kö på denna mottagning och addToQueue = FALSE ska detta tolkas som att invånaren vill gå ur kön.",
      "comment" : "TKB-fält: `addToQueue` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "createlisting-request.homeCounty",
      "path" : "createlisting-request.homeCounty",
      "short" : "homeCounty",
      "definition" : "Invånares folkbokföringsregion.\n\nKan utelämnas om listningen gäller i hemregionen (folkbokföringsregionen), d v s om\n\nlogicalAddress = folkbokföringsregion\n\noch\n\nhealthcareFacilityHSAId pekar på en mottagning som har vårdavtal med regionen och är listningsbar där.\n\nAnnars är fältet obligatoriskt.",
      "comment" : "TKB-fält: `homeCounty` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.homeCounty.root",
      "path" : "createlisting-request.homeCounty.root",
      "short" : "root",
      "definition" : "OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18)",
      "comment" : "TKB-fält: `homeCounty.root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.homeCounty.iIExtension",
      "path" : "createlisting-request.homeCounty.iIExtension",
      "short" : "iIExtension",
      "definition" : "Länskod",
      "comment" : "TKB-fält: `homeCounty.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.newListingCounty",
      "path" : "createlisting-request.newListingCounty",
      "short" : "newListingCounty",
      "definition" : "Pålistningsregion, d v s den region där vald mottagning har ett vårdavtal och är listningsbar i.\n\nKan utelämnas om listningen gäller i hemregionen (folkbokföringsregionen)",
      "comment" : "TKB-fält: `newListingCounty` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createlisting-request.newListingCounty.root",
      "path" : "createlisting-request.newListingCounty.root",
      "short" : "root",
      "definition" : "OID för länskod. (kv/län -- 1.2.752.129.2.2.1.18)",
      "comment" : "TKB-fält: `newListingCounty.root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createlisting-request.newListingCounty.iIExtension",
      "path" : "createlisting-request.newListingCounty.iIExtension",
      "short" : "iIExtension",
      "definition" : "Länskod",
      "comment" : "TKB-fält: `newListingCounty.extension` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** iIExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
