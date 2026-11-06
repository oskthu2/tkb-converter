# GetMedicationHistory — Request - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMedicationHistory — Request**

## Logical Model: GetMedicationHistory — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getmedicationhistory-request | *Version*:2.2 |
| Active as of 2026-11-06 | *Computable Name*:GetMedicationHistoryRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetMedicationHistory. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-actoutcome|current/StructureDefinition/StructureDefinition-getmedicationhistory-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmedicationhistory-request.csv), [Excel](StructureDefinition-getmedicationhistory-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmedicationhistory-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getmedicationhistory-request",
  "version" : "2.2",
  "name" : "GetMedicationHistoryRequest",
  "title" : "GetMedicationHistory — Request",
  "status" : "active",
  "date" : "2026-11-06T20:58:52+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetMedicationHistory.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getmedicationhistory-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmedicationhistory-request",
      "path" : "getmedicationhistory-request",
      "short" : "GetMedicationHistory — Request",
      "definition" : "Logisk modell för requestparametrar i GetMedicationHistory."
    },
    {
      "id" : "getmedicationhistory-request.careUnitHSAId",
      "path" : "getmedicationhistory-request.careUnitHSAId",
      "short" : "Begränsar sökningen till angivna informationsägande vårdenheter",
      "definition" : "Begränsar sökningen till angivna informationsägande vårdenheter. Anges med HSA-id. Motsvarar careUnitHSAId i healthcareProfessionalType i svaret.\n\nroot sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1).\n\nextension sätts till HSA-id för informationsägande vårdenhet.",
      "comment" : "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationhistory-request.careGiverHSAId",
      "path" : "getmedicationhistory-request.careGiverHSAId",
      "short" : "Begränsar sökningen till angivna informationsägande vårdgivare",
      "definition" : "Begränsar sökningen till angivna informationsägande vårdgivare. Anges I första hand HSAid, i andra hand organisationsnummer. Motsvarar careGiverHSAId i healthcareProfessionalType i svaret.\n\nOm HSAid används:\n\nroot sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)\n\nextension sätts till HSA-id\n\nOm organisationsnummer används:\n\nroot sätts till OID för organisationsnummer (1.2.752.29.4.3)\n\nextension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer.",
      "comment" : "TKB-fält: `careGiverHSAId` (`HSAIdType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationhistory-request.patientId",
      "path" : "getmedicationhistory-request.patientId",
      "short" : "Begränsar sökningen till angiven personidentifierare",
      "definition" : "Begränsar sökningen till angiven personidentifierare för en patient. Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten, dvs. även uppgifter som har registrerats på andra, till individen, kopplade personidentifierare.\n\nid sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n\ntype sätts till OID för typ av personidentifierare.\n\nFör personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\nFör samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\nFör andra typer av personidentifierare sätts type till aktuell OID.",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationhistory-request.datePeriod",
      "path" : "getmedicationhistory-request.datePeriod",
      "short" : "Begränsar sökningen till det angivna datumintervallet",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av ordinationstidpunkt (medicationMedicalRecordBody/medicationPrescription/prescriber/authorTime) och utsättningstidpunkt (medicationMedicalRecordBody/endOfTreatment) i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs.\n\ndet bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum\n\ndet bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum\n\ndet bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum\n\nI de fall ordinationstidpunkt inte är angivet ersätts denna tidpunkt med insättningstidpunkt (medicationMedicalRecordBody/startOfTreatment). Om även insättningstidpunkt saknas ersätts denna tidpunkt med registreringstidpunkt (medicationMedicalRecordHeader/accountableHealthcareProfessional/authorTime).\n\nI de fall utsättningstidpunkt inte finns angivet är det bildade intervallet öppet från ordinationstidpunkten och framåt i tiden.\n\nNotera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.",
      "comment" : "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getmedicationhistory-request.sourceSystemHSAId",
      "path" : "getmedicationhistory-request.sourceSystemHSAId",
      "short" : "Begränsar sökningen till angivet källsystem",
      "definition" : "Begränsar sökningen till journalposter som är skapade i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nSka anges om careContactId angivits.\n\nSka anges vid begäran på LRID.\n\nOm sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST\n\nOm careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationhistory-request.careContactId",
      "path" : "getmedicationhistory-request.careContactId",
      "short" : "Begränsar sökningen till angiven vård- och omsorgskontakt",
      "definition" : "Begränsar sökningen till den läkemedelsinformation som föranletts av den vård- och omsorgskontakt som anges. Identiteten är unik inom källsystemet. Alla typer av ordinationer (insättningar, ändringar och utsättningar) som gjorts vid vård-och omsorgskontakten omfattas här.",
      "comment" : "TKB-fält: `careContactId` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmedicationhistory-request.prescriptionChainId",
      "path" : "getmedicationhistory-request.prescriptionChainId",
      "short" : "Ordinationskedje-id: begränsar till en viss ordinationskedja",
      "definition" : "Ordinationskedje-id.\n\nAnvänds för att endast ge poster avseende en viss ordinationskedja. Om producenten saknar stöd för kedjor, så returneras alla poster med angiven status (och som möter övriga sökvillkor)",
      "comment" : "TKB-fält: `prescriptionChainId` (`IIType`, kardinalitet 0..1).\n\n**Modellanteckning:** Om producenten inte hittar angiven ordinationskedja ska ett tomt svar returneras.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmedicationhistory-request.prescriptionStatus",
      "path" : "getmedicationhistory-request.prescriptionStatus",
      "short" : "Begränsar sökningen till aktiva eller inaktiva ordinationer",
      "definition" : "Begränsar sökningen till endast de ordinationer som är aktiva eller inaktiva, om inget anges ska alla ordinationer returneras, om den är satt till Active ska enbart den ”aktuella läkemedelslistan” returneras.",
      "comment" : "TKB-fält: `prescriptionStatus` (`PrescriptionStatusEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/ValueSet/prescriptionstatus-vs"
      }
    }]
  }
}

```
