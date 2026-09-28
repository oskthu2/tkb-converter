// Genererad från TKB supportprocess:personalresources:interpretation v1.0
// Kontrakt: AnswerInquiry v1.0
// Genererad: 2026-09-26

Logical: AnswerInquiry
Id: answerinquiry
Title: "AnswerInquiry — Begäran"
Description: """
  Logisk modell för begäran i AnswerInquiry (urn:riv:supportprocess:personalresources:interpretation:AnswerInquiryResponder:1, AnswerInquiryType). Tolkförmedlingen besvarar en förfrågan om tolkuppdrag. Svaret beskrivs av InterpretationResult.
"""
Characteristics: #can-be-target
* inquiryResponse 1..1 BackboneElement "Svar på förfrågan" "Svar på förfrågan (InquiryResponse)."
  * inquiryId 1..1 positiveInt "Förfrågans id" "Id för förfrågan."
  * round 1..1 positiveInt "Utskicksrunda" "1 = första rundan, 2 = första påminnelserundan osv."
  * referenceNumberMap 0..* BackboneElement "Referensnummermappning" "Mappning mellan Tolkportalens beställningsnummer och tolkförmedlingens referensnummer (ReferenceNumberMapping)."
    * bookingNumber 1..1 integer "Beställningsnummer" "Tolkportalens beställningsnummer (≥ 0)."
    * referenceNumber 1..1 string "Referensnummer" "Tolkförmedlingens referensnummer."
  * answer 1..1 code "Svar" "Accept, AcceptWithException eller Reject (InquiryResponseAnswerEnum)."
  * answer from InquiryResponseAnswerVS (required)
  * bookingInformationFromAssociation 1..1 BackboneElement "Information från tolkförmedlingen" "Information från tolkförmedlingen om tolkningen (BookingInformationFromAssociation)."
    * authorizationLevel 1..1 CodeableConcept "Kompetensnivå" "Tolkens kompetensnivå enligt KV Kompetensnivå tolk [R4], codeSystem eec2f9b0-03d5-450d-9797-ac0c74f6cfac."
    * requestTravelTimeCost 1..1 boolean "Begär restidsersättning" "Anger om tolkförmedlingen efterfrågar restidsersättning för uppdraget."
    * interpreterName 1..1 string "Tolkens namn" "Tolkens namn (minst ett tecken)."
    * phoneNumberForInterpretation 0..1 string "Telefonnummer för distanstolkning" "Telefonnummer som distanstolkning ska utföras på."
  * explainingText 0..1 string "Förklarande text" "Ytterligare information om svaret, t.ex. undantag och anledning till avslag."
