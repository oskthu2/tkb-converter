# GetCareContacts — Request - clinicalprocess: logistics: logistics v3.0.13

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareContacts — Request**

## Logical Model: GetCareContacts — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts-request | *Version*:3.0.13 |
| Draft as of 2026-09-09 | *Computable Name*:GetCareContactsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetCareContacts (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3). Representerar GetCareContactsType i GetCareContactsResponder_3.0.xsd. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-logistics-logistics|current/StructureDefinition/StructureDefinition-getcarecontacts-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcarecontacts-request.csv), [Excel](StructureDefinition-getcarecontacts-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcarecontacts-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts-request",
  "version" : "3.0.13",
  "name" : "GetCareContactsRequest",
  "title" : "GetCareContacts — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:48:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetCareContacts\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).\nRepresenterar GetCareContactsType i GetCareContactsResponder_3.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcarecontacts-request",
      "path" : "getcarecontacts-request",
      "short" : "GetCareContacts — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetCareContacts\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).\nRepresenterar GetCareContactsType i GetCareContactsResponder_3.0.xsd.",
      "constraint" : [{
        "key" : "getcarecontacts-sourcesystemhsaid-required",
        "severity" : "warning",
        "human" : "sourceSystemHSAId ska anges när careContactId är angivet",
        "expression" : "careContactId.exists() implies sourceSystemHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts-request"
      }]
    },
    {
      "id" : "getcarecontacts-request.careUnitHSAId",
      "path" : "getcarecontacts-request.careUnitHSAId",
      "short" : "Filtrering på PDL-enhet (vårdenhetens HSA-id)",
      "definition" : "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType.\nTyp HSAIdType (string).\nKardinalitet: Valfri, lista (0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts-request.careGiverHSAId",
      "path" : "getcarecontacts-request.careGiverHSAId",
      "short" : "Filtrering på informationsägande vårdgivare",
      "definition" : "Filtrering på informationsägande vårdgivare, vilket motsvarar careGiverHSAId\ni healthcareProfessionalType. Typ HSAIdType (string).\nKardinalitet: Valfri, lista (0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts-request.patientId",
      "path" : "getcarecontacts-request.patientId",
      "short" : "Patientens identifierare",
      "definition" : "Id för patienten. Anges med 12 tecken utan avskiljare.\nsystem = OID för typ av identifierare:\n- Personnummer: 1.2.752.129.2.1.3.1\n- Samordningsnummer: 1.2.752.129.2.1.3.3\n- Reservnummer: lokalt definierade OID (t.ex. SLL: 1.2.752.97.3.1.3)\nTyp PersonIdType. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcarecontacts-request.datePeriod",
      "path" : "getcarecontacts-request.datePeriod",
      "short" : "Datumintervall för sökning",
      "definition" : "Begränsar sökningen till det angivna datumintervallet. Returnerar poster där\ndatumintervallet (authorTime/careContactTimePeriod.start/end) helt eller delvis\növerlappar med sökintervallet. Typ DatePeriodType.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcarecontacts-request.datePeriod.start",
      "path" : "getcarecontacts-request.datePeriod.start",
      "short" : "Startdatum (YYYYMMDD)",
      "definition" : "Startdatum för sökintervallet. Format ÅÅÅÅMMDD.\nKardinalitet: Obligatorisk om datePeriod anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcarecontacts-request.datePeriod.end",
      "path" : "getcarecontacts-request.datePeriod.end",
      "short" : "Slutdatum (YYYYMMDD)",
      "definition" : "Slutdatum för sökintervallet. Format ÅÅÅÅMMDD.\nKardinalitet: Obligatorisk om datePeriod anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcarecontacts-request.sourceSystemHSAId",
      "path" : "getcarecontacts-request.sourceSystemHSAId",
      "short" : "Källsystemets HSA-id",
      "definition" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet.\nVärdet måste överensstämma med logicalAddress i anropets SOAP-header.\nFältet är tvingande om careContactId angivits eller vid begäran på reservnummer.\nTyp HSAIdType (string). Kardinalitet: Valfri (villkorligt obligatorisk).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcarecontacts-request.careContactId",
      "path" : "getcarecontacts-request.careContactId",
      "short" : "Specifika vårdkontakt-id:n att söka på",
      "definition" : "Begränsar sökningen till den/de vårdkontakter vars id anges.\nMotsvarar documentId i careContactHeader i svaret.\nKardinalitet: Valfri, lista (0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
