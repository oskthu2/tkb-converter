# GetDispensedDrugs - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDispensedDrugs**

## Logical Model: GetDispensedDrugs 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugs | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:GetDispensedDrugs |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugs:2). Representerar responsens informationsstruktur — uthämtade läkemedel för patient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-getdispenseddrugs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getdispenseddrugs.csv), [Excel](StructureDefinition-getdispenseddrugs.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getdispenseddrugs",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugs",
  "version" : "2",
  "name" : "GetDispensedDrugs",
  "title" : "GetDispensedDrugs",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetDispensedDrugs\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugs:2).\nRepresenterar responsens informationsstruktur — uthämtade läkemedel för patient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getdispenseddrugs",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getdispenseddrugs",
      "path" : "getdispenseddrugs",
      "short" : "GetDispensedDrugs",
      "definition" : "Logisk modell för tjänstekontraktet GetDispensedDrugs\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugs:2).\nRepresenterar responsens informationsstruktur — uthämtade läkemedel för patient."
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug",
      "path" : "getdispenseddrugs.dispensedDrug",
      "short" : "Uthämtat läkemedel",
      "definition" : "En eller flera expedieringar för patienten inom angiven tidsperiod.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedDrugId",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedDrugId",
      "short" : "Unikt id för expedieringen",
      "definition" : "Unikt id för expedieringen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispenseDate",
      "path" : "getdispenseddrugs.dispensedDrug.dispenseDate",
      "short" : "Expedieringsdatum",
      "definition" : "Expedieringsdatum",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedArticle",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedArticle",
      "short" : "Expedierad artikel (läkemedelsprodukt)",
      "definition" : "Expedierad artikel (läkemedelsprodukt)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedArticle.articleId",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedArticle.articleId",
      "short" : "Artikelns id (NPL-id eller liknande)",
      "definition" : "Artikelns id (NPL-id eller liknande)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedArticle.articleName",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedArticle.articleName",
      "short" : "Artikelnamn",
      "definition" : "Artikelnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedArticle.strength",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedArticle.strength",
      "short" : "Styrka",
      "definition" : "Styrka",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedArticle.form",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedArticle.form",
      "short" : "Läkemedelsform",
      "definition" : "Läkemedelsform",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedQuantity",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedQuantity",
      "short" : "Expedierad mängd",
      "definition" : "Expedierad mängd",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedQuantity.quantityValue",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedQuantity.quantityValue",
      "short" : "Numeriskt värde",
      "definition" : "Numeriskt värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedQuantity.unit",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedQuantity.unit",
      "short" : "Enhet",
      "definition" : "Enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedDrugBody",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedDrugBody",
      "short" : "Expedieringstext (om svarstyp inkluderar TEXT)",
      "definition" : "Expedieringstext (om svarstyp inkluderar TEXT)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs.dispensedDrug.dispensedDrugMultimedia",
      "path" : "getdispenseddrugs.dispensedDrug.dispensedDrugMultimedia",
      "short" : "Expediering som multimedia (om svarstyp inkluderar MULTIMEDIA)",
      "definition" : "Expediering som multimedia (om svarstyp inkluderar MULTIMEDIA)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs.result",
      "path" : "getdispenseddrugs.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs.result.resultCode",
      "path" : "getdispenseddrugs.result.resultCode",
      "short" : "Svarskod",
      "definition" : "Svarskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getdispenseddrugs.result.errorCode",
      "path" : "getdispenseddrugs.result.errorCode",
      "short" : "Felkod",
      "definition" : "Felkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "getdispenseddrugs.result.logId",
      "path" : "getdispenseddrugs.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs.result.message",
      "path" : "getdispenseddrugs.result.message",
      "short" : "Beskrivande text",
      "definition" : "Beskrivande text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
