# GetCareDocumentation — Request - clinicalprocess: healthcond: description 2.1 v2.1.19

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareDocumentation — Request**

## Logical Model: GetCareDocumentation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getcaredocumentation-request | *Version*:2.1 |
| Active as of 2026-11-06 | *Computable Name*:GetCareDocumentationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getcaredocumentation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getcaredocumentation-request.csv), [Excel](StructureDefinition-getcaredocumentation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getcaredocumentation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getcaredocumentation-request",
  "version" : "2.1",
  "name" : "GetCareDocumentationRequest",
  "title" : "GetCareDocumentation — Request",
  "status" : "active",
  "date" : "2026-11-06T21:06:31+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getcaredocumentation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getcaredocumentation-request",
      "path" : "getcaredocumentation-request",
      "short" : "GetCareDocumentation — Request",
      "definition" : "Logisk modell för begäran i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18.",
      "constraint" : [{
        "key" : "getcaredocumentation-request-carecontact-requires-sourcesystem",
        "severity" : "error",
        "human" : "sourceSystemHSAId ska anges om careContactId angivits (TKB, fältregler för begäran).",
        "expression" : "careContactId.exists() implies sourceSystemHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getcaredocumentation-request"
      }]
    },
    {
      "id" : "getcaredocumentation-request.careUnitHSAId",
      "path" : "getcaredocumentation-request.careUnitHSAId",
      "short" : "Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType",
      "definition" : "Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType.",
      "comment" : "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*).\n\n**Modellanteckning:** Filtrering på vårdenhet vilket motsvarar careUnitHSAId i HealthcareProfessionalType. TKB-typ: HSAIdType. Kardinalitet: 0..*. OBS: elementet heter careUnitHSAid i XSD:n (GetCareDocumentationResponder_2.1.xsd / clinicalprocess_healthcond_description_2.1.xsd).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.patientId",
      "path" : "getcaredocumentation-request.patientId",
      "short" : "Id för patienten där fältet id sätts till patientens identifierare",
      "definition" : "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n\nFältet type sätts till OID för typ av identifierare.\n\n1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas, [R14].\n\n2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas, [R14]\n\n3) Tjänsteproducenter ska även stödja sökning på reservnummer med hjälp av att ange lokalt definierade OID’ar för reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14].\n\nOBS reservnummer kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för reservnummer.\n\nEn tjänstekonsument som vill begära mha reservnummer måste därmed använda sig av systemadressering och ha vetskap om vilken reservnummer-OID som gäller vid anrop mot en specifik tjänsteproducent.",
      "comment" : "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.timePeriod",
      "path" : "getcaredocumentation-request.timePeriod",
      "short" : "Begränsar sökningen till det angivna intervallet",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna documentTime, authorTime, signatureTime eller dissentingOpinion.authorTime i svaret ligger inom sökintervallets start- och slutdatum.\n\nNotera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.",
      "comment" : "TKB-fält: `timePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getcaredocumentation-request.timePeriod.start",
      "path" : "getcaredocumentation-request.timePeriod.start",
      "min" : 1
    },
    {
      "id" : "getcaredocumentation-request.timePeriod.end",
      "path" : "getcaredocumentation-request.timePeriod.end",
      "min" : 1
    },
    {
      "id" : "getcaredocumentation-request.sourceSystemHSAId",
      "path" : "getcaredocumentation-request.sourceSystemHSAId",
      "short" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet",
      "definition" : "Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.\n\nVärdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).\n\nDet innebär i praktiken att aggregerande tjänster inte används när detta fält anges.\n\nSka anges om careContactId angivits.\n\nSka anges vid begäran på reservnummer.\n\nOm sourceSystemHSAId och logicalAddress är olika ska ett svar endast innehålla en resultType med result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST\n\nOm careContactId är satt och sourceSystemHSAId är tomt ska ett svar endast innehålla en resultType med  result.resultCode satt till ERROR samt result.errorCode satt till INVALID_REQUEST.",
      "comment" : "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.careContactId",
      "path" : "getcaredocumentation-request.careContactId",
      "short" : "Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av …",
      "definition" : "Begränsar sökningen till den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. sourceSystemHSAId måste anges om denna parameter anges.",
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
