# CreateBooking — Begäran - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CreateBooking — Begäran**

## Logical Model: CreateBooking — Begäran 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:CreateBooking |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-createbooking.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-createbooking.csv), [Excel](StructureDefinition-createbooking.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "createbooking",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking",
  "version" : "1.0.0",
  "name" : "CreateBooking",
  "title" : "CreateBooking — Begäran",
  "status" : "draft",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/createbooking",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "createbooking",
      "path" : "createbooking",
      "short" : "CreateBooking — Begäran",
      "definition" : "Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen."
    },
    {
      "id" : "createbooking.bookingCreate",
      "path" : "createbooking.bookingCreate",
      "short" : "Beställning",
      "definition" : "Beställning som ska skapas (BookingCreate).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.createBookingOccasion",
      "path" : "createbooking.bookingCreate.createBookingOccasion",
      "short" : "Tolkningstillfälle",
      "definition" : "Beställning för ett visst tolkningstillfälle (BookingOccasionCreate).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.createBookingOccasion.referenceNumber",
      "path" : "createbooking.bookingCreate.createBookingOccasion.referenceNumber",
      "short" : "Referensnummer",
      "definition" : "Tolkförmedlingens referensnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.createBookingOccasion.startTime",
      "path" : "createbooking.bookingCreate.createBookingOccasion.startTime",
      "short" : "Starttid",
      "definition" : "Besökets starttid, se 5.2.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.createBookingOccasion.endTime",
      "path" : "createbooking.bookingCreate.createBookingOccasion.endTime",
      "short" : "Sluttid",
      "definition" : "Besökets sluttid, se 5.2.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.interpretationLanguageId",
      "path" : "createbooking.bookingCreate.interpretationLanguageId",
      "short" : "Språk",
      "definition" : "Språk som ska tolkas enligt Hälso- och sjukvårdsförvaltningens (HSF) språktabell. Arbete pågår med att harmonisera med ISO 639.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.interpretationType",
      "path" : "createbooking.bookingCreate.interpretationType",
      "short" : "Typ av tolkning",
      "definition" : "Typ av tolkning enligt KV Typ av tolkning [R4], codeSystem 498c11f2-05c0-4d99-aef2-770a2b2a8260.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.patient",
      "path" : "createbooking.bookingCreate.patient",
      "short" : "Patient",
      "definition" : "Information om patienten (PatientInformation).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.patient.age",
      "path" : "createbooking.bookingCreate.patient.age",
      "short" : "Ålder",
      "definition" : "Patientens ålder i år (0–200).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.patient.gender",
      "path" : "createbooking.bookingCreate.patient.gender",
      "short" : "Kön",
      "definition" : "Patientens kön enligt KV Kön [R4], codeSystem 1.2.752.129.2.2.1.1. Giltiga värden (urval): 1 = man, 2 = kvinna.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation",
      "path" : "createbooking.bookingCreate.contactInformation",
      "short" : "Kontaktinformation",
      "definition" : "Information om tolkstället och beställaren (ContactInformation).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.address",
      "path" : "createbooking.bookingCreate.contactInformation.address",
      "short" : "Adress",
      "definition" : "Adress till tolkställe.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.changedAddress",
      "path" : "createbooking.bookingCreate.contactInformation.changedAddress",
      "short" : "Ändrad adress",
      "definition" : "Anger om adressen skiljer sig från adressen i elektroniska katalogen (EK).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.doorCode",
      "path" : "createbooking.bookingCreate.contactInformation.doorCode",
      "short" : "Portkod",
      "definition" : "Eventuell portkod till tolkstället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.locationDetails",
      "path" : "createbooking.bookingCreate.contactInformation.locationDetails",
      "short" : "Platsförtydligande",
      "definition" : "Platsförtydligande eller vägbeskrivning till tolkstället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.locationName",
      "path" : "createbooking.bookingCreate.contactInformation.locationName",
      "short" : "Tolkställe",
      "definition" : "Namn på tolkstället.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.contactPerson",
      "path" : "createbooking.bookingCreate.contactInformation.contactPerson",
      "short" : "Kontaktperson",
      "definition" : "Kontaktpersonens namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.contactPhone",
      "path" : "createbooking.bookingCreate.contactInformation.contactPhone",
      "short" : "Kontakttelefon",
      "definition" : "Telefonnummer till kontaktperson.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.healthCareProfessionalName",
      "path" : "createbooking.bookingCreate.contactInformation.healthCareProfessionalName",
      "short" : "Vårdpersonal",
      "definition" : "Namn på hälso- och sjukvårdspersonal som ska träffa patienten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.orderingPersonName",
      "path" : "createbooking.bookingCreate.contactInformation.orderingPersonName",
      "short" : "Beställare",
      "definition" : "Namn på beställare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.orderingPersonId",
      "path" : "createbooking.bookingCreate.contactInformation.orderingPersonId",
      "short" : "Beställarens HSA-id",
      "definition" : "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.orderingUnitName",
      "path" : "createbooking.bookingCreate.contactInformation.orderingUnitName",
      "short" : "Beställande enhet",
      "definition" : "Beställande enhetens namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.orderingUnitHsaId",
      "path" : "createbooking.bookingCreate.contactInformation.orderingUnitHsaId",
      "short" : "Beställande enhetens HSA-id",
      "definition" : "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.orderingHealthcareUnitName",
      "path" : "createbooking.bookingCreate.contactInformation.orderingHealthcareUnitName",
      "short" : "Överordnad enhet",
      "definition" : "Namn på enhet som organisatoriskt ligger över den beställande enheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.contactInformation.orderingHealthcareUnitHsaId",
      "path" : "createbooking.bookingCreate.contactInformation.orderingHealthcareUnitHsaId",
      "short" : "Överordnad enhets HSA-id",
      "definition" : "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.bookingInformationFromAssociation",
      "path" : "createbooking.bookingCreate.bookingInformationFromAssociation",
      "short" : "Information från tolkförmedlingen",
      "definition" : "Information från tolkförmedlingen om tolkningen (BookingInformationFromAssociation).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.bookingInformationFromAssociation.authorizationLevel",
      "path" : "createbooking.bookingCreate.bookingInformationFromAssociation.authorizationLevel",
      "short" : "Kompetensnivå",
      "definition" : "Tolkens kompetensnivå enligt KV Kompetensnivå tolk [R4], codeSystem eec2f9b0-03d5-450d-9797-ac0c74f6cfac.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.bookingInformationFromAssociation.requestTravelTimeCost",
      "path" : "createbooking.bookingCreate.bookingInformationFromAssociation.requestTravelTimeCost",
      "short" : "Begär restidsersättning",
      "definition" : "Anger om tolkförmedlingen efterfrågar restidsersättning för uppdraget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.bookingInformationFromAssociation.interpreterName",
      "path" : "createbooking.bookingCreate.bookingInformationFromAssociation.interpreterName",
      "short" : "Tolkens namn",
      "definition" : "Tolkens namn (minst ett tecken).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "createbooking.bookingCreate.bookingInformationFromAssociation.phoneNumberForInterpretation",
      "path" : "createbooking.bookingCreate.bookingInformationFromAssociation.phoneNumberForInterpretation",
      "short" : "Telefonnummer för distanstolkning",
      "definition" : "Telefonnummer som distanstolkning ska utföras på.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
