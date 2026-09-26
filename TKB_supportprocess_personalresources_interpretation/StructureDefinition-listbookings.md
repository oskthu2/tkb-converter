# ListBookings — Svar - supportprocess: personalresources: interpretation — Tolkförmedling v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ListBookings — Svar**

## Logical Model: ListBookings — Svar 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listbookings | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:ListBookings |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-personalresources-interpretation|current/StructureDefinition/StructureDefinition-listbookings.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-listbookings.csv), [Excel](StructureDefinition-listbookings.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "listbookings",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listbookings",
  "version" : "1.0.0",
  "name" : "ListBookings",
  "title" : "ListBookings — Svar",
  "status" : "draft",
  "date" : "2026-09-26T19:47:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/StructureDefinition/listbookings",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "listbookings",
      "path" : "listbookings",
      "short" : "ListBookings — Svar",
      "definition" : "Logisk modell för svaret i ListBookings (urn:riv:supportprocess:personalresources:interpretation:ListBookingsResponder:1, ListBookingsResponseType)."
    },
    {
      "id" : "listbookings.bookings",
      "path" : "listbookings.bookings",
      "short" : "Beställningar",
      "definition" : "Beställningar (Booking).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.occasion",
      "path" : "listbookings.bookings.occasion",
      "short" : "Tolkningstillfälle",
      "definition" : "Tolkningstillfälle (BookingOccasion).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.occasion.invoiceEventId",
      "path" : "listbookings.bookings.occasion.invoiceEventId",
      "short" : "Faktureringsnummer",
      "definition" : "Faktureringsnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.occasion.bookingNumber",
      "path" : "listbookings.bookings.occasion.bookingNumber",
      "short" : "Beställningsnummer",
      "definition" : "Tolkportalens beställningsnummer (≥ 0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listbookings.bookings.occasion.referenceNumber",
      "path" : "listbookings.bookings.occasion.referenceNumber",
      "short" : "Referensnummer",
      "definition" : "Tolkförmedlingens referensnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.occasion.state",
      "path" : "listbookings.bookings.occasion.state",
      "short" : "Status",
      "definition" : "Status för beställningen (BookingStateEnum).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/ValueSet/bookingstate-vs"
      }
    },
    {
      "id" : "listbookings.bookings.occasion.startTime",
      "path" : "listbookings.bookings.occasion.startTime",
      "short" : "Starttid",
      "definition" : "Besökets starttid, se 5.2.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "listbookings.bookings.occasion.endTime",
      "path" : "listbookings.bookings.occasion.endTime",
      "short" : "Sluttid",
      "definition" : "Besökets sluttid, se 5.2.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "listbookings.bookings.answerData",
      "path" : "listbookings.bookings.answerData",
      "short" : "Svar från tolkförmedlingen",
      "definition" : "Information från tolkförmedlingen om beställningen (BookingAnswerData).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.answerData.referenceNumber",
      "path" : "listbookings.bookings.answerData.referenceNumber",
      "short" : "Referensnummer",
      "definition" : "Tolkförmedlingens referensnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.answerData.bookingInformationFromAssociation",
      "path" : "listbookings.bookings.answerData.bookingInformationFromAssociation",
      "short" : "Information från tolkförmedlingen",
      "definition" : "Information från tolkförmedlingen om tolkningen (BookingInformationFromAssociation).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.answerData.bookingInformationFromAssociation.authorizationLevel",
      "path" : "listbookings.bookings.answerData.bookingInformationFromAssociation.authorizationLevel",
      "short" : "Kompetensnivå",
      "definition" : "Tolkens kompetensnivå enligt KV Kompetensnivå tolk [R4], codeSystem eec2f9b0-03d5-450d-9797-ac0c74f6cfac.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "listbookings.bookings.answerData.bookingInformationFromAssociation.requestTravelTimeCost",
      "path" : "listbookings.bookings.answerData.bookingInformationFromAssociation.requestTravelTimeCost",
      "short" : "Begär restidsersättning",
      "definition" : "Anger om tolkförmedlingen efterfrågar restidsersättning för uppdraget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "listbookings.bookings.answerData.bookingInformationFromAssociation.interpreterName",
      "path" : "listbookings.bookings.answerData.bookingInformationFromAssociation.interpreterName",
      "short" : "Tolkens namn",
      "definition" : "Tolkens namn (minst ett tecken).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.answerData.bookingInformationFromAssociation.phoneNumberForInterpretation",
      "path" : "listbookings.bookings.answerData.bookingInformationFromAssociation.phoneNumberForInterpretation",
      "short" : "Telefonnummer för distanstolkning",
      "definition" : "Telefonnummer som distanstolkning ska utföras på.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data",
      "path" : "listbookings.bookings.data",
      "short" : "Beställningsinformation",
      "definition" : "Information om en beställning (BookingData).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.data.interpretationLanguageId",
      "path" : "listbookings.bookings.data.interpretationLanguageId",
      "short" : "Språk",
      "definition" : "Språk som ska tolkas enligt Hälso- och sjukvårdsförvaltningens (HSF) språktabell. Arbete pågår med att harmonisera med ISO 639.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.patient",
      "path" : "listbookings.bookings.data.patient",
      "short" : "Patient",
      "definition" : "Information om patienten (PatientInformation).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.data.patient.age",
      "path" : "listbookings.bookings.data.patient.age",
      "short" : "Ålder",
      "definition" : "Patientens ålder i år (0–200).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "listbookings.bookings.data.patient.gender",
      "path" : "listbookings.bookings.data.patient.gender",
      "short" : "Kön",
      "definition" : "Patientens kön enligt KV Kön [R4], codeSystem 1.2.752.129.2.2.1.1. Giltiga värden (urval): 1 = man, 2 = kvinna.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "listbookings.bookings.data.authorizationLevel",
      "path" : "listbookings.bookings.data.authorizationLevel",
      "short" : "Krav på kompetensnivå",
      "definition" : "Krav på tolkens kompetensnivå (AuthorizationLevelWithRequirement).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.data.authorizationLevel.minAuthorizationLevel",
      "path" : "listbookings.bookings.data.authorizationLevel.minAuthorizationLevel",
      "short" : "Lägsta kompetensnivå",
      "definition" : "Tolkens kompetensnivå enligt KV Kompetensnivå tolk [R4], codeSystem eec2f9b0-03d5-450d-9797-ac0c74f6cfac.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "listbookings.bookings.data.authorizationLevel.requiredLevel",
      "path" : "listbookings.bookings.data.authorizationLevel.requiredLevel",
      "short" : "Kravnivå",
      "definition" : "Desired = angiven nivå är lägsta accepterade men högre godtas; Only = endast angiven nivå godtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/ValueSet/requirementlevel-vs"
      }
    },
    {
      "id" : "listbookings.bookings.data.additionalRequirements",
      "path" : "listbookings.bookings.data.additionalRequirements",
      "short" : "Ytterligare krav",
      "definition" : "Eventuella ytterligare krav från beställaren.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.interpretationType",
      "path" : "listbookings.bookings.data.interpretationType",
      "short" : "Typ av tolkning",
      "definition" : "Typ av tolkning enligt KV Typ av tolkning [R4], codeSystem 498c11f2-05c0-4d99-aef2-770a2b2a8260.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation",
      "path" : "listbookings.bookings.data.contactInformation",
      "short" : "Kontaktinformation",
      "definition" : "Information om tolkstället och beställaren (ContactInformation).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.address",
      "path" : "listbookings.bookings.data.contactInformation.address",
      "short" : "Adress",
      "definition" : "Adress till tolkställe.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.changedAddress",
      "path" : "listbookings.bookings.data.contactInformation.changedAddress",
      "short" : "Ändrad adress",
      "definition" : "Anger om adressen skiljer sig från adressen i elektroniska katalogen (EK).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.doorCode",
      "path" : "listbookings.bookings.data.contactInformation.doorCode",
      "short" : "Portkod",
      "definition" : "Eventuell portkod till tolkstället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.locationDetails",
      "path" : "listbookings.bookings.data.contactInformation.locationDetails",
      "short" : "Platsförtydligande",
      "definition" : "Platsförtydligande eller vägbeskrivning till tolkstället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.locationName",
      "path" : "listbookings.bookings.data.contactInformation.locationName",
      "short" : "Tolkställe",
      "definition" : "Namn på tolkstället.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.contactPerson",
      "path" : "listbookings.bookings.data.contactInformation.contactPerson",
      "short" : "Kontaktperson",
      "definition" : "Kontaktpersonens namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.contactPhone",
      "path" : "listbookings.bookings.data.contactInformation.contactPhone",
      "short" : "Kontakttelefon",
      "definition" : "Telefonnummer till kontaktperson.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.healthCareProfessionalName",
      "path" : "listbookings.bookings.data.contactInformation.healthCareProfessionalName",
      "short" : "Vårdpersonal",
      "definition" : "Namn på hälso- och sjukvårdspersonal som ska träffa patienten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.orderingPersonName",
      "path" : "listbookings.bookings.data.contactInformation.orderingPersonName",
      "short" : "Beställare",
      "definition" : "Namn på beställare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.orderingPersonId",
      "path" : "listbookings.bookings.data.contactInformation.orderingPersonId",
      "short" : "Beställarens HSA-id",
      "definition" : "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.orderingUnitName",
      "path" : "listbookings.bookings.data.contactInformation.orderingUnitName",
      "short" : "Beställande enhet",
      "definition" : "Beställande enhetens namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.orderingUnitHsaId",
      "path" : "listbookings.bookings.data.contactInformation.orderingUnitHsaId",
      "short" : "Beställande enhetens HSA-id",
      "definition" : "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.orderingHealthcareUnitName",
      "path" : "listbookings.bookings.data.contactInformation.orderingHealthcareUnitName",
      "short" : "Överordnad enhet",
      "definition" : "Namn på enhet som organisatoriskt ligger över den beställande enheten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.contactInformation.orderingHealthcareUnitHsaId",
      "path" : "listbookings.bookings.data.contactInformation.orderingHealthcareUnitHsaId",
      "short" : "Överordnad enhets HSA-id",
      "definition" : "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "listbookings.bookings.data.travelTimeCostAllowed",
      "path" : "listbookings.bookings.data.travelTimeCostAllowed",
      "short" : "Restidsersättning möjlig",
      "definition" : "Anger om restidsersättning är möjlig inom ramen för förfrågan.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "listbookings.bookings.data.interpreterGender",
      "path" : "listbookings.bookings.data.interpreterGender",
      "short" : "Krav på tolkens kön",
      "definition" : "Krav på tolkens kön (RequiredGenderWithRequirement).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.data.interpreterGender.requiredGender",
      "path" : "listbookings.bookings.data.interpreterGender.requiredGender",
      "short" : "Tolkens kön",
      "definition" : "Tolkens kön enligt KV Kön [R4], codeSystem 1.2.752.129.2.2.1.1. Giltiga värden (urval): 1 = man, 2 = kvinna.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "listbookings.bookings.data.interpreterGender.requiredLevel",
      "path" : "listbookings.bookings.data.interpreterGender.requiredLevel",
      "short" : "Kravnivå",
      "definition" : "Desired = angivet kön önskas; Only = endast angivet kön godtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/ValueSet/requirementlevel-vs"
      }
    },
    {
      "id" : "listbookings.bookings.data.interpreterName",
      "path" : "listbookings.bookings.data.interpreterName",
      "short" : "Krav på namngiven tolk",
      "definition" : "Krav på en specifik namngiven tolk (RequiredInterpreterNameWithRequirement).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "listbookings.bookings.data.interpreterName.requiredInterpreterName",
      "path" : "listbookings.bookings.data.interpreterName.requiredInterpreterName",
      "short" : "Tolkens namn",
      "definition" : "Tolkens namn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.bookings.data.interpreterName.requiredLevel",
      "path" : "listbookings.bookings.data.interpreterName.requiredLevel",
      "short" : "Kravnivå",
      "definition" : "Desired = den namngivna tolken önskas; Only = endast den namngivna tolken godtas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/supportprocess-personalresources-interpretation/ValueSet/requirementlevel-vs"
      }
    },
    {
      "id" : "listbookings.bookings.data.interpreterName.isPreBooked",
      "path" : "listbookings.bookings.data.interpreterName.isPreBooked",
      "short" : "Förbokad",
      "definition" : "Anger om tolken redan är vidtalad om uppdraget.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "listbookings.bookings.data.additionalPatientRequest",
      "path" : "listbookings.bookings.data.additionalPatientRequest",
      "short" : "Patientens önskemål",
      "definition" : "Eventuella önskemål från patienten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "listbookings.lastSequenceNumber",
      "path" : "listbookings.lastSequenceNumber",
      "short" : "Senaste meddelandenummer",
      "definition" : "Nummer på det senaste meddelandet i svaret. XSD-typen är unsignedLong; FHIR saknar motsvarande typ.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "unsignedInt"
      }]
    },
    {
      "id" : "listbookings.hasMoreEntries",
      "path" : "listbookings.hasMoreEntries",
      "short" : "Fler poster finns",
      "definition" : "Anger om fler poster finns att hämta.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
