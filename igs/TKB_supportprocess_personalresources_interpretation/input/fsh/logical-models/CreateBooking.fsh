// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: CreateBooking v1.0
// Genererad: 2026-09-26

Logical: CreateBooking
Id: createbooking
Title: "CreateBooking — Begäran"
Description: """
  Logisk modell för begäran i CreateBooking (urn:riv:supportprocess:personalresources:interpretation:CreateBookingResponder:1, CreateBookingType). Tolkförmedlingen registrerar en inringd beställning i Tolkportalen.
"""
Characteristics: #can-be-target
* bookingCreate 1..1 BackboneElement "Beställning" "Beställning som ska skapas (BookingCreate)."
  * createBookingOccasion 1..* BackboneElement "Tolkningstillfälle" "Beställning för ett visst tolkningstillfälle (BookingOccasionCreate)."
    * referenceNumber 1..1 string "Referensnummer" "Tolkförmedlingens referensnummer."
    * startTime 1..1 dateTime "Starttid" "Besökets starttid, se 5.2.1."
    * endTime 1..1 dateTime "Sluttid" "Besökets sluttid, se 5.2.1."
  * interpretationLanguageId 1..1 string "Språk" "Språk som ska tolkas enligt Hälso- och sjukvårdsförvaltningens (HSF) språktabell. Arbete pågår med att harmonisera med ISO 639."
  * interpretationType 1..1 CodeableConcept "Typ av tolkning" "Typ av tolkning enligt KV Typ av tolkning [R4], codeSystem 498c11f2-05c0-4d99-aef2-770a2b2a8260."
  * patient 1..1 BackboneElement "Patient" "Information om patienten (PatientInformation)."
    * age 1..1 integer "Ålder" "Patientens ålder i år (0–200)."
    * gender 1..1 CodeableConcept "Kön" "Patientens kön enligt KV Kön [R4], codeSystem 1.2.752.129.2.2.1.1. Giltiga värden (urval): 1 = man, 2 = kvinna."
  * contactInformation 1..1 BackboneElement "Kontaktinformation" "Information om tolkstället och beställaren (ContactInformation)."
    * address 1..1 string "Adress" "Adress till tolkställe."
    * changedAddress 1..1 boolean "Ändrad adress" "Anger om adressen skiljer sig från adressen i elektroniska katalogen (EK)."
    * doorCode 0..1 string "Portkod" "Eventuell portkod till tolkstället."
    * locationDetails 0..1 string "Platsförtydligande" "Platsförtydligande eller vägbeskrivning till tolkstället."
    * locationName 1..1 string "Tolkställe" "Namn på tolkstället."
    * contactPerson 1..1 string "Kontaktperson" "Kontaktpersonens namn."
    * contactPhone 1..1 string "Kontakttelefon" "Telefonnummer till kontaktperson."
    * healthCareProfessionalName 1..1 string "Vårdpersonal" "Namn på hälso- och sjukvårdspersonal som ska träffa patienten."
    * orderingPersonName 1..1 string "Beställare" "Namn på beställare."
    * orderingPersonId 1..1 Identifier "Beställarens HSA-id" "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension)."
    * orderingUnitName 1..1 string "Beställande enhet" "Beställande enhetens namn."
    * orderingUnitHsaId 1..1 Identifier "Beställande enhetens HSA-id" "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension)."
    * orderingHealthcareUnitName 1..1 string "Överordnad enhet" "Namn på enhet som organisatoriskt ligger över den beställande enheten."
    * orderingHealthcareUnitHsaId 1..1 Identifier "Överordnad enhets HSA-id" "value = HSA-id; system = urn:oid:1.2.752.129.2.1.4.1 (RIV-TA IIType root/extension)."
  * bookingInformationFromAssociation 1..1 BackboneElement "Information från tolkförmedlingen" "Information från tolkförmedlingen om tolkningen (BookingInformationFromAssociation)."
    * authorizationLevel 1..1 CodeableConcept "Kompetensnivå" "Tolkens kompetensnivå enligt KV Kompetensnivå tolk [R4], codeSystem eec2f9b0-03d5-450d-9797-ac0c74f6cfac."
    * requestTravelTimeCost 1..1 boolean "Begär restidsersättning" "Anger om tolkförmedlingen efterfrågar restidsersättning för uppdraget."
    * interpreterName 1..1 string "Tolkens namn" "Tolkens namn (minst ett tecken)."
    * phoneNumberForInterpretation 0..1 string "Telefonnummer för distanstolkning" "Telefonnummer som distanstolkning ska utföras på."
