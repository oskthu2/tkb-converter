# GetCarePlans — Request - clinicalprocess: logistics: logistics v3.0.13

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCarePlans — Request**

## Logical Model: GetCarePlans — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcareaplans-request | *Version*:3.0.13 |
| Draft as of 2026-09-09 | *Computable Name*:GetCarePlansRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetCarePlans (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2). Representerar GetCarePlansType i GetCarePlansResponder_2.0.xsd. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-logistics-logistics|current/StructureDefinition/StructureDefinition-getcareaplans-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcareaplans-request.csv), [Excel](StructureDefinition-getcareaplans-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcareaplans-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcareaplans-request",
  "version" : "3.0.13",
  "name" : "GetCarePlansRequest",
  "title" : "GetCarePlans — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:48:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetCarePlans\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2).\nRepresenterar GetCarePlansType i GetCarePlansResponder_2.0.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcareaplans-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcareaplans-request",
      "path" : "getcareaplans-request",
      "short" : "GetCarePlans — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetCarePlans\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2).\nRepresenterar GetCarePlansType i GetCarePlansResponder_2.0.xsd."
    },
    {
      "id" : "getcareaplans-request.careUnitHSAId",
      "path" : "getcareaplans-request.careUnitHSAId",
      "short" : "Filtrering på PDL-enhet (vårdenhetens HSA-id)",
      "definition" : "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType.\nTyp HSAIdType (string).\nKardinalitet: Valfri, lista (0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareaplans-request.patientId",
      "path" : "getcareaplans-request.patientId",
      "short" : "Patientens identifierare",
      "definition" : "Id för patienten. Anges med 12 tecken utan avskiljare.\nsystem = OID för typ av identifierare:\n- Personnummer: 1.2.752.129.2.1.3.1\n- Samordningsnummer: 1.2.752.129.2.1.3.3\n- Reservnummer: lokalt definierade OID (t.ex. SLL: 1.2.752.97.3.1.3)\nTyp PersonIdType. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcareaplans-request.datePeriod",
      "path" : "getcareaplans-request.datePeriod",
      "short" : "Datumintervall för sökning",
      "definition" : "Begränsar sökningen till det angivna datumintervallet. Returnerar poster där\ndocumentTime ligger inom sökintervallets start- och slutdatum.\nTyp DatePeriodType. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getcareaplans-request.datePeriod.start",
      "path" : "getcareaplans-request.datePeriod.start",
      "short" : "Startdatum (YYYYMMDD)",
      "definition" : "Startdatum för sökintervallet. Format ÅÅÅÅMMDD.\nKardinalitet: Obligatorisk om datePeriod anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcareaplans-request.datePeriod.end",
      "path" : "getcareaplans-request.datePeriod.end",
      "short" : "Slutdatum (YYYYMMDD)",
      "definition" : "Slutdatum för sökintervallet. Format ÅÅÅÅMMDD.\nKardinalitet: Obligatorisk om datePeriod anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getcareaplans-request.sourceSystemHSAId",
      "path" : "getcareaplans-request.sourceSystemHSAId",
      "short" : "Källsystemets HSA-id",
      "definition" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet.\nVärdet måste överensstämma med logicalAddress i anropets SOAP-header.\nFältet är tvingande om careContactId angivits eller vid begäran på reservnummer.\nTyp HSAIdType (string). Kardinalitet: Valfri (villkorligt obligatorisk).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getcareaplans-request.careContactId",
      "path" : "getcareaplans-request.careContactId",
      "short" : "Specifika vårdkontakt-id:n att filtrera på",
      "definition" : "Begränsar sökningen till vård- och omsorgsplaner kopplade till angivna vårdkontakter.\nMatchar documentId i GetCareContacts-svaret.\nKardinalitet: Valfri, lista (0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
