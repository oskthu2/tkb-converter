# GetSeals — Response - informationsecurity: authorization: pip v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetSeals — Response**

## Logical Model: GetSeals — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-pip/StructureDefinition/getseals | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:GetSeals |
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
  "date" : "2026-10-08T18:30:51+00:00",
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
      "short" : "seal",
      "definition" : "En försegling beskriver vårdgivarens beslut om att begränsa den enskildes åtkomst till sin egen information. Försegling handlar inte om att informationen kan vara till men i medicinskt hänseende för den enskilde, utan om att informationen inte ska vara tillgänglig via självbetjäning på grund av att den enskilde befinner sig i vanmaktssituation. Vårdgivaren kan även använda försegling för att stänga ute vårdnadshavares digitala åtkomst till barns (under 13 år) journaluppgifter. I praktiken förseglas barnets konto, vilket resulterar i att vårdnadshavarna inte kan se barnets information i tjänster som erbjuder vårdnadshavare åtkomst till vårdnadstagarens journaluppgifter. En försegling kan ha olika verksamhetsmässig omfattning, vilket representeras av respektive komposit element.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getseals.seal.patientId",
      "path" : "getseals.seal.patientId",
      "short" : "patientId",
      "definition" : "patientId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getseals.seal.patientId.root",
      "path" : "getseals.seal.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.patientId.iiExtension",
      "path" : "getseals.seal.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.timeCreated",
      "path" : "getseals.seal.timeCreated",
      "short" : "timeCreated",
      "definition" : "timeCreated",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.timeLastUpdated",
      "path" : "getseals.seal.timeLastUpdated",
      "short" : "timeLastUpdated",
      "definition" : "timeLastUpdated",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.validFrom",
      "path" : "getseals.seal.validFrom",
      "short" : "validFrom",
      "definition" : "validFrom",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.validTo",
      "path" : "getseals.seal.validTo",
      "short" : "validTo",
      "definition" : "validTo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.deactivationDate",
      "path" : "getseals.seal.deactivationDate",
      "short" : "deactivationDate",
      "definition" : "deactivationDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal",
      "path" : "getseals.seal.orgUnitSeal",
      "short" : "orgUnitSeal",
      "definition" : "En enhetsförsegling ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar enheten som anges i en enhetsförsegling. Enhet kan vara på godtycklig nivå i vårdgivarens organisationsstruktur. För att få avsedd effekt behöver vårdgivaren som registrerar en enhetsförsegling säkerställa att enheten som anges för försegling motsvarar värden som används i JoL-kontrakten i något av dessa fält: accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId Det gäller oavsett om vårdsystemet genererar HSAid:n eller använder systeminterna enhetsidentiteter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal.orgUnit",
      "path" : "getseals.seal.orgUnitSeal.orgUnit",
      "short" : "orgUnit",
      "definition" : "orgUnit",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal.orgUnit.root",
      "path" : "getseals.seal.orgUnitSeal.orgUnit.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal.orgUnit.iiExtension",
      "path" : "getseals.seal.orgUnitSeal.orgUnit.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal.sealPeriod",
      "path" : "getseals.seal.orgUnitSeal.sealPeriod",
      "short" : "sealPeriod",
      "definition" : "sealPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal.sealPeriod.start",
      "path" : "getseals.seal.orgUnitSeal.sealPeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.orgUnitSeal.sealPeriod.end",
      "path" : "getseals.seal.orgUnitSeal.sealPeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal",
      "path" : "getseals.seal.careProviderSeal",
      "short" : "careProviderSeal",
      "definition" : "En vårdgivarfiltrering ställer krav på att tjänstekonsumenten (enskilds direktåtkomst eller enskilds utlämnande) filtrerar bort vårdinformation som matchar vårdgivaren som anges i en vårdgivarförsegling.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal.careProviderId",
      "path" : "getseals.seal.careProviderSeal.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal.careProviderId.root",
      "path" : "getseals.seal.careProviderSeal.careProviderId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal.careProviderId.iiExtension",
      "path" : "getseals.seal.careProviderSeal.careProviderId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal.sealPeriod",
      "path" : "getseals.seal.careProviderSeal.sealPeriod",
      "short" : "sealPeriod",
      "definition" : "sealPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal.sealPeriod.start",
      "path" : "getseals.seal.careProviderSeal.sealPeriod.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.careProviderSeal.sealPeriod.end",
      "path" : "getseals.seal.careProviderSeal.sealPeriod.end",
      "short" : "end",
      "definition" : "end",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getseals.seal.fullSeal",
      "path" : "getseals.seal.fullSeal",
      "short" : "fullSeal",
      "definition" : "fullSeal Typen har inga element utöver utökningspunkter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    }]
  }
}

```
