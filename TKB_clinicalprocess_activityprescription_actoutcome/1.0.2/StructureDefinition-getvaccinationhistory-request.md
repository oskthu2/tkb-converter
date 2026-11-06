# GetVaccinationHistory — Request - clinicalprocess: activityprescription: actoutcome 1.0 v1.0.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetVaccinationHistory — Request**

## Logical Model: GetVaccinationHistory — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory-request | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:GetVaccinationHistoryRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i tjänstekontraktet GetVaccinationHistory 1.0 (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1). Elementnamnen följer XML-schemat GetVaccinationHistoryResponder_1.0.xsd. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-actoutcome|current/StructureDefinition/StructureDefinition-getvaccinationhistory-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getvaccinationhistory-request.csv), [Excel](StructureDefinition-getvaccinationhistory-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getvaccinationhistory-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory-request",
  "version" : "1.0",
  "name" : "GetVaccinationHistoryRequest",
  "title" : "GetVaccinationHistory — Request",
  "status" : "active",
  "date" : "2026-11-06T20:59:40+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i tjänstekontraktet GetVaccinationHistory 1.0\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1).\nElementnamnen följer XML-schemat GetVaccinationHistoryResponder_1.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getvaccinationhistory-request",
      "path" : "getvaccinationhistory-request",
      "short" : "GetVaccinationHistory — Request",
      "definition" : "Logisk modell för begäran i tjänstekontraktet GetVaccinationHistory 1.0\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1).\nElementnamnen följer XML-schemat GetVaccinationHistoryResponder_1.0.xsd.",
      "constraint" : [{
        "key" : "getvaccinationhistory-request-sourcesystem",
        "severity" : "error",
        "human" : "sourceSystemHSAid är tvingande om careContactId angivits (TKB 1.0, fältregler för sourceSystemHSAId)",
        "expression" : "careContactId.exists() implies sourceSystemHSAid.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory-request"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.careUnitHSAid",
      "path" : "getvaccinationhistory-request.careUnitHSAid",
      "short" : "Filtrering på vårdenhet (HSAIdType)",
      "definition" : "Filtrering på Vårdenhet vilket motsvarar careUnitHSAid i HealthCareProfessionalType. Journalposter som saknar märkning med vårdenhet ingår inte i svaret om detta fält använts i anropet.",
      "comment" : "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.patientId",
      "path" : "getvaccinationhistory-request.patientId",
      "short" : "Id för patienten (PersonIdType)",
      "definition" : "Id för patienten.\n\nvalue sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n\nType sätts till OID för typ av identifierare.\n\nFör personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).\n\nFör samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).\n\nFör reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.timePeriod",
      "path" : "getvaccinationhistory-request.timePeriod",
      "short" : "Begränsning av sökningen i tid (DatePeriodType)",
      "definition" : "Begränsning av sökningen i tid. Begränsningen sker genom att resultatet innehåller de poster som i något av de tidsfält som ingår i vaccinationMedicalRecordHeader eller vaccinationMedicalRecordBody.registrationrecord.date anger en tidpunkt som ligger inom det sökta tidsintervallet (start- och slutpunkt inkluderas i intervallet).",
      "comment" : "TKB-fält: `timePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "constraint" : [{
        "key" : "getvaccinationhistory-request-timeperiod",
        "severity" : "error",
        "human" : "Minst ett av start och end ska anges (DatePeriodType)",
        "expression" : "start.exists() or end.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory-request"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.sourceSystemHSAid",
      "path" : "getvaccinationhistory-request.sourceSystemHSAid",
      "short" : "Begränsar sökningen till angivet källsystem (HSAIdType)",
      "definition" : "Begränsar sökningen till dokument som är skapade i angivet system.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nFältet är tvingande om careContactId angivits.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory-request.careContactId",
      "path" : "getvaccinationhistory-request.careContactId",
      "short" : "Begränsar sökningen till angiven vård- och omsorgskontakt",
      "definition" : "Begränsar sökningen till den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet",
      "comment" : "TKB-fält: `careContactId` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
