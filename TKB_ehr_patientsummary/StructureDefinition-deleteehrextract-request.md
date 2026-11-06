# DeleteEhrExtract — Request - ehr: patientsummary v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeleteEhrExtract — Request**

## Logical Model: DeleteEhrExtract — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextract-request | *Version*:1.0 |
| Draft as of 2026-11-06 | *Computable Name*:DeleteEhrExtractRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i DeleteEhrExtract (urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientsummary|current/StructureDefinition/StructureDefinition-deleteehrextract-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-deleteehrextract-request.csv), [Excel](StructureDefinition-deleteehrextract-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "deleteehrextract-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextract-request",
  "version" : "1.0",
  "name" : "DeleteEhrExtractRequest",
  "title" : "DeleteEhrExtract — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:19:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i DeleteEhrExtract\n(urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/deleteehrextract-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "deleteehrextract-request",
      "path" : "deleteehrextract-request",
      "short" : "DeleteEhrExtract — Request",
      "definition" : "Logisk modell för begäran i DeleteEhrExtract\n(urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1, DeleteEhrExtractType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "deleteehrextract-request.logicalAddress",
      "path" : "deleteehrextract-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. the HSA-id of the service producer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteehrextract-request.ehr-system",
      "path" : "deleteehrextract-request.ehr_system",
      "short" : "ehr_system",
      "definition" : "Det värde som skickades för patientinformationen då anrop till tjänsten ReceiveEhrExtract gjordes.",
      "comment" : "TKB-fält: `ehr_system` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteehrextract-request.subject-of-care",
      "path" : "deleteehrextract-request.subject_of_care",
      "short" : "subject_of_care",
      "definition" : "Id för patienten. Det värde som skickades då anrop till tjänsten ReceiveEhrExtract gjordes.",
      "comment" : "TKB-fält: `subject_of_care` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteehrextract-request.deletion",
      "path" : "deleteehrextract-request.deletion",
      "short" : "deletion",
      "definition" : "Innehåller par av rcId och meaning.\n\nrcId:\n\nGlobalt unikt id för posten som ska tas bort. Det värde som skickades då anrop till tjänsten ReceiveEhrExtract gjordes. (Värdet hittas i ”ehr_extract.all_compositions.rc_id”.)\n\nmeaning:\n\nDen huvudinformationstyp som posten (som ska tas bort) gäller för.",
      "comment" : "TKB-fält: `deletion` (`DeletionType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteehrextract-request.deletion.rc-id",
      "path" : "deleteehrextract-request.deletion.rc_id",
      "short" : "rc_id",
      "definition" : "rc_id",
      "comment" : "TKB-fält: `../rc_id` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "deleteehrextract-request.deletion.meaning",
      "path" : "deleteehrextract-request.deletion.meaning",
      "short" : "meaning",
      "definition" : "meaning",
      "comment" : "TKB-fält: `../meaning` (`CD`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "deleteehrextract-request.parameters",
      "path" : "deleteehrextract-request.parameters",
      "short" : "parameters",
      "definition" : "Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för återrapportering av hur behandlingen gick (genom tjänsten DeleteEhrExtractStatus) samt till fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken.",
      "comment" : "TKB-fält: `parameters` (`ParameterType`, kardinalitet 1..1).\n\nObs: modellen anger 0..* där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "deleteehrextract-request.parameters.parameterCode",
      "path" : "deleteehrextract-request.parameters.parameterCode",
      "short" : "parameterCode",
      "definition" : "parameterCode Heter code i schemat.",
      "comment" : "TKB-fält: `../code` (`CD`, kardinalitet 0..1).\n\n**Modellanteckning:** parameterCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "deleteehrextract-request.parameters.parameterName",
      "path" : "deleteehrextract-request.parameters.parameterName",
      "short" : "parameterName",
      "definition" : "parameterName Heter name i schemat.",
      "comment" : "TKB-fält: `../name` (`ST`, kardinalitet 1..1).\n\n**Modellanteckning:** parameterName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "deleteehrextract-request.parameters.parameterValue",
      "path" : "deleteehrextract-request.parameters.parameterValue",
      "short" : "parameterValue",
      "definition" : "parameterValue Heter value i schemat.",
      "comment" : "TKB-fält: `../value` (`ST`, kardinalitet 1..1).\n\n**Modellanteckning:** parameterValue Heter value i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
