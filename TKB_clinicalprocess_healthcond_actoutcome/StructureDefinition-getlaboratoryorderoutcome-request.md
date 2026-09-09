# GetLaboratoryOrderOutcome — Request - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLaboratoryOrderOutcome — Request**

## Logical Model: GetLaboratoryOrderOutcome — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome-request | *Version*:4.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:GetLaboratoryOrderOutcomeRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetLaboratoryOrderOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4). Representerar de sökparametrar som tjänstekonsumenten skickar in. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getlaboratoryorderoutcome-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlaboratoryorderoutcome-request.csv), [Excel](StructureDefinition-getlaboratoryorderoutcome-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlaboratoryorderoutcome-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome-request",
  "version" : "4.2.2",
  "name" : "GetLaboratoryOrderOutcomeRequest",
  "title" : "GetLaboratoryOrderOutcome — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:44:34+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetLaboratoryOrderOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).\nRepresenterar de sökparametrar som tjänstekonsumenten skickar in.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlaboratoryorderoutcome-request",
      "path" : "getlaboratoryorderoutcome-request",
      "short" : "GetLaboratoryOrderOutcome — Request",
      "definition" : "Logisk modell för requestparametrar i GetLaboratoryOrderOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).\nRepresenterar de sökparametrar som tjänstekonsumenten skickar in."
    },
    {
      "id" : "getlaboratoryorderoutcome-request.careUnitHSAId",
      "path" : "getlaboratoryorderoutcome-request.careUnitHSAId",
      "short" : "HSA-id för vårdenhet (filter)",
      "definition" : "Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret.\nroot sätts till OID (1.2.752.129.2.1.4.1) för HSA.\nextension sätts till HSA-id på vårdenhet.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.careGiverHSAId",
      "path" : "getlaboratoryorderoutcome-request.careGiverHSAId",
      "short" : "HSA-id för vårdgivare (filter)",
      "definition" : "Filtrering på vårdgivare vilket motsvarar accountableCareGiver i svaret.\nroot sätts till OID (1.2.752.129.2.1.4.1) för HSA.\nextension sätts till HSA-id på vårdgivare.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.patientId",
      "path" : "getlaboratoryorderoutcome-request.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Begränsar sökningen till angiven personidentifierare för en patient.\nroot sätts till OID för typ av personidentifierare:\n- Personnummer: 1.2.752.129.2.1.3.1\n- Samordningsnummer: 1.2.752.129.2.1.3.3\nextension sätts till patientens identifierare (12 tecken utan avskiljare).\nOBS: Lokal reservidentitet kan ej användas med EI och aggregerande tjänster.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.datePeriod",
      "path" : "getlaboratoryorderoutcome-request.datePeriod",
      "short" : "Datumperiod för sökning",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att\nendast poster returneras där provtagningstidpunkten i svaret ligger inom\nsökintervallets start- och slutdatumet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.sourceSystemHSAId",
      "path" : "getlaboratoryorderoutcome-request.sourceSystemHSAId",
      "short" : "HSA-id för källsystem (filter)",
      "definition" : "Begränsar sökning till ett specifikt källsystem.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.specimenIdentifier",
      "path" : "getlaboratoryorderoutcome-request.specimenIdentifier",
      "short" : "Providentifierare (filter)",
      "definition" : "Begränsar sökning till specifikt prov.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome-request.referralIdentifier",
      "path" : "getlaboratoryorderoutcome-request.referralIdentifier",
      "short" : "Remissidentifierare (filter)",
      "definition" : "Begränsar sökning till specifik remiss.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
