# GetHealthCareUnitMembers - infrastructure: directory: organization v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthCareUnitMembers**

## Logical Model: GetHealthCareUnitMembers 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitmembers | *Version*:2.1 |
| Active as of 2026-11-09 | *Computable Name*:GetHealthCareUnitMembers |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetHealthCareUnitMembers (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitMembers:2). Representerar responsens informationsstruktur — vårdenhet med alla kopplade enheter. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-directory-organization|current/StructureDefinition/StructureDefinition-gethealthcareunitmembers.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcareunitmembers.csv), [Excel](StructureDefinition-gethealthcareunitmembers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcareunitmembers",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitmembers",
  "version" : "2.1",
  "name" : "GetHealthCareUnitMembers",
  "title" : "GetHealthCareUnitMembers",
  "status" : "active",
  "date" : "2026-11-09T03:37:41+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetHealthCareUnitMembers\n(RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitMembers:2).\nRepresenterar responsens informationsstruktur — vårdenhet med alla kopplade enheter.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-directory-organization/StructureDefinition/gethealthcareunitmembers",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcareunitmembers",
      "path" : "gethealthcareunitmembers",
      "short" : "GetHealthCareUnitMembers",
      "definition" : "Logisk modell för tjänstekontraktet GetHealthCareUnitMembers\n(RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitMembers:2).\nRepresenterar responsens informationsstruktur — vårdenhet med alla kopplade enheter."
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers",
      "short" : "Information om vårdenheten och dess kopplade enheter",
      "definition" : "Information om vårdenheten och dess kopplade enheter",
      "comment" : "TKB-fält: `healthCareUnitMembers` (`HealthCareUnitMembersType`, kardinalitet 0..1).\n\n**Modellanteckning:** Aggregerat objekt med vårdenhetens information, tillhörande vårdgivare och lista av kopplade enheter.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitName",
      "short" : "Vårdenhetens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5].",
      "definition" : "Vårdenhetens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitPublicName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitPublicName",
      "short" : "Publikt officiellt namn på vårdenheten.",
      "definition" : "Publikt officiellt namn. Ref. alternativ namnvisning (displayOption), organisationsnamn (o), enhetsnamn (ou), objektnamn (cn), resp geografisk plats (l, localityName) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitPublicName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitHsaId",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitHsaId",
      "short" : "Vårdenhetens HSA-id. Ref. hsaIdentity [R5].",
      "definition" : "Vårdenhetens HSA-id. Ref. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitStartDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitStartDate",
      "short" : "Startdatum för vårdenhetens verksamhet. Ref. startDate [R5].",
      "definition" : "Startdatum för vårdenhetens verksamhet. Ref. startdatum (startDate) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitEndDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitEndDate",
      "short" : "Slutdatum för vårdenhetens verksamhet. Ref. endDate [R5].",
      "definition" : "Slutdatum för vårdenhetens verksamhet. Ref. slutdatum (endDate) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitPrescriptionCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitPrescriptionCode",
      "short" : "Vårdenhetens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5].",
      "definition" : "Vårdenhetens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5]",
      "comment" : "TKB-fält: `..healthCareUnitPrescriptionCode` (`String`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.telephoneNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.telephoneNumber",
      "short" : "Vårdenhetens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5].",
      "definition" : "Vårdenhetens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5]",
      "comment" : "TKB-fält: `..telephoneNumber` (`String`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.postalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.postalAddress",
      "short" : "Vårdenhetens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5].",
      "definition" : "Vårdenhetens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5]",
      "comment" : "TKB-fält: `..postalAddress` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.postalAddress.addressLine",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.postalAddress.addressLine",
      "short" : "Adressrader.",
      "definition" : "Adressrader",
      "comment" : "TKB-fält: `.. ..addressLine` (`String`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress",
      "short" : "Vårdenhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5].",
      "definition" : "Vårdenhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5]",
      "comment" : "TKB-fält: `..structuredPostalAddress` (`structuredPostalAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.addressee",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.addressee",
      "short" : "Adressat.",
      "definition" : "Adressat",
      "comment" : "TKB-fält: `.. ..addressee` (`String`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.street",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.street",
      "short" : "Gata.",
      "definition" : "Gata",
      "comment" : "TKB-fält: `.. ..street` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.premisesNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.premisesNumber",
      "short" : "Adressplatsnummer.",
      "definition" : "Adressplatsnummer",
      "comment" : "TKB-fält: `.. ..premisesNumber` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.premisesLetter",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.premisesLetter",
      "short" : "Adressplatslittera.",
      "definition" : "Adressplatslittera",
      "comment" : "TKB-fält: `.. ..premisesLetter` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.postCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.postCode",
      "short" : "Postnummer.",
      "definition" : "Postnummer",
      "comment" : "TKB-fält: `.. ..postCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.town",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.structuredPostalAddress.town",
      "short" : "Postort.",
      "definition" : "Postort",
      "comment" : "TKB-fält: `.. ..town` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.postalCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.postalCode",
      "short" : "Vårdenhetens postnummer. Ref. postnummer (postalCode) [R5].",
      "definition" : "Vårdenheten postnummer där verksamheten bedrivs. Ref. postnummer (postalCode) [R5]",
      "comment" : "TKB-fält: `..postalCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.feignedhealthCareUnit",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.feignedhealthCareUnit",
      "short" : "true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "definition" : "true: om vårdenheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]",
      "comment" : "TKB-fält: `..feignedhealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.archivedHealthCareUnit",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.archivedHealthCareUnit",
      "short" : "true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "definition" : "true: om vårdenheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]",
      "comment" : "TKB-fält: `..archivedHealthCareUnit` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider",
      "short" : "Den vårdgivare som vårdenheten tillhör",
      "definition" : "Den vårdgivare som vårdenheten tillhör",
      "comment" : "TKB-fält: `..healthCareProvider` (`HealthCareProviderType`, kardinalitet 1..1).\n\n**Modellanteckning:** Aggregerat objekt med information om tillhörande vårdgivare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderName",
      "short" : "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5].",
      "definition" : "Vårdgivarens namn. Ref. organisationsnamn (o) resp. enhetsnamn (ou) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderPublicName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderPublicName",
      "short" : "Publikt officiellt namn på vårdgivaren.",
      "definition" : "Publikt officiellt namn. Ref. alternativ namnvisning (displayOption) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderPublicName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderHsaId",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderHsaId",
      "short" : "Vårdgivarens HSA-id. Ref. hsaIdentity [R5].",
      "definition" : "Vårdgivarens HSA-id. Ref. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderOrgNo",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderOrgNo",
      "short" : "Vårdgivarens organisationsnummer.",
      "definition" : "Vårdgivarens organisationsnummer",
      "comment" : "TKB-fält: `.. ..healthCareProviderOrgNo` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderStartDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderStartDate",
      "short" : "Startdatum för Vårdgivarens verksamhet. Ref. startDate [R5].",
      "definition" : "Startdatum för Vårdgivarens verksamhet. Ref. startdatum (startDate) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderEndDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderEndDate",
      "short" : "Slutdatum för Vårdgivarens verksamhet. Ref. endDate [R5].",
      "definition" : "Slutdatum för Vårdgivarens verksamhet. Ref. slutdatum (endDate) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderPrescriptionCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.healthCareProviderPrescriptionCode",
      "short" : "Vårdgivarens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5].",
      "definition" : "Vårdgivarens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareProviderPrescriptionCode` (`String`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.telephoneNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.telephoneNumber",
      "short" : "Vårdgivarens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5].",
      "definition" : "Vårdgivarens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5]",
      "comment" : "TKB-fält: `.. ..telephoneNumber` (`String`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalAddress",
      "short" : "Vårdgivarens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5].",
      "definition" : "Vårdgivarens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5]",
      "comment" : "TKB-fält: `.. ..postalAddress` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalAddress.addressLine",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalAddress.addressLine",
      "short" : "Adressrader.",
      "definition" : "Adressrader",
      "comment" : "TKB-fält: `.. .. ..addressLine` (`String`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress",
      "short" : "Vårdgivarens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5].",
      "definition" : "Vårdgivarens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.addressee",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.addressee",
      "short" : "Adressat.",
      "definition" : "Adressat.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.street",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.street",
      "short" : "Gata.",
      "definition" : "Gata.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.premisesNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.premisesNumber",
      "short" : "Adressplatsnummer.",
      "definition" : "Adressplatsnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.premisesLetter",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.premisesLetter",
      "short" : "Adressplatslittera.",
      "definition" : "Adressplatslittera.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.postCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.postCode",
      "short" : "Postnummer.",
      "definition" : "Postnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.town",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.structuredPostalAddress.town",
      "short" : "Postort.",
      "definition" : "Postort.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.postalCode",
      "short" : "Vårdgivarens postnummer. Ref. postnummer (postalCode) [R5].",
      "definition" : "Vårdgivarens postnummer. Ref. postnummer (postalCode) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.feignedHealthCareProvider",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.feignedHealthCareProvider",
      "short" : "true: om Vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "definition" : "true: om Vårdgivaren är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.archivedHealthCareProvider",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareProvider.archivedHealthCareProvider",
      "short" : "true: om Vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "definition" : "true: om Vårdgivaren är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember",
      "short" : "Information om en kopplad enhet",
      "definition" : "Information om en kopplad enhet",
      "comment" : "TKB-fält: `..healthCareUnitMember` (`HealthCareUnitMemberType`, kardinalitet 0..*).\n\n**Modellanteckning:** Lista av kopplade enheter (mottagningar, avdelningar) som ingår i vårdenheten.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberName",
      "short" : "Den kopplade enhetens namn. Ref. organisationsnamn (o), enhetsnamn (ou) resp. objektnamn (cn) [R5].",
      "definition" : "Den kopplade enhetens namn. Ref. organisationsnamn (o), enhetsnamn (ou) resp. objektnamn (cn) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPublicName",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPublicName",
      "short" : "Publikt officiellt namn på den kopplade enheten.",
      "definition" : "Publikt officiellt namn. Ref. alternativ namnvisning (displayOption) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberPublicName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberHsaId",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberHsaId",
      "short" : "Den kopplade enhetens HSA-id. Ref. hsaIdentity [R5].",
      "definition" : "Den kopplade enhetens HSA-id. Ref. HSA-id (hsaIdentity) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStartDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStartDate",
      "short" : "Startdatum för kopplade enhetens verksamhet. Ref. startDate [R5].",
      "definition" : "Startdatum för kopplade enhetens verksamhet. Ref. startdatum (startDate) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberEndDate",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberEndDate",
      "short" : "Slutdatum för kopplade enhetens verksamhet. Ref. endDate [R5].",
      "definition" : "Slutdatum för kopplade enhetens verksamhet. Ref. slutdatum (endDate) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPrescriptionCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPrescriptionCode",
      "short" : "Den kopplade enhetens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5].",
      "definition" : "Den kopplade enhetens arbetsplatskod(-er). Ref. arbetsplatskod (unitPrescriptionCode) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberPrescriptionCode` (`String`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberTelephoneNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberTelephoneNumber",
      "short" : "Den kopplade enhetens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5].",
      "definition" : "Den kopplade enhetens publika direkttelefonnummer. Ref. direkttelefon (telephoneNumber) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberTelephoneNumber` (`String`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPostalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPostalAddress",
      "short" : "Den kopplade enhetens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5].",
      "definition" : "Den kopplade enhetens postadress i ostrukturerat format. Ref. postadress (postalAddress) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberPostalAddress` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPostalAddress.addressLine",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPostalAddress.addressLine",
      "short" : "Adressrader.",
      "definition" : "Adressrader",
      "comment" : "TKB-fält: `.. .. ..addressLine` (`String`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress",
      "short" : "Den kopplade enhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5].",
      "definition" : "Den kopplade enhetens postadress i strukturerat format. Ref. Strukturerad postadress (hsaPostalAddress) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberStructuredPostalAddress` (`structuredPostalAddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.addressee",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.addressee",
      "short" : "Adressat.",
      "definition" : "Adressat",
      "comment" : "TKB-fält: `.. .. ..addressee` (`String`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.street",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.street",
      "short" : "Gata.",
      "definition" : "Gata",
      "comment" : "TKB-fält: `.. .. ..street` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.premisesNumber",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.premisesNumber",
      "short" : "Adressplatsnummer.",
      "definition" : "Adressplatsnummer",
      "comment" : "TKB-fält: `.. .. ..premisesNumber` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.premisesLetter",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.premisesLetter",
      "short" : "Adressplatslittera.",
      "definition" : "Adressplatslittera",
      "comment" : "TKB-fält: `.. .. ..premisesLetter` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.postCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.postCode",
      "short" : "Postnummer.",
      "definition" : "Postnummer",
      "comment" : "TKB-fält: `.. .. ..postCode` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.town",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberStructuredPostalAddress.town",
      "short" : "Postort.",
      "definition" : "Postort",
      "comment" : "TKB-fält: `.. .. ..town` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPostalCode",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.healthCareUnitMemberPostalCode",
      "short" : "Den kopplade enhetens postnummer. Ref. postnummer (postalCode) [R5].",
      "definition" : "Den kopplade enhetens postnummer för där verksamheten bedrivs. Ref. postnummer (postalCode) [R5]",
      "comment" : "TKB-fält: `.. ..healthCareUnitMemberPostalCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.feignedHealthCareUnitMember",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.feignedHealthCareUnitMember",
      "short" : "true: om enheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5].",
      "definition" : "true: om enheten är ett fingerat objekt. Ref. hjälpklassen Fingerat objekt (hsaFeignedObject) [R5]",
      "comment" : "TKB-fält: `.. ..feignedHealthCareUnitMember` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.archivedHealthCareUnitMember",
      "path" : "gethealthcareunitmembers.healthCareUnitMembers.healthCareUnitMember.archivedHealthCareUnitMember",
      "short" : "true: om enheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5].",
      "definition" : "true: om enheten är ett arkiverat objekt. Ref. hjälpklassen arkiverat objekt (hsaArchivedObject) [R5]",
      "comment" : "TKB-fält: `.. ..archivedHealthCareUnitMember` (`Boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
