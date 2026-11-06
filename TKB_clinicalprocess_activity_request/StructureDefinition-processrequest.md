# ProcessRequest — Remiss (begäran) - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessRequest — Remiss (begäran)**

## Logical Model: ProcessRequest — Remiss (begäran) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest | *Version*:2.2 |
| Active as of 2026-11-06 | *Computable Name*:ProcessRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ProcessRequest (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestResponder:2, element request av typen RequestType). Remittenten skickar en allmänremiss till remissmottagaren. Svaret är enbart ett resultat, se ProcessResult. 

**Usages:**

* Use this Logical Model: [ProcessRequestOutcome — Remissvar (begäran)](StructureDefinition-processrequestoutcome.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activity-request|current/StructureDefinition/StructureDefinition-processrequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processrequest.csv), [Excel](StructureDefinition-processrequest.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processrequest",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest",
  "version" : "2.2",
  "name" : "ProcessRequest",
  "title" : "ProcessRequest — Remiss (begäran)",
  "status" : "active",
  "date" : "2026-11-06T20:58:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i ProcessRequest (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestResponder:2, element request av typen RequestType). Remittenten skickar en allmänremiss till remissmottagaren. Svaret är enbart ett resultat, se ProcessResult.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processrequest",
      "path" : "processrequest",
      "short" : "ProcessRequest — Remiss (begäran)",
      "definition" : "Logisk modell för begäran i ProcessRequest (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestResponder:2, element request av typen RequestType). Remittenten skickar en allmänremiss till remissmottagaren. Svaret är enbart ett resultat, se ProcessResult.",
      "constraint" : [{
        "key" : "processrequest-vr-intermediary",
        "severity" : "error",
        "human" : "Om versionsorsak är VR (vidareskickad remiss) måste intermediaryParticipant anges (schematron Verify intermediaryParticipant)",
        "expression" : "reasonForVersion.typeOfReason = 'VR' implies intermediaryParticipant.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    },
    {
      "id" : "processrequest.requestId",
      "path" : "processrequest.requestId",
      "short" : "Remiss id",
      "definition" : "Remiss id\n\nRemissens identitet. Format: Källsystem-Id(HSA-ID)#lokalt-id\n\nExempel: SE2321000012-0001#987",
      "comment" : "TKB-fält: `request.requestId` (`RequestIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)\n\nMaxlängd 256 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.typeOfRequest",
      "path" : "processrequest.typeOfRequest",
      "short" : "Remisstyp",
      "definition" : "Remisstyp\n\nAnger typ av remiss.\n\nI denna version är den giltiga koden ”4” – allmänremiss",
      "comment" : "TKB-fält: `request.typeOfRequest` (`CodeForRequestType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** codes:codeRequestOutcomeType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/ValueSet/requesttype-vs"
      }
    },
    {
      "id" : "processrequest.versionTimeStamp",
      "path" : "processrequest.versionTimeStamp",
      "short" : "Versionstidpunkt",
      "definition" : "Versionstidpunkt\n\nTidpunkt då versionen skapades.\n\nDenna tidpunkt kan skilja sig från tidpunkten då remissen skickas.",
      "comment" : "TKB-fält: `request.versionTimeStamp` (`TimeStampType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processrequest.versionNumber",
      "path" : "processrequest.versionNumber",
      "short" : "Versionsnummer",
      "definition" : "Versionsnummer\n\nRemissens versionsnummer.\n\nVersion startar alltid på 1 och räknas sekventiellt upp för varje ny version.\n\nDenna räknas upp vid:\n\nÄndrad remiss\n\nVidareskickad remiss\n\nÄndrat betalnings-ansvar",
      "comment" : "TKB-fält: `request.versionNumber` (`VersionNumberType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "processrequest.reasonForVersion",
      "path" : "processrequest.reasonForVersion",
      "short" : "Versionsorsak",
      "definition" : "Versionsorsak",
      "comment" : "TKB-fält: `request.reasonForVersion` (`ReasonForVersionType`, kardinalitet 1..1).\n\n**Modellanteckning:** Anger varför en ny version skapats.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.reasonForVersion.typeOfReason",
      "path" : "processrequest.reasonForVersion.typeOfReason",
      "short" : "Versionsorsak kod",
      "definition" : "Kv e-remiss versionsorsak [R5]: NR, AR, VR, AB. RIV-TA: typeOfReason.code.",
      "comment" : "TKB-fält: `request.reasonForVersion.typeOfReason` (`CodeVersionReason`, kardinalitet 1..1).\n\n**Modellanteckning:** Kv e-remiss versionsorsak [R5]: NR, AR, VR, AB. RIV-TA: typeOfReason.code.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/ValueSet/versionreason-vs"
      }
    },
    {
      "id" : "processrequest.careResponsibilityRemains",
      "path" : "processrequest.careResponsibilityRemains",
      "short" : "Vårdansvar kvarstår",
      "definition" : "Vårdansvar kvarstår\n\nAnger om remittent vill att vårdansvar ska kvarstå hos remitterande enhet eller om man vill att vårdansvar överförs till remissmottagande enhet.\n\nTvå alternativ:\n\nTrue = Vårdansvar kvarstår\n\nFalse = Begäran om övertagande av vårdansvar",
      "comment" : "TKB-fält: `request.careResponsibilityRemains` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "processrequest.patient",
      "path" : "processrequest.patient",
      "short" : "Patient",
      "definition" : "Patient",
      "comment" : "TKB-fält: `request.patient` (`PatientType`, kardinalitet 1..1).\n\n**Modellanteckning:** Patient (PatientType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.patient.personId",
      "path" : "processrequest.patient.personId",
      "short" : "Person id",
      "definition" : "Person id\n\nPatientens identitet",
      "comment" : "TKB-fält: `request.patient.personId` (`PersonIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequest.patient.address",
      "path" : "processrequest.patient.address",
      "short" : "Tillfällig adress",
      "definition" : "Tillfällig adress\n\nObservera att adress används endast om tillfällig adress behöver anges, ej folkbokförd adress.\n\nAdressen är avsedd att användas vid kallelse. Formatet är baserat på Skatteverkets distributionslösning Navet.",
      "comment" : "TKB-fält: `request.patient.address` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.patient.address.careOf",
      "path" : "processrequest.patient.address.careOf",
      "short" : "Care of",
      "definition" : "”Care of”",
      "comment" : "TKB-fält: `request.patient.address.careOf` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken\n\n**Modellanteckning:** Maxlängd 35 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.patient.address.streetName1",
      "path" : "processrequest.patient.address.streetName1",
      "short" : "Utdelningsadress1",
      "definition" : "Utdelningsadress1",
      "comment" : "TKB-fält: `request.patient.address.streetName1` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken\n\n**Modellanteckning:** Maxlängd 35 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.patient.address.streetName2",
      "path" : "processrequest.patient.address.streetName2",
      "short" : "Utdelningsadress2",
      "definition" : "Utdelningsadress2",
      "comment" : "TKB-fält: `request.patient.address.streetName2` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken\n\n**Modellanteckning:** Maxlängd 35 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.patient.address.postalCode",
      "path" : "processrequest.patient.address.postalCode",
      "short" : "Postnummer",
      "definition" : "Postnummer i formatet ”12345”, dvs fem siffror inga blanksteg.",
      "comment" : "TKB-fält: `request.patient.address.postalCode` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 5 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.patient.address.postalCity",
      "path" : "processrequest.patient.address.postalCity",
      "short" : "Postort",
      "definition" : "Postort",
      "comment" : "TKB-fält: `request.patient.address.postalCity` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 27 tecken\n\n**Modellanteckning:** Maxlängd 27 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.patient.address.postBox",
      "path" : "processrequest.patient.address.postBox",
      "short" : "Postbox",
      "definition" : "Postbox",
      "comment" : "TKB-fält: `request.patient.address.postBox` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 9 tecken\n\n**Modellanteckning:** Maxlängd 9 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.patient.telecom",
      "path" : "processrequest.patient.telecom",
      "short" : "Telefon",
      "definition" : "Telefon",
      "comment" : "TKB-fält: `request.patient.telecom` (`TelecomType`, kardinalitet 0..2).\n\n**Modellanteckning:** Telefonnummer till patienten.",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.patient.telecom.typeOfTelecom",
      "path" : "processrequest.patient.telecom.typeOfTelecom",
      "short" : "Telefon typ",
      "definition" : "Telefon typ\n\nFör att särskilja olika typer av telekomadresser används 2 olika koder ’MC’=Mobil, ’H’=Hemtelefon",
      "comment" : "TKB-fält: `request.patient.telecom.typeOfTelecom` (`CodeForTelecomType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** codes:codeForTelecomType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/ValueSet/telecomtype-vs"
      }
    },
    {
      "id" : "processrequest.patient.telecom.number",
      "path" : "processrequest.patient.telecom.number",
      "short" : "Telefonnummer",
      "definition" : "Telefonnummer",
      "comment" : "TKB-fält: `request.patient.telecom.number` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken\n\n**Modellanteckning:** Maxlängd 200 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.patient.patientName",
      "path" : "processrequest.patient.patientName",
      "short" : "Namn",
      "definition" : "Namn\n\nPersonnamn sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.\n\nImplementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet.",
      "comment" : "TKB-fält: `request.patient.name` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.patient.gender",
      "path" : "processrequest.patient.gender",
      "short" : "Kön",
      "definition" : "Kön\n\nAnger administrativt kön, dvs. det kön patienten har registrerat hos Skatteverket.\n\nOID för kodsystem: 1.2.752.129.2.2.1.1\n\nGiltiga värden är:\n\n0 = okänt\n\n1 = man\n\n2 = kvinna\n\n9 = ej tillämpligt",
      "comment" : "TKB-fält: `request.patient.gender` (`CodeForGenderType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** codes:codeForGenderType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/ValueSet/gender-vs"
      }
    },
    {
      "id" : "processrequest.patient.dateOfBirth",
      "path" : "processrequest.patient.dateOfBirth",
      "short" : "Födelsetidpunkt",
      "definition" : "Födelsetidpunkt\n\nAnges då patientens identitetstyp är av annan typ än personnummer.",
      "comment" : "TKB-fält: `request.patient.dateOfBirth` (`DateType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDD",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "processrequest.requestOrganisation",
      "path" : "processrequest.requestOrganisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nInformation om ursprunglig remitterande organisatorisk enhet. Kan skilja sig från PDL ansvarig enhet vid behov. Det är denna enhet som svaret adresseras till i logisk adress.",
      "comment" : "TKB-fält: `request.requestOrganisation` (`FullOrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.requestOrganisation.careUnitId",
      "path" : "processrequest.requestOrganisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för remitterande enhet. Detta används av remissbesvarare som logisk adress för att adressera svarsmottagare.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequest.requestOrganisation.careUnitName",
      "path" : "processrequest.requestOrganisation.careUnitName",
      "short" : "Enhet namn",
      "definition" : "Enhet namn\n\nNamn på enhet.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitName` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Namn på enhet. Maxlängd 64 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.requestOrganisation.careUnitTelephone",
      "path" : "processrequest.requestOrganisation.careUnitTelephone",
      "short" : "Enhet telefon",
      "definition" : "Enhet telefon\n\nTelefon till enhet.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.requestOrganisation.careUnitEmail",
      "path" : "processrequest.requestOrganisation.careUnitEmail",
      "short" : "Enhet epost",
      "definition" : "Enhet epost\n\nE-post till enhet.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitEmail` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.requestOrganisation.careUnitAddress",
      "path" : "processrequest.requestOrganisation.careUnitAddress",
      "short" : "Enhet adress",
      "definition" : "Adress till enhet.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitAddress` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.requestOrganisation.careUnitLocation",
      "path" : "processrequest.requestOrganisation.careUnitLocation",
      "short" : "Enhet plats",
      "definition" : "Enhet plats\n\nText som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitLocation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.author",
      "path" : "processrequest.author",
      "short" : "Remittent",
      "definition" : "Remittent\n\nInformation avseende den remitterande personen samt den organisation som personen är uppdragstagare på.",
      "comment" : "TKB-fält: `request.author` (`RequestAuthorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.author.date",
      "path" : "processrequest.author.date",
      "short" : "Remissdatum",
      "definition" : "Remissdatum\n\nRemissdatum när remiss skapades måste anges. Format som ska användas är ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `request.author.date` (`DateType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDD\n\n**Modellanteckning:** Datum då remissen skapades (ÅÅÅÅMMDD).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "processrequest.author.healthcareProfessional",
      "path" : "processrequest.author.healthcareProfessional",
      "short" : "Hälso- och sjukvårdspersonal",
      "definition" : "Hälso- och sjukvårdspersonal",
      "comment" : "TKB-fält: `request.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.author.healthcareProfessional.healthcareProfessionalId",
      "path" : "processrequest.author.healthcareProfessional.healthcareProfessionalId",
      "short" : "Personal id",
      "definition" : "Personal Id\n\nHSA-id för remitterande hälso- och sjukvårdspersonal.",
      "comment" : "TKB-fält: `request.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för personen. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequest.author.healthcareProfessional.healthcareProfessionalName",
      "path" : "processrequest.author.healthcareProfessional.healthcareProfessionalName",
      "short" : "Personal namn",
      "definition" : "Personal namn\n\nNamn på remitterande hälso- och sjukvårdspersonal.\n\nValfri formatering.",
      "comment" : "TKB-fält: `request.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Namn, valfri formatering. Maxlängd 64 tecken. RIV-TA: healthcareProfessional.name.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.author.typeOfHealthcareProfessional",
      "path" : "processrequest.author.typeOfHealthcareProfessional",
      "short" : "Typ av hälso- och sjukvårdspersonal",
      "definition" : "Typ av hälso- och sjukvårdspersonal\n\nKod för yrkestitel från Snomed CT enligt urvalen nedan:\n\ncode: se urval_legitimerade_yrken\n\ncodeSystem: OID 1.2.752.129.5.1.70\n\neller\n\ncode: se yrken_i_halso-_och_sjukvarden_ej_legitimerade\n\ncodeSystem: 1.2.752.129.7.1.5\n\nUrvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequest.author.healthcareProfessionalOrganisation",
      "path" : "processrequest.author.healthcareProfessionalOrganisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nremittent",
      "comment" : "TKB-fält: `request.author.healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Enhet (jmf. PDL) som ansvarar för informationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.author.healthcareProfessionalOrganisation.careUnitId",
      "path" : "processrequest.author.healthcareProfessionalOrganisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för vårdenhet (jmf. PDL) som ansvarar för remissen.",
      "comment" : "TKB-fält: `request.author.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequest.recipient",
      "path" : "processrequest.recipient",
      "short" : "Mottagare",
      "definition" : "Mottagare\n\nInformation avseende den remissmottagande organisationen",
      "comment" : "TKB-fält: `request.recipient` (`RecipientType`, kardinalitet 1..1).\n\n**Modellanteckning:** Remissmottagande organisation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.recipient.organisation",
      "path" : "processrequest.recipient.organisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nmottagare",
      "comment" : "TKB-fält: `request.recipient.organisation` (`OrganisationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Mottagande enhet; HSA-id används som logisk adress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.recipient.organisation.careUnitId",
      "path" : "processrequest.recipient.organisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id för remissmottagande enhet, till vilken remissen adresseras.\n\nMed remissmottagande enhet avses det som i SOSFS 2004:11 benämns som mottagande enhet.",
      "comment" : "TKB-fält: `request.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequest.intermediaryParticipant",
      "path" : "processrequest.intermediaryParticipant",
      "short" : "Vidareskickare",
      "definition" : "Vidareskickare\n\nBeskriver Hälso-och sjukvårdspersonalen som vidareskickar remissen",
      "comment" : "TKB-fält: `request.intermediaryParticipant` (`IntermediaryType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.intermediaryParticipant.healthcareProfessionalOrganisation",
      "path" : "processrequest.intermediaryParticipant.healthcareProfessionalOrganisation",
      "short" : "Organisatorisk enhet",
      "definition" : "Organisatorisk enhet\n\nvidareskickare",
      "comment" : "TKB-fält: `request.intermediaryParticipant. healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Remissmottagande enhet som vidareskickat remissen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId",
      "path" : "processrequest.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId",
      "short" : "Enhet id",
      "definition" : "Enhet id\n\nHSA-id på den remissmottagande enhet som vidareskickat remissen.",
      "comment" : "TKB-fält: `request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för enheten. Maxlängd 64 tecken.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequest.intermediaryParticipant.time",
      "path" : "processrequest.intermediaryParticipant.time",
      "short" : "Tidpunkt",
      "definition" : "Tidpunkt\n\nTidpunkt då versionen skapades för vidareskickning.\n\nDenna tidpunkt kan skilja sig från tidpunkten då remissen faktiskt skickas beroende på hur detta implementeras i en lokal remissmodul.",
      "comment" : "TKB-fält: `request.intermediaryParticipant.time` (`TimeStampType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processrequest.additionalInformation",
      "path" : "processrequest.additionalInformation",
      "short" : "Tilläggsinformation",
      "definition" : "Tilläggsinformation",
      "comment" : "TKB-fält: `request.additionalInformation` (`AdditionalInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.additionalInformation.desiredRequestRecipient",
      "path" : "processrequest.additionalInformation.desiredRequestRecipient",
      "short" : "Önskemål om remissmottagare",
      "definition" : "Önskemål om remissmottagare Önskad remissmottagare: enhet, person, yrkesroll, fritext",
      "comment" : "TKB-fält: `request.additionalInformation.desiredRequestRecipient` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken\n\n**Modellanteckning:** Enhet, person, yrkesroll eller fritext. Maxlängd 200 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.additionalInformation.administrativeInformation",
      "path" : "processrequest.additionalInformation.administrativeInformation",
      "short" : "Kompletterande administrativ information",
      "definition" : "Kompletterande administrativ information\n\nHär anges kompletterande administrativ information. Exempelvis kan denna innehålla information om detta är ett akutärende, om patienten är bortrest under en viss tid inom kallelsetiden eller annan information som kan påverka den administrativa processen kring remissen. Här läggs även information om SVF-patient (standardiserade vårdförlopp), datum för välgrundad misstanke samt aktuellt SVF-förlopp.",
      "comment" : "TKB-fält: `request.additionalInformation.administrativeInformation` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.additionalInformation.interpreterRequirement",
      "path" : "processrequest.additionalInformation.interpreterRequirement",
      "short" : "Kommentar tolkbehov",
      "definition" : "Kommentar tolkbehov Här beskrivs eventuellt tolkbehov.",
      "comment" : "TKB-fält: `request.additionalInformation.interpreterRequirement` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken\n\n**Modellanteckning:** Maxlängd 200 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.awarenessInformation",
      "path" : "processrequest.awarenessInformation",
      "short" : "Uppmärksamhetsinformation",
      "definition" : "Uppmärksamhetsinformation\n\nUppmärksamhetsinformation om patient",
      "comment" : "TKB-fält: `request.awarenessInformation` (`AwarenessInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.awarenessInformation.awarenessText",
      "path" : "processrequest.awarenessInformation.awarenessText",
      "short" : "Uppmärksamhetstext",
      "definition" : "Uppmärksamhetstext Uppmärksamhetsinformation av betydelse för denna remiss. Mottagande system bör inte med automatik föra in denna i den egna hanteringen för uppmärksamhetsinformation kring patienten utan endast lagra den i samband med remissen.",
      "comment" : "TKB-fält: `request.awarenessInformation.text` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Av betydelse för denna remiss; mottagande system bör inte automatiskt föra in den i egen uppmärksamhetshantering. Maxlängd 8192 tecken. RIV-TA: awarenessInformation.text.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.questionFormulation",
      "path" : "processrequest.questionFormulation",
      "short" : "Frågeställning",
      "definition" : "Frågeställning",
      "comment" : "TKB-fält: `request.questionFormulation` (`QuestionFormulationType`, kardinalitet 1..1).\n\n**Modellanteckning:** Remissens frågeställning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.questionText",
      "path" : "processrequest.questionFormulation.questionText",
      "short" : "Frågeställning text",
      "definition" : "Frågeställning text\n\nHär anges remissens frågeställning.",
      "comment" : "TKB-fält: `request.questionFormulation.text` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Maxlängd 8192 tecken. RIV-TA: questionFormulation.text.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.clinicalInformation",
      "path" : "processrequest.questionFormulation.clinicalInformation",
      "short" : "Anamnes",
      "definition" : "Anamnes\n\nHär anges underbyggande klinisk information (anamnes) för remissfrågeställningen. Dessa underbyggande kliniska data är direkt kopplat till frågeställningen",
      "comment" : "TKB-fält: `request.questionFormulation.clinicalInformation` (`ClinicalInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.clinicalInformation.clinicalInformationText",
      "path" : "processrequest.questionFormulation.clinicalInformation.clinicalInformationText",
      "short" : "Beskrivning",
      "definition" : "Beskrivning\n\nHär anges klinisk informationsbeskrivning",
      "comment" : "TKB-fält: `request.questionFormulation.clinicalInformation.text` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Maxlängd 8192 tecken. RIV-TA: clinicalInformation.text.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.condition",
      "path" : "processrequest.questionFormulation.condition",
      "short" : "Kliniskt tillstånd",
      "definition" : "Kliniskt tillstånd\n\nAnger kliniska tillstånd som använts i uppslag mot stödtjänster.\n\nAnvänds som stöd för att remittent och remissmottagare ska kunna avgöra om remissuppgifterna är kompletta.",
      "comment" : "TKB-fält: `request.questionFormulation.condition` (`ConditionType`, kardinalitet 0..*).\n\n**Modellanteckning:** Kliniskt tillstånd (ConditionType). Antingen text eller kod, inte båda.",
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
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.condition.conditionText",
      "path" : "processrequest.questionFormulation.condition.conditionText",
      "short" : "Kliniskt tillstånd beskrivning",
      "definition" : "Kliniskt tillstånd beskrivning\n\nHär kan diagnosbeskrivning skrivas in.\n\nObservera att den får endast förekomma om questionFormulation.condition.code inte används.",
      "comment" : "TKB-fält: `request.questionFormulation.condition.text` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Diagnosbeskrivning i fritext. Maxlängd 8192 tecken. RIV-TA: condition.text.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.condition.conditionCode",
      "path" : "processrequest.questionFormulation.condition.conditionCode",
      "short" : "Kliniskt tillståndskod",
      "definition" : "Kliniskt tillståndskod Anger kliniska tillståndskoder.\n\ncode:  se ICD-10-SE\n\ncodeSystem: 1.2.752.116.1.1.1\n\nObservera att kod får endast förekomma om questionFormulation.condition.text inte används.\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.questionFormulation.condition.code` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.desiredActivity",
      "path" : "processrequest.questionFormulation.desiredActivity",
      "short" : "Önskad åtgärd",
      "definition" : "Åtgärd\n\nHär anges önskade åtgärder. Dessa åtgärder ska vara direkt kopplade till frågeställningen.",
      "comment" : "TKB-fält: `request.questionFormulation.desiredActivity` (`ActivityType`, kardinalitet 0..*).\n\n**Modellanteckning:** Önskad åtgärd (ActivityType). Antingen text eller kod, inte båda.",
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
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.desiredActivity.activityId",
      "path" : "processrequest.questionFormulation.desiredActivity.activityId",
      "short" : "Åtgärd id",
      "definition" : "Åtgärd id\n\nUnikt id i form av löpnummer för den önskade åtgärden",
      "comment" : "TKB-fält: `request.questionFormulation. desiredActivity.id` (`ActivityIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.desiredActivity.activityText",
      "path" : "processrequest.questionFormulation.desiredActivity.activityText",
      "short" : "Åtgärd beskrivning",
      "definition" : "Åtgärd beskrivning\n\nObservera att text får endast förekomma om questionFormulation.desiredActivity.code inte används.",
      "comment" : "TKB-fält: `request.questionFormulation.desiredActivity.text` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Fritext. Maxlängd 8192 tecken. RIV-TA: text.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.questionFormulation.desiredActivity.activityCode",
      "path" : "processrequest.questionFormulation.desiredActivity.activityCode",
      "short" : "Åtgärd typ",
      "definition" : "Åtgärd typ\n\nÅtgärd enligt kodsystem.\n\nObservera att code får endast förekomma om questionFormulation.desiredActivity.text inte används.",
      "comment" : "TKB-fält: `request.questionFormulation.desiredActivity.code` (`ActivityCodeType`, kardinalitet 0..1).\n\n**Modellanteckning:** Åtgärd enligt kodsystem: KVÅ (1.2.752.116.1.3.2.1.4, obligatoriskt att hantera) eller Snomed CT. Okänt kodverk ger APPLICATION_ERROR. RIV-TA: code.code/codeSystem.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment",
      "path" : "processrequest.paymentCommitment",
      "short" : "Betalningsförbindelse",
      "definition" : "Betalningsförbindelse Betalningsförbindelse beskriver hur remissmottagande vårdgivare ersätts för de begärda tjänsterna av remitterande vårdgivare.\n\nAktuellt vid ett regionsöverskridande remissflöde. För detaljer i användningen se även SKRs Riksavtal.",
      "comment" : "TKB-fält: `request.paymentCommitment` (`PaymentCommitmentType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "activity-request-commitmenttype-chapter",
        "severity" : "error",
        "human" : "commitmentTypeChapter är obligatoriskt då commitmentType = 1 (schematron Verify paymentCommitment)",
        "expression" : "commitmentType.coding.where(code = '1').exists() implies commitmentTypeChapter.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.paymentCommitmentId",
      "path" : "processrequest.paymentCommitment.paymentCommitmentId",
      "short" : "Betalningsförbindelse id",
      "definition" : "Betalningsförbindelse id Unik identitet på betalningsförbindelsen, requestId#betfor#löpnummer\n\nExempel: SE2321000012-0001#987#betfor#1",
      "comment" : "TKB-fält: `request.paymentCommitment.paymentCommitmentId` (`PaymentCommitmentIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.commitmentType",
      "path" : "processrequest.paymentCommitment.commitmentType",
      "short" : "Betalningsförbindelse-typ avtal",
      "definition" : "Betalningsförbindelse-typ avtal\n\nAnger den avtalstyp som finns att välja för betalningsförbindelse\n\ncode: se kv_betalningsförbindelse- typ avtal\n\ncodeSystem: 1.2.752.129.2.2.2.44\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.commitmentType` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.commitmentTypeChapter",
      "path" : "processrequest.paymentCommitment.commitmentTypeChapter",
      "short" : "Betalningsförbindelse-typ kapitel",
      "definition" : "Betalningsförbindelse-typ kapitel\n\nAnger kod utifrån riksavtalets kapitel som reglerar betalning.\n\nObligatoriskt då paymentCommitment.commitmentType = 1\n\ncode: kv_ betalningsförbindelsetyp kapitel\n\ncodeSystem: 1.2.752.129.5.1.37\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.commitmentTypeChapter` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.validity",
      "path" : "processrequest.paymentCommitment.validity",
      "short" : "Giltighetstid",
      "definition" : "Giltighetstid\n\nAnges enligt ÅÅÅÅMMDD. Antingen start (low) eller slut (high) måste finnas med",
      "comment" : "TKB-fält: `request.paymentCommitment.validity` (`TimeIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.clinicalResponsibilityDescription",
      "path" : "processrequest.paymentCommitment.clinicalResponsibilityDescription",
      "short" : "Klinisk ansvarsbeskrivning",
      "definition" : "Klinisk ansvarsbeskrivning",
      "comment" : "TKB-fält: `request.paymentCommitment.clinicalResponsibilityDescription` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Maxlängd 8192 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.administrativeResponsibilityDescription",
      "path" : "processrequest.paymentCommitment.administrativeResponsibilityDescription",
      "short" : "Administrativ ansvarsbeskrivning",
      "definition" : "Administrativ ansvarsbeskrivning",
      "comment" : "TKB-fält: `request.paymentCommitment.administrativeResponsibilityDescription` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken\n\n**Modellanteckning:** Maxlängd 8192 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.validOnlyForOutpatientCare",
      "path" : "processrequest.paymentCommitment.validOnlyForOutpatientCare",
      "short" : "Gäller endast öppenvård",
      "definition" : "Gäller endast öppenvård Sätts till ”true” om betalningsförbindelsen enbart gäller öppenvård. Annars sätts den till ”false”",
      "comment" : "TKB-fält: `request.paymentCommitment.validOnlyForOutpatientCare` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.liableCountyCouncil",
      "path" : "processrequest.paymentCommitment.liableCountyCouncil",
      "short" : "Betalningsansvarig region",
      "definition" : "Betalningsansvarig region\n\nRegion som ansvarar för betalningen.\n\nKod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).\n\ncode: se kv_län\n\ncodeSystem: 1.2.752.129.2.2.1.18\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.liableCountyCouncil` (`CVType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Inera kodverk kv_län",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.dateOfApproval",
      "path" : "processrequest.paymentCommitment.dateOfApproval",
      "short" : "Datum för godkännande",
      "definition" : "Datum för godkännande\n\nTidpunkt för godkännande av denna betalningsförbindelse hos remittenten.\n\nAnges enligt ÅÅÅÅMMDDttmmss med minst precision ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `request.paymentCommitment.dateOfApproval` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.issuedInConsultationWith",
      "path" : "processrequest.paymentCommitment.issuedInConsultationWith",
      "short" : "Utfärdad i samråd med",
      "definition" : "Utfärdad i samråd med\n\nOm betalningsförbindelsen utfärdas i samråd med ekonomisk beslutsfattare antecknas namnet här. Valfri formatering.",
      "comment" : "TKB-fält: `request.paymentCommitment.issuedInConsultationWith` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Namn på ekonomisk beslutsfattare. Maxlängd 64 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.costCenter",
      "path" : "processrequest.paymentCommitment.costCenter",
      "short" : "Kostnadsställe",
      "definition" : "Kostnadsställe\n\nRemittentens kostnadsställe",
      "comment" : "TKB-fält: `request.paymentCommitment.costCenter` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Remittentens kostnadsställe. Maxlängd 64 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.reimbursementInformation",
      "path" : "processrequest.paymentCommitment.reimbursementInformation",
      "short" : "Ersättningsinformation",
      "definition" : "Ersättningsinformation\n\nObligatorisk vid remiss till privat vårdgivare",
      "comment" : "TKB-fält: `request.paymentCommitment.reimbursementInformation` (`ReimbursementInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.reimbursementInformation.reimbursementType",
      "path" : "processrequest.paymentCommitment.reimbursementInformation.reimbursementType",
      "short" : "Ersättningstyp",
      "definition" : "Ersättningstyp\n\nAnger källa till ersättning.\n\ncode: se kv_betalningsförbindelse ersättningstyp\n\ncodeSystem: 1.2.752.129.5.1.36\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.reimbursementInformation.reimbursementType` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.reimbursementInformation.ownerOfInvokedContract",
      "path" : "processrequest.paymentCommitment.reimbursementInformation.ownerOfInvokedContract",
      "short" : "Ägare av åberopat kontrakt",
      "definition" : "Ägare av åberopat kontrakt\n\nÄgare (region) av åberopat kontrakt.\n\nKod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).\n\ncode: se kv_län\n\ncodeSystem: 1.2.752.129.2.2.1.18\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract` (`CVType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Inera kodverk kv_län",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.approvedBy",
      "path" : "processrequest.paymentCommitment.approvedBy",
      "short" : "Godkänns av",
      "definition" : "Godkänns av\n\nDen person hos remittenten som har godkänt betalningsförbindelsen",
      "comment" : "TKB-fält: `request.paymentCommitment.approvedBy` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.approvedBy.healthcareProfessionalId",
      "path" : "processrequest.paymentCommitment.approvedBy.healthcareProfessionalId",
      "short" : "Personal id",
      "definition" : "Personal id\n\nHSA-id för person",
      "comment" : "TKB-fält: `request.paymentCommitment.approvedBy.id` (`HsaIdType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** HSA-id för person. RIV-TA: approvedBy.id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "processrequest.paymentCommitment.approvedBy.healthcareProfessionalName",
      "path" : "processrequest.paymentCommitment.approvedBy.healthcareProfessionalName",
      "short" : "Personal namn",
      "definition" : "Personal namn",
      "comment" : "TKB-fält: `request.paymentCommitment.approvedBy.name` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken\n\n**Modellanteckning:** Maxlängd 64 tecken. RIV-TA: approvedBy.name.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.attachment",
      "path" : "processrequest.attachment",
      "short" : "Bilaga",
      "definition" : "Bilaga\n\nMöjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten",
      "comment" : "TKB-fält: `request.attachment` (`MultimediaType`, kardinalitet 0..*).\n\n**Modellanteckning:** Bilaga (MultimediaType) i något av de tillåtna formaten. Totala meddelandestorleken får inte överstiga 10 MB.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "processrequest.attachment.attachmentId",
      "path" : "processrequest.attachment.attachmentId",
      "short" : "Bilaga id",
      "definition" : "Bilaga id\n\nIdentitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.\n\nFormat bilaga remiss: requestId#löpnummer = Källsystem-Id(HSA-ID)#lokalt-id#löpnummer\n\nObligatoriskt för inbäddade bilagor",
      "comment" : "TKB-fält: `request.attachment.id` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)#(.*)\n\nMaxlängd 256 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.attachment.mediaType",
      "path" : "processrequest.attachment.mediaType",
      "short" : "Multimediatyp",
      "definition" : "Multimediatyp\n\nTyp av multimedia, se urval med tillåtna format.\n\ncode: se urval_mediatyper_elektronisk_remiss\n\ncodeSystem: (1.2.752.129.5.1.59, se nedan)\n\nUnder codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.attachment.mediaType` (`CVType`, kardinalitet 1..1).\n\n**Modellanteckning:** Filformat enligt urval_mediatyper_elektronisk_remiss (codeSystem 1.2.752.129.5.1.59): pdf, jpeg, png, html, txt, gif, bmp.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "processrequest.attachment.attachmentValue",
      "path" : "processrequest.attachment.attachmentValue",
      "short" : "Binärdata",
      "definition" : "Binärdata\n\nAnvänds vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format.\n\nObligatoriskt när referens inte används.",
      "comment" : "TKB-fält: `request.attachment.value` (`Base64Binary`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Ett meddelande med bilagor får inte vara större än 10MB",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "processrequest.attachment.reference",
      "path" : "processrequest.attachment.reference",
      "short" : "Referens",
      "definition" : "Referens\n\nAnvänds vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas.\n\nOBS! Används inte i denna version.",
      "comment" : "TKB-fält: `request.attachment.reference` (`AnyURI`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processrequest.attachment.description",
      "path" : "processrequest.attachment.description",
      "short" : "Beskrivning",
      "definition" : "Beskrivning\n\nBeskrivning av bilaga, t ex innehåll",
      "comment" : "TKB-fält: `request.attachment.description` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 256 tecken\n\n**Modellanteckning:** Beskrivning av bilaga. Maxlängd 256 tecken.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.careProcessId",
      "path" : "processrequest.careProcessId",
      "short" : "Vårdprocess id",
      "definition" : "Vårdprocess id\n\nIdentifierare som unikt identifierar den individanpassade vårdprocess som denna remiss är en del av. Används för att kunna hålla samman information över aktörsgränser och koppling till patientens hälsoärende. Producentsystemet bör registrera all information som registreras kring patienten kopplat till detta id.",
      "comment" : "TKB-fält: `request.careProcessId` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
