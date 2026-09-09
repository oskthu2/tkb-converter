# GetCertificate - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCertificate**

## Logical Model: GetCertificate 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/getcertificate | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:GetCertificate |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetCertificate (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:2). Representerar responsens informationsstruktur — ett intyg med tillhörande metadata. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-getcertificate.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcertificate.csv), [Excel](StructureDefinition-getcertificate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcertificate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/getcertificate",
  "version" : "4.1-RC1",
  "name" : "GetCertificate",
  "title" : "GetCertificate",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetCertificate\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:2).\nRepresenterar responsens informationsstruktur — ett intyg med tillhörande metadata.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/getcertificate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcertificate",
      "path" : "getcertificate",
      "short" : "GetCertificate",
      "definition" : "Logisk modell för tjänstekontraktet GetCertificate\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:GetCertificate:2).\nRepresenterar responsens informationsstruktur — ett intyg med tillhörande metadata."
    },
    {
      "id" : "getcertificate.intyg",
      "path" : "getcertificate.intyg",
      "short" : "Intyg med tillhörande metadata",
      "definition" : "Ett intyg komplett med statusar, relationer och ärendekommunikation.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.intyg.intygsId",
      "path" : "getcertificate.intyg.intygsId",
      "short" : "Unikt ID för intyget",
      "definition" : "Unikt identifierare för intyget. Ska vara stabilt och globalt unikt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcertificate.intyg.typAvIntyg",
      "path" : "getcertificate.intyg.typAvIntyg",
      "short" : "Typ av intyg",
      "definition" : "Kodat värde som anger intygstypen, t.ex. FK7263, LISJP, LUSE.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getcertificate.intyg.signeringsTidpunkt",
      "path" : "getcertificate.intyg.signeringsTidpunkt",
      "short" : "Tidpunkt då intyget signerades",
      "definition" : "Tidpunkt då intyget underskrevs av behörig hälso- och sjukvårdspersonal.\nObligatorisk för signerade intyg, saknas för intygsutkast.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcertificate.intyg.skickatTidpunkt",
      "path" : "getcertificate.intyg.skickatTidpunkt",
      "short" : "Tidpunkt då intyget skickades",
      "definition" : "Tidpunkt då intyget skickades till aktuell intygsmottagare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcertificate.intyg.patient",
      "path" : "getcertificate.intyg.patient",
      "short" : "Patientuppgifter",
      "definition" : "Patientuppgifter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.intyg.patient.personId",
      "path" : "getcertificate.intyg.patient.personId",
      "short" : "Person- eller samordningsnummer",
      "definition" : "Person- eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcertificate.intyg.patient.fornamn",
      "path" : "getcertificate.intyg.patient.fornamn",
      "short" : "Patientens förnamn",
      "definition" : "Patientens förnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.patient.mellannamn",
      "path" : "getcertificate.intyg.patient.mellannamn",
      "short" : "Patientens mellannamn",
      "definition" : "Patientens mellannamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.patient.efternamn",
      "path" : "getcertificate.intyg.patient.efternamn",
      "short" : "Patientens efternamn",
      "definition" : "Patientens efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.patient.postadress",
      "path" : "getcertificate.intyg.patient.postadress",
      "short" : "Patientens postadress",
      "definition" : "Patientens postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.patient.postnummer",
      "path" : "getcertificate.intyg.patient.postnummer",
      "short" : "Patientens postnummer",
      "definition" : "Patientens postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.patient.postort",
      "path" : "getcertificate.intyg.patient.postort",
      "short" : "Patientens postort",
      "definition" : "Patientens postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv",
      "path" : "getcertificate.intyg.skapadAv",
      "short" : "HoS-personal som skapade intyget",
      "definition" : "HoS-personal som skapade intyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv.personalId",
      "path" : "getcertificate.intyg.skapadAv.personalId",
      "short" : "HSA-id för hälso- och sjukvårdspersonalen",
      "definition" : "HSA-id för hälso- och sjukvårdspersonalen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv.fullstandigtNamn",
      "path" : "getcertificate.intyg.skapadAv.fullstandigtNamn",
      "short" : "Personalens fullständiga namn",
      "definition" : "Personalens fullständiga namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv.enhet",
      "path" : "getcertificate.intyg.skapadAv.enhet",
      "short" : "Enhet som intyget utfärdades på",
      "definition" : "Enhet som intyget utfärdades på",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv.enhet.enhetsId",
      "path" : "getcertificate.intyg.skapadAv.enhet.enhetsId",
      "short" : "HSA-id för enheten",
      "definition" : "HSA-id för enheten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv.enhet.enhetsnamn",
      "path" : "getcertificate.intyg.skapadAv.enhet.enhetsnamn",
      "short" : "Enhetens namn",
      "definition" : "Enhetens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv.enhet.vardgivare",
      "path" : "getcertificate.intyg.skapadAv.enhet.vardgivare",
      "short" : "Vårdgivare",
      "definition" : "Vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv.enhet.vardgivare.vardgivareId",
      "path" : "getcertificate.intyg.skapadAv.enhet.vardgivare.vardgivareId",
      "short" : "HSA-id för vårdgivaren",
      "definition" : "HSA-id för vårdgivaren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcertificate.intyg.skapadAv.enhet.vardgivare.vardgivarenamn",
      "path" : "getcertificate.intyg.skapadAv.enhet.vardgivare.vardgivarenamn",
      "short" : "Vårdgivarens namn",
      "definition" : "Vårdgivarens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcertificate.intyg.mottagare",
      "path" : "getcertificate.intyg.mottagare",
      "short" : "Intygsmottagare",
      "definition" : "Intygsmottagare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.intyg.mottagare.part",
      "path" : "getcertificate.intyg.mottagare.part",
      "short" : "Kodat värde för intygsmottagarens part",
      "definition" : "Kodat värde för intygsmottagarens part",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/part-vs"
      }
    },
    {
      "id" : "getcertificate.intyg.status",
      "path" : "getcertificate.intyg.status",
      "short" : "Intygsstatus per part",
      "definition" : "Intygsstatus per part",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.intyg.status.part",
      "path" : "getcertificate.intyg.status.part",
      "short" : "Part som statusen gäller för",
      "definition" : "Part som statusen gäller för",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/part-vs"
      }
    },
    {
      "id" : "getcertificate.intyg.status.statuskod",
      "path" : "getcertificate.intyg.status.statuskod",
      "short" : "Statuskod",
      "definition" : "Statuskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/ValueSet/statuskod-vs"
      }
    },
    {
      "id" : "getcertificate.intyg.status.tidpunkt",
      "path" : "getcertificate.intyg.status.tidpunkt",
      "short" : "Tidpunkt då statusen sattes",
      "definition" : "Tidpunkt då statusen sattes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getcertificate.intyg.relation",
      "path" : "getcertificate.intyg.relation",
      "short" : "Relation till andra intyg",
      "definition" : "Relation till andra intyg",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcertificate.intyg.relation.typ",
      "path" : "getcertificate.intyg.relation.typ",
      "short" : "Typ av relation",
      "definition" : "Typ av relation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getcertificate.intyg.relation.intygsId",
      "path" : "getcertificate.intyg.relation.intygsId",
      "short" : "Intygs-ID för relaterat intyg",
      "definition" : "Intygs-ID för relaterat intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
