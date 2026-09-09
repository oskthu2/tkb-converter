# ListCertificatesForCare - clinicalprocess: healthcond: certificate v4.1-RC1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListCertificatesForCare**

## Logical Model: ListCertificatesForCare 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare | *Version*:4.1-RC1 |
| Draft as of 2026-09-09 | *Computable Name*:ListCertificatesForCare |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet ListCertificatesForCare (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3). Representerar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-certificate|current/StructureDefinition/StructureDefinition-listcertificatesforcare.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listcertificatesforcare.csv), [Excel](StructureDefinition-listcertificatesforcare.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listcertificatesforcare",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare",
  "version" : "4.1-RC1",
  "name" : "ListCertificatesForCare",
  "title" : "ListCertificatesForCare",
  "status" : "draft",
  "date" : "2026-09-09T16:46:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet ListCertificatesForCare\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3).\nRepresenterar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-certificate/StructureDefinition/listcertificatesforcare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listcertificatesforcare",
      "path" : "listcertificatesforcare",
      "short" : "ListCertificatesForCare",
      "definition" : "Logisk modell för tjänstekontraktet ListCertificatesForCare\n(RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListCertificatesForCare:3).\nRepresenterar responsens lista med intyg för en patient på en enhet eller hos en vårdgivare."
    },
    {
      "id" : "listcertificatesforcare.intygsLista",
      "path" : "listcertificatesforcare.intygsLista",
      "short" : "Lista av intyg",
      "definition" : "Lista av intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg",
      "path" : "listcertificatesforcare.intygsLista.intyg",
      "short" : "Ett intyg i listan",
      "definition" : "Ett intyg i listan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.intygsId",
      "path" : "listcertificatesforcare.intygsLista.intyg.intygsId",
      "short" : "Unikt ID för intyget",
      "definition" : "Unikt ID för intyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.typAvIntyg",
      "path" : "listcertificatesforcare.intygsLista.intyg.typAvIntyg",
      "short" : "Typ av intyg",
      "definition" : "Typ av intyg",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.signeringsTidpunkt",
      "path" : "listcertificatesforcare.intygsLista.intyg.signeringsTidpunkt",
      "short" : "Tidpunkt då intyget signerades",
      "definition" : "Tidpunkt då intyget signerades",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skickatTidpunkt",
      "path" : "listcertificatesforcare.intygsLista.intyg.skickatTidpunkt",
      "short" : "Tidpunkt då intyget skickades",
      "definition" : "Tidpunkt då intyget skickades",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient",
      "short" : "Patientuppgifter",
      "definition" : "Patientuppgifter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.patient.personId",
      "path" : "listcertificatesforcare.intygsLista.intyg.patient.personId",
      "short" : "Person- eller samordningsnummer",
      "definition" : "Person- eller samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv",
      "short" : "HoS-personal som skapade intyget",
      "definition" : "HoS-personal som skapade intyget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.personalId",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.personalId",
      "short" : "HSA-id för hälso- och sjukvårdspersonalen",
      "definition" : "HSA-id för hälso- och sjukvårdspersonalen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet",
      "short" : "Enhet",
      "definition" : "Enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.enhetsId",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.enhetsId",
      "short" : "HSA-id för enheten",
      "definition" : "HSA-id för enheten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare",
      "short" : "Vårdgivare",
      "definition" : "Vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivareId",
      "path" : "listcertificatesforcare.intygsLista.intyg.skapadAv.enhet.vardgivare.vardgivareId",
      "short" : "HSA-id för vårdgivaren",
      "definition" : "HSA-id för vårdgivaren",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.mottagare",
      "path" : "listcertificatesforcare.intygsLista.intyg.mottagare",
      "short" : "Intygsmottagare",
      "definition" : "Intygsmottagare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.mottagare.part",
      "path" : "listcertificatesforcare.intygsLista.intyg.mottagare.part",
      "short" : "Part",
      "definition" : "Part",
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
      "id" : "listcertificatesforcare.intygsLista.intyg.status",
      "path" : "listcertificatesforcare.intygsLista.intyg.status",
      "short" : "Intygsstatus",
      "definition" : "Intygsstatus",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listcertificatesforcare.intygsLista.intyg.status.part",
      "path" : "listcertificatesforcare.intygsLista.intyg.status.part",
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
      "id" : "listcertificatesforcare.intygsLista.intyg.status.statuskod",
      "path" : "listcertificatesforcare.intygsLista.intyg.status.statuskod",
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
      "id" : "listcertificatesforcare.intygsLista.intyg.status.tidpunkt",
      "path" : "listcertificatesforcare.intygsLista.intyg.status.tidpunkt",
      "short" : "Tidpunkt då statusen sattes",
      "definition" : "Tidpunkt då statusen sattes",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
