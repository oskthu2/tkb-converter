# ProcessRegistrationNotification — Request - followup: qualityregistry: nkrr v1.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessRegistrationNotification — Request**

## Logical Model: ProcessRegistrationNotification — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/processregistrationnotification-request | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:ProcessRegistrationNotificationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i ProcessRegistrationNotification (RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.followup-qualityregistry-nkrr|current/StructureDefinition/StructureDefinition-processregistrationnotification-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processregistrationnotification-request.csv), [Excel](StructureDefinition-processregistrationnotification-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processregistrationnotification-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/processregistrationnotification-request",
  "version" : "1.0",
  "name" : "ProcessRegistrationNotificationRequest",
  "title" : "ProcessRegistrationNotification — Request",
  "status" : "active",
  "date" : "2026-11-06T21:23:13+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i ProcessRegistrationNotification\n(RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/followup-qualityregistry-nkrr/StructureDefinition/processregistrationnotification-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processregistrationnotification-request",
      "path" : "processregistrationnotification-request",
      "short" : "ProcessRegistrationNotification — Request",
      "definition" : "Logisk modell för requestparametrar i ProcessRegistrationNotification\n(RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1)."
    },
    {
      "id" : "processregistrationnotification-request.registrationType",
      "path" : "processregistrationnotification-request.registrationType",
      "short" : "Den typ av registrering i kvalitetsregistret som notifieringen avses ge upphov till",
      "definition" : "Den typ av registrering i kvalitetsregistret som notifieringen avses ge upphov till.\n\nSka anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret.",
      "comment" : "TKB-fält: `type` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processregistrationnotification-request.patientId",
      "path" : "processregistrationnotification-request.patientId",
      "short" : "Id för patienten",
      "definition" : "Id för patienten där fältet extension sätts till patientens identitetsbeteckning. Anges med 12 tecken utan avskiljare.\n\nFältet root sätts till OID för typ av identifierare.\n\nFör personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\nFör samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.",
      "comment" : "TKB-fält: `patientId` (`IIType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processregistrationnotification-request.healthcareProviderId",
      "path" : "processregistrationnotification-request.healthcareProviderId",
      "short" : "Id för informationsägande vårdgivare",
      "definition" : "Id för informationsägande vårdgivare för informationen i notifieringen.\n\nAnges för att möjliggöra spårbarhet till informationsägande vårdgivare för informationen som lämnas ut och som hanteras av informationsmottaren eller andra parter.\n\nI första hand HSA-id alternativt i andra hand organisationsnummer.\n\nOm HSA-id används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id.\n\nOm organisationsnummer används skall fältet root sättas till OID för organisationsnummer (1.2.752.29.4.3) och fältet extension sättas till organisationsnumret.\n\nEnskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer.",
      "comment" : "TKB-fält: `healthcareProviderId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processregistrationnotification-request.registerUnitId",
      "path" : "processregistrationnotification-request.registerUnitId",
      "short" : "Id för registerenhet",
      "definition" : "Id för registerenhet.\n\nRegisterenhet är den minsta indelning av datatillhörighet som ett kvalitetsregister använder för registrering och analys av data. Inte sällan motsvarar en registerenhet en vårdenhet inom vårdgivaren, men inte alltid.\n\nSka anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret.",
      "comment" : "TKB-fält: `registerUnitId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processregistrationnotification-request.reference",
      "path" : "processregistrationnotification-request.reference",
      "short" : "Information om referenser till tidigare registreringar i kvalitetsregistret",
      "definition" : "Information om referenser till tidigare registreringar i kvalitetsregistret. Informationen används för att ge rätt kontext på den avsedda registreringen.\n\nSka anges enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret.",
      "comment" : "TKB-fält: `reference` (`ReferenceType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processregistrationnotification-request.reference.key",
      "path" : "processregistrationnotification-request.reference.key",
      "short" : "Nyckel för referens",
      "definition" : "Nyckel för referens. Vad som ska anges som nyckel ska framgå i den informationsspecifikation\nsom kvalitetsregistret tillhandahåller.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processregistrationnotification-request.reference.value",
      "path" : "processregistrationnotification-request.reference.value",
      "short" : "Information om tidigare registrering",
      "definition" : "Information om tidigare registrering enligt den angivna nyckeln.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processregistrationnotification-request.nkrrParameters",
      "path" : "processregistrationnotification-request.nkrrParameters",
      "short" : "Parametrar för tjänstekontraktet GetFormData",
      "definition" : "Här kan parametrar som används i begäran för tjänstekontraktet GetFormData anges.\n\nParametrarna ska fyllas i enligt den informationsspecifikation som kvalitetsregistret tillhandahåller för att beskriva hanteringen av notifiering till registret.",
      "comment" : "TKB-fält: `NkrrParameters` (`NkrrParametersType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processregistrationnotification-request.nkrrParameters.formId",
      "path" : "processregistrationnotification-request.nkrrParameters.formId",
      "short" : "Identifierare av mallen",
      "definition" : "Identifierare av mallen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processregistrationnotification-request.nkrrParameters.sampleDate",
      "path" : "processregistrationnotification-request.nkrrParameters.sampleDate",
      "short" : "Datum för filtrering vid insamling av underlag",
      "definition" : "Datum för filtrering vid insamling av underlag. Datum som skickas i attributet används för att\npopulera attributen careEncounterStartDate och careEncounterEndDate i tjänstekontraktet GetFormData.\nObservera att ordningen på datumen som skickas kan ha betydelse.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processregistrationnotification-request.nkrrParameters.careUnitId",
      "path" : "processregistrationnotification-request.nkrrParameters.careUnitId",
      "short" : "Vårdenheter inom vilka underlag för registrering ska hämtas",
      "definition" : "Vårdenheter inom vilka underlag för registrering ska hämtas.\nFältet root sätts till OID (1.2.752.129.2.1.4.1) för HSA.\nFältet extension sätts till HSA-id på vårdenhet.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
