# RegisterMedicationPrescription — Request - clinicalprocess: activityprescription: prescribe v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegisterMedicationPrescription — Request**

## Logical Model: RegisterMedicationPrescription — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:RegisterMedicationPrescriptionRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i RegisterMedicationPrescription. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-prescribe|current/StructureDefinition/StructureDefinition-registermedicationprescription-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registermedicationprescription-request.csv), [Excel](StructureDefinition-registermedicationprescription-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registermedicationprescription-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request",
  "version" : "2.0",
  "name" : "RegisterMedicationPrescriptionRequest",
  "title" : "RegisterMedicationPrescription — Request",
  "status" : "draft",
  "date" : "2026-11-06T21:01:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i RegisterMedicationPrescription.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/StructureDefinition/registermedicationprescription-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registermedicationprescription-request",
      "path" : "registermedicationprescription-request",
      "short" : "RegisterMedicationPrescription — Request",
      "definition" : "Logisk modell för requestparametrar i RegisterMedicationPrescription."
    },
    {
      "id" : "registermedicationprescription-request.patientInformation",
      "path" : "registermedicationprescription-request.patientInformation",
      "short" : "Patientinformation (personnummer eller demografiska uppgifter)",
      "definition" : "patientId eller patientInformation måste anges.",
      "comment" : "TKB-fält: `patientInformation*` (`PatientInformation_setter`, kardinalitet 1..1).\n\n**Modellanteckning:** Antingen patientId eller kombinationen givenName+familyName+dateOfBirth måste anges.\nASSUME-PRESC-001: villkorlig kardinalitet — modellerad som 0..1 per underfält med notering.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.patientId",
      "path" : "registermedicationprescription-request.patientInformation.patientId",
      "short" : "Patientens personnummer eller samordningsnummer",
      "definition" : "Patientens personnummer eller samordningsnummer (fylls i från argument i tjänsteanropet)\n\nEndast om det är känt.\n\nPU: personid\n\nRR: personnummer",
      "comment" : "TKB-fält: `../patientId` (`Identifier`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.givenName",
      "path" : "registermedicationprescription-request.patientInformation.givenName",
      "short" : "Förnamn",
      "definition" : "Patientens förnamn.\n\nPU: förnamn. Alla förnamn med mellanslag emellan. Tilltalsnamnsmarkering anger vilket som används som tilltalsnamn.\n\nRR: förnamn",
      "comment" : "TKB-fält: `../givenName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.familyName",
      "path" : "registermedicationprescription-request.patientInformation.familyName",
      "short" : "Efternamn",
      "definition" : "Patientens efternamn.\n\nPU: efternamn\n\nRR: efternamn",
      "comment" : "TKB-fält: `../familyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.dateOfBirth",
      "path" : "registermedicationprescription-request.patientInformation.dateOfBirth",
      "short" : "Födelsedatum (8 siffror)",
      "definition" : "Födelsedatum (8 siffror).\n\nAnges för patient som saknar giltigt personnummer.\n\nObligatoriskt att ange antingen personnummer eller födelsedatum på expedieringsunderlag.\n\nPU: födelsetid\n\nRR: födelsedatum",
      "comment" : "TKB-fält: `../dateOfBirth` (`date`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "registermedicationprescription-request.patientInformation.gender",
      "path" : "registermedicationprescription-request.patientInformation.gender",
      "short" : "Kön",
      "definition" : "Patientens kön.\n\nObligatorisk parameter om Personnummer saknas.\n\n{Male, Female, Unspecified}\n\nPU: kön\n\nRR: kön",
      "comment" : "TKB-fält: `../gender` (`GenderEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-prescribe/ValueSet/gender-vs"
      }
    },
    {
      "id" : "registermedicationprescription-request.medicationListVersion",
      "path" : "registermedicationprescription-request.medicationListVersion",
      "short" : "Aktuell version av läkemedelslistan (optimistisk låsning)",
      "definition" : "Version på patientens samlade läkemedelslista.\n\nSe kapitel 5.2 för exempel och regler kring format.",
      "comment" : "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList",
      "path" : "registermedicationprescription-request.medicationPrescriptionList",
      "short" : "Ordinationslista att registrera",
      "definition" : "Lista med läkemedelsbehandlingar.",
      "comment" : "TKB-fält: `medicationPrescriptionList` (`MedicationPrescriptionListType_setter`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence",
      "short" : "Behandlingssekvens",
      "definition" : "Behandlingssekvens",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription",
      "short" : "Ordination",
      "definition" : "Ordination",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy",
      "short" : "Förskrivare",
      "definition" : "Ordinatör är den som är ansvarig för det medicinska beslutet för just den här den Läkemedelsordinationen och som (verksamhetsmässigt) signerat den.\n\nOrdinatören kan i undantagsfall sakna hsa-id och behöva anges med för- och efternamn i klartext",
      "comment" : "TKB-fält: `prescribedBy` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy.prescriberId",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy.prescriberId",
      "short" : "Förskrivarens HSA-ID",
      "definition" : "Förskrivarens HSA-ID",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy.prescriberName",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy.prescriberName",
      "short" : "Förskrivarens namn",
      "definition" : "Förskrivarens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy.prescriberCode",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy.prescriberCode",
      "short" : "Förskrivarkod",
      "definition" : "Förskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy.workplaceCode",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.prescribedBy.workplaceCode",
      "short" : "Arbetsplatskod",
      "definition" : "Arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.startTime",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.startTime",
      "short" : "Insättningstidpunkt",
      "definition" : "Insättningstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.endTime",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.endTime",
      "short" : "Utsättningstidpunkt",
      "definition" : "Utsättningstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.treatmentReason",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.treatmentReason",
      "short" : "Behandlingsorsak",
      "definition" : "Behandlingsorsak",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.medicationInformation",
      "path" : "registermedicationprescription-request.medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription.medicationInformation",
      "short" : "Läkemedelsinformation",
      "definition" : "Läkemedelsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    }]
  }
}

```
