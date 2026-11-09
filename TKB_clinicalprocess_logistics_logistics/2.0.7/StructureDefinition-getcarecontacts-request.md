# GetCareContacts — Request - clinicalprocess: logistics: logistics 2.0.7 v2.0.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareContacts — Request**

## Logical Model: GetCareContacts — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetCareContactsRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i tjänstekontraktet GetCareContacts 2.0 (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2). Representerar GetCareContactsType i GetCareContactsResponder_2.0.xsd. 

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
  "version" : "2.0",
  "name" : "GetCareContactsRequest",
  "title" : "GetCareContacts — Request",
  "status" : "active",
  "date" : "2026-11-09T03:24:40+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i tjänstekontraktet GetCareContacts 2.0\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2).\nRepresenterar GetCareContactsType i GetCareContactsResponder_2.0.xsd.",
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
      "definition" : "Logisk modell för begäran i tjänstekontraktet GetCareContacts 2.0\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2).\nRepresenterar GetCareContactsType i GetCareContactsResponder_2.0.xsd.",
      "constraint" : [{
        "key" : "getcarecontacts-request-sourcesystem-when-id",
        "severity" : "error",
        "human" : "sourceSystemHSAId är tvingande om careContactId angivits.",
        "expression" : "careContactId.exists() implies sourceSystemHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcarecontacts-request"
      }]
    },
    {
      "id" : "getcarecontacts-request.careUnitHSAId",
      "path" : "getcarecontacts-request.careUnitHSAId",
      "short" : "careUnitHSAId",
      "definition" : "Begränsning av sökning avseende vårdenheter vilket motsvarar careUnitHSAId i HealthcareProfessionalType.",
      "comment" : "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getcarecontacts-request.patientId",
      "path" : "getcarecontacts-request.patientId",
      "short" : "patientId",
      "definition" : "Id för patienten.\n\nvalue sätts till patientens identifierare.\n\nType sätts till OID för typ av identifierare. Anges med 12 siffror utan avskiljare.\n\nFör personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).\n\nFör samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).\n\nFör reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getcarecontacts-request.timePeriod",
      "path" : "getcarecontacts-request.timePeriod",
      "short" : "timePeriod",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där datumintervallet, som bildas av tidpunkterna authorTime, careContactTimePeriod.start och careContactTimePeriod.end i svaret, helt eller delvis överlappar med det angivna sökintervallet, dvs.\n\ndet bildade intervallets startdatum ligger inom sökintervallets start- och slutdatum\n\ndet bildade intervallets slutdatum ligger inom sökintervallets start- och slutdatum\n\ndet bildade intervallets startdatum ligger före sökintervallets startdatum och slutdatum ligger efter sökintervallets slutdatum\n\nNotera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.",
      "comment" : "TKB-fält: `timePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/DatePeriodType"
      }]
    },
    {
      "id" : "getcarecontacts-request.sourceSystemHSAId",
      "path" : "getcarecontacts-request.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "Begränsar sökningen till vårdkontakt som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nFältet är tvingande om careContactId angivits.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getcarecontacts-request.careContactId",
      "path" : "getcarecontacts-request.careContactId",
      "short" : "careContactId",
      "definition" : "Begränsar sökningen till dokument som Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.",
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
