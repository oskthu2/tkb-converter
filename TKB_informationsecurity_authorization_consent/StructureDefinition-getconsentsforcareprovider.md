# GetConsentsForCareProvider — Response - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConsentsForCareProvider — Response**

## Logical Model: GetConsentsForCareProvider — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforcareprovider | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetConsentsForCareProvider |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetConsentsForCareProvider (urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-getconsentsforcareprovider.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconsentsforcareprovider.csv), [Excel](StructureDefinition-getconsentsforcareprovider.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconsentsforcareprovider",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforcareprovider",
  "version" : "2.0",
  "name" : "GetConsentsForCareProvider",
  "title" : "GetConsentsForCareProvider — Response",
  "status" : "active",
  "date" : "2026-11-09T03:35:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetConsentsForCareProvider\n(urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforcareprovider",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconsentsforcareprovider",
      "path" : "getconsentsforcareprovider",
      "short" : "GetConsentsForCareProvider — Response",
      "definition" : "Logisk modell för svaret i GetConsentsForCareProvider\n(urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderResponseType)."
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult",
      "short" : "GetAllAssertionsResultType",
      "definition" : "Lista med giltiga samtyckesintyg och eventuellt en lista med ogiltiga samtyckesintyg. Information om det finns fler samtyckesintyg att hämta samt ny starttidpunkt ingår även i svaret.",
      "comment" : "TKB-fält: `getAllAssertionsResult` (`urn:riv:informationsecurity:authorization:consent:2:GetAllAssertionsResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.result",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.result",
      "short" : "ResultType",
      "definition" : "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "comment" : "TKB-fält: `../result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.result.resultCode",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.result.resultCode",
      "short" : "resultCode",
      "definition" : "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
      "comment" : "TKB-fält: `../../resultCode` (`ResultCodeType`, kardinalitet 1..1).\n\n**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/ValueSet/authorization-consent-resultcode-vs"
      }
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.result.resultText",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.result.resultText",
      "short" : "resultText",
      "definition" : "resultText",
      "comment" : "TKB-fält: `../../resultText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.moreOnOrAfter",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.moreOnOrAfter",
      "short" : "moreOnOrAfter",
      "definition" : "moreOnOrAfter",
      "comment" : "TKB-fält: `../moreOnOrAfter` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.hasMore",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.hasMore",
      "short" : "hasMore",
      "definition" : "hasMore",
      "comment" : "TKB-fält: `../hasMore` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions",
      "short" : "PDLAssertionType",
      "definition" : "Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg.",
      "comment" : "TKB-fält: `../assertions` (`PDLAssertionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.assertionId",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.assertionId",
      "short" : "assertionId",
      "definition" : "assertionId",
      "comment" : "TKB-fält: `../../assertionId` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.assertionType",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.assertionType",
      "short" : "assertionType",
      "definition" : "assertionType Tillåtna värden: Consent, Emergency.",
      "comment" : "TKB-fält: `../../assertionType` (`AssertionTypeType`, kardinalitet 1..1).\n\n**Modellanteckning:** assertionType Tillåtna värden: Consent, Emergency.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/ValueSet/authorization-consent-assertiontype-vs"
      }
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.scope",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.scope",
      "short" : "scope",
      "definition" : "scope Tillåtna värden: NationalLevel.",
      "comment" : "TKB-fält: `../../scope` (`ScopeType`, kardinalitet 1..1).\n\n**Modellanteckning:** scope Tillåtna värden: NationalLevel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/ValueSet/authorization-consent-scope-vs"
      }
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.careProviderId",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.careProviderId",
      "short" : "careProviderId",
      "definition" : "careProviderId",
      "comment" : "TKB-fält: `../../careProviderId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.careUnitId",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.careUnitId",
      "short" : "careUnitId",
      "definition" : "careUnitId",
      "comment" : "TKB-fält: `../../careUnitId` (`HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.employeeId",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.employeeId",
      "short" : "employeeId",
      "definition" : "employeeId",
      "comment" : "TKB-fält: `../../employeeId` (`HsaId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.startDate",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.startDate",
      "short" : "startDate",
      "definition" : "startDate",
      "comment" : "TKB-fält: `../../startDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.endDate",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.endDate",
      "short" : "endDate",
      "definition" : "endDate",
      "comment" : "TKB-fält: `../../endDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.ownerId",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.ownerId",
      "short" : "ownerId",
      "definition" : "ownerId",
      "comment" : "TKB-fält: `../../ownerId` (`OwnerId`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.patientId",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.assertions.patientId",
      "short" : "patientId",
      "definition" : "En universellt unik identifierare.",
      "comment" : "TKB-fält: `../../patientId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.cancelledAssertions",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.cancelledAssertions",
      "short" : "CancelledAssertionType",
      "definition" : "Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes.",
      "comment" : "TKB-fält: `../cancelledAssertions` (`CancelledAssertionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.cancelledAssertions.assertionId",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.cancelledAssertions.assertionId",
      "short" : "assertionId",
      "definition" : "assertionId",
      "comment" : "TKB-fält: `../../assertionId` (`Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider.getAllAssertionsResult.cancelledAssertions.cancellationDate",
      "path" : "getconsentsforcareprovider.getAllAssertionsResult.cancelledAssertions.cancellationDate",
      "short" : "cancellationDate",
      "definition" : "cancellationDate",
      "comment" : "TKB-fält: `../../cancellationDate` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
