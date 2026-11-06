# PrintListOfDispensedDrugs — Request - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrintListOfDispensedDrugs — Request**

## Logical Model: PrintListOfDispensedDrugs — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/printlistofdispenseddrugs-request | *Version*:1.0 |
| Draft as of 2026-11-06 | *Computable Name*:PrintListOfDispensedDrugsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i PrintListOfDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1, PrintListOfDispensedDrugsType). Anropande system ska ha anropat GetDispensedDrugs innan denna tjänst anropas. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-logistics|current/StructureDefinition/StructureDefinition-printlistofdispenseddrugs-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-printlistofdispenseddrugs-request.csv), [Excel](StructureDefinition-printlistofdispenseddrugs-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "printlistofdispenseddrugs-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/printlistofdispenseddrugs-request",
  "version" : "1.0",
  "name" : "PrintListOfDispensedDrugsRequest",
  "title" : "PrintListOfDispensedDrugs — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:00:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i PrintListOfDispensedDrugs\n(RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1, PrintListOfDispensedDrugsType).\nAnropande system ska ha anropat GetDispensedDrugs innan denna tjänst anropas.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/printlistofdispenseddrugs-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "printlistofdispenseddrugs-request",
      "path" : "printlistofdispenseddrugs-request",
      "short" : "PrintListOfDispensedDrugs — Request",
      "definition" : "Logisk modell för requestparametrar i PrintListOfDispensedDrugs\n(RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1, PrintListOfDispensedDrugsType).\nAnropande system ska ha anropat GetDispensedDrugs innan denna tjänst anropas."
    },
    {
      "id" : "printlistofdispenseddrugs-request.patient",
      "path" : "printlistofdispenseddrugs-request.patient",
      "short" : "Patient vars läkemedelsförteckning skall hämtas",
      "definition" : "Patient vars läkemedelsförteckning skall hämtas.",
      "comment" : "TKB-fält: `patient` (`Patient`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.patient.patientidentifikation",
      "path" : "printlistofdispenseddrugs-request.patient.patientidentifikation",
      "short" : "Patientidentifikation",
      "definition" : "Patientidentifikationen kan innehålla följande typer: Personnummer från kodverk med OID 1.2.752.129.2.1.3 och är enhetligt utformat unikt person-id registrerat i folkbokföringen. Tilldelas av skattekontoret.",
      "comment" : "TKB-fält i Patient: `patientidentifikation` (`Patientidentifikation`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.patient.patientidentifikation.kod",
      "path" : "printlistofdispenseddrugs-request.patient.patientidentifikation.kod",
      "short" : "Patientens personnummer",
      "definition" : "Fältlängd 1..12.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.patient.patientidentifikation.kodverk",
      "path" : "printlistofdispenseddrugs-request.patient.patientidentifikation.kodverk",
      "short" : "OID för kodverket",
      "definition" : "Identifiering av berört kodverk/klassifikation enligt V-TIM 2.2 (XSD-typ OID, mönster [0-9][0-9.]*).\nFör personnummer: 1.2.752.129.2.1.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.anropandeVardpersonal",
      "path" : "printlistofdispenseddrugs-request.anropandeVardpersonal",
      "short" : "Anropande vårdpersonal",
      "definition" : "Anropande vårdpersonal.",
      "comment" : "TKB-fält: `anropandeVardpersonal` (`Vardpersonal`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.anropandeVardpersonal.efternamn",
      "path" : "printlistofdispenseddrugs-request.anropandeVardpersonal.efternamn",
      "short" : "Efternamn",
      "definition" : "Användarnamn. Används i kombination med personHsaId för att identifiera användare.",
      "comment" : "TKB-fält i Vardpersonal: `efternamn` (`string`, kardinalitet 1..1).\n\n**Fältlängder:** 1..35",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.anropandeVardpersonal.fornamn",
      "path" : "printlistofdispenseddrugs-request.anropandeVardpersonal.fornamn",
      "short" : "Förnamn",
      "definition" : "Användarnamn. Används i kombination med personHsaId för att identifiera användare.",
      "comment" : "TKB-fält i Vardpersonal: `fornamn` (`string`, kardinalitet 1..1).\n\n**Fältlängder:** 1..35",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.anropandeVardpersonal.personHsaId",
      "path" : "printlistofdispenseddrugs-request.anropandeVardpersonal.personHsaId",
      "short" : "HSA-id för läsande person",
      "definition" : "HSA-id för läsande person.",
      "comment" : "TKB-fält i Vardpersonal: `personHsaId` (`string`, kardinalitet 1..1).\n\n**Fältlängder:** 1..64\n\n**Modellanteckning:** Fältlängd 1..64.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.anropandeVardpersonal.vardenhetHsaId",
      "path" : "printlistofdispenseddrugs-request.anropandeVardpersonal.vardenhetHsaId",
      "short" : "HSA-id för läsande vårdenhet",
      "definition" : "HSA-id för läsande vårdenhet. Används för spårbarhet.",
      "comment" : "TKB-fält i Vardpersonal: `vardenhetHsaId` (`string`, kardinalitet 1..1).\n\n**Fältlängder:** 1..64",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.anropandeVardpersonal.vardgivareHsaId",
      "path" : "printlistofdispenseddrugs-request.anropandeVardpersonal.vardgivareHsaId",
      "short" : "HSA-id för läsande vårdgivare",
      "definition" : "HSA-id för läsande vårdgivare. Används för spårbarhet.",
      "comment" : "TKB-fält i Vardpersonal: `vardgivareHsaId` (`string`, kardinalitet 1..1).\n\n**Fältlängder:** 1..64",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.forskrivarkod",
      "path" : "printlistofdispenseddrugs-request.forskrivarkod",
      "short" : "Förskrivarens individuella förskrivarkod",
      "definition" : "Förskrivarens individuella förskrivarkod. Gruppförskrivarkoder får ej användas. Valideras mot FORS.",
      "comment" : "TKB-fält: `forskrivarkod` (`string`, kardinalitet 0..1).\n\n**Fältlängder:** 7..7",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.identifieradArbetsplats",
      "path" : "printlistofdispenseddrugs-request.identifieradArbetsplats",
      "short" : "Identifierad arbetsplats",
      "definition" : "Identifierad arbetsplats.",
      "comment" : "TKB-fält: `identifieradArbetsplats` (`ArbetsplatsIdentifikation`, kardinalitet 1..1).\n\n**Modellanteckning:** XSD: ArbetsplatsIdentifikation (xs:choice). Exakt ett av arbetsplatskod och arbetsplats ska anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "printlistofdispenseddrugs-request-arbetsplats-choice",
        "severity" : "error",
        "human" : "Exakt ett av arbetsplatskod och arbetsplats ska anges (xs:choice i ArbetsplatsIdentifikation)",
        "expression" : "arbetsplatskod.exists() xor arbetsplats.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/printlistofdispenseddrugs-request"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.identifieradArbetsplats.arbetsplatskod",
      "path" : "printlistofdispenseddrugs-request.identifieradArbetsplats.arbetsplatskod",
      "short" : "Förskrivarens arbetsplatskod",
      "definition" : "Del av val. Förskrivarens arbetsplatskod. Valideras. Obligatorisk om arbetsplats inte anges.",
      "comment" : "TKB-fält i ArbetsplatsIdentifikation: `arbetsplatskod` (`string`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Fältlängder:** 1..20",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.identifieradArbetsplats.arbetsplats",
      "path" : "printlistofdispenseddrugs-request.identifieradArbetsplats.arbetsplats",
      "short" : "Förskrivarens arbetsplats",
      "definition" : "Del av val. Förskrivarens arbetsplats. Obligatorisk om arbetsplatskod inte anges.",
      "comment" : "TKB-fält i ArbetsplatsIdentifikation: `arbetsplats` (`Arbetsplats`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.identifieradArbetsplats.arbetsplats.arbetsplatsnamn",
      "path" : "printlistofdispenseddrugs-request.identifieradArbetsplats.arbetsplats.arbetsplatsnamn",
      "short" : "Namnet på användarens arbetsplats",
      "definition" : "Fältlängd 1..64.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "printlistofdispenseddrugs-request.identifieradArbetsplats.arbetsplats.arbetsplatsort",
      "path" : "printlistofdispenseddrugs-request.identifieradArbetsplats.arbetsplats.arbetsplatsort",
      "short" : "Orten för användarens arbetsplats",
      "definition" : "Fältlängd 1..28.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
