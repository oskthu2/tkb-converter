# GetConsentsForPatient - ehr: patientconsent — Samtyckeshantering v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConsentsForPatient**

## Logical Model: GetConsentsForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforpatient | *Version*:1.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetConsentsForPatient |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetConsentsForPatient (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1). Representerar responsens informationsstruktur. 
Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation. Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats, makulerade eller återkallade) returneras ej. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientconsent|current/StructureDefinition/StructureDefinition-getconsentsforpatient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconsentsforpatient.csv), [Excel](StructureDefinition-getconsentsforpatient.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconsentsforpatient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforpatient",
  "version" : "1.0.1",
  "name" : "GetConsentsForPatient",
  "title" : "GetConsentsForPatient",
  "status" : "draft",
  "date" : "2026-09-09T16:54:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetConsentsForPatient\n(RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.\nMed giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som\nunderlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats,\nmakulerade eller återkallade) returneras ej.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientconsent/StructureDefinition/getconsentsforpatient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconsentsforpatient",
      "path" : "getconsentsforpatient",
      "short" : "GetConsentsForPatient",
      "definition" : "Logisk modell för tjänstekontraktet GetConsentsForPatient\n(RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1).\nRepresenterar responsens informationsstruktur.\n\nTjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.\nMed giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som\nunderlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats,\nmakulerade eller återkallade) returneras ej."
    },
    {
      "id" : "getconsentsforpatient.result",
      "path" : "getconsentsforpatient.result",
      "short" : "Statusinformation för anropet",
      "definition" : "Statusinformation för anropet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconsentsforpatient.result.resultCode",
      "path" : "getconsentsforpatient.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod från samtyckestjänsten. OK innebär att transaktionen utfördes. Alla andra koder innebär att\nåtgärden inte genomfördes. Kodat enligt ResultCodeCS.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getconsentsforpatient.result.resultText",
      "path" : "getconsentsforpatient.result.resultText",
      "short" : "Fritext beskrivning av resultatet",
      "definition" : "Fritext beskrivning av resultatet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions",
      "path" : "getconsentsforpatient.pdlAssertions",
      "short" : "Lista med giltiga PDL-intyg för patient",
      "definition" : "Lista med giltiga PDL-intyg för patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.assertionId",
      "path" : "getconsentsforpatient.pdlAssertions.assertionId",
      "short" : "Unik identifierare för intyget (UUID-format, max 36 tecken)",
      "definition" : "Unik identifierare för intyget (UUID-format, max 36 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.assertionType",
      "path" : "getconsentsforpatient.pdlAssertions.assertionType",
      "short" : "Typ av intyg (Consent eller Emergency)",
      "definition" : "Typ av intyg (Consent eller Emergency)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/assertiontype-vs"
      }
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.scope",
      "path" : "getconsentsforpatient.pdlAssertions.scope",
      "short" : "Omfång/tillämpningsområde för intyget",
      "definition" : "Omfång/tillämpningsområde för intyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientconsent/ValueSet/scope-vs"
      }
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.patientId",
      "path" : "getconsentsforpatient.pdlAssertions.patientId",
      "short" : "Patientens personnummer eller samordningsnummer (max 12 tecken)",
      "definition" : "Patientens personnummer eller samordningsnummer (max 12 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.careProviderId",
      "path" : "getconsentsforpatient.pdlAssertions.careProviderId",
      "short" : "HSA-id på vårdgivare som intyget gäller för (max 32 tecken)",
      "definition" : "Identifierare för vårdgivare. system = urn:oid:1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.careUnitId",
      "path" : "getconsentsforpatient.pdlAssertions.careUnitId",
      "short" : "HSA-id på vårdenhet som intyget gäller för (max 32 tecken)",
      "definition" : "HSA-id på vårdenhet som intyget gäller för (max 32 tecken)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.employeeId",
      "path" : "getconsentsforpatient.pdlAssertions.employeeId",
      "short" : "HSA-id för medarbetare om samtycket är personligt (max 32 tecken)",
      "definition" : "HSA-id för medarbetare om samtycket är personligt (max 32 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.startDate",
      "path" : "getconsentsforpatient.pdlAssertions.startDate",
      "short" : "Startdatum för intygets giltighetstid",
      "definition" : "Startdatum för intygets giltighetstid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.endDate",
      "path" : "getconsentsforpatient.pdlAssertions.endDate",
      "short" : "Slutdatum för intygets giltighetstid (om inget slutdatum gäller samtycket tills återkallat)",
      "definition" : "Slutdatum för intygets giltighetstid (om inget slutdatum gäller samtycket tills återkallat)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforpatient.pdlAssertions.ownerId",
      "path" : "getconsentsforpatient.pdlAssertions.ownerId",
      "short" : "Teknisk identifierare för systemet som registrerade artifakten (max 512 tecken)",
      "definition" : "Teknisk identifierare för systemet som registrerade artifakten (max 512 tecken)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
