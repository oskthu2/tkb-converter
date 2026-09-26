# PrintListOfDispensedDrugs - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrintListOfDispensedDrugs**

## Logical Model: PrintListOfDispensedDrugs 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/printlistofdispenseddrugs | *Version*:1.0.2 |
| Draft as of 2026-09-26 | *Computable Name*:PrintListOfDispensedDrugs |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet PrintListOfDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1). Representerar responsens informationsstruktur: en PDF-rapport med patientens läkemedelsförteckning. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-logistics|current/StructureDefinition/StructureDefinition-printlistofdispenseddrugs.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-printlistofdispenseddrugs.csv), [Excel](StructureDefinition-printlistofdispenseddrugs.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "printlistofdispenseddrugs",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/printlistofdispenseddrugs",
  "version" : "1.0.2",
  "name" : "PrintListOfDispensedDrugs",
  "title" : "PrintListOfDispensedDrugs",
  "status" : "draft",
  "date" : "2026-09-26T19:16:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet PrintListOfDispensedDrugs\n(RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1).\nRepresenterar responsens informationsstruktur: en PDF-rapport med patientens läkemedelsförteckning.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/printlistofdispenseddrugs",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "printlistofdispenseddrugs",
      "path" : "printlistofdispenseddrugs",
      "short" : "PrintListOfDispensedDrugs",
      "definition" : "Logisk modell för tjänstekontraktet PrintListOfDispensedDrugs\n(RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1).\nRepresenterar responsens informationsstruktur: en PDF-rapport med patientens läkemedelsförteckning."
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation",
      "path" : "printlistofdispenseddrugs.patientinformation",
      "short" : "Information om patienten",
      "definition" : "Information om patienten vars läkemedelsförteckning man hämtat.\nOm patienten är markerad som Avliden returneras ej pdf.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation.patientidentifikation",
      "path" : "printlistofdispenseddrugs.patientinformation.patientidentifikation",
      "short" : "Patientidentifikation",
      "definition" : "Kan enbart innehålla personnummer (kodverk OID 1.2.752.129.2.1.3), enhetligt utformat unikt person-id registrerat i folkbokföringen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation.patientidentifikation.kod",
      "path" : "printlistofdispenseddrugs.patientinformation.patientidentifikation.kod",
      "short" : "Patientens personnummer",
      "definition" : "Fältlängd 1..12.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation.patientidentifikation.kodverk",
      "path" : "printlistofdispenseddrugs.patientinformation.patientidentifikation.kodverk",
      "short" : "OID för kodverket",
      "definition" : "Identifiering av berört kodverk/klassifikation enligt V-TIM 2.2 (XSD-typ OID, mönster [0-9][0-9.]*).\nFör personnummer: 1.2.752.129.2.1.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation.fornamn",
      "path" : "printlistofdispenseddrugs.patientinformation.fornamn",
      "short" : "Patientens förnamn",
      "definition" : "För patient med skyddad identitet visas inte förnamn. Fältlängd 1..80.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation.efternamn",
      "path" : "printlistofdispenseddrugs.patientinformation.efternamn",
      "short" : "Patientens efternamn",
      "definition" : "För patient med skyddad identitet visas inte efternamn. Fältlängd 1..60.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation.redigeratNamn",
      "path" : "printlistofdispenseddrugs.patientinformation.redigeratNamn",
      "short" : "Redigerat namn",
      "definition" : "Redigerat namn i formatet \"mellannamn efternamn, förnamn\". Förkortat till 36 tecken. Fältlängd 1..36.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation.harRedigeratNamnForkortats",
      "path" : "printlistofdispenseddrugs.patientinformation.harRedigeratNamnForkortats",
      "short" : "Anger om redigeratNamn har förkortats",
      "definition" : "Anger om redigeratNamn har förkortats",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.patientinformation.avliden",
      "path" : "printlistofdispenseddrugs.patientinformation.avliden",
      "short" : "Anger om patienten är avliden",
      "definition" : "Sant om personen är markerad som avliden, annars falskt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.pdf",
      "path" : "printlistofdispenseddrugs.pdf",
      "short" : "Utdrag från läkemedelsförteckningen som PDF",
      "definition" : "Utdrag från läkemedelsförteckningen som PDF",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs.resultCode",
      "path" : "printlistofdispenseddrugs.resultCode",
      "short" : "Resultatkod för anropet",
      "definition" : "Resultatkod för anropet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "printlistofdispenseddrugs.comment",
      "path" : "printlistofdispenseddrugs.comment",
      "short" : "Kommentar till eventuella fel eller varningar",
      "definition" : "Fältlängd 1..1024. Vid logiska fel returneras resultCode ERROR med beskrivande text i comment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
