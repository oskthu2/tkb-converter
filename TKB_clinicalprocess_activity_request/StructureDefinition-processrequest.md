# ProcessRequest — Remiss (begäran) - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessRequest — Remiss (begäran)**

## Logical Model: ProcessRequest — Remiss (begäran) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest | *Version*:2.2 |
| Active as of 2026-11-09 | *Computable Name*:ProcessRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i ProcessRequest (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestResponder:2, element request av typen RequestType). Remittenten skickar en allmänremiss till remissmottagaren. Svaret är enbart ett resultat, se ProcessResult. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

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
  "date" : "2026-11-09T03:14:11+00:00",
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
        "expression" : "request.reasonForVersion.typeOfReason.code = 'VR' implies request.intermediaryParticipant.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    },
    {
      "id" : "processrequest.request",
      "path" : "processrequest.request",
      "short" : "RequestType",
      "definition" : "Remiss",
      "comment" : "TKB-fält: `Request` (`RequestType`).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.requestId",
      "path" : "processrequest.request.requestId",
      "short" : "RequestIdType",
      "definition" : "Remiss id\n\nRemissens identitet. Format: Källsystem-Id(HSA-ID)#lokalt-id\n\nExempel: SE2321000012-0001#987",
      "comment" : "TKB-fält: `request.requestId` (`RequestIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)\n\nMaxlängd 256 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.requestId.extension",
      "path" : "processrequest.request.requestId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.typeOfRequest",
      "path" : "processrequest.request.typeOfRequest",
      "short" : "codeForRequestType",
      "definition" : "Remisstyp\n\nAnger typ av remiss.\n\nI denna version är den giltiga koden ”4” – allmänremiss",
      "comment" : "TKB-fält: `request.typeOfRequest` (`CodeForRequestType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** codes:codeRequestOutcomeType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.typeOfRequest.code",
      "path" : "processrequest.request.typeOfRequest.code",
      "short" : "code",
      "definition" : "code (XML-attribut) Tillåtna värden: 4.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "processrequest.request.versionTimeStamp",
      "path" : "processrequest.request.versionTimeStamp",
      "short" : "TimeStampType",
      "definition" : "Versionstidpunkt\n\nTidpunkt då versionen skapades.\n\nDenna tidpunkt kan skilja sig från tidpunkten då remissen skickas.",
      "comment" : "TKB-fält: `request.versionTimeStamp` (`TimeStampType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.versionTimeStamp.value",
      "path" : "processrequest.request.versionTimeStamp.value",
      "short" : "value",
      "definition" : "value (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.versionNumber",
      "path" : "processrequest.request.versionNumber",
      "short" : "versionNumber",
      "definition" : "Versionsnummer\n\nRemissens versionsnummer.\n\nVersion startar alltid på 1 och räknas sekventiellt upp för varje ny version.\n\nDenna räknas upp vid:\n\nÄndrad remiss\n\nVidareskickad remiss\n\nÄndrat betalnings-ansvar",
      "comment" : "TKB-fält: `request.versionNumber` (`VersionNumberType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/VersionNumberType"]
      }]
    },
    {
      "id" : "processrequest.request.reasonForVersion",
      "path" : "processrequest.request.reasonForVersion",
      "short" : "ReasonForVersionType",
      "definition" : "Versionsorsak",
      "comment" : "TKB-fält: `request.reasonForVersion` (`ReasonForVersionType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.reasonForVersion.typeOfReason",
      "path" : "processrequest.request.reasonForVersion.typeOfReason",
      "short" : "codeVersionReason",
      "definition" : "typeOfReason",
      "comment" : "TKB-fält: `request.reasonForVersion.typeOfReason` (`CodeVersionReason`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.reasonForVersion.typeOfReason.code",
      "path" : "processrequest.request.reasonForVersion.typeOfReason.code",
      "short" : "code",
      "definition" : "Anger varför en ny version skapats.\n\nVärden enligt Kv e-remiss versionsorsak, se [R5]. Giltiga värden är:\n\nNR = Ny remiss\n\nAR = Ändrad remiss\n\nVR = Vidareskickad remiss\n\nAB = Ändrat betalningsansvar",
      "comment" : "TKB-fält: `request.reasonForVersion.typeOfReason.code` (`CodeVersionReason_values`, kardinalitet 1..1).\n\n**Modellanteckning:** code (XML-attribut) Tillåtna värden: NR, AR, VR, AB.",
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
      "id" : "processrequest.request.careResponsibilityRemains",
      "path" : "processrequest.request.careResponsibilityRemains",
      "short" : "careResponsibilityRemains",
      "definition" : "Vårdansvar kvarstår\n\nAnger om remittent vill att vårdansvar ska kvarstå hos remitterande enhet eller om man vill att vårdansvar överförs till remissmottagande enhet.\n\nTvå alternativ:\n\nTrue = Vårdansvar kvarstår\n\nFalse = Begäran om övertagande av vårdansvar",
      "comment" : "TKB-fält: `request.careResponsibilityRemains` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "processrequest.request.patient",
      "path" : "processrequest.request.patient",
      "short" : "PatientType",
      "definition" : "Patient",
      "comment" : "TKB-fält: `request.patient` (`PatientType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.patient.personId",
      "path" : "processrequest.request.patient.personId",
      "short" : "PersonIdType",
      "definition" : "Person id\n\nPatientens identitet",
      "comment" : "TKB-fält: `request.patient.personId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.patient.personId.extension",
      "path" : "processrequest.request.patient.personId.extension",
      "short" : "extension",
      "definition" : "Personidentifierare för patienten.\n\nOm identiteten är av typ personnummer, samordningsnummer eller nationellt reservId skall denna anges med 12 tecken utan skiljetecken.",
      "comment" : "TKB-fält: `request.patient.personId.extension` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.personId.root",
      "path" : "processrequest.request.patient.personId.root",
      "short" : "root",
      "definition" : "OID för typ av personidentifierare.\n\nFör personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\nFör samordningsnummer ska Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\nFör nationellt reservId ska OID för nationellt reservId (1.2.752.74.9.1) användas.\n\nFör andra typer av personidentifierare sätts root till aktuell OID.",
      "comment" : "TKB-fält: `request.patient.personId.root` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** root (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.address",
      "path" : "processrequest.request.patient.address",
      "short" : "AddressType",
      "definition" : "Tillfällig adress\n\nObservera att adress används endast om tillfällig adress behöver anges, ej folkbokförd adress.\n\nAdressen är avsedd att användas vid kallelse. Formatet är baserat på Skatteverkets distributionslösning Navet.",
      "comment" : "TKB-fält: `request.patient.address` (`AddressType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.patient.address.careOf",
      "path" : "processrequest.request.patient.address.careOf",
      "short" : "careOf",
      "definition" : "”Care of”",
      "comment" : "TKB-fält: `request.patient.address.careOf` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.address.streetName1",
      "path" : "processrequest.request.patient.address.streetName1",
      "short" : "streetName1",
      "definition" : "Utdelningsadress1",
      "comment" : "TKB-fält: `request.patient.address.streetName1` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.address.streetName2",
      "path" : "processrequest.request.patient.address.streetName2",
      "short" : "streetName2",
      "definition" : "Utdelningsadress2",
      "comment" : "TKB-fält: `request.patient.address.streetName2` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 35 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.address.postalCode",
      "path" : "processrequest.request.patient.address.postalCode",
      "short" : "postalCode",
      "definition" : "Postnummer i formatet ”12345”, dvs fem siffror inga blanksteg.",
      "comment" : "TKB-fält: `request.patient.address.postalCode` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 5 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.address.postalCity",
      "path" : "processrequest.request.patient.address.postalCity",
      "short" : "postalCity",
      "definition" : "Postort",
      "comment" : "TKB-fält: `request.patient.address.postalCity` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 27 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.address.postBox",
      "path" : "processrequest.request.patient.address.postBox",
      "short" : "postBox",
      "definition" : "Postbox",
      "comment" : "TKB-fält: `request.patient.address.postBox` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 9 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.telecom",
      "path" : "processrequest.request.patient.telecom",
      "short" : "TelecomType",
      "definition" : "Telefon",
      "comment" : "TKB-fält: `request.patient.telecom` (`TelecomType`, kardinalitet 0..2).",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.patient.telecom.typeOfTelecom",
      "path" : "processrequest.request.patient.telecom.typeOfTelecom",
      "short" : "codeForTelecomType",
      "definition" : "Telefon typ\n\nFör att särskilja olika typer av telekomadresser används 2 olika koder ’MC’=Mobil, ’H’=Hemtelefon",
      "comment" : "TKB-fält: `request.patient.telecom.typeOfTelecom` (`CodeForTelecomType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** codes:codeForTelecomType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.patient.telecom.typeOfTelecom.code",
      "path" : "processrequest.request.patient.telecom.typeOfTelecom.code",
      "short" : "code",
      "definition" : "code (XML-attribut) Tillåtna värden: H, MC.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "processrequest.request.patient.telecom.number",
      "path" : "processrequest.request.patient.telecom.number",
      "short" : "number",
      "definition" : "Telefonnummer",
      "comment" : "TKB-fält: `request.patient.telecom.number` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.name",
      "path" : "processrequest.request.patient.name",
      "short" : "name",
      "definition" : "Namn\n\nPersonnamn sammanslaget enligt formatet \" Mellannamn Efternamn, Förnamn\". Om flera namn av samma typ förekommer ska dessa separeras med mellanslag.\n\nImplementationer rekommenderas att i första hand slå upp denna information från den källa till personinformation som normalt används. Detta namn är i första hand till för teknisk loggning och spårbarhet.",
      "comment" : "TKB-fält: `request.patient.name` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 216 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.patient.gender",
      "path" : "processrequest.request.patient.gender",
      "short" : "codeForGenderType",
      "definition" : "Kön\n\nAnger administrativt kön, dvs. det kön patienten har registrerat hos Skatteverket.\n\nOID för kodsystem: 1.2.752.129.2.2.1.1\n\nGiltiga värden är:\n\n0 = okänt\n\n1 = man\n\n2 = kvinna\n\n9 = ej tillämpligt",
      "comment" : "TKB-fält: `request.patient.gender` (`CodeForGenderType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** codes:codeForGenderType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.patient.gender.code",
      "path" : "processrequest.request.patient.gender.code",
      "short" : "code",
      "definition" : "code (XML-attribut) Tillåtna värden: 0, 1, 2, 9.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "processrequest.request.patient.dateOfBirth",
      "path" : "processrequest.request.patient.dateOfBirth",
      "short" : "DateType",
      "definition" : "Födelsetidpunkt\n\nAnges då patientens identitetstyp är av annan typ än personnummer.",
      "comment" : "TKB-fält: `request.patient.dateOfBirth` (`DateType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDD",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.patient.dateOfBirth.value",
      "path" : "processrequest.request.patient.dateOfBirth.value",
      "short" : "value",
      "definition" : "value (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.requestOrganisation",
      "path" : "processrequest.request.requestOrganisation",
      "short" : "FullOrganisationType",
      "definition" : "Organisatorisk enhet\n\nInformation om ursprunglig remitterande organisatorisk enhet. Kan skilja sig från PDL ansvarig enhet vid behov. Det är denna enhet som svaret adresseras till i logisk adress.",
      "comment" : "TKB-fält: `request.requestOrganisation` (`FullOrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.requestOrganisation.careUnitId",
      "path" : "processrequest.request.requestOrganisation.careUnitId",
      "short" : "HsaIdType",
      "definition" : "Enhet id\n\nHSA-id för remitterande enhet. Detta används av remissbesvarare som logisk adress för att adressera svarsmottagare.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.requestOrganisation.careUnitId.extension",
      "path" : "processrequest.request.requestOrganisation.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.requestOrganisation.careUnitName",
      "path" : "processrequest.request.requestOrganisation.careUnitName",
      "short" : "careUnitName",
      "definition" : "Enhet namn\n\nNamn på enhet.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitName` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.requestOrganisation.careUnitTelephone",
      "path" : "processrequest.request.requestOrganisation.careUnitTelephone",
      "short" : "careUnitTelephone",
      "definition" : "Enhet telefon\n\nTelefon till enhet.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitTelephone` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.requestOrganisation.careUnitEmail",
      "path" : "processrequest.request.requestOrganisation.careUnitEmail",
      "short" : "careUnitEmail",
      "definition" : "Enhet epost\n\nE-post till enhet.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitEmail` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.requestOrganisation.careUnitAddress",
      "path" : "processrequest.request.requestOrganisation.careUnitAddress",
      "short" : "careUnitAddress",
      "definition" : "Adress till enhet.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitAddress` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.requestOrganisation.careUnitLocation",
      "path" : "processrequest.request.requestOrganisation.careUnitLocation",
      "short" : "careUnitLocation",
      "definition" : "Enhet plats\n\nText som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.",
      "comment" : "TKB-fält: `request.requestOrganisation.careUnitLocation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.author",
      "path" : "processrequest.request.author",
      "short" : "RequestAuthorType",
      "definition" : "Remittent\n\nInformation avseende den remitterande personen samt den organisation som personen är uppdragstagare på.",
      "comment" : "TKB-fält: `request.author` (`RequestAuthorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.author.date",
      "path" : "processrequest.request.author.date",
      "short" : "DateType",
      "definition" : "Remissdatum\n\nRemissdatum när remiss skapades måste anges. Format som ska användas är ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `request.author.date` (`DateType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDD",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.author.date.value",
      "path" : "processrequest.request.author.date.value",
      "short" : "value",
      "definition" : "value (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.author.healthcareProfessional",
      "path" : "processrequest.request.author.healthcareProfessional",
      "short" : "HealthcareProfessionalType",
      "definition" : "Hälso- och sjukvårdspersonal",
      "comment" : "TKB-fält: `request.author.healthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.author.healthcareProfessional.id",
      "path" : "processrequest.request.author.healthcareProfessional.id",
      "short" : "HsaIdType",
      "definition" : "Personal Id\n\nHSA-id för remitterande hälso- och sjukvårdspersonal.",
      "comment" : "TKB-fält: `request.author.healthcareProfessional.id` (`HsaIdType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.author.healthcareProfessional.id.extension",
      "path" : "processrequest.request.author.healthcareProfessional.id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.author.healthcareProfessional.name",
      "path" : "processrequest.request.author.healthcareProfessional.name",
      "short" : "name",
      "definition" : "Personal namn\n\nNamn på remitterande hälso- och sjukvårdspersonal.\n\nValfri formatering.",
      "comment" : "TKB-fält: `request.author.healthcareProfessional.name` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.author.typeOfHealthcareProfessional",
      "path" : "processrequest.request.author.typeOfHealthcareProfessional",
      "short" : "typeOfHealthcareProfessional",
      "definition" : "Typ av hälso- och sjukvårdspersonal\n\nKod för yrkestitel från Snomed CT enligt urvalen nedan:\n\ncode: se urval_legitimerade_yrken\n\ncodeSystem: OID 1.2.752.129.5.1.70\n\neller\n\ncode: se yrken_i_halso-_och_sjukvarden_ej_legitimerade\n\ncodeSystem: 1.2.752.129.7.1.5\n\nUrvalen kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.author.typeOfHealthcareProfessional` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequest.request.author.healthcareProfessionalOrganisation",
      "path" : "processrequest.request.author.healthcareProfessionalOrganisation",
      "short" : "OrganisationType",
      "definition" : "Organisatorisk enhet\n\nremittent",
      "comment" : "TKB-fält: `request.author.healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.author.healthcareProfessionalOrganisation.careUnitId",
      "path" : "processrequest.request.author.healthcareProfessionalOrganisation.careUnitId",
      "short" : "HsaIdType",
      "definition" : "Enhet id\n\nHSA-id för vårdenhet (jmf. PDL) som ansvarar för remissen.",
      "comment" : "TKB-fält: `request.author.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.author.healthcareProfessionalOrganisation.careUnitId.extension",
      "path" : "processrequest.request.author.healthcareProfessionalOrganisation.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.recipient",
      "path" : "processrequest.request.recipient",
      "short" : "RecipientType",
      "definition" : "Mottagare\n\nInformation avseende den remissmottagande organisationen",
      "comment" : "TKB-fält: `request.recipient` (`RecipientType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.recipient.organisation",
      "path" : "processrequest.request.recipient.organisation",
      "short" : "OrganisationType",
      "definition" : "Organisatorisk enhet\n\nmottagare",
      "comment" : "TKB-fält: `request.recipient.organisation` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.recipient.organisation.careUnitId",
      "path" : "processrequest.request.recipient.organisation.careUnitId",
      "short" : "HsaIdType",
      "definition" : "Enhet id\n\nHSA-id för remissmottagande enhet, till vilken remissen adresseras.\n\nMed remissmottagande enhet avses det som i SOSFS 2004:11 benämns som mottagande enhet.",
      "comment" : "TKB-fält: `request.recipient.organisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.recipient.organisation.careUnitId.extension",
      "path" : "processrequest.request.recipient.organisation.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.intermediaryParticipant",
      "path" : "processrequest.request.intermediaryParticipant",
      "short" : "IntermediaryType",
      "definition" : "Vidareskickare\n\nBeskriver Hälso-och sjukvårdspersonalen som vidareskickar remissen",
      "comment" : "TKB-fält: `request.intermediaryParticipant` (`IntermediaryType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.intermediaryParticipant.healthcareProfessionalOrganisation",
      "path" : "processrequest.request.intermediaryParticipant.healthcareProfessionalOrganisation",
      "short" : "OrganisationType",
      "definition" : "Organisatorisk enhet\n\nvidareskickare",
      "comment" : "TKB-fält: `request.intermediaryParticipant. healthcareProfessionalOrganisation` (`OrganisationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId",
      "path" : "processrequest.request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId",
      "short" : "HsaIdType",
      "definition" : "Enhet id\n\nHSA-id på den remissmottagande enhet som vidareskickat remissen.",
      "comment" : "TKB-fält: `request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId` (`HsaIdType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId.extension",
      "path" : "processrequest.request.intermediaryParticipant.healthcareProfessionalOrganisation.careUnitId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.intermediaryParticipant.time",
      "path" : "processrequest.request.intermediaryParticipant.time",
      "short" : "TimeStampType",
      "definition" : "Tidpunkt\n\nTidpunkt då versionen skapades för vidareskickning.\n\nDenna tidpunkt kan skilja sig från tidpunkten då remissen faktiskt skickas beroende på hur detta implementeras i en lokal remissmodul.",
      "comment" : "TKB-fält: `request.intermediaryParticipant.time` (`TimeStampType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.intermediaryParticipant.time.value",
      "path" : "processrequest.request.intermediaryParticipant.time.value",
      "short" : "value",
      "definition" : "value (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.additionalInformation",
      "path" : "processrequest.request.additionalInformation",
      "short" : "AdditionalInformationType",
      "definition" : "Tilläggsinformation",
      "comment" : "TKB-fält: `request.additionalInformation` (`AdditionalInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.additionalInformation.desiredRequestRecipient",
      "path" : "processrequest.request.additionalInformation.desiredRequestRecipient",
      "short" : "desiredRequestRecipient",
      "definition" : "Önskemål om remissmottagare Önskad remissmottagare: enhet, person, yrkesroll, fritext",
      "comment" : "TKB-fält: `request.additionalInformation.desiredRequestRecipient` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.additionalInformation.administrativeInformation",
      "path" : "processrequest.request.additionalInformation.administrativeInformation",
      "short" : "administrativeInformation",
      "definition" : "Kompletterande administrativ information\n\nHär anges kompletterande administrativ information. Exempelvis kan denna innehålla information om detta är ett akutärende, om patienten är bortrest under en viss tid inom kallelsetiden eller annan information som kan påverka den administrativa processen kring remissen. Här läggs även information om SVF-patient (standardiserade vårdförlopp), datum för välgrundad misstanke samt aktuellt SVF-förlopp.",
      "comment" : "TKB-fält: `request.additionalInformation.administrativeInformation` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.additionalInformation.interpreterRequirement",
      "path" : "processrequest.request.additionalInformation.interpreterRequirement",
      "short" : "interpreterRequirement",
      "definition" : "Kommentar tolkbehov Här beskrivs eventuellt tolkbehov.",
      "comment" : "TKB-fält: `request.additionalInformation.interpreterRequirement` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 200 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.awarenessInformation",
      "path" : "processrequest.request.awarenessInformation",
      "short" : "AwarenessInformationType",
      "definition" : "Uppmärksamhetsinformation\n\nUppmärksamhetsinformation om patient",
      "comment" : "TKB-fält: `request.awarenessInformation` (`AwarenessInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.awarenessInformation.text",
      "path" : "processrequest.request.awarenessInformation.text",
      "short" : "text",
      "definition" : "Uppmärksamhetstext Uppmärksamhetsinformation av betydelse för denna remiss. Mottagande system bör inte med automatik föra in denna i den egna hanteringen för uppmärksamhetsinformation kring patienten utan endast lagra den i samband med remissen.",
      "comment" : "TKB-fält: `request.awarenessInformation.text` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation",
      "path" : "processrequest.request.questionFormulation",
      "short" : "QuestionFormulationType",
      "definition" : "Frågeställning",
      "comment" : "TKB-fält: `request.questionFormulation` (`QuestionFormulationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.text",
      "path" : "processrequest.request.questionFormulation.text",
      "short" : "text",
      "definition" : "Frågeställning text\n\nHär anges remissens frågeställning.",
      "comment" : "TKB-fält: `request.questionFormulation.text` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.clinicalInformation",
      "path" : "processrequest.request.questionFormulation.clinicalInformation",
      "short" : "ClinicalInformationType",
      "definition" : "Anamnes\n\nHär anges underbyggande klinisk information (anamnes) för remissfrågeställningen. Dessa underbyggande kliniska data är direkt kopplat till frågeställningen",
      "comment" : "TKB-fält: `request.questionFormulation.clinicalInformation` (`ClinicalInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.clinicalInformation.text",
      "path" : "processrequest.request.questionFormulation.clinicalInformation.text",
      "short" : "text",
      "definition" : "Beskrivning\n\nHär anges klinisk informationsbeskrivning",
      "comment" : "TKB-fält: `request.questionFormulation.clinicalInformation.text` (`String`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.condition",
      "path" : "processrequest.request.questionFormulation.condition",
      "short" : "ConditionType",
      "definition" : "Kliniskt tillstånd\n\nAnger kliniska tillstånd som använts i uppslag mot stödtjänster.\n\nAnvänds som stöd för att remittent och remissmottagare ska kunna avgöra om remissuppgifterna är kompletta.",
      "comment" : "TKB-fält: `request.questionFormulation.condition` (`ConditionType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "activity-request-condition-code-or-text",
        "severity" : "error",
        "human" : "Kliniskt tillstånd: ange antingen text eller kod, inte båda (schematron Verify condition)",
        "expression" : "(text.exists() and code.exists()).not()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.condition.text",
      "path" : "processrequest.request.questionFormulation.condition.text",
      "short" : "text",
      "definition" : "Kliniskt tillstånd beskrivning\n\nHär kan diagnosbeskrivning skrivas in.\n\nObservera att den får endast förekomma om questionFormulation.condition.code inte används.",
      "comment" : "TKB-fält: `request.questionFormulation.condition.text` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.condition.code",
      "path" : "processrequest.request.questionFormulation.condition.code",
      "short" : "code",
      "definition" : "Kliniskt tillståndskod Anger kliniska tillståndskoder.\n\ncode:  se ICD-10-SE\n\ncodeSystem: 1.2.752.116.1.1.1\n\nObservera att kod får endast förekomma om questionFormulation.condition.text inte används.\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.questionFormulation.condition.code` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.desiredActivity",
      "path" : "processrequest.request.questionFormulation.desiredActivity",
      "short" : "ActivityType",
      "definition" : "Åtgärd\n\nHär anges önskade åtgärder. Dessa åtgärder ska vara direkt kopplade till frågeställningen.",
      "comment" : "TKB-fält: `request.questionFormulation.desiredActivity` (`ActivityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "activity-request-activity-code-or-text",
        "severity" : "error",
        "human" : "Åtgärd: ange antingen text eller kod, inte båda (schematron Verify desiredActivity)",
        "expression" : "(text.exists() and code.exists()).not()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.desiredActivity.id",
      "path" : "processrequest.request.questionFormulation.desiredActivity.id",
      "short" : "ActivityIdType",
      "definition" : "Åtgärd id\n\nUnikt id i form av löpnummer för den önskade åtgärden",
      "comment" : "TKB-fält: `request.questionFormulation. desiredActivity.id` (`ActivityIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.desiredActivity.id.extension",
      "path" : "processrequest.request.questionFormulation.desiredActivity.id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.desiredActivity.text",
      "path" : "processrequest.request.questionFormulation.desiredActivity.text",
      "short" : "text",
      "definition" : "Åtgärd beskrivning\n\nObservera att text får endast förekomma om questionFormulation.desiredActivity.code inte används.",
      "comment" : "TKB-fält: `request.questionFormulation.desiredActivity.text` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.desiredActivity.code",
      "path" : "processrequest.request.questionFormulation.desiredActivity.code",
      "short" : "ActivityCodeType",
      "definition" : "Åtgärd typ\n\nÅtgärd enligt kodsystem.\n\nObservera att code får endast förekomma om questionFormulation.desiredActivity.text inte används.",
      "comment" : "TKB-fält: `request.questionFormulation.desiredActivity.code` (`ActivityCodeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.desiredActivity.code.code",
      "path" : "processrequest.request.questionFormulation.desiredActivity.code.code",
      "short" : "code",
      "definition" : "Kod enligt det angivna kodsystemet i codeSystem – KVÅ eller Snomed CT",
      "comment" : "TKB-fält: `request.questionFormulation.desiredActivity.code.code` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** code (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.questionFormulation.desiredActivity.code.codeSystem",
      "path" : "processrequest.request.questionFormulation.desiredActivity.code.codeSystem",
      "short" : "codeSystem",
      "definition" : "Kodsystem för tolkning av angiven kod.\n\nObligatoriskt att hantera 1.2.752.116.1.3.2.1.4 = KVÅ\n\nOm remittent använder kodverk som remissmottagande system inte hanterar skall detta resultera i ett fel av typen APPLICATION_ERROR.",
      "comment" : "TKB-fält: `request.questionFormulation.desiredActivity.code.codeSystem` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** codeSystem (XML-attribut) Tillåtna värden: 1.2.752.116.1.3.2.1.4, 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment",
      "path" : "processrequest.request.paymentCommitment",
      "short" : "PaymentCommitmentType",
      "definition" : "Betalningsförbindelse Betalningsförbindelse beskriver hur remissmottagande vårdgivare ersätts för de begärda tjänsterna av remitterande vårdgivare.\n\nAktuellt vid ett regionsöverskridande remissflöde. För detaljer i användningen se även SKRs Riksavtal.",
      "comment" : "TKB-fält: `request.paymentCommitment` (`PaymentCommitmentType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }],
      "constraint" : [{
        "key" : "activity-request-commitmenttype-chapter",
        "severity" : "error",
        "human" : "commitmentTypeChapter är obligatoriskt då commitmentType = 1 (schematron Verify paymentCommitment)",
        "expression" : "commitmentType.code = '1' implies commitmentTypeChapter.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/processrequest"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.paymentCommitmentId",
      "path" : "processrequest.request.paymentCommitment.paymentCommitmentId",
      "short" : "PaymentCommitmentIdType",
      "definition" : "Betalningsförbindelse id Unik identitet på betalningsförbindelsen, requestId#betfor#löpnummer\n\nExempel: SE2321000012-0001#987#betfor#1",
      "comment" : "TKB-fält: `request.paymentCommitment.paymentCommitmentId` (`PaymentCommitmentIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.paymentCommitmentId.extension",
      "path" : "processrequest.request.paymentCommitment.paymentCommitmentId.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.commitmentType",
      "path" : "processrequest.request.paymentCommitment.commitmentType",
      "short" : "commitmentType",
      "definition" : "Betalningsförbindelse-typ avtal\n\nAnger den avtalstyp som finns att välja för betalningsförbindelse\n\ncode: se kv_betalningsförbindelse- typ avtal\n\ncodeSystem: 1.2.752.129.2.2.2.44\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.commitmentType` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.commitmentTypeChapter",
      "path" : "processrequest.request.paymentCommitment.commitmentTypeChapter",
      "short" : "commitmentTypeChapter",
      "definition" : "Betalningsförbindelse-typ kapitel\n\nAnger kod utifrån riksavtalets kapitel som reglerar betalning.\n\nObligatoriskt då paymentCommitment.commitmentType = 1\n\ncode: kv_ betalningsförbindelsetyp kapitel\n\ncodeSystem: 1.2.752.129.5.1.37\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.commitmentTypeChapter` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.validity",
      "path" : "processrequest.request.paymentCommitment.validity",
      "short" : "TimeIntervalType",
      "definition" : "Giltighetstid\n\nAnges enligt ÅÅÅÅMMDD. Antingen start (low) eller slut (high) måste finnas med",
      "comment" : "TKB-fält: `request.paymentCommitment.validity` (`TimeIntervalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.validity.low",
      "path" : "processrequest.request.paymentCommitment.validity.low",
      "short" : "low",
      "definition" : "low (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.validity.high",
      "path" : "processrequest.request.paymentCommitment.validity.high",
      "short" : "high",
      "definition" : "high (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.clinicalResponsibilityDescription",
      "path" : "processrequest.request.paymentCommitment.clinicalResponsibilityDescription",
      "short" : "clinicalResponsibilityDescription",
      "definition" : "Klinisk ansvarsbeskrivning",
      "comment" : "TKB-fält: `request.paymentCommitment.clinicalResponsibilityDescription` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.administrativeResponsibilityDescription",
      "path" : "processrequest.request.paymentCommitment.administrativeResponsibilityDescription",
      "short" : "administrativeResponsibilityDescription",
      "definition" : "Administrativ ansvarsbeskrivning",
      "comment" : "TKB-fält: `request.paymentCommitment.administrativeResponsibilityDescription` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 8192 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.validOnlyForOutpatientCare",
      "path" : "processrequest.request.paymentCommitment.validOnlyForOutpatientCare",
      "short" : "validOnlyForOutpatientCare",
      "definition" : "Gäller endast öppenvård Sätts till ”true” om betalningsförbindelsen enbart gäller öppenvård. Annars sätts den till ”false”",
      "comment" : "TKB-fält: `request.paymentCommitment.validOnlyForOutpatientCare` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.liableCountyCouncil",
      "path" : "processrequest.request.paymentCommitment.liableCountyCouncil",
      "short" : "liableCountyCouncil",
      "definition" : "Betalningsansvarig region\n\nRegion som ansvarar för betalningen.\n\nKod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).\n\ncode: se kv_län\n\ncodeSystem: 1.2.752.129.2.2.1.18\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.liableCountyCouncil` (`CVType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Inera kodverk kv_län",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.dateOfApproval",
      "path" : "processrequest.request.paymentCommitment.dateOfApproval",
      "short" : "TimeStampType",
      "definition" : "Datum för godkännande\n\nTidpunkt för godkännande av denna betalningsförbindelse hos remittenten.\n\nAnges enligt ÅÅÅÅMMDDttmmss med minst precision ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `request.paymentCommitment.dateOfApproval` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.dateOfApproval.value",
      "path" : "processrequest.request.paymentCommitment.dateOfApproval.value",
      "short" : "value",
      "definition" : "value (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.issuedInConsultationWith",
      "path" : "processrequest.request.paymentCommitment.issuedInConsultationWith",
      "short" : "issuedInConsultationWith",
      "definition" : "Utfärdad i samråd med\n\nOm betalningsförbindelsen utfärdas i samråd med ekonomisk beslutsfattare antecknas namnet här. Valfri formatering.",
      "comment" : "TKB-fält: `request.paymentCommitment.issuedInConsultationWith` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.costCenter",
      "path" : "processrequest.request.paymentCommitment.costCenter",
      "short" : "costCenter",
      "definition" : "Kostnadsställe\n\nRemittentens kostnadsställe",
      "comment" : "TKB-fält: `request.paymentCommitment.costCenter` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.reimbursementInformation",
      "path" : "processrequest.request.paymentCommitment.reimbursementInformation",
      "short" : "ReimbursementInformationType",
      "definition" : "Ersättningsinformation\n\nObligatorisk vid remiss till privat vårdgivare",
      "comment" : "TKB-fält: `request.paymentCommitment.reimbursementInformation` (`ReimbursementInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.reimbursementInformation.reimbursementType",
      "path" : "processrequest.request.paymentCommitment.reimbursementInformation.reimbursementType",
      "short" : "reimbursementType",
      "definition" : "Ersättningstyp\n\nAnger källa till ersättning.\n\ncode: se kv_betalningsförbindelse ersättningstyp\n\ncodeSystem: 1.2.752.129.5.1.36\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.reimbursementInformation.reimbursementType` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract",
      "path" : "processrequest.request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract",
      "short" : "ownerOfInvokedContract",
      "definition" : "Ägare av åberopat kontrakt\n\nÄgare (region) av åberopat kontrakt.\n\nKod enligt förteckning utgiven av Statistiska Centralbyrån (SCB).\n\ncode: se kv_län\n\ncodeSystem: 1.2.752.129.2.2.1.18\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.paymentCommitment.reimbursementInformation.ownerOfInvokedContract` (`CVType`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Inera kodverk kv_län",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.approvedBy",
      "path" : "processrequest.request.paymentCommitment.approvedBy",
      "short" : "HealthcareProfessionalType",
      "definition" : "Godkänns av\n\nDen person hos remittenten som har godkänt betalningsförbindelsen",
      "comment" : "TKB-fält: `request.paymentCommitment.approvedBy` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.approvedBy.id",
      "path" : "processrequest.request.paymentCommitment.approvedBy.id",
      "short" : "HsaIdType",
      "definition" : "Personal id\n\nHSA-id för person",
      "comment" : "TKB-fält: `request.paymentCommitment.approvedBy.id` (`HsaIdType`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.approvedBy.id.extension",
      "path" : "processrequest.request.paymentCommitment.approvedBy.id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.paymentCommitment.approvedBy.name",
      "path" : "processrequest.request.paymentCommitment.approvedBy.name",
      "short" : "name",
      "definition" : "Personal namn",
      "comment" : "TKB-fält: `request.paymentCommitment.approvedBy.name` (`String`, kardinalitet 1..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 64 tecken",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.attachment",
      "path" : "processrequest.request.attachment",
      "short" : "MultimediaType",
      "definition" : "Bilaga\n\nMöjlighet att skicka med en eller flera bilagor i något av de tillåtna formaten",
      "comment" : "TKB-fält: `request.attachment` (`MultimediaType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "processrequest.request.attachment.id",
      "path" : "processrequest.request.attachment.id",
      "short" : "id",
      "definition" : "Bilaga id\n\nIdentitet på bilagan. Används för inbäddade bilagor vid referenser inom en tjänsteinteraktion.\n\nFormat bilaga remiss: requestId#löpnummer = Källsystem-Id(HSA-ID)#lokalt-id#löpnummer\n\nObligatoriskt för inbäddade bilagor",
      "comment" : "TKB-fält: `request.attachment.id` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)#(.*)\n\nMaxlängd 256 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.attachment.mediaType",
      "path" : "processrequest.request.attachment.mediaType",
      "short" : "mediaType",
      "definition" : "Multimediatyp\n\nTyp av multimedia, se urval med tillåtna format.\n\ncode: se urval_mediatyper_elektronisk_remiss\n\ncodeSystem: (1.2.752.129.5.1.59, se nedan)\n\nUnder codeSystem anges identifieraren för det kodverk från vilken den angivna koden hämtats. Detta medför att det kan skickas olika identifierare under codeSystem, beroende på vilket kodverk den skickade koden tillhör.\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter och producenter av tjänstekontrakten behöver vara förberedda på att nya koder kan tillkomma utan att versionen på tjänstekontraktet uppdateras.",
      "comment" : "TKB-fält: `request.attachment.mediaType` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-activity-request/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "processrequest.request.attachment.value",
      "path" : "processrequest.request.attachment.value",
      "short" : "value",
      "definition" : "Binärdata\n\nAnvänds vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. Om bilagan innehåller avkodad text ska denna vara avkodad från UTF-8-format.\n\nObligatoriskt när referens inte används.",
      "comment" : "TKB-fält: `request.attachment.value` (`Base64Binary`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Ett meddelande med bilagor får inte vara större än 10MB",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "processrequest.request.attachment.reference",
      "path" : "processrequest.request.attachment.reference",
      "short" : "reference",
      "definition" : "Referens\n\nAnvänds vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas.\n\nOBS! Används inte i denna version.",
      "comment" : "TKB-fält: `request.attachment.reference` (`AnyURI`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "processrequest.request.attachment.description",
      "path" : "processrequest.request.attachment.description",
      "short" : "description",
      "definition" : "Beskrivning\n\nBeskrivning av bilaga, t ex innehåll",
      "comment" : "TKB-fält: `request.attachment.description` (`String`, kardinalitet 0..1).\n\n**Kodverk/värde-mängd /ev begränsningar:** Maxlängd 256 tecken",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "processrequest.request.careProcessId",
      "path" : "processrequest.request.careProcessId",
      "short" : "careProcessId",
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
