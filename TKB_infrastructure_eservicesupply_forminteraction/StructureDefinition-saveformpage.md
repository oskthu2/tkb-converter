# SaveFormPage - infrastructure: eservicesupply: forminteraction v2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SaveFormPage**

## Logical Model: SaveFormPage 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage | *Version*:2.1 |
| Draft as of 2026-09-09 | *Computable Name*:SaveFormPage |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet SaveFormPage (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormPage:2). Representerar responsens informationsstruktur — returnerar nästa sida med frågor, eller felindikation. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.infrastructure-eservicesupply-forminteraction|current/StructureDefinition/StructureDefinition-saveformpage.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-saveformpage.csv), [Excel](StructureDefinition-saveformpage.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "saveformpage",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage",
  "version" : "2.1",
  "name" : "SaveFormPage",
  "title" : "SaveFormPage",
  "status" : "draft",
  "date" : "2026-09-09T17:01:14+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet SaveFormPage\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormPage:2).\nRepresenterar responsens informationsstruktur — returnerar nästa sida med frågor, eller felindikation.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/StructureDefinition/saveformpage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "saveformpage",
      "path" : "saveformpage",
      "short" : "SaveFormPage",
      "definition" : "Logisk modell för tjänstekontraktet SaveFormPage\n(RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormPage:2).\nRepresenterar responsens informationsstruktur — returnerar nästa sida med frågor, eller felindikation."
    },
    {
      "id" : "saveformpage.form",
      "path" : "saveformpage.form",
      "short" : "Formulär (FormType)",
      "definition" : "Formuläret med nästa sida eller felindikation. Null indikerar att formuläret är färdigifyllt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveformpage.form.formID",
      "path" : "saveformpage.form.formID",
      "short" : "Formulär-id",
      "definition" : "Formulärets unika ID (GUID).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "saveformpage.form.formStatus",
      "path" : "saveformpage.form.formStatus",
      "short" : "Formulärstatus",
      "definition" : "Formulärets status.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/formstatus-vs"
      }
    },
    {
      "id" : "saveformpage.form.currentPage",
      "path" : "saveformpage.form.currentPage",
      "short" : "Aktuell sida (PageType)",
      "definition" : "Nästa sida att presentera, eller den aktuella sidan vid fel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "saveformpage.form.currentPage.pageNumber",
      "path" : "saveformpage.form.currentPage.pageNumber",
      "short" : "Sidnummer",
      "definition" : "Sidans nummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "saveformpage.form.currentPage.lastPage",
      "path" : "saveformpage.form.currentPage.lastPage",
      "short" : "Sista sidan",
      "definition" : "Indikerar om detta är den sista sidan.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "saveformpage.comment",
      "path" : "saveformpage.comment",
      "short" : "Kommentar",
      "definition" : "Attribut för felsignalering. Skall kunna visas för slutanvändaren.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "saveformpage.resultCode",
      "path" : "saveformpage.resultCode",
      "short" : "Resultatkod",
      "definition" : "Status på operationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/infrastructure-eservicesupply-forminteraction/ValueSet/resultcode-vs"
      }
    }]
  }
}

```
