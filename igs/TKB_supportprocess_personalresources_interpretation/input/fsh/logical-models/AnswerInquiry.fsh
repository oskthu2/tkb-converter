// Elementen genereras ur AnswerInquiryResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* InquiryResponse 1..1 string "InquiryResponse" "InquiryResponse"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert AnswerInquiryFieldDescriptions
