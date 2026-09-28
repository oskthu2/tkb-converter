# GetPatientContactInformation — Response - masterdata: citizen: patient v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPatientContactInformation — Response**

## Logical Model: GetPatientContactInformation — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/getpatientcontactinformation | *Version*:1.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:GetPatientContactInformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetPatientContactInformation (urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-citizen-patient|current/StructureDefinition/StructureDefinition-getpatientcontactinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpatientcontactinformation.csv), [Excel](StructureDefinition-getpatientcontactinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpatientcontactinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/getpatientcontactinformation",
  "version" : "1.0.0",
  "name" : "GetPatientContactInformation",
  "title" : "GetPatientContactInformation — Response",
  "status" : "draft",
  "date" : "2026-09-28T09:13:45+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetPatientContactInformation\n(urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/getpatientcontactinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpatientcontactinformation",
      "path" : "getpatientcontactinformation",
      "short" : "GetPatientContactInformation — Response",
      "definition" : "Logisk modell för svaret i GetPatientContactInformation\n(urn:riv:masterdata:citizen:patient:GetPatientContactInformationResponder:1, GetPatientContactInformationResponseType)."
    },
    {
      "id" : "getpatientcontactinformation.lastUpdatedBy",
      "path" : "getpatientcontactinformation.lastUpdatedBy",
      "short" : "lastUpdatedBy",
      "definition" : "lastUpdatedBy",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.lastUpdatedBy.root",
      "path" : "getpatientcontactinformation.lastUpdatedBy.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.lastUpdatedBy.iiExtension",
      "path" : "getpatientcontactinformation.lastUpdatedBy.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.lastUpdatedTime",
      "path" : "getpatientcontactinformation.lastUpdatedTime",
      "short" : "lastUpdatedTime",
      "definition" : "lastUpdatedTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.patient",
      "path" : "getpatientcontactinformation.patient",
      "short" : "patient",
      "definition" : "person_ID : Nationell identifikation på personen. Dock ej reservnummer. kommentar : Övrig kontaktuppgift för patient. Fri text",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.patient.patientId",
      "path" : "getpatientcontactinformation.patient.patientId",
      "short" : "patientId",
      "definition" : "patientId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.patient.patientId.root",
      "path" : "getpatientcontactinformation.patient.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.patient.patientId.iiExtension",
      "path" : "getpatientcontactinformation.patient.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.patient.comment",
      "path" : "getpatientcontactinformation.patient.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactInformation",
      "path" : "getpatientcontactinformation.contactInformation",
      "short" : "contactInformation",
      "definition" : "typ_av_telekom : Anger vilken typ av internet/telefoni-kommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). 5 - Epost - Defineras enligt RFC 5322 Internet message format !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om tele- e-Kom adress t.ex. är privat eller till arbetet kv teleekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer_eller_elektronisk_adress : Tele-/Mobil-/Sökare-/Fax-nummer eller elektronisk adress kommentar : Övrig kontaktuppgift per telnr/email",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactInformation.telecomType",
      "path" : "getpatientcontactinformation.contactInformation.telecomType",
      "short" : "telecomType",
      "definition" : "telecomType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeoftelecompatient-vs"
      }
    },
    {
      "id" : "getpatientcontactinformation.contactInformation.contactType",
      "path" : "getpatientcontactinformation.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeofcontact-vs"
      }
    },
    {
      "id" : "getpatientcontactinformation.contactInformation.numberOrElectronicalAddress",
      "path" : "getpatientcontactinformation.contactInformation.numberOrElectronicalAddress",
      "short" : "numberOrElectronicalAddress",
      "definition" : "numberOrElectronicalAddress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactInformation.comment",
      "path" : "getpatientcontactinformation.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactInformation.otherContactInfo",
      "path" : "getpatientcontactinformation.contactInformation.otherContactInfo",
      "short" : "otherContactInfo",
      "definition" : "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactInformation.otherContactInfo.completingContactInfo",
      "path" : "getpatientcontactinformation.contactInformation.otherContactInfo.completingContactInfo",
      "short" : "completingContactInfo",
      "definition" : "completingContactInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson",
      "path" : "getpatientcontactinformation.contactPerson",
      "short" : "contactPerson",
      "definition" : "Kontaktperson relationType : Val av kategori(OID), och inom denna val av kod. (När OID för kodverk ”relationskategori” fastställs, så kan även den nyttjas för att erbjuda alternativet: kod=4, klartext=”Annan”) kv närståenderelation OID: 1.2.752.129.2.2.1.8 kv släktrelation OID: 1.2.752.129.2.2.1.24 kv företrädare OID: 1.2.752.129.2.2.1.23 rangordning : Ordningsnummer enligt patienten. Från 1 och uppåt sekventiellt. Övrig kontaktinformation: ... Från Kontaktperson med person-data förnamn: SKV 717, men förenklat här. efternamn: SKV 717, men förenklat här. kontaktperson_adresser: Lista med kontaktpersonens post-/besöks-adresser. (Tjänsteprotokollet är förenklat till max en adress för kontaktperson.) kontaktperson_telefon_lista: Nummer som kontaktpersonen är nåbar på. Kan vara privat telefonnummer eller arbetsnummer. kommentar: Övrig kontaktuppgift (?) för kontaktperson. Fri text giltighetstid: Tidsperiod för när aktuell relation till patienten gäller, både start och slutdatum ingår i intervallet. (Format ÅÅÅÅMMDD) får kontaktas: Anger om person eller enhet får lov att kontaktas kontakttid: Anger eventuella telefontider eller dyl då kontakt kan göras",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.relationType",
      "path" : "getpatientcontactinformation.contactPerson.relationType",
      "short" : "relationType",
      "definition" : "codeSystem: Släkt relation (OID 1.2.752.129.2.2.1.24) Närstående relation (OID 1.2.752.129.2.2.1.8) Företrädare (OID 1.2.752.129.2.2.1.23) code: Any code valid in the given codeSystem, for more info see urn:riv:masterdata:citizen:patient:enums:1:TypeOfRelativeEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfCloseRelationEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfRepresentativeEnum",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.relationType.contactRelationCode",
      "path" : "getpatientcontactinformation.contactPerson.relationType.contactRelationCode",
      "short" : "contactRelationCode",
      "definition" : "Union av kodverken TypeOfRelativeEnum, TypeOfCloseRelationEnum, TypeOfRepresentativeEnum. Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.relationType.codeSystem",
      "path" : "getpatientcontactinformation.contactPerson.relationType.codeSystem",
      "short" : "codeSystem",
      "definition" : "codeSystem",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeofcontactrelationcodesystem-vs"
      }
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.rank",
      "path" : "getpatientcontactinformation.contactPerson.rank",
      "short" : "rank",
      "definition" : "rank",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.otherContactInfo",
      "path" : "getpatientcontactinformation.contactPerson.otherContactInfo",
      "short" : "otherContactInfo",
      "definition" : "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.otherContactInfo.completingContactInfo",
      "path" : "getpatientcontactinformation.contactPerson.otherContactInfo.completingContactInfo",
      "short" : "completingContactInfo",
      "definition" : "completingContactInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.firstName",
      "path" : "getpatientcontactinformation.contactPerson.firstName",
      "short" : "firstName",
      "definition" : "firstName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.lastName",
      "path" : "getpatientcontactinformation.contactPerson.lastName",
      "short" : "lastName",
      "definition" : "lastName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactPersonAddress",
      "path" : "getpatientcontactinformation.contactPerson.contactPersonAddress",
      "short" : "contactPersonAddress",
      "definition" : "Enstaka adress som ingår i adresslista Adress standarden SS 6134 01 (RIV/VTIM 2.2 har fler adressrader än vad som förekommer för svenska adress format i ref 8, samt ref 9.) I första version av tjänstekontrakt är adressformat rejält förenklat för kontaktpersons adress. co : T ex c/o Malte Lindeman adress_1 : Gatunamn och nr, eller box adress postnummer : NNN NN postort : Stad eller motsvarande",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactPersonAddress.co",
      "path" : "getpatientcontactinformation.contactPerson.contactPersonAddress.co",
      "short" : "co",
      "definition" : "co",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactPersonAddress.address",
      "path" : "getpatientcontactinformation.contactPerson.contactPersonAddress.address",
      "short" : "address",
      "definition" : "address",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactPersonAddress.zipCode",
      "path" : "getpatientcontactinformation.contactPerson.contactPersonAddress.zipCode",
      "short" : "zipCode",
      "definition" : "zipCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactPersonAddress.city",
      "path" : "getpatientcontactinformation.contactPerson.contactPersonAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactInformation",
      "path" : "getpatientcontactinformation.contactPerson.contactInformation",
      "short" : "contactInformation",
      "definition" : "Kontaktpersonens telefonnummer typ_av_telekom : Anger vilken typ av telefonikommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). !5! - !Epost! - !SKA INTE ANVÄNDAS FÖR KONTAKTPERSONER! !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om telefonnummer t.ex. är privat eller till arbetet kv tele ekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer : Tele-/Mobil-/Sökare-/Fax-nummer kommentar : Övrig kontaktuppgift per telnr/email",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactInformation.telecomType",
      "path" : "getpatientcontactinformation.contactPerson.contactInformation.telecomType",
      "short" : "telecomType",
      "definition" : "telecomType",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeoftelecomcontactperson-vs"
      }
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactInformation.contactType",
      "path" : "getpatientcontactinformation.contactPerson.contactInformation.contactType",
      "short" : "contactType",
      "definition" : "contactType",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-citizen-patient/ValueSet/masterdata-citizen-patient-typeofcontact-vs"
      }
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactInformation.numberOrElectronicalAddress",
      "path" : "getpatientcontactinformation.contactPerson.contactInformation.numberOrElectronicalAddress",
      "short" : "numberOrElectronicalAddress",
      "definition" : "numberOrElectronicalAddress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactInformation.comment",
      "path" : "getpatientcontactinformation.contactPerson.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactInformation.otherContactInfo",
      "path" : "getpatientcontactinformation.contactPerson.contactInformation.otherContactInfo",
      "short" : "otherContactInfo",
      "definition" : "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactInformation.otherContactInfo.completingContactInfo",
      "path" : "getpatientcontactinformation.contactPerson.contactInformation.otherContactInfo.completingContactInfo",
      "short" : "completingContactInfo",
      "definition" : "completingContactInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.comment",
      "path" : "getpatientcontactinformation.contactPerson.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.periodOfValidity",
      "path" : "getpatientcontactinformation.contactPerson.periodOfValidity",
      "short" : "periodOfValidity",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.periodOfValidity.start",
      "path" : "getpatientcontactinformation.contactPerson.periodOfValidity.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.periodOfValidity.end",
      "path" : "getpatientcontactinformation.contactPerson.periodOfValidity.end",
      "short" : "end",
      "definition" : "end",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactAllowed",
      "path" : "getpatientcontactinformation.contactPerson.contactAllowed",
      "short" : "contactAllowed",
      "definition" : "contactAllowed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getpatientcontactinformation.contactPerson.contactTime",
      "path" : "getpatientcontactinformation.contactPerson.contactTime",
      "short" : "contactTime",
      "definition" : "contactTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpatientcontactinformation.getPatientContactInformationVersion",
      "path" : "getpatientcontactinformation.getPatientContactInformationVersion",
      "short" : "getPatientContactInformationVersion",
      "definition" : "getPatientContactInformationVersion (xs:long i schemat.) Heter version i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
