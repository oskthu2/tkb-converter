# ProcessRequestConfirmation — Remissbekräftelse (begäran) - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessRequestConfirmation — Remissbekräftelse (begäran)**

## Logical Model: ProcessRequestConfirmation — Remissbekräftelse (begäran) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestconfirmation | *Version*:2.2 |
| Active as of 2026-11-06 | *Computable Name*:ProcessRequestConfirmation |
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
  "date" : "2026-11-06T20:58:05+00:00",
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
        "expression" : "forwardingRecipient.exists() = (typeOfRequestConfirmation = 'VID')",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequestconfirmation"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestId",
      "path" : "processrequestconfirmation.requestId",
      "short" : "Remiss id",
      "definition" : "Remiss id\n\nDen ursprungliga remissens remiss-id",
      "comment" : "TKB-fält: `requestConfirmation.requestId` (`RequestIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)\n\nMaxlängd 256 tecken\n\n**Modellanteckning:** Den ursprungliga remissens remiss-id. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmationId",
      "path" : "processrequestconfirmation.requestConfirmationId",
      "short" : "Remissbekräftelse id",
      "definition" : "Remissbekräftelse id\n\nUnik identifierare för remissbekräftelsen.\n\nKällsystem-Id(HSA-ID)#lokalt-id\n\nExempel: SE2321000012-0001#456",
      "comment" : "TKB-fält: `requestConfirmation.requestConfirmationId` (`RequestIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)\n\nMaxlängd 256 tecken\n\n**Modellanteckning:** Unik identifierare för remissbekräftelsen. Format Källsystem-Id(HSA-ID)#lokalt-id, mönster (.*)#(.*), maxlängd 256 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.typeOfRequestConfirmation",
      "path" : "processrequestconfirmation.typeOfRequestConfirmation",
      "short" : "Typ av remissbekräftelse",
      "definition" : "Typ av remissbekräftelse\n\nAnger typ av svar.\n\nGiltiga värden är:\n\nBEK = Bekräftelse\n\nVID = Besked om vidareskickning\n\nKOM = Kompletterings-begäran\n\nAVB = Avbruten remiss\n\nAVV = Avvisad remiss",
      "comment" : "TKB-fält: `requestConfirmation.typeOfRequestConfirmation` (`CodeRequestConfirmationType`, kardinalitet 1..1).",
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
      "id" : "processrequestconfirmation.requestVersionNumber",
      "path" : "processrequestconfirmation.requestVersionNumber",
      "short" : "Remissversionsnummer",
      "definition" : "Remissversionsnummer\n\nRemissens versionsnummer.\n\nVersion startar alltid på 1 och räknas sekventiellt upp för varje ny version.\n\nDenna räknas upp vid:\n\n- Ändrad remiss\n\n- Vidareskickad remiss\n\n- Ändrat betalningsansvar",
      "comment" : "TKB-fält: `requestConfirmation.requestVersionNumber` (`VersionNumberType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "processrequestconfirmation.requestConfirmationTime",
      "path" : "processrequestconfirmation.requestConfirmationTime",
      "short" : "Remissbekräftelse-tidpunkt",
      "definition" : "Remissbekräftelse-tidpunkt\n\nTidpunkt då remissbekräftelsen skapades.",
      "comment" : "TKB-fält: `requestConfirmation.requestConfirmationTime` (`TimeStampType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processrequestconfirmation.patient",
      "path" : "processrequestconfirmation.patient",
      "short" : "Patient",
      "definition" : "Patient",
      "comment" : "TKB-fält: `requestConfirmation.patient` (`SimplePatientType`, kardinalitet 1..1).\n\n**Modellanteckning:** Patient (SimplePatientType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.patient.personId",
      "path" : "processrequestconfirmation.patient.personId",
      "short" : "Person id",
      "definition" : "Person id\n\nPatientens identitet",
      "comment" : "TKB-fält: `requestConfirmation.patient.personId` (`PersonIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestconfirmation.patient.patientName",
      "path" : "processrequestconfirmation.patient.patientName",
      "short" : "Namn",
      "definition" : "Namn\n\nAlla personnamn skrivs sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.\n\nImplementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet.",
      "comment" : "TKB-fält: `requestConfirmation.patient.name` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.confirmingOrganisation",
      "path" : "processrequestconfirmation.confirmingOrganisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nDen faktiska enhet som skickar bekräftelsemeddelandet. Detta kan skilja sig från den ansvariga vårdenheten enligt PDL.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation` (`FullOrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.confirmingOrganisation.careUnitId",
      "path" : "processrequestconfirmation.confirmingOrganisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestconfirmation.confirmingOrganisation.careUnitName",
      "path" : "processrequestconfirmation.confirmingOrganisation.careUnitName",
      "short" : "Enhet namn",
      "definition" : "Enhet namn\n\nNamn på enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitName` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Namn på enhet. Maxlängd 64 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.confirmingOrganisation.careUnitTelephone",
      "path" : "processrequestconfirmation.confirmingOrganisation.careUnitTelephone",
      "short" : "Enhet telefon",
      "definition" : "Enhet telefon\n\nTelefon till enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.confirmingOrganisation.careUnitEmail",
      "path" : "processrequestconfirmation.confirmingOrganisation.careUnitEmail",
      "short" : "Enhet epost",
      "definition" : "Enhet epost\n\nE-post till enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitEmail` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.confirmingOrganisation.careUnitAddress",
      "path" : "processrequestconfirmation.confirmingOrganisation.careUnitAddress",
      "short" : "Enhet adress",
      "definition" : "Enhet adress\n\nAdress till enhet.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitAddress` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.confirmingOrganisation.careUnitLocation",
      "path" : "processrequestconfirmation.confirmingOrganisation.careUnitLocation",
      "short" : "Enhet plats",
      "definition" : "Enhet plats\n\nText som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.",
      "comment" : "TKB-fält: `requestConfirmation.confirmingOrganisation.careUnitLocation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.author",
      "path" : "processrequestconfirmation.author",
      "short" : "Remissbesvarare",
      "definition" : "Remissbesvarare\n\nRemissbekräftande person och organisation",
      "comment" : "TKB-fält: `requestConfirmation.author` (`AuthorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.author.healthcareProfessional",
      "path" : "processrequestconfirmation.author.healthcareProfessional",
      "short" : "Hälso- och sjukvårdspersonal",
      "definition" : "Hälso- och sjukvårdspersonal",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.author.healthcareProfessional.healthcareProfessionalId",
      "path" : "processrequestconfirmation.author.healthcareProfessional.healthcareProfessionalId",
      "short" : "Personal id",
      "definition" : "Personal id\n\nHSA-id för remissbekräftande personal",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för personen. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestconfirmation.author.healthcareProfessional.healthcareProfessionalName",
      "path" : "processrequestconfirmation.author.healthcareProfessional.healthcareProfessionalName",
      "short" : "Personal namn",
      "definition" : "Personalnamn",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Namn, valfri formatering. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.name.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequestconfirmation.author.typeOfHealthcareProfessional",
      "path" : "processrequestconfirmation.author.typeOfHealthcareProfessional",
      "short" : "Typ av hälso- och sjukvårdspersonal",
      "definition" : "Typ av hälso- och sjukvårdspersonal\n\nKod för yrkestitel från Snomed CT enligt urvalen nedan:\n\ncode: se urval_legitimerade_yrken\n\ncodeSystem: OID 1.2.752.129.5.1.70\n\neller\n\ncode: se yrken_i_halso-_och_sjukvarden_ej_legitimerade\n\ncodeSystem: 1.2.752.129.7.1.5\n\nUrvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `requestConfirmation.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequestconfirmation.author.healthcareProfessionalOrganisation",
      "path" : "processrequestconfirmation.author.healthcareProfessionalOrganisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nremissbekräftande",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Enhet (jmf. PDL) som ansvarar för informationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.author.healthcareProfessionalOrganisation.careUnitId",
      "path" : "processrequestconfirmation.author.healthcareProfessionalOrganisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för verksamhet som ansvarar för remissbekräftelsen.",
      "comment" : "TKB-fält: `requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestconfirmation.recipient",
      "path" : "processrequestconfirmation.recipient",
      "short" : "Mottagare",
      "definition" : "Mottagare",
      "comment" : "TKB-fält: `requestConfirmation.recipient` (`RecipientType`, kardinalitet 1..1).\n\n**Modellanteckning:** Remitterande enhet som bekräftelsen adresseras till.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.recipient.organisation",
      "path" : "processrequestconfirmation.recipient.organisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nmottagare",
      "comment" : "TKB-fält: `requestConfirmation.recipient.organisation` (`OrganisationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Mottagande enhet; HSA-id används som logisk adress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.recipient.organisation.careUnitId",
      "path" : "processrequestconfirmation.recipient.organisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för remitterande enhet, till vilken remissbekräftelsen adresseras.",
      "comment" : "TKB-fält: `requestConfirmation.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestconfirmation.forwardingRecipient",
      "path" : "processrequestconfirmation.forwardingRecipient",
      "short" : "Mottagare vidarebefordran",
      "definition" : "Mottagare vidarebefordran\n\nObligatorisk att ange när typen på requestConfirmation.typeOfRequestConfirmation är VID (Besked om vidareskickning).\n\nSka inte anges om typen på requestConfirmation.typeOfRequestConfirmation är annan än VID (Besked om vidareskickning).",
      "comment" : "TKB-fält: `requestConfirmation.forwardingRecipient` (`RecipientType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.forwardingRecipient.organisation",
      "path" : "processrequestconfirmation.forwardingRecipient.organisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nny mottagare",
      "comment" : "TKB-fält: `requestConfirmation.forwardingRecipient.organisation` (`OrganisationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Mottagande enhet; HSA-id används som logisk adress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.forwardingRecipient.organisation.careUnitId",
      "path" : "processrequestconfirmation.forwardingRecipient.organisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för remissmottagande enhet av den vidareskickade remissen.",
      "comment" : "TKB-fält: `requestConfirmation.forwardingRecipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequestconfirmation.outcome",
      "path" : "processrequestconfirmation.outcome",
      "short" : "Bekräftelsemeddelande",
      "definition" : "Bekräftelsemeddelande",
      "comment" : "TKB-fält: `requestConfirmation.outcome` (`RequestReceivedConfirmationOutcomeType`, kardinalitet 1..1).\n\n**Modellanteckning:** Bekräftelsemeddelande (RequestReceivedConfirmationOutcomeType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequestconfirmation.outcome.outcomeText",
      "path" : "processrequestconfirmation.outcome.outcomeText",
      "short" : "Svarstext",
      "definition" : "Svarstext\n\nMeddelande till remissens avsändare.",
      "comment" : "TKB-fält: `requestConfirmation.outcome.outcomeText` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Meddelande till remissens avsändare. Maxlängd 8192 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
