# GetSeals — Response - informationsecurity: authorization: pip v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetSeals — Response**

## Logical Model: GetSeals — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetSeals |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetSeals (urn:riv:informationsecurity:authorization:pip:GetSealsResponder:1, GetSealsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-pip|current/StructureDefinition/StructureDefinition-getseals.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getseals.csv), [Excel](StructureDefinition-getseals.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getseals",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals",
  "version" : "1.0",
  "name" : "GetSeals",
  "title" : "GetSeals — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:36:20+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetSeals\n(urn:riv:informationsecurity:authorization:pip:GetSealsResponder:1, GetSealsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getseals",
      "path" : "getseals",
      "short" : "GetSeals — Response",
      "definition" : "Logisk modell för svaret i GetSeals\n(urn:riv:informationsecurity:authorization:pip:GetSealsResponder:1, GetSealsResponseType)."
    },
    {
      "id" : "getseals.seal",
      "path" : "getseals.seal",
      "short" : "SealType",
      "definition" : "En försegling beskriver vårdgivarens beslut om att begränsa den enskildes åtkomst till sin egen information. Försegling handlar inte om att informationen kan vara till men i medicinskt hänseende för den enskilde, utan om att informationen inte ska vara tillgänglig via självbetjäning på grund av att den enskilde befinner sig i vanmaktssituation. Vårdgivaren kan även använda försegling för att stänga ute vårdnadshavares digitala åtkomst till barns (under 13 år) journaluppgifter. I praktiken förseglas barnets konto, vilket resulterar i att vårdnadshavarna inte kan se barnets information i tjänster som erbjuder vårdnadshavare åtkomst till vårdnadstagarens journaluppgifter. En försegling kan ha olika verksamhetsmässig omfattning, vilket representeras av respektive komposit element.",
      "comment" : "TKB-fält: `seal` (`SealType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "getseals-seal-updated-after-created",
        "severity" : "error",
        "human" : "ÖR5: timeLastUpdated får inte vara äldre än timeCreated.",
        "expression" : "timeLastUpdated.toDecimal() >= timeCreated.toDecimal()",
        "source" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals"
      },
      {
        "key" : "getseals-seal-valid-period",
        "severity" : "error",
        "human" : "ÖR4: validTo får inte vara äldre än validFrom.",
        "expression" : "(validFrom.exists() and validTo.exists()) implies validTo.toDecimal() >= validFrom.toDecimal()",
        "source" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals"
      },
      {
        "key" : "getseals-seal-one-scope",
        "severity" : "error",
        "human" : "ÖR1–ÖR3: exakt en av fullSeal, careProviderSeal och orgUnitSeal ska anges i en försegling.",
        "expression" : "fullSeal.count() + careProviderSeal.count() + orgUnitSeal.count() = 1",
        "source" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals"
      }]
    },
    {
      "id" : "getseals.seal.patientId",
      "path" : "getseals.seal.patientId",
      "short" : "patientId",
      "definition" : "patientId",
      "comment" : "TKB-fält: `../patientId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/IIType"
      }],
      "constraint" : [{
        "key" : "getseals-patientid-pnr-sam",
        "severity" : "error",
        "human" : "ÖR6: patientId root ska vara OID för personnummer eller samordningsnummer, och extension ska ha formatet ÅÅÅÅMMDDNNNN utan bindestreck (testsvitens constraints.xml).",
        "expression" : "(root = '1.2.752.129.2.1.3.1' or root = '1.2.752.129.2.1.3.3') and iiExtension.matches('^[0-9]{8}[0-9pPtTfF][0-9]{3}$')",
        "source" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals"
      }]
    },
    {
      "id" : "getseals.seal.timeCreated",
      "path" : "getseals.seal.timeCreated",
      "short" : "timeCreated",
      "definition" : "timeCreated",
      "comment" : "TKB-fält: `../timeCreated` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getseals.seal.timeLastUpdated",
      "path" : "getseals.seal.timeLastUpdated",
      "short" : "timeLastUpdated",
      "definition" : "timeLastUpdated",
      "comment" : "TKB-fält: `../timeLastUpdated` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getseals.seal.validFrom",
      "path" : "getseals.seal.validFrom",
      "short" : "validFrom",
      "definition" : "validFrom",
      "comment" : "TKB-fält: `../validFrom` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getseals.seal.validTo",
      "path" : "getseals.seal.validTo",
      "short" : "validTo",
      "definition" : "validTo",
      "comment" : "TKB-fält: `../validTo` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getseals.seal.deactivationDate",
      "path" : "getseals.seal.deactivationDate",
      "short" : "deactivationDate",
      "definition" : "deactivationDate",
      "comment" : "TKB-fält: `../deactivationDate` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal",
      "path" : "getseals.seal.orgUnitSeal",
      "short" : "OrgUnitSealType",
      "definition" : "En enhetsförsegling ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar enheten som anges i en enhetsförsegling. Enhet kan vara på godtycklig nivå i vårdgivarens organisationsstruktur. För att få avsedd effekt behöver vårdgivaren som registrerar en enhetsförsegling säkerställa att enheten som anges för försegling motsvarar värden som används i JoL-kontrakten i något av dessa fält: accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId Det gäller oavsett om vårdsystemet genererar HSAid:n eller använder systeminterna enhetsidentiteter.",
      "comment" : "TKB-fält: `../orgUnitSeal` (`OrgUnitSealType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal.orgUnit",
      "path" : "getseals.seal.orgUnitSeal.orgUnit",
      "short" : "orgUnit",
      "definition" : "orgUnit",
      "comment" : "TKB-fält: `../../orgUnit` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/IIType"
      }],
      "constraint" : [{
        "key" : "getseals-orgunit-hsa",
        "severity" : "error",
        "human" : "root ska vara OID för HSA-id (1.2.752.129.2.1.4.1) enligt testsvitens constraints.xml.",
        "expression" : "root = '1.2.752.129.2.1.4.1'",
        "source" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal.sealPeriod",
      "path" : "getseals.seal.orgUnitSeal.sealPeriod",
      "short" : "sealPeriod",
      "definition" : "sealPeriod",
      "comment" : "TKB-fält: `../../sealPeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal",
      "path" : "getseals.seal.careProviderSeal",
      "short" : "CareProviderSealType",
      "definition" : "En vårdgivarfiltrering ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar vårdgivaren som anges i en vårdgivarförsegling.",
      "comment" : "TKB-fält: `../careProviderSeal` (`CareProviderSealType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal.careProviderId",
      "path" : "getseals.seal.careProviderSeal.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "comment" : "TKB-fält: `../../careProviderId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/IIType"
      }],
      "constraint" : [{
        "key" : "getseals-careproviderid-hsa",
        "severity" : "error",
        "human" : "root ska vara OID för HSA-id (1.2.752.129.2.1.4.1) enligt testsvitens constraints.xml.",
        "expression" : "root = '1.2.752.129.2.1.4.1'",
        "source" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal.sealPeriod",
      "path" : "getseals.seal.careProviderSeal.sealPeriod",
      "short" : "sealPeriod",
      "definition" : "sealPeriod",
      "comment" : "TKB-fält: `../../sealPeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getseals.seal.fullSeal",
      "path" : "getseals.seal.fullSeal",
      "short" : "FullSealType",
      "definition" : "fullSeal",
      "comment" : "TKB-fält: `../fullSeal` (`FullSealType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    }]
  }
}

```
