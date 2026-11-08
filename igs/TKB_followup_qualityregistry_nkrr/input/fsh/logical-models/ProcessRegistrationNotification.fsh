// Elementen genereras ur ProcessRegistrationNotificationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:qualityregistry:nkrr v1.2.2
// Kontrakt: ProcessRegistrationNotification v1.0
// Genererad: 2026-05-19

Logical: ProcessRegistrationNotification
Id: processregistrationnotification
Title: "ProcessRegistrationNotification"
Description: """
  Logisk modell för tjänstekontraktet ProcessRegistrationNotification
  (RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* referenceId 0..1 string "referenceId" "referenceId"
* result 1..1 ResultType "result" "result"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessRegistrationNotificationFieldDescriptions
