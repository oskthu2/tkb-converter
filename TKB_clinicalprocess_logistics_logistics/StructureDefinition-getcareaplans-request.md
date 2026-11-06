# GetCarePlans — Request - clinicalprocess: logistics: logistics v3.0.13

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCarePlans — Request**

## Logical Model: GetCarePlans — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcareaplans-request | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetCarePlansRequest |
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
  "version" : "2.0",
  "name" : "GetCarePlansRequest",
  "title" : "GetCarePlans — Request",
  "status" : "active",
  "date" : "2026-11-06T21:08:38+00:00",
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
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetCarePlans\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2).\nRepresenterar GetCarePlansType i GetCarePlansResponder_2.0.xsd.",
      "constraint" : [{
        "key" : "getcareplans-sourcesystemhsaid-required",
        "severity" : "error",
        "human" : "sourceSystemHSAId ska anges när careContactId är angivet (TKB fältregel för sourceSystemHSAId). Regelns andra villkor, begäran på reservnummer, går inte att avgöra ur meddelandet och kontrolleras inte.",
        "expression" : "careContactId.exists() implies sourceSystemHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-logistics-logistics/StructureDefinition/getcareaplans-request"
      }]
    },
    {
      "id" : "getcareaplans-request.careUnitHSAId",
      "path" : "getcareaplans-request.careUnitHSAId",
      "short" : "Filtrering på PDL-enhet (vårdenhetens HSA-id)",
      "definition" : "Filtrering på PDL-enhet vilket motsvarar careUnitHSAId i healthcareProfessionalType.",
      "comment" : "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*).",
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
      "definition" : "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n\nFältet type sätts till OID för typ av identifierare.\n\n1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\n2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\n3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3).\n\nOBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer.\n\nEn tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer- OID som gäller vid anrop mot en specifik tjänsteproducent.",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).",
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
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där documentTime i svaret ligger inom sökintervallets start- och slutdatum.\n\nNotera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.",
      "comment" : "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
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
      "definition" : "Startdatum. Format ÅÅÅÅMMDD.",
      "comment" : "TKB-fält: `../start` (`string`, kardinalitet 1..1).",
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
      "definition" : "Slutdatum. Format ÅÅÅÅMMDD.",
      "comment" : "TKB-fält: `../end` (`string`, kardinalitet 1..1).",
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
      "definition" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nFältet är tvingande om careContactId angivits.\n\nFältet är tvingande vid begäran på reservnummer.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
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
      "definition" : "Begränsar sökningen till den/de vårdkontakter vars id anges vilket matchar documentId i GetCareContactsResponse/careContact/careContactHeader\n\nSe test-case ”CareContactId Filter” som finns i SOAPui-projektet under test-suite/GetCarePlans",
      "comment" : "TKB-fält: `careContactId` (`string`, kardinalitet 0..*).\n\n**Modellanteckning:** Begränsar sökningen till vård- och omsorgsplaner kopplade till angivna vårdkontakter.\nMatchar documentId i GetCareContacts-svaret.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
