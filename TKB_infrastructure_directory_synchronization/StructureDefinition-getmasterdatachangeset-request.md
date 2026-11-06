# GetMasterDataChangeSet — Request - infrastructure: directory: synchronization v1.0.0-rc3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMasterDataChangeSet — Request**

## Logical Model: GetMasterDataChangeSet — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset-request | *Version*:1.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetMasterDataChangeSetRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetMasterDataChangeSet (urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-synchronization|current/StructureDefinition/StructureDefinition-getmasterdatachangeset-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmasterdatachangeset-request.csv), [Excel](StructureDefinition-getmasterdatachangeset-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmasterdatachangeset-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset-request",
  "version" : "1.0",
  "name" : "GetMasterDataChangeSetRequest",
  "title" : "GetMasterDataChangeSet — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:31:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetMasterDataChangeSet\n(urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-synchronization/StructureDefinition/getmasterdatachangeset-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmasterdatachangeset-request",
      "path" : "getmasterdatachangeset-request",
      "short" : "GetMasterDataChangeSet — Request",
      "definition" : "Logisk modell för begäran i GetMasterDataChangeSet\n(urn:riv:infrastructure:directory:synchronization:GetMasterDataChangeSetResponder:1, GetMasterDataChangeSetType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getmasterdatachangeset-request.logicalAddress",
      "path" : "getmasterdatachangeset-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. The organisation number of the careservice provider",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity",
      "path" : "getmasterdatachangeset-request.masterDataEntity",
      "short" : "masterDataEntity",
      "definition" : "Masterdataentitet\n\nAngivelse av vilken typ masterdata som begäran avser.",
      "comment" : "TKB-fält: `masterDataEntity` (`CVType`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.cvCode",
      "path" : "getmasterdatachangeset-request.masterDataEntity.cvCode",
      "short" : "cvCode",
      "definition" : "Kod som anger typ av masterdata i källan.\n\nDefinierar vilken typ av information i masterdatakällan som efterfrågas med hjälp av kod i kodsystem.",
      "comment" : "TKB-fält: `../code` (`String`, kardinalitet 1).\n\n**Modellanteckning:** cvCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.codeSystem",
      "path" : "getmasterdatachangeset-request.masterDataEntity.codeSystem",
      "short" : "codeSystem",
      "definition" : "Kodsystem som anger masterdatakälla.\n\nOID för t.ex. utbud",
      "comment" : "TKB-fält: `../codeSystem` (`String`, kardinalitet 1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.codeSystemName",
      "path" : "getmasterdatachangeset-request.masterDataEntity.codeSystemName",
      "short" : "codeSystemName",
      "definition" : "Namn på kodsystem",
      "comment" : "TKB-fält: `../codeSystemName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.codeSystemVersion",
      "path" : "getmasterdatachangeset-request.masterDataEntity.codeSystemVersion",
      "short" : "codeSystemVersion",
      "definition" : "Versionsnummer för kodsystem",
      "comment" : "TKB-fält: `../codeSystemVersion` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.displayName",
      "path" : "getmasterdatachangeset-request.masterDataEntity.displayName",
      "short" : "displayName",
      "definition" : "Textuell beskrivning av det som koden anger.\n\nKoden beskriven i fritext.",
      "comment" : "TKB-fält: `../displayName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.masterDataEntity.originalText",
      "path" : "getmasterdatachangeset-request.masterDataEntity.originalText",
      "short" : "originalText",
      "definition" : "Skall ej anges",
      "comment" : "TKB-fält: `../originalText` (`String`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.category",
      "path" : "getmasterdatachangeset-request.category",
      "short" : "category",
      "definition" : "Kategori\n\nKategorisering av förändring. Enum med tillåtna värden: create, update, delete.",
      "comment" : "TKB-fält: `category` (`Enum`, kardinalitet 0..*).\n\nObs: modellen anger 0..1 där TKB:n anger 0..*.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-directory-synchronization/ValueSet/directory-synchronization-category-vs"
      }
    },
    {
      "id" : "getmasterdatachangeset-request.timePeriod",
      "path" : "getmasterdatachangeset-request.timePeriod",
      "short" : "timePeriod",
      "definition" : "Tidsintervall för förändringar.\n\nBegränsning av sökning i tid. Resultatet innehåller information om poster som förändrats i masterdatakällan under angiven tidsperiod. Minst en av start- och endattributen ska anges om attributet timeInterval anges.",
      "comment" : "TKB-fält: `timePeriod` (`TimePeriodType`, kardinalitet 0..1).\n\n**Modellanteckning:** Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.timePeriod.start",
      "path" : "getmasterdatachangeset-request.timePeriod.start",
      "short" : "start",
      "definition" : "Starttid\n\nStarttid för när en post förändrats. Endast katalogposter som förändrats efter denna tidpunkt ska tas med i svaret.",
      "comment" : "TKB-fält: `../start` (`TimeStamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmasterdatachangeset-request.timePeriod.end",
      "path" : "getmasterdatachangeset-request.timePeriod.end",
      "short" : "end",
      "definition" : "Sluttid\n\nSlut för när en post förändrats. Endast katalogposter som förändrats före denna tidpunkt ska tas med i svaret.",
      "comment" : "TKB-fält: `../end` (`TimeStamp`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
