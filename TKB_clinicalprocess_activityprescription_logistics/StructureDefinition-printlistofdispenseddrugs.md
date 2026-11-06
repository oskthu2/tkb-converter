# PrintListOfDispensedDrugs - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrintListOfDispensedDrugs**

## Logical Model: PrintListOfDispensedDrugs 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/printlistofdispenseddrugs | *Version*:1.0 |
| Draft as of 2026-11-06 | *Computable Name*:PrintListOfDispensedDrugs |
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
  "version" : "1.0",
  "name" : "PrintListOfDispensedDrugs",
  "title" : "PrintListOfDispensedDrugs",
  "status" : "draft",
  "date" : "2026-11-06T21:00:18+00:00",
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
      "definition" : "Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som Avliden så returneras ej pdf.",
      "comment" : "TKB-fält: `patientinformation` (`Patientinformation`, kardinalitet 0..1).",
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
      "definition" : "Patientidentifikationen kan enbart innehålla följande typ: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret.",
      "comment" : "TKB-fält i Patientinformation: `patientidentifikation` (`Patientidentifikation`, kardinalitet 0..1).",
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
      "definition" : "Patientens förnamn. För patient med skyddad identitet visas inte förnamn.",
      "comment" : "TKB-fält i Patientinformation: `fornamn` (`string`, kardinalitet 0..1).\n\n**Fältlängder:** 1..80",
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
      "definition" : "Patientens efternamn. För patient med skyddad identitet visas inte efternamn.",
      "comment" : "TKB-fält i Patientinformation: `efternamn` (`string`, kardinalitet 0..1).\n\n**Fältlängder:** 1..60",
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
      "definition" : "Redigerat namn i formatet \"mellannamn efternamn, förnamn\". Förkortat till 36 tecken.",
      "comment" : "TKB-fält i Patientinformation: `redigeratNamn` (`string`, kardinalitet 1..1).\n\n**Fältlängder:** 1..36",
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
      "definition" : "Anger om redigeratNamn har förkortats.",
      "comment" : "TKB-fält i Patientinformation: `harRedigeratNamnForkortats` (`boolean`, kardinalitet 1..1).",
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
      "definition" : "Anger om patienten är avliden. Sant om personen är markerad som avliden, annars falskt.",
      "comment" : "TKB-fält i Patientinformation: `avliden` (`boolean`, kardinalitet 1..1).",
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
      "definition" : "Utdrag från läkemedelsförteckningen som PDF.",
      "comment" : "TKB-fält: `pdf` (`base64Binary`, kardinalitet 0..1).",
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
      "definition" : "Resultatkod för anropet.",
      "comment" : "TKB-fält: `resultCode` (`resultCodeEnum`, kardinalitet 1..1).",
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
      "definition" : "Kommentar till eventuella fel eller varningar.",
      "comment" : "TKB-fält: `comment` (`string`, kardinalitet 0..1).\n\n**Fältlängder:** 1..1024\n\n**Modellanteckning:** Fältlängd 1..1024. Vid logiska fel returneras resultCode ERROR med beskrivande text i comment.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
