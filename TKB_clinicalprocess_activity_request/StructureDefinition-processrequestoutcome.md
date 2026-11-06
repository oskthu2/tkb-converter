# ProcessRequestOutcome — Remissvar (begäran) - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessRequestOutcome — Remissvar (begäran)**

## Logical Model: ProcessRequestOutcome — Remissvar (begäran) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestoutcome | *Version*:2.2 |
| Active as of 2026-11-06 | *Computable Name*:ProcessRequestOutcome |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ProcessRequestOutcome (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestOutcomeResponder:2, element requestOutcome av typen RequestOutcomeType samt valfri originalRequest). Remissbesvararen skickar delsvar, preliminärt svar eller slutsvar till remittenten. Svaret är enbart ett resultat, se ProcessResult. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activity-request|current/StructureDefinition/StructureDefinition-processrequestoutcome.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processrequestoutcome.csv), [Excel](StructureDefinition-processrequestoutcome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processrequestoutcome",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestoutcome",
  "version" : "2.2",
  "name" : "ProcessRequestOutcome",
  "title" : "ProcessRequestOutcome — Remissvar (begäran)",
  "status" : "active",
  "date" : "2026-11-06T20:58:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i ProcessRequestOutcome (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestOutcomeResponder:2, element requestOutcome av typen RequestOutcomeType samt valfri originalRequest). Remissbesvararen skickar delsvar, preliminärt svar eller slutsvar till remittenten. Svaret är enbart ett resultat, se ProcessResult.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestoutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processrequestoutcome",
      "path" : "processrequestoutcome",
      "short" : "ProcessRequestOutcome — Remissvar (begäran)",
      "definition" : "Logisk modell för begäran i ProcessRequestOutcome (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestOutcomeResponder:2, element requestOutcome av typen RequestOutcomeType samt valfri originalRequest). Remissbesvararen skickar delsvar, preliminärt svar eller slutsvar till remittenten. Svaret är enbart ett resultat, se ProcessResult."
    },
    {
      "id" : "processrequestoutcome.requestId",
      "path" : "processrequestoutcome.requestId",
      "short" : "Remiss id",
      "definition" : "Remiss id\n\nDen ursprungliga remissens remiss-id",
      "comment" : "TKB-fält: `requestOutcome.requestId` (`RequestIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)\n\nMaxlängd 256 tecken\n\n**Modellanteckning:** Den ursprungliga remissens remiss-id. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.requestOutcomeId",
      "path" : "processrequestoutcome.requestOutcomeId",
      "short" : "Svar id",
      "definition" : "Svar id\n\nId för remissvar, enligt format:\n\nKällsystem-Id(HSA-ID)#lokalt-id\n\nExempel: SE162321000451-0001#456",
      "comment" : "TKB-fält: `requestOutcome.requestOutcomeId` (`RequestIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)\n\nMaxlängd 256 tecken\n\n**Modellanteckning:** Id för remissvaret. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.typeOfRequestOutcome",
      "path" : "processrequestoutcome.typeOfRequestOutcome",
      "short" : "Svarstyp",
      "definition" : "Svarstyp\n\nAnger typen av remissvar.\n\nGiltiga värden är:\n\nDSV = Delsvar\n\nPSV = Preliminärt svar\n\nSSV= Slutsvar",
      "comment" : "TKB-fält: `requestOutcome.typeOfRequestOutcome` (`CodeRequestOutcomeType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** codes:codeRequestOutcomeType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/ValueSet/requestoutcometype-vs"
      }
    },
    {
      "id" : "processrequestoutcome.requestVersionNumber",
      "path" : "processrequestoutcome.requestVersionNumber",
      "short" : "Remissversionsnummer",
      "definition" : "Remissversionsnummer\n\nRemissens versionsnummer.\n\nVersion startar alltid på 1 och räknas sekventiellt upp för varje ny version.\n\nDenna räknas upp vid:\n\nÄndrad remiss\n\nVidareskickad remiss\n\nÄndrat betalningsansvar",
      "comment" : "TKB-fält: `requestOutcome.requestVersionNumber` (`VersionNumberType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "processrequestoutcome.requestOutcomeTime",
      "path" : "processrequestoutcome.requestOutcomeTime",
      "short" : "Svarstidpunkt",
      "definition" : "Svarstidpunkt\n\nSvarets skapelsetidpunkt.\n\nDen tidpunkt då remissbesvararen skickar svaret.",
      "comment" : "TKB-fält: `requestOutcome.requestOutcomeTime` (`TimeStampType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processrequestoutcome.patient",
      "path" : "processrequestoutcome.patient",
      "short" : "Patient",
      "definition" : "Patient",
      "comment" : "TKB-fält: `requestOutcome.patient` (`SimplePatientType`, kardinalitet 1..1).\n\n**Modellanteckning:** Patient (SimplePatientType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.patient.personId",
      "path" : "processrequestoutcome.patient.personId",
      "short" : "Person id",
      "definition" : "Person id\n\nPatientens identitet",
      "comment" : "TKB-fält: `requestOutcome.patient.personId` (`PersonIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestoutcome.patient.patientName",
      "path" : "processrequestoutcome.patient.patientName",
      "short" : "Namn",
      "definition" : "Namn\n\nAlla personnamn skrivs sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.\n\nImplementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet.",
      "comment" : "TKB-fält: `requestOutcome.patient.name` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.respondingOrganisation",
      "path" : "processrequestoutcome.respondingOrganisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nDen enhet som har producerat svaret. Detta kan skilja sig från den enhet som remittenten angav som remissmottagande enhet på grund av tekniska eller organisatoriska anledningar. Exempelvis kan det ske en systemintern ”vidareskickning” till en specifik enhet från en central remissmottagning utan att detta notifieras till remittenten.",
      "comment" : "TKB-fält: `requestOutcome.respondingOrganisation` (`FullOrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.respondingOrganisation.careUnitId",
      "path" : "processrequestoutcome.respondingOrganisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för remissbesvarande enhet.",
      "comment" : "TKB-fält: `requestOutcome.respondingOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestoutcome.respondingOrganisation.careUnitName",
      "path" : "processrequestoutcome.respondingOrganisation.careUnitName",
      "short" : "Enhet namn",
      "definition" : "Enhet namn\n\nNamn på enhet.",
      "comment" : "TKB-fält: `requestOutcome.respondingOrganisation.careUnitName` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Namn på enhet. Maxlängd 64 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.respondingOrganisation.careUnitTelephone",
      "path" : "processrequestoutcome.respondingOrganisation.careUnitTelephone",
      "short" : "Enhet telefon",
      "definition" : "Enhet telfon\n\nTelefon till enhet.",
      "comment" : "TKB-fält: `requestOutcome.respondingOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.respondingOrganisation.careUnitEmail",
      "path" : "processrequestoutcome.respondingOrganisation.careUnitEmail",
      "short" : "Enhet epost",
      "definition" : "Enhet epost\n\nE-post till enhet.",
      "comment" : "TKB-fält: `requestOutcome.respondingOrganisation.careUnitEmail` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.respondingOrganisation.careUnitAddress",
      "path" : "processrequestoutcome.respondingOrganisation.careUnitAddress",
      "short" : "Enhet adress",
      "definition" : "Enhet adress\n\nAdress till enhet.",
      "comment" : "TKB-fält: `requestOutcome.respondingOrganisation.careUnitAddress` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.respondingOrganisation.careUnitLocation",
      "path" : "processrequestoutcome.respondingOrganisation.careUnitLocation",
      "short" : "Enhet plats",
      "definition" : "Enhet plats\n\nText som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.",
      "comment" : "TKB-fält: `requestOutcome.respondingOrganisation.careUnitLocation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.author",
      "path" : "processrequestoutcome.author",
      "short" : "Remissbesvarare",
      "definition" : "Remissbesvarare\n\nRemissbesvarande person och organisation",
      "comment" : "TKB-fält: `requestOutcome.author` (`AuthorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.author.healthcareProfessional",
      "path" : "processrequestoutcome.author.healthcareProfessional",
      "short" : "Hälso- och sjukvårdspersonal",
      "definition" : "Hälso- och sjukvårdspersonal",
      "comment" : "TKB-fält: `requestOutcome.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.author.healthcareProfessional.healthcareProfessionalId",
      "path" : "processrequestoutcome.author.healthcareProfessional.healthcareProfessionalId",
      "short" : "Personal id",
      "definition" : "Personal id\n\nHSA-id för remissbesvarare",
      "comment" : "TKB-fält: `requestOutcome.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för personen. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestoutcome.author.healthcareProfessional.healthcareProfessionalName",
      "path" : "processrequestoutcome.author.healthcareProfessional.healthcareProfessionalName",
      "short" : "Personal namn",
      "definition" : "Personal namn\n\nNamn på remissbesvarare",
      "comment" : "TKB-fält: `requestOutcome.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Namn, valfri formatering. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.name.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.author.typeOfHealthcareProfessional",
      "path" : "processrequestoutcome.author.typeOfHealthcareProfessional",
      "short" : "Typ av hälso- och sjukvårdspersonal",
      "definition" : "Typ av hälso- och sjukvårdspersonal\n\nKod för yrkestitel från Snomed CT enligt urvalen nedan:\n\ncode: se urval_legitimerade_yrken\n\ncodeSystem: OID 1.2.752.129.5.1.70\n\neller\n\ncode: se yrken_i_halso-_och_sjukvarden_ej_legitimerade\n\ncodeSystem: 1.2.752.129.7.1.5\n\nUrvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `requestOutcome.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequestoutcome.author.healthcareProfessionalOrganisation",
      "path" : "processrequestoutcome.author.healthcareProfessionalOrganisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Enhet (jmf. PDL) som ansvarar för informationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.author.healthcareProfessionalOrganisation.careUnitId",
      "path" : "processrequestoutcome.author.healthcareProfessionalOrganisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestoutcome.recipient",
      "path" : "processrequestoutcome.recipient",
      "short" : "Mottagare",
      "definition" : "Mottagare",
      "comment" : "TKB-fält: `requestOutcome.recipient` (`RecipientType`, kardinalitet 1..1).\n\n**Modellanteckning:** Remissvarsmottagande enhet som svaret adresseras till.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.recipient.organisation",
      "path" : "processrequestoutcome.recipient.organisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nMottagare",
      "comment" : "TKB-fält: `requestOutcome.recipient.organisation` (`OrganisationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Mottagande enhet; HSA-id används som logisk adress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.recipient.organisation.careUnitId",
      "path" : "processrequestoutcome.recipient.organisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för vårdenhet (jmf. PDL) som ansvarar för remissvaret.",
      "comment" : "TKB-fält: `requestOutcome.author.healthcareProfessional.Organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome",
      "path" : "processrequestoutcome.outcome",
      "short" : "Kliniskt innehåll",
      "definition" : "Kliniskt innehåll\n\nRemissvar",
      "comment" : "TKB-fält: `requestOutcome.outcome` (`OutcomeType`, kardinalitet 1..1).\n\n**Modellanteckning:** Remissvarets kliniska innehåll (OutcomeType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome.outcomeText",
      "path" : "processrequestoutcome.outcome.outcomeText",
      "short" : "Svarstext",
      "definition" : "Klinisk svarstext\n\nRemissvarstexten",
      "comment" : "TKB-fält: `requestOutcome.outcome.outcomeText` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 65000 tecken\n\n**Modellanteckning:** Remissvarets text. Maxlängd 8192 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome.condition",
      "path" : "processrequestoutcome.outcome.condition",
      "short" : "Kliniskt tillstånd",
      "definition" : "Kliniskt tillstånd\n\nDessa kliniska data är direkt kopplat till svaret, t.ex. funna diagnoser.",
      "comment" : "TKB-fält: `requestOutcome.outcome.condition` (`ConditionType`, kardinalitet 0..*).\n\n**Modellanteckning:** Kliniskt tillstånd (ConditionType). Antingen text eller kod, inte båda.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "activity-request-condition-code-or-text",
        "severity" : "error",
        "human" : "Kliniskt tillstånd: ange antingen text eller kod, inte båda (schematron Verify condition)",
        "expression" : "(conditionText.exists() and conditionCode.exists()).not()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestoutcome"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome.condition.conditionText",
      "path" : "processrequestoutcome.outcome.condition.conditionText",
      "short" : "Kliniskt tillstånd beskrivning",
      "definition" : "Klinisk tillståndsbeskrivning\n\nBeskrivningen av det kliniska tillståndet i de fall en kod saknas.\n\nTexten ska endast beskriva ett kliniskt tillstånd. Ska fler tillstånd beskrivas hanteras det i olika requestOutcome.outcome.condition.\n\nObservera att antingen måste denna eller outcome.condition.code finnas.",
      "comment" : "TKB-fält: `requestOutcome.outcome.condition.text` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Diagnosbeskrivning i fritext. Maxlängd 8192 tecken. RIV-TA: condition.text.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome.condition.conditionCode",
      "path" : "processrequestoutcome.outcome.condition.conditionCode",
      "short" : "Kliniskt tillståndskod",
      "definition" : "Kliniskt tillståndskod Anger kliniska tillståndskoder.\n\ncode:  se ICD-10-SE\n\ncodeSystem: 1.2.752.116.1.1.1\n\nObservera att antingen måste denna eller outcome.condition.text finnas med\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `requestOutcome.outcome.condition.code` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome.accomplishedActivity",
      "path" : "processrequestoutcome.outcome.accomplishedActivity",
      "short" : "Utförd åtgärd",
      "definition" : "Åtgärd\n\nSvaret kan redovisa noll till många utförda åtgärder",
      "comment" : "TKB-fält: `requestOutcome.outcome.accomplishedActivity` (`ActivityType`, kardinalitet 0..*).\n\n**Modellanteckning:** Utförd åtgärd (ActivityType). Antingen text eller kod, inte båda.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "activity-request-activity-code-or-text",
        "severity" : "error",
        "human" : "Åtgärd: ange antingen text eller kod, inte båda (schematron Verify desiredActivity)",
        "expression" : "(activityText.exists() and activityCode.exists()).not()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestoutcome"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome.accomplishedActivity.activityId",
      "path" : "processrequestoutcome.outcome.accomplishedActivity.activityId",
      "short" : "Åtgärd id",
      "definition" : "Åtgärd id\n\nUnikt id som är sammansatt av requestId + accomplishedActivity + löpnummer med # som skiljer respektive del.\n\nExempel.\n\nrequestId = SE2321000012-0001#987\n\nid = SE2321000012-0001#987#accomplishedActivity#0\n\noch nästa id blir\n\naccomplishedActivity.id = SE2321000012-0001#987# accomplishedActivity#1",
      "comment" : "TKB-fält: `requestOutcome.outcome.accomplishedActivity.id` (`ActivityIdType`, kardinalitet 0..1).\n\n**Modellanteckning:** Unikt id i form av löpnummer för åtgärden. RIV-TA: id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome.accomplishedActivity.activityText",
      "path" : "processrequestoutcome.outcome.accomplishedActivity.activityText",
      "short" : "Åtgärd beskrivning",
      "definition" : "Åtgärd beskrivning\n\nHär ska åtgärdsbeskrivningen in om systemet inte kan använda en kod.\n\nTexten ska endast beskriva en utförd åtgärd. Ska fler åtgärder beskrivas hanteras det i olika requestOutcome.outcome.accomplishedActivity.\n\nObservera att text får endast förekomma om accomplishedActivity.code inte används.",
      "comment" : "TKB-fält: `requestOutcome.outcome.accomplishedActivity.text` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Fritext. Maxlängd 8192 tecken. RIV-TA: text.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.outcome.accomplishedActivity.activityCode",
      "path" : "processrequestoutcome.outcome.accomplishedActivity.activityCode",
      "short" : "Åtgärd typ",
      "definition" : "Åtgärd typ\n\nÅtgärd enligt kodsystem.\n\nObservera att code får endast förekomma om accomplishedActivity.text inte används.",
      "comment" : "TKB-fält: `requestOutcome.outcome.accomplishedActivity.code` (`ActivityCodeType`, kardinalitet 0..1).\n\n**Modellanteckning:** Åtgärd enligt kodsystem: KVÅ (1.2.752.116.1.3.2.1.4, obligatoriskt att hantera) eller Snomed CT. Okänt kodverk ger APPLICATION_ERROR. RIV-TA: code.code/codeSystem.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "processrequestoutcome.attachment",
      "path" : "processrequestoutcome.attachment",
      "short" : "Bilaga",
      "definition" : "Bilaga\n\nMöjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten",
      "comment" : "TKB-fält: `requestOutcome.attachment` (`MultimediaType`, kardinalitet 0..*).\n\n**Modellanteckning:** Bilaga (MultimediaType) i något av de tillåtna formaten. Totala meddelandestorleken får inte överstiga 10 MB.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestoutcome.attachment.attachmentId",
      "path" : "processrequestoutcome.attachment.attachmentId",
      "short" : "Bilaga id",
      "definition" : "Bilaga id\n\nIdentitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.\n\nFormat remissvar: requestOutcomeId#löpnummer =Källsystem-Id(HSA-ID)#lokalt-id#löpnummer\n\nObligatoriskt för inbäddade bilagor",
      "comment" : "TKB-fält: `requestOutcome.attachment.id` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)#(.*)\n\nMaxlängd 256 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.attachment.mediaType",
      "path" : "processrequestoutcome.attachment.mediaType",
      "short" : "Multimediatyp",
      "definition" : "Multimediatyp\n\nTyp av multimedia, se urval med tillåtna format.\n\ncode: se urval_mediatyper_elektronisk_remiss\n\ncodeSystem: (1.2.752.129.5.1.59, se nedan)\n\nUnder codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.\n\nUrvalet kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `requestOutcome.attachment.mediaType` (`CVType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** urval_mediatyper_elektronisk_\n\nremiss\n\n**Modellanteckning:** Filformat enligt urval_mediatyper_elektronisk_remiss (codeSystem 1.2.752.129.5.1.59): pdf, jpeg, png, html, txt, gif, bmp.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequestoutcome.attachment.attachmentValue",
      "path" : "processrequestoutcome.attachment.attachmentValue",
      "short" : "Binärdata",
      "definition" : "Binärdata\n\nAnvänds vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format. Obligatoriskt när referens inte används.",
      "comment" : "TKB-fält: `requestOutcome.attachment.value` (`Base64Binary`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Ett meddelande med bilagor får inte vara större än 10MB",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "processrequestoutcome.attachment.reference",
      "path" : "processrequestoutcome.attachment.reference",
      "short" : "Referens",
      "definition" : "Referens\n\nAnvänds vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. OBS! Används inte i denna version.",
      "comment" : "TKB-fält: `requestOutcome.attachment.reference` (`AnyURI`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processrequestoutcome.attachment.description",
      "path" : "processrequestoutcome.attachment.description",
      "short" : "Beskrivning",
      "definition" : "Beskrivning\n\nBeskrivning av bilaga, t ex innehåll",
      "comment" : "TKB-fält: `requestOutcome.attachment.description` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 256 tecken\n\n**Modellanteckning:** Beskrivning av bilaga. Maxlängd 256 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestoutcome.originalRequest",
      "path" : "processrequestoutcome.originalRequest",
      "short" : "Originalremiss",
      "definition" : "Originalremissen\n\nDetta fält skall endast vara ifyllt i de fall då remissen skickas till annan mottagare än originalremittenten. Detta flöde finns idag inte beskrivet i de nationella specifikationerna. OriginalRequest får endast vara ifylld om den faktiska implementationen kan garantera att strukturen är identisk från det som mottogs från original remittenten.",
      "comment" : "TKB-fält: `requestOutcome .originalRequest` (`RequestType`, kardinalitet 0..1).\n\n**Modellanteckning:** Den ursprungliga remissen (RequestType), på nivå med requestOutcome i ProcessRequestOutcomeType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    }]
  }
}

```
