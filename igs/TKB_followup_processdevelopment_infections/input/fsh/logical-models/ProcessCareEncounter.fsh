// Elementen genereras ur ProcessCareEncounterResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:processdevelopment:infections v1.0.2
// Kontrakt: ProcessCareEncounter v1.0
// Genererad: 2026-05-19

Logical: ProcessCareEncounterRequest
Id: processcareencounter-request
Title: "ProcessCareEncounter — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ProcessCareEncounter
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1).
  Skriver vårdkontaktsdata till Infektionsverktyget. En vårdkontakt kan uppdateras
  genom att ett nytt meddelande med samma vårdkontaktsid skickas in.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careEncounterType 1..1 string "careEncounterType" "careEncounterType"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessCareEncounterRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* careEncounterType obeys processcareencounter-request-location-when-performer

Logical: ProcessCareEncounterResponse
Id: processcareencounter-response
Title: "ProcessCareEncounter — Response"
Description: """
  Logisk modell för responsen från tjänstekontraktet ProcessCareEncounter
  (RIV-TA urn:riv:followup:processdevelopment:infections:ProcessCareEncounter:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* ResultCode 1..1 code "ResultCode" "ResultCode Tillåtna värden: OK, ERROR, INFO."
* comment 0..1 string "comment" "comment"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessCareEncounterResponseFieldDescriptions

Invariant: processcareencounter-request-location-when-performer
Description: "När performerRole.performerRoleId anges (vårdpersonal) ska minst location.name anges (TKB Övriga regler, Fält 2)."
Expression: "performerRole.performerRoleId.exists() implies location.name.exists()"
Severity: #error
