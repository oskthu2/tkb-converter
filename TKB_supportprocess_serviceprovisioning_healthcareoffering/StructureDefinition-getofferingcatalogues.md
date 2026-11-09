# GetOfferingCatalogues — Response - supportprocess: serviceprovisioning: healthcareoffering v3.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetOfferingCatalogues — Response**

## Logical Model: GetOfferingCatalogues — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getofferingcatalogues | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetOfferingCatalogues |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetOfferingCatalogues (urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-serviceprovisioning-healthcareoffering|current/StructureDefinition/StructureDefinition-getofferingcatalogues.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getofferingcatalogues.csv), [Excel](StructureDefinition-getofferingcatalogues.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getofferingcatalogues",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getofferingcatalogues",
  "version" : "2.0",
  "name" : "GetOfferingCatalogues",
  "title" : "GetOfferingCatalogues — Response",
  "status" : "active",
  "date" : "2026-11-09T03:54:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetOfferingCatalogues\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/getofferingcatalogues",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getofferingcatalogues",
      "path" : "getofferingcatalogues",
      "short" : "GetOfferingCatalogues — Response",
      "definition" : "Logisk modell för svaret i GetOfferingCatalogues\n(urn:riv:supportprocess:serviceprovisioning:healthcareoffering:GetOfferingCataloguesResponder:2, GetOfferingCataloguesResponseType)."
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue",
      "path" : "getofferingcatalogues.offeringCatalogue",
      "short" : "OfferingCatalogueType",
      "definition" : "Utbudskatalog",
      "comment" : "TKB-fält: `OfferingCatalogue` (`OfferingCatalogueType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization",
      "short" : "ProvidingOrganizationType",
      "definition" : "Katalogansvarig organisation",
      "comment" : "TKB-fält: `../providingOrganization` (`ProvidingOrganizationType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization.id",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization.id",
      "short" : "id",
      "definition" : "Organisation id\n\nId för den katalogansvariga organisationen. Innehållet i id styrs av vilken typ av organisation det är.\n\nFör Region, Kommun, Aktiebolag, Handelsbolag anges organisationsnummer (id.root: 1.3.7)\n\nFör Enskild firma anges personnummer (id.root: 1.2.752.129.2.1.3.1)",
      "comment" : "TKB-fält: `../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization.name",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization.name",
      "short" : "name",
      "definition" : "Namn på katalogansvarig organisation.",
      "comment" : "TKB-fält: `../../name` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization.management",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization.management",
      "short" : "management",
      "definition" : "Ägarform\n\nAnger ägarform för den katalogansvariga organisationen.\n\nAnges med kod från kodverket HSA ägarform (OID 1.2.752.129.2.2.1.14) [R14].\n\nObservera att kodverk kan komma att kompletteras över tid vilket medför att nyttjare av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `../../management` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization.publicProvider",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization.publicProvider",
      "short" : "publicProvider",
      "definition" : "Offentlig huvudman\n\nAnger om den katalogansvariga organisationen är en offentlig huvudman.\n\ntrue = offentlig huvudman",
      "comment" : "TKB-fält: `../../publicProvider*` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization.description",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization.description",
      "short" : "DescriptionType",
      "definition" : "Beskrivning av den katalogansvariga organisationen. Om beskrivning anges ska den åtminstone finnas på svenska och vara anpassad för invånare.\n\nDet får endast finnas en beskrivning med samma kombination av språk och roll.",
      "comment" : "TKB-fält: `../../description` (`DescriptionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization.description.text",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization.description.text",
      "short" : "text",
      "definition" : "text",
      "comment" : "TKB-fält: `../../../text` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization.description.language",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization.description.language",
      "short" : "language",
      "definition" : "language",
      "comment" : "TKB-fält: `../../../language` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.providingOrganization.description.role",
      "path" : "getofferingcatalogues.offeringCatalogue.providingOrganization.description.role",
      "short" : "role",
      "definition" : "role",
      "comment" : "TKB-fält: `../../../role` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.interaction",
      "path" : "getofferingcatalogues.offeringCatalogue.interaction",
      "short" : "InteractionType",
      "definition" : "Interaktion\n\nPekar på var utbudskatalogen finns.\n\nEn katalogansvarig organisation kan ha flera kataloger med olika systemadresser.",
      "comment" : "TKB-fält: `../interaction` (`InteractionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.interaction.logicalAddress",
      "path" : "getofferingcatalogues.offeringCatalogue.interaction.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "Logisk adress\n\nLogisk adress som ska användas vid adressering.",
      "comment" : "TKB-fält: `../../logicalAddress` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.interaction.name",
      "path" : "getofferingcatalogues.offeringCatalogue.interaction.name",
      "short" : "name",
      "definition" : "Namn på interaktion",
      "comment" : "TKB-fält: `../../name` (`anyURI`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.interaction.majorVersion",
      "path" : "getofferingcatalogues.offeringCatalogue.interaction.majorVersion",
      "short" : "majorVersion",
      "definition" : "Den majorversion som stöds",
      "comment" : "TKB-fält: `../../majorVersion` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.interaction.minorVersion",
      "path" : "getofferingcatalogues.offeringCatalogue.interaction.minorVersion",
      "short" : "minorVersion",
      "definition" : "Den minorversion som stöds",
      "comment" : "TKB-fält: `../../minorVersion` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getofferingcatalogues.offeringCatalogue.interaction.rivtaVersion",
      "path" : "getofferingcatalogues.offeringCatalogue.interaction.rivtaVersion",
      "short" : "rivtaVersion",
      "definition" : "Rivtaversion\n\nVersion av RIVTA [2.0, 2.1]",
      "comment" : "TKB-fält: `../../rivtaVersion` (`RIVTAVersionEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** rivtaVersion Tillåtna värden: 2.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-serviceprovisioning-healthcareoffering/ValueSet/healthcareoffering-rivtaversion-vs"
      }
    }]
  }
}

```
