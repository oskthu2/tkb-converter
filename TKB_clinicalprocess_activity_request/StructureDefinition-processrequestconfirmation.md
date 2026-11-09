# ProcessRequestConfirmation — Remissbekräftelse (begäran) - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessRequestConfirmation — Remissbekräftelse (begäran)**

## Logical Model: ProcessRequestConfirmation — Remissbekräftelse (begäran) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestconfirmation | *Version*:2.2 |
| Active as of 2026-11-09 | *Computable Name*:ProcessRequestConfirmation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ProcessRequestConfirmation (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestConfirmationResponder:2, element requestConfirmation av typen RequestConfirmationType). Remissmottagaren skickar bekräftelse, besked om vidareskickning, kompletteringsbegäran, avbrott eller avvisning till remittenten. Svaret är enbart ett resultat, se ProcessResult. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activity-request|current/StructureDefinition/StructureDefinition-processrequestconfirmation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processrequestconfirmation.csv), [Excel](StructureDefinition-processrequestconfirmation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processrequestconfirmation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestconfirmation",
  "version" : "2.2",
  "name" : "ProcessRequestConfirmation",
  "title" : "ProcessRequestConfirmation — Remissbekräftelse (begäran)",
  "status" : "active",
  "date" : "2026-11-09T03:14:11+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i ProcessRequestConfirmation (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestConfirmationResponder:2, element requestConfirmation av typen RequestConfirmationType). Remissmottagaren skickar bekräftelse, besked om vidareskickning, kompletteringsbegäran, avbrott eller avvisning till remittenten. Svaret är enbart ett resultat, se ProcessResult.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestconfirmation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processrequestconfirmation",
      "path" : "processrequestconfirmation",
      "short" : "ProcessRequestConfirmation — Remissbekräftelse (begäran)",
      "definition" : "Logisk modell för begäran i ProcessRequestConfirmation (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestConfirmationResponder:2, element requestConfirmation av typen RequestConfirmationType). Remissmottagaren skickar bekräftelse, besked om vidareskickning, kompletteringsbegäran, avbrott eller avvisning till remittenten. Svaret är enbart ett resultat, se ProcessResult.",
      "constraint" : [{
        "key" : "processrequestconfirmation-forwarding-vid",
        "severity" : "error",
        "human" : "forwardingRecipient ska anges om och endast om typeOfRequestConfirmation = VID",
        "expression" : "requestConfirmation.forwardingRecipient.exists() = (requestConfirmation.typeOfRequestConfirmation.code = 'VID')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestconfirmation"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation",
      "path" : "processrequestconfirmation.requestConfirmation",
      "short" : "RequestConfirmationType",
      "definition" : "Remissbekräftelse",
      "comment" : "TKB-fält: `requestConfirmation` (`RequestConfirmationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.requestId",
      "path" : "processrequestconfirmation.requestConfirmation.requestId",
      "short" : "RequestIdType",
      "definition" : "Remiss id\n\nDen ursprungliga remissens remiss-id",
      "comment" : "TKB-fält: `requestConfirmation.requestId` (`RequestIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)\n\nMaxlängd 256 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.requestId.extension",
      "path" : "processrequestconfirmation.requestConfirmation.requestId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.requestConfirmationId",
      "path" : "processrequestconfirmation.requestConfirmation.requestConfirmationId",
      "short" : "RequestIdType",
      "definition" : "Remissbekräftelse id\n\nUnik identifierare för remissbekräftelsen.\n\nKällsystem-Id(HSA-ID)#lokalt-id\n\nExempel: SE2321000012-0001#456",
      "comment" : "TKB-fält: `requestConfirmation.requestConfirmationId` (`RequestIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)\n\nMaxlängd 256 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.requestConfirmationId.extension",
      "path" : "processrequestconfirmation.requestConfirmation.requestConfirmationId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.typeOfRequestConfirmation",
      "path" : "processrequestconfirmation.requestConfirmation.typeOfRequestConfirmation",
      "short" : "codeRequestConfirmationType",
      "definition" : "Typ av remissbekräftelse\n\nAnger typ av svar.\n\nGiltiga värden är:\n\nBEK = Bekräftelse\n\nVID = Besked om vidareskickning\n\nKOM = Kompletterings-begäran\n\nAVB = Avbruten remiss\n\nAVV = Avvisad remiss",
      "comment" : "TKB-fält: `requestConfirmation.typeOfRequestConfirmation` (`CodeRequestConfirmationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.typeOfRequestConfirmation.code",
      "path" : "processrequestconfirmation.requestConfirmation.typeOfRequestConfirmation.code",
      "short" : "code",
      "definition" : "code (XML-attribut) Tillåtna värden: KOM, BEK, VID, AVB, AVV.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/ValueSet/requestconfirmationtype-vs"
      }
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.requestVersionNumber",
      "path" : "processrequestconfirmation.requestConfirmation.requestVersionNumber",
      "short" : "requestVersionNumber",
      "definition" : "Remissversionsnummer\n\nRemissens versionsnummer.\n\nVersion startar alltid på 1 och räknas sekventiellt upp för varje ny version.\n\nDenna räknas upp vid:\n\n- Ändrad remiss\n\n- Vidareskickad remiss\n\n- Ändrat betalningsansvar",
      "comment" : "TKB-fält: `requestConfirmation.requestVersionNumber` (`VersionNumberType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/VersionNumberType"]
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.requestConfirmationTime",
      "path" : "processrequestconfirmation.requestConfirmation.requestConfirmationTime",
      "short" : "TimeStampType",
      "definition" : "Remissbekräftelse-tidpunkt\n\nTidpunkt då remissbekräftelsen skapades.",
      "comment" : "TKB-fält: `requestConfirmation.requestConfirmationTime` (`TimeStampType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.requestConfirmationTime.value",
      "path" : "processrequestconfirmation.requestConfirmation.requestConfirmationTime.value",
      "short" : "value",
      "definition" : "value (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.patient",
      "path" : "processrequestconfirmation.requestConfirmation.patient",
      "short" : "SimplePatientType",
      "definition" : "Patient",
      "comment" : "TKB-fält: `requestConfirmation.patient` (`SimplePatientType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.patient.personId",
      "path" : "processrequestconfirmation.requestConfirmation.patient.personId",
      "short" : "PersonIdType",
      "definition" : "Person id\n\nPatientens identitet",
      "comment" : "TKB-fält: `requestConfirmation.patient.personId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.patient.personId.extension",
      "path" : "processrequestconfirmation.requestConfirmation.patient.personId.extension",
      "short" : "extension",
      "definition" : "Personidentifierare för patienten.\n\nOm identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken.",
      "comment" : "TKB-fält: `requestConfirmation.patient.personId.extension` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.patient.personId.root",
      "path" : "processrequestconfirmation.requestConfirmation.patient.personId.root",
      "short" : "root",
      "definition" : "OID för typ av personidentifierare.\n\nFör personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\nFör samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\nFör nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas.\n\nFör andra typer av personidentifierare sätts root till aktuell OID.",
      "comment" : "TKB-fält: `requestConfirmation.patient.personId.root` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** root (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.patient.name",
      "path" : "processrequestconfirmation.requestConfirmation.patient.name",
      "short" : "name",
      "definition" : "Namn\n\nAlla personnamn skrivs sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.\n\nImplementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet.",
      "comment" : "TKB-fält: `requestConfirmation.patient.name` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation",
      "path" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation",
      "short" : "FullOrganisationType",
      "definition" : "Organisatorisk enhet\n\nDen faktiska enhet som skickar bekräftelsemeddelandet. Detta kan skilja sig från den ansvariga vårdenheten enligt PDL.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation` (`FullOrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitId",
      "path" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitId",
      "short" : "HsaIdType",
      "definition" : "Enhet id\n\nHSA-id för enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitId.extension",
      "path" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitName",
      "path" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitName",
      "short" : "careUnitName",
      "definition" : "Enhet namn\n\nNamn på enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitName` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitTelephone",
      "path" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitTelephone",
      "short" : "careUnitTelephone",
      "definition" : "Enhet telefon\n\nTelefon till enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitEmail",
      "path" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitEmail",
      "short" : "careUnitEmail",
      "definition" : "Enhet epost\n\nE-post till enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitEmail` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitAddress",
      "path" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitAddress",
      "short" : "careUnitAddress",
      "definition" : "Enhet adress\n\nAdress till enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitAddress` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitLocation",
      "path" : "processrequestconfirmation.requestConfirmation.confirmingOrganisation.careUnitLocation",
      "short" : "careUnitLocation",
      "definition" : "Enhet plats\n\nText som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitLocation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author",
      "path" : "processrequestconfirmation.requestConfirmation.author",
      "short" : "AuthorType",
      "definition" : "Remissbesvarare\n\nRemissbekräftande person och organisation",
      "comment" : "TKB-fält: `requestConfirmation.author` (`AuthorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessional",
      "path" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessional",
      "short" : "HealthcareProfessionalType",
      "definition" : "Hälso- och sjukvårdspersonal",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessional.id",
      "path" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessional.id",
      "short" : "HsaIdType",
      "definition" : "Personal id\n\nHSA-id för remissbekräftande personal",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessional.id.extension",
      "path" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessional.id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessional.name",
      "path" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessional.name",
      "short" : "name",
      "definition" : "Personalnamn",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author.typeOfHealthcareProfessional",
      "path" : "processrequestconfirmation.requestConfirmation.author.typeOfHealthcareProfessional",
      "short" : "typeOfHealthcareProfessional",
      "definition" : "Typ av hälso- och sjukvårdspersonal\n\nKod för yrkestitel från Snomed CT enligt urvalen nedan:\n\ncode: se urval_legitimerade_yrken\n\ncodeSystem: OID 1.2.752.129.5.1.70\n\neller\n\ncode: se yrken_i_halso-_och_sjukvarden_ej_legitimerade\n\ncodeSystem: 1.2.752.129.7.1.5\n\nUrvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `requestConfirmation.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessionalOrganisation",
      "path" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessionalOrganisation",
      "short" : "OrganisationType",
      "definition" : "Organisatorisk enhet\n\nremissbekräftande",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId",
      "path" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId",
      "short" : "HsaIdType",
      "definition" : "Enhet id\n\nHSA-id för verksamhet som ansvarar för remissbekräftelsen.",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId.extension",
      "path" : "processrequestconfirmation.requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.recipient",
      "path" : "processrequestconfirmation.requestConfirmation.recipient",
      "short" : "RecipientType",
      "definition" : "Mottagare",
      "comment" : "TKB-fält: `requestConfirmation.recipient` (`RecipientType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.recipient.organisation",
      "path" : "processrequestconfirmation.requestConfirmation.recipient.organisation",
      "short" : "OrganisationType",
      "definition" : "Organisatorisk enhet\n\nmottagare",
      "comment" : "TKB-fält: `requestConfirmation.recipient.organisation` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.recipient.organisation.careUnitId",
      "path" : "processrequestconfirmation.requestConfirmation.recipient.organisation.careUnitId",
      "short" : "HsaIdType",
      "definition" : "Enhet id\n\nHSA-id för remitterande enhet, till vilken remissbekräftelsen adresseras.",
      "comment" : "TKB-fält: `requestConfirmation.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.recipient.organisation.careUnitId.extension",
      "path" : "processrequestconfirmation.requestConfirmation.recipient.organisation.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.forwardingRecipient",
      "path" : "processrequestconfirmation.requestConfirmation.forwardingRecipient",
      "short" : "RecipientType",
      "definition" : "Mottagare vidarebefordran\n\nObligatorisk att ange när typen på requestConfirmation.typeOfRequestConfirmation är VID (Besked om vidareskickning).\n\nSka inte anges om typen på requestConfirmation.typeOfRequestConfirmation är annan än VID (Besked om vidareskickning).",
      "comment" : "TKB-fält: `requestConfirmation.forwardingRecipient` (`RecipientType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.forwardingRecipient.organisation",
      "path" : "processrequestconfirmation.requestConfirmation.forwardingRecipient.organisation",
      "short" : "OrganisationType",
      "definition" : "Organisatorisk enhet\n\nny mottagare",
      "comment" : "TKB-fält: `requestConfirmation.forwardingRecipient.organisation` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.forwardingRecipient.organisation.careUnitId",
      "path" : "processrequestconfirmation.requestConfirmation.forwardingRecipient.organisation.careUnitId",
      "short" : "HsaIdType",
      "definition" : "Enhet id\n\nHSA-id för remissmottagande enhet av den vidareskickade remissen.",
      "comment" : "TKB-fält: `requestConfirmation.forwardingRecipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.forwardingRecipient.organisation.careUnitId.extension",
      "path" : "processrequestconfirmation.requestConfirmation.forwardingRecipient.organisation.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.outcome",
      "path" : "processrequestconfirmation.requestConfirmation.outcome",
      "short" : "RequestReceivedConfirmationOutcomeType",
      "definition" : "Bekräftelsemeddelande",
      "comment" : "TKB-fält: `requestConfirmation.outcome` (`RequestReceivedConfirmationOutcomeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmation.outcome.outcomeText",
      "path" : "processrequestconfirmation.requestConfirmation.outcome.outcomeText",
      "short" : "outcomeText",
      "definition" : "Svarstext\n\nMeddelande till remissens avsändare.",
      "comment" : "TKB-fält: `requestConfirmation.outcome.outcomeText` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
