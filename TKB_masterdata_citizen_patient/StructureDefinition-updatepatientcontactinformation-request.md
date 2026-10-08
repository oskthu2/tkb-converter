# UpdatePatientContactInformation — Request - masterdata: citizen: patient v1.0.0-rc1.snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdatePatientContactInformation — Request**

## Logical Model: UpdatePatientContactInformation — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/updatepatientcontactinformation-request | *Version*:1.0 |
| Draft as of 2026-10-08 | *Computable Name*:UpdatePatientContactInformationRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i UpdatePatientContactInformation (urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-citizen-patient|current/StructureDefinition/StructureDefinition-updatepatientcontactinformation-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-updatepatientcontactinformation-request.csv), [Excel](StructureDefinition-updatepatientcontactinformation-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "updatepatientcontactinformation-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/updatepatientcontactinformation-request",
  "version" : "1.0",
  "name" : "UpdatePatientContactInformationRequest",
  "title" : "UpdatePatientContactInformation — Request",
  "status" : "draft",
  "date" : "2026-10-08T18:42:17+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i UpdatePatientContactInformation\n(urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-citizen-patient/StructureDefinition/updatepatientcontactinformation-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "updatepatientcontactinformation-request",
      "path" : "updatepatientcontactinformation-request",
      "short" : "UpdatePatientContactInformation — Request",
      "definition" : "Logisk modell för begäran i UpdatePatientContactInformation\n(urn:riv:masterdata:citizen:patient:UpdatePatientContactInformationResponder:1, UpdatePatientContactInformationType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "updatepatientcontactinformation-request.logicalAddress",
      "path" : "updatepatientcontactinformation-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.editor",
      "path" : "updatepatientcontactinformation-request.editor",
      "short" : "editor",
      "definition" : "editor",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.editor.root",
      "path" : "updatepatientcontactinformation-request.editor.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.editor.iiExtension",
      "path" : "updatepatientcontactinformation-request.editor.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.patient",
      "path" : "updatepatientcontactinformation-request.patient",
      "short" : "patient",
      "definition" : "person_ID : Nationell identifikation på personen. Dock ej reservnummer. kommentar : Övrig kontaktuppgift för patient. Fri text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.patient.patientId",
      "path" : "updatepatientcontactinformation-request.patient.patientId",
      "short" : "patientId",
      "definition" : "patientId Heter id i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.patient.patientId.root",
      "path" : "updatepatientcontactinformation-request.patient.patientId.root",
      "short" : "root",
      "definition" : "root",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.patient.patientId.iiExtension",
      "path" : "updatepatientcontactinformation-request.patient.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.patient.comment",
      "path" : "updatepatientcontactinformation-request.patient.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactInformation",
      "path" : "updatepatientcontactinformation-request.contactInformation",
      "short" : "contactInformation",
      "definition" : "typ_av_telekom : Anger vilken typ av internet/telefoni-kommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). 5 - Epost - Defineras enligt RFC 5322 Internet message format !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om tele- e-Kom adress t.ex. är privat eller till arbetet kv teleekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer_eller_elektronisk_adress : Tele-/Mobil-/Sökare-/Fax-nummer eller elektronisk adress kommentar : Övrig kontaktuppgift per telnr/email",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactInformation.telecomType",
      "path" : "updatepatientcontactinformation-request.contactInformation.telecomType",
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
      "id" : "updatepatientcontactinformation-request.contactInformation.contactType",
      "path" : "updatepatientcontactinformation-request.contactInformation.contactType",
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
      "id" : "updatepatientcontactinformation-request.contactInformation.numberOrElectronicalAddress",
      "path" : "updatepatientcontactinformation-request.contactInformation.numberOrElectronicalAddress",
      "short" : "numberOrElectronicalAddress",
      "definition" : "numberOrElectronicalAddress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactInformation.comment",
      "path" : "updatepatientcontactinformation-request.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactInformation.otherContactInfo",
      "path" : "updatepatientcontactinformation-request.contactInformation.otherContactInfo",
      "short" : "otherContactInfo",
      "definition" : "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactInformation.otherContactInfo.completingContactInfo",
      "path" : "updatepatientcontactinformation-request.contactInformation.otherContactInfo.completingContactInfo",
      "short" : "completingContactInfo",
      "definition" : "completingContactInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson",
      "path" : "updatepatientcontactinformation-request.contactPerson",
      "short" : "contactPerson",
      "definition" : "Kontaktperson relationType : Val av kategori(OID), och inom denna val av kod. (När OID för kodverk ”relationskategori” fastställs, så kan även den nyttjas för att erbjuda alternativet: kod=4, klartext=”Annan”) kv närståenderelation OID: 1.2.752.129.2.2.1.8 kv släktrelation OID: 1.2.752.129.2.2.1.24 kv företrädare OID: 1.2.752.129.2.2.1.23 rangordning : Ordningsnummer enligt patienten. Från 1 och uppåt sekventiellt. Övrig kontaktinformation: ... Från Kontaktperson med person-data förnamn: SKV 717, men förenklat här. efternamn: SKV 717, men förenklat här. kontaktperson_adresser: Lista med kontaktpersonens post-/besöks-adresser. (Tjänsteprotokollet är förenklat till max en adress för kontaktperson.) kontaktperson_telefon_lista: Nummer som kontaktpersonen är nåbar på. Kan vara privat telefonnummer eller arbetsnummer. kommentar: Övrig kontaktuppgift (?) för kontaktperson. Fri text giltighetstid: Tidsperiod för när aktuell relation till patienten gäller, både start och slutdatum ingår i intervallet. (Format ÅÅÅÅMMDD) får kontaktas: Anger om person eller enhet får lov att kontaktas kontakttid: Anger eventuella telefontider eller dyl då kontakt kan göras",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.relationType",
      "path" : "updatepatientcontactinformation-request.contactPerson.relationType",
      "short" : "relationType",
      "definition" : "codeSystem: Släkt relation (OID 1.2.752.129.2.2.1.24) Närstående relation (OID 1.2.752.129.2.2.1.8) Företrädare (OID 1.2.752.129.2.2.1.23) code: Any code valid in the given codeSystem, for more info see urn:riv:masterdata:citizen:patient:enums:1:TypeOfRelativeEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfCloseRelationEnum urn:riv:masterdata:citizen:patient:enums:1:TypeOfRepresentativeEnum",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.relationType.contactRelationCode",
      "path" : "updatepatientcontactinformation-request.contactPerson.relationType.contactRelationCode",
      "short" : "contactRelationCode",
      "definition" : "Union av kodverken TypeOfRelativeEnum, TypeOfCloseRelationEnum, TypeOfRepresentativeEnum. Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.relationType.codeSystem",
      "path" : "updatepatientcontactinformation-request.contactPerson.relationType.codeSystem",
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
      "id" : "updatepatientcontactinformation-request.contactPerson.rank",
      "path" : "updatepatientcontactinformation-request.contactPerson.rank",
      "short" : "rank",
      "definition" : "rank",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.otherContactInfo",
      "path" : "updatepatientcontactinformation-request.contactPerson.otherContactInfo",
      "short" : "otherContactInfo",
      "definition" : "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.otherContactInfo.completingContactInfo",
      "path" : "updatepatientcontactinformation-request.contactPerson.otherContactInfo.completingContactInfo",
      "short" : "completingContactInfo",
      "definition" : "completingContactInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.firstName",
      "path" : "updatepatientcontactinformation-request.contactPerson.firstName",
      "short" : "firstName",
      "definition" : "firstName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.lastName",
      "path" : "updatepatientcontactinformation-request.contactPerson.lastName",
      "short" : "lastName",
      "definition" : "lastName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress",
      "short" : "contactPersonAddress",
      "definition" : "Enstaka adress som ingår i adresslista Adress standarden SS 6134 01 (RIV/VTIM 2.2 har fler adressrader än vad som förekommer för svenska adress format i ref 8, samt ref 9.) I första version av tjänstekontrakt är adressformat rejält förenklat för kontaktpersons adress. co : T ex c/o Malte Lindeman adress_1 : Gatunamn och nr, eller box adress postnummer : NNN NN postort : Stad eller motsvarande",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress.co",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress.co",
      "short" : "co",
      "definition" : "co",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress.address",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress.address",
      "short" : "address",
      "definition" : "address",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress.zipCode",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress.zipCode",
      "short" : "zipCode",
      "definition" : "zipCode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress.city",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactPersonAddress.city",
      "short" : "city",
      "definition" : "city",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactInformation",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactInformation",
      "short" : "contactInformation",
      "definition" : "Kontaktpersonens telefonnummer typ_av_telekom : Anger vilken typ av telefonikommunikation som avses. Kodval ur kodverk med OID: 1.2.752.129.2.2.1.30 1 - Telefon - Användaren får välja mellan två svenska format: a) [riktnummer med inledande nolla] [följt av lokalt nummer] b) +46 [riktnummer utan inledande nolla][lokalt nummer] Tillåt blanktecken mellan grupper av siffror, samt minus (-) och slash (/) som separatorer emellan. 2 - Fax - Format som telefon ovan. 3 - Mobiltelefon - Format som telefon ovan. Dock endast riktnummer på 070, 072, 073 och 076 (mobiltelefoni), eller 010 (geografiskt oberoende tjänster). Detta enligt nu gällande nummerplan, som dock ändras på sikt. 4 - Personsökare - Format som telefon ovan. Dock endast riktnummer på 074 (personsökning). !5! - !Epost! - !SKA INTE ANVÄNDAS FÖR KONTAKTPERSONER! !6! - !hemsida! - !Ska inte användas för detta tjänstekontrakt! För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:TelecomTypeEnum typ_av_kontakt : Anger om telefonnummer t.ex. är privat eller till arbetet kv tele ekomkontakttyp OID: 1.2.752.129.2.2.1.29 Exempel: privat, arbete För mer info, se definition av urn:riv:masterdata:citizen:patient:enums:1:ContactTypeEnum nummer : Tele-/Mobil-/Sökare-/Fax-nummer kommentar : Övrig kontaktuppgift per telnr/email",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactInformation.telecomType",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactInformation.telecomType",
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
      "id" : "updatepatientcontactinformation-request.contactPerson.contactInformation.contactType",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactInformation.contactType",
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
      "id" : "updatepatientcontactinformation-request.contactPerson.contactInformation.numberOrElectronicalAddress",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactInformation.numberOrElectronicalAddress",
      "short" : "numberOrElectronicalAddress",
      "definition" : "numberOrElectronicalAddress",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactInformation.comment",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactInformation.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactInformation.otherContactInfo",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactInformation.otherContactInfo",
      "short" : "otherContactInfo",
      "definition" : "completingContactInfo: Fri text Kompletterande information som inte går att notera i strukturerat format.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactInformation.otherContactInfo.completingContactInfo",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactInformation.otherContactInfo.completingContactInfo",
      "short" : "completingContactInfo",
      "definition" : "completingContactInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.comment",
      "path" : "updatepatientcontactinformation-request.contactPerson.comment",
      "short" : "comment",
      "definition" : "comment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.periodOfValidity",
      "path" : "updatepatientcontactinformation-request.contactPerson.periodOfValidity",
      "short" : "periodOfValidity",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.periodOfValidity.start",
      "path" : "updatepatientcontactinformation-request.contactPerson.periodOfValidity.start",
      "short" : "start",
      "definition" : "start",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.periodOfValidity.end",
      "path" : "updatepatientcontactinformation-request.contactPerson.periodOfValidity.end",
      "short" : "end",
      "definition" : "end",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactAllowed",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactAllowed",
      "short" : "contactAllowed",
      "definition" : "contactAllowed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.contactPerson.contactTime",
      "path" : "updatepatientcontactinformation-request.contactPerson.contactTime",
      "short" : "contactTime",
      "definition" : "contactTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "updatepatientcontactinformation-request.updatePatientContactInformationVersion",
      "path" : "updatepatientcontactinformation-request.updatePatientContactInformationVersion",
      "short" : "updatePatientContactInformationVersion",
      "definition" : "updatePatientContactInformationVersion (xs:long i schemat.) Heter version i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
