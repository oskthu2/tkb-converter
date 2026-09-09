# GetRequestActivities — Request - crm: requeststatus v2.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetRequestActivities — Request**

## Logical Model: GetRequestActivities — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-requeststatus/StructureDefinition/getrequestactivities-request | *Version*:2.0.1 |
| Draft as of 2026-09-09 | *Computable Name*:GetRequestActivitiesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet GetRequestActivities (RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-requeststatus|current/StructureDefinition/StructureDefinition-getrequestactivities-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getrequestactivities-request.csv), [Excel](StructureDefinition-getrequestactivities-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getrequestactivities-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-requeststatus/StructureDefinition/getrequestactivities-request",
  "version" : "2.0.1",
  "name" : "GetRequestActivitiesRequest",
  "title" : "GetRequestActivities — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:49:32+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetRequestActivities\n(RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-requeststatus/StructureDefinition/getrequestactivities-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getrequestactivities-request",
      "path" : "getrequestactivities-request",
      "short" : "GetRequestActivities — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet GetRequestActivities\n(RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2)."
    },
    {
      "id" : "getrequestactivities-request.careUnitHSAId",
      "path" : "getrequestactivities-request.careUnitHSAId",
      "short" : "Filtrering på vårdenhet",
      "definition" : "Begränsar sökning till angiven vårdenhet (accountableCareUnit i svaret).\nroot = 1.2.752.129.2.1.4.1 (HSA OID), extension = HSA-id på vårdenhet.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getrequestactivities-request.careGiverHSAId",
      "path" : "getrequestactivities-request.careGiverHSAId",
      "short" : "Filtrering på vårdgivare",
      "definition" : "Begränsar sökning till angiven vårdgivare (accountableHealthcareProvider i svaret).\nroot = 1.2.752.129.2.1.4.1 (HSA OID), extension = HSA-id på vårdgivare.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getrequestactivities-request.patientId",
      "path" : "getrequestactivities-request.patientId",
      "short" : "Patientens personidentifierare",
      "definition" : "Obligatorisk. Begränsar sökning till angiven personidentifierare.\nProducenten ska returnera alla uppgifter kopplade till patienten, inkl. under andra id:n.\nroot = OID för typ av personidentifierare:\n  - Personnummer: 1.2.752.129.2.1.3.1\n  - Samordningsnummer: 1.2.752.129.2.1.3.3\n  - Övriga: aktuell OID\nextension = patientens identifierare (12 tecken utan avskiljare).\nOBS: Lokal reservidentitet kräver systemadressering — kan ej användas med EI/aggregerande tjänster.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getrequestactivities-request.datePeriod",
      "path" : "getrequestactivities-request.datePeriod",
      "short" : "Söktidsperiod",
      "definition" : "Begränsar sökning till angivet datumintervall.\nSamtliga statusrader för en remiss returneras om minst en statusrad (body.eventTime) faller\ninom intervallet, eller om statusrader spänner över hela intervallet.\nOBS: Datumintervall (inte tidsstämplat) — tidpunkter konverteras till datum vid jämförelse.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getrequestactivities-request.sourceSystemHSAId",
      "path" : "getrequestactivities-request.sourceSystemHSAId",
      "short" : "Källsystem-id",
      "definition" : "Begränsar sökning till angivet källsystem.\nVärdet måste överensstämma med logicalAddress i SOAP-headern.\nAggregerande tjänster används ej när detta fält anges.\nSka anges vid begäran på reservnummer.\nroot = 1.2.752.129.2.1.4.1, extension = källsystemets HSA-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getrequestactivities-request.typeOfRequest",
      "path" : "getrequestactivities-request.typeOfRequest",
      "short" : "Remisstyp",
      "definition" : "Filtrering på remisstyp (Kv framställantyp, OID: 1.2.752.129.2.2.2.24).\n1 = röntgenremiss, 2 = labbremiss, 4 = allmänremiss.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/crm-requeststatus/ValueSet/kvframstallantyp-vs"
      }
    }]
  }
}

```
