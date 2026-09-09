# GetMedicationPrescriptions - clinicalprocess: activityprescription: prescribe v2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMedicationPrescriptions**

## Logical Model: GetMedicationPrescriptions 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationprescriptions | *Version*:2 |
| Draft as of 2026-09-09 | *Computable Name*:GetMedicationPrescriptions |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetMedicationPrescriptions (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationPrescriptions:2). Representerar responsens informationsstruktur — patientens samlade läkemedelslista. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-getmedicationprescriptions.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmedicationprescriptions.csv), [Excel](StructureDefinition-getmedicationprescriptions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmedicationprescriptions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationprescriptions",
  "version" : "2",
  "name" : "GetMedicationPrescriptions",
  "title" : "GetMedicationPrescriptions",
  "status" : "draft",
  "date" : "2026-09-09T16:43:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetMedicationPrescriptions\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationPrescriptions:2).\nRepresenterar responsens informationsstruktur — patientens samlade läkemedelslista.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/getmedicationprescriptions",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmedicationprescriptions",
      "path" : "getmedicationprescriptions",
      "short" : "GetMedicationPrescriptions",
      "definition" : "Logisk modell för tjänstekontraktet GetMedicationPrescriptions\n(RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetMedicationPrescriptions:2).\nRepresenterar responsens informationsstruktur — patientens samlade läkemedelslista."
    },
    {
      "id" : "getmedicationprescriptions.medicationListVersion",
      "path" : "getmedicationprescriptions.medicationListVersion",
      "short" : "Version på patientens samlade läkemedelslista",
      "definition" : "Unik version för patientens aktuella läkemedelslista.\nFormat: se avsnitt 5 i TKB (Formatregler).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList",
      "path" : "getmedicationprescriptions.medicationList",
      "short" : "Samlad läkemedelslista",
      "definition" : "Övergripande objekt som håller ihop läkemedelslistan för patienten.\nValfri — returneras om data finns.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence",
      "short" : "Läkemedelsbehandling (ordination)",
      "definition" : "En läkemedelsordination med status, startdatum, utsättningsdatum etc.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescriptionSequenceId",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescriptionSequenceId",
      "short" : "Unikt id för läkemedelsbehandlingen",
      "definition" : "Unikt id för läkemedelsbehandlingen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription",
      "short" : "Enskild ordination inom behandlingssekvensen",
      "definition" : "Enskild ordination inom behandlingssekvensen",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.medicationPrescriptionId",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.medicationPrescriptionId",
      "short" : "Unikt id för ordinationen",
      "definition" : "Unikt id för ordinationen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData",
      "short" : "Registreringsdata",
      "definition" : "Registreringsdata",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registrationDataId",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registrationDataId",
      "short" : "Systeminternt id",
      "definition" : "Systeminternt id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registeredBy",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registeredBy",
      "short" : "Registrerande person",
      "definition" : "Registrerande person",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registrationTime",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registrationTime",
      "short" : "Registreringstidpunkt",
      "definition" : "Registreringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.medicationInformation",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.medicationInformation",
      "short" : "Läkemedelsinformation",
      "definition" : "Läkemedelsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.startTime",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.startTime",
      "short" : "Insättningstidpunkt",
      "definition" : "Insättningstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.endTime",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.endTime",
      "short" : "Utsättningstidpunkt",
      "definition" : "Utsättningstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.prescribedBy",
      "path" : "getmedicationprescriptions.medicationList.medicationPrescriptionSequence.medicationPrescription.prescribedBy",
      "short" : "Förskrivare",
      "definition" : "Förskrivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.medicationList.medicationStatementSequence",
      "path" : "getmedicationprescriptions.medicationList.medicationStatementSequence",
      "short" : "Egenmedicinering (sequence)",
      "definition" : "Egenmedicinering (sequence)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.result",
      "path" : "getmedicationprescriptions.result",
      "short" : "Resultat av begäran",
      "definition" : "Resultat av begäran",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmedicationprescriptions.result.resultCode",
      "path" : "getmedicationprescriptions.result.resultCode",
      "short" : "Svarskod (OK/INFO/ERROR)",
      "definition" : "Svarskod (OK/INFO/ERROR)",
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
      "id" : "getmedicationprescriptions.result.errorCode",
      "path" : "getmedicationprescriptions.result.errorCode",
      "short" : "Felkod (om resultCode=ERROR)",
      "definition" : "Felkod (om resultCode=ERROR)",
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
      "id" : "getmedicationprescriptions.result.logId",
      "path" : "getmedicationprescriptions.result.logId",
      "short" : "UUID för felanmälan",
      "definition" : "UUID för felanmälan",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationprescriptions.result.message",
      "path" : "getmedicationprescriptions.result.message",
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
