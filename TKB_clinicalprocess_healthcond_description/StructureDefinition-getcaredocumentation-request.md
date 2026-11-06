# GetCareDocumentation — Request - clinicalprocess: healthcond: description v3.0.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareDocumentation — Request**

## Logical Model: GetCareDocumentation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getcaredocumentation-request | *Version*:3.0 |
| Active as of 2026-11-06 | *Computable Name*:GetCareDocumentationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i GetCareDocumentation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3). Söker journalanteckningar för en patient med valfri filtrering. 

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
  "version" : "3.0",
  "name" : "GetCareDocumentationRequest",
  "title" : "GetCareDocumentation — Request",
  "status" : "active",
  "date" : "2026-11-06T21:05:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i GetCareDocumentation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).\nSöker journalanteckningar för en patient med valfri filtrering.",
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
      "definition" : "Logisk modell för requestparametrar i GetCareDocumentation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).\nSöker journalanteckningar för en patient med valfri filtrering."
    },
    {
      "id" : "getcaredocumentation-request.careUnit",
      "path" : "getcaredocumentation-request.careUnit",
      "short" : "Filtrering på vårdenhet",
      "definition" : "Filtrering på vårdenhet vilket motsvarar accountableCareUnit i svaret.\n\nroot sätts till OID(1.2.752.129.2.1.4.1) för HSA\n\nextension sätts till HSA-id på vårdenhet.",
      "comment" : "TKB-fält: `careUnit` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.healthcareProvider",
      "path" : "getcaredocumentation-request.healthcareProvider",
      "short" : "Filtrering på vårdgivare",
      "definition" : "Filtrering på vårdgivare vilket motsvarar accountableHealthcareProvider i svaret.\n\nroot sätts till OID (1.2.752.129.2.1.4.1) för HSA\n\nextension sätts till HSA-id på vårdgivare.",
      "comment" : "TKB-fält: `healthcareProvider` (`IIType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.patientId",
      "path" : "getcaredocumentation-request.patientId",
      "short" : "Patientens id",
      "definition" : "Id för patienten där fältet extension sätts till patientens identitetsbeteckning. Anges med 12 tecken utan avskiljare.\n\nTjänsteproducenten ska i svaret leverera all information om patienten på en begäran riktad mot någon av patientens identitetsbeteckningar, dvs. även information som har registrerats på andra till patienten kopplade identitetsbeteckningar (personnummer, samordningsnummer eller lokala reservnummer).\n\nFältet root sätts till OID för typ av identifierare.\n\n1) För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\n2) För samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\n3) Tjänsteproducenter ska även stödja sökning på lokal reservidentitet med hjälp av att ange lokalt definierade OID:ar för lokal reservidentitet, exempelvis SLL:s lokal reservidentitet (1.2.752.97.3.1.3).\n\nOBS lokal reservidentitet kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI ska göras av en tjänsteproducent för lokal reservidentitet.\n\nEn tjänstekonsument som vill begära mha. lokal reservidentitet måste därmed använda sig av systemadressering och ha vetskap om vilken OID för den specifika lokala reservidentitet som gäller vid anrop mot en specifik tjänsteproducent.",
      "comment" : "TKB-fält: `patientId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.datePeriod",
      "path" : "getcaredocumentation-request.datePeriod",
      "short" : "Datumintervall för sökning",
      "definition" : "Begränsar sökningen till det angivna intervallet. Begränsningen innebär att endast poster returneras där någon av tidpunkterna record.timestamp, author.timestamp, signature.timestamp i headern eller dissentingOpinion.authorTime i svaret ligger inom sökintervallets start- och slutdatum.\n\nNotera att sökintervallet beskrivs som ett datumintervall. Vid jämförelse konverteras datapostens tidpunkter till datum.",
      "comment" : "TKB-fält: `datePeriod` (`DatePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getcaredocumentation-request.sourceSystemId",
      "path" : "getcaredocumentation-request.sourceSystemId",
      "short" : "Källsystem-id",
      "definition" : "Begränsar sökningen till anteckningar som är skapade i det angivna källsystemet. Tjänsteproducenten förväntas enbart returnera poster som tillhör efterfrågat källsystem.\n\nFältet root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till källsystemets HSA-id.\n\nSe även regel sourceSystemId.",
      "comment" : "TKB-fält: `sourceSystemId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getcaredocumentation-request.hasMoreReference",
      "path" : "getcaredocumentation-request.hasMoreReference",
      "short" : "Referens för partiell hämtning",
      "definition" : "Kan anges av tjänstekonsument när man tidigare fått ett hasMore-svar från tjänsteproducent att det finns ytterligare information att hämta.\n\nSe även regel hasMoreReference.",
      "comment" : "TKB-fält: `hasMoreReference` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Kan anges av tjänstekonsument när man tidigare fått ett svar med hasMore.\nAnropet måste då vara direktadresserat till den logiska adressen som angavs i hasMore.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
