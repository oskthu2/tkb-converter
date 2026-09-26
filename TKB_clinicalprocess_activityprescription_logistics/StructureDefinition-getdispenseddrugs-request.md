# GetDispensedDrugs — Request - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDispensedDrugs — Request**

## Logical Model: GetDispensedDrugs — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/getdispenseddrugs-request | *Version*:1.0.2 |
| Draft as of 2026-09-26 | *Computable Name*:GetDispensedDrugsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetDispensedDrugs (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:GetDispensedDrugsResponder:1, GetDispensedDrugsType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-logistics|current/StructureDefinition/StructureDefinition-getdispenseddrugs-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getdispenseddrugs-request.csv), [Excel](StructureDefinition-getdispenseddrugs-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getdispenseddrugs-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/getdispenseddrugs-request",
  "version" : "1.0.2",
  "name" : "GetDispensedDrugsRequest",
  "title" : "GetDispensedDrugs — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:16:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetDispensedDrugs\n(RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:GetDispensedDrugsResponder:1, GetDispensedDrugsType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/getdispenseddrugs-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getdispenseddrugs-request",
      "path" : "getdispenseddrugs-request",
      "short" : "GetDispensedDrugs — Request",
      "definition" : "Logisk modell för requestparametrar i GetDispensedDrugs\n(RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:GetDispensedDrugsResponder:1, GetDispensedDrugsType).",
      "constraint" : [{
        "key" : "getdispenseddrugs-request-forskrivarkod-sam",
        "severity" : "error",
        "human" : "forskrivarkod är obligatorisk om atkomsttyp = SAM",
        "expression" : "atkomsttyp = 'SAM' implies forskrivarkod.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/getdispenseddrugs-request"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.patient",
      "path" : "getdispenseddrugs-request.patient",
      "short" : "Patient vars läkemedelsförteckning skall hämtas",
      "definition" : "Patient vars läkemedelsförteckning skall hämtas",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.patient.patientidentifikation",
      "path" : "getdispenseddrugs-request.patient.patientidentifikation",
      "short" : "Patientidentifikation",
      "definition" : "Personnummer från kodverk med OID 1.2.752.129.2.1.3, enhetligt utformat unikt person-id registrerat i folkbokföringen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.patient.patientidentifikation.kod",
      "path" : "getdispenseddrugs-request.patient.patientidentifikation.kod",
      "short" : "Patientens personnummer",
      "definition" : "Fältlängd 1..12.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.patient.patientidentifikation.kodverk",
      "path" : "getdispenseddrugs-request.patient.patientidentifikation.kodverk",
      "short" : "OID för kodverket",
      "definition" : "Identifiering av berört kodverk/klassifikation enligt V-TIM 2.2 (XSD-typ OID, mönster [0-9][0-9.]*).\nFör personnummer: 1.2.752.129.2.1.3.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.anropandeVardpersonal",
      "path" : "getdispenseddrugs-request.anropandeVardpersonal",
      "short" : "Anropande vårdpersonal",
      "definition" : "Anropande vårdpersonal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.anropandeVardpersonal.efternamn",
      "path" : "getdispenseddrugs-request.anropandeVardpersonal.efternamn",
      "short" : "Efternamn",
      "definition" : "Används i kombination med personHsaId för att identifiera användare. Fältlängd 1..35.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.anropandeVardpersonal.fornamn",
      "path" : "getdispenseddrugs-request.anropandeVardpersonal.fornamn",
      "short" : "Förnamn",
      "definition" : "Används i kombination med personHsaId för att identifiera användare. Fältlängd 1..35.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.anropandeVardpersonal.personHsaId",
      "path" : "getdispenseddrugs-request.anropandeVardpersonal.personHsaId",
      "short" : "HSA-id för läsande person",
      "definition" : "Fältlängd 1..64.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.anropandeVardpersonal.vardenhetHsaId",
      "path" : "getdispenseddrugs-request.anropandeVardpersonal.vardenhetHsaId",
      "short" : "HSA-id för läsande vårdenhet",
      "definition" : "Används för spårbarhet. Fältlängd 1..64.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.anropandeVardpersonal.vardgivareHsaId",
      "path" : "getdispenseddrugs-request.anropandeVardpersonal.vardgivareHsaId",
      "short" : "HSA-id för läsande vårdgivare",
      "definition" : "Används för spårbarhet. Fältlängd 1..64.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.forskrivarkod",
      "path" : "getdispenseddrugs-request.forskrivarkod",
      "short" : "Förskrivarens individuella förskrivarkod",
      "definition" : "Gruppförskrivarkoder får ej användas. Valideras mot FORS. Obligatorisk om atkomsttyp = SAM. Fältlängd 7..7.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.identifieradArbetsplats",
      "path" : "getdispenseddrugs-request.identifieradArbetsplats",
      "short" : "Identifierad arbetsplats",
      "definition" : "XSD: ArbetsplatsIdentifikation (xs:choice). Exakt ett av arbetsplatskod och arbetsplats ska anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getdispenseddrugs-request-arbetsplats-choice",
        "severity" : "error",
        "human" : "Exakt ett av arbetsplatskod och arbetsplats ska anges (xs:choice i ArbetsplatsIdentifikation)",
        "expression" : "arbetsplatskod.exists() xor arbetsplats.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/StructureDefinition/getdispenseddrugs-request"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.identifieradArbetsplats.arbetsplatskod",
      "path" : "getdispenseddrugs-request.identifieradArbetsplats.arbetsplatskod",
      "short" : "Förskrivarens arbetsplatskod",
      "definition" : "Del av val. Valideras. Obligatorisk om arbetsplats inte anges. Fältlängd 1..20.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.identifieradArbetsplats.arbetsplats",
      "path" : "getdispenseddrugs-request.identifieradArbetsplats.arbetsplats",
      "short" : "Förskrivarens arbetsplats",
      "definition" : "Del av val. Obligatorisk om arbetsplatskod inte anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.identifieradArbetsplats.arbetsplats.arbetsplatsnamn",
      "path" : "getdispenseddrugs-request.identifieradArbetsplats.arbetsplats.arbetsplatsnamn",
      "short" : "Namnet på användarens arbetsplats",
      "definition" : "Fältlängd 1..64.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.identifieradArbetsplats.arbetsplats.arbetsplatsort",
      "path" : "getdispenseddrugs-request.identifieradArbetsplats.arbetsplats.arbetsplatsort",
      "short" : "Orten för användarens arbetsplats",
      "definition" : "Fältlängd 1..28.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdispenseddrugs-request.atkomsttyp",
      "path" : "getdispenseddrugs-request.atkomsttyp",
      "short" : "Treställig kod för typ av åtkomst",
      "definition" : "ENG = engångssamtycke, SAM = samtycke (tillsvidaresamtycke), NOD = nödåtkomst.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-logistics/ValueSet/atkomsttyp-vs"
      }
    }]
  }
}

```
