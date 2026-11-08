// Elementen genereras ur ProcessRegistrationNotificationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB followup:qualityregistry:nkrr v1.2.2
// Kontrakt: ProcessRegistrationNotification v1.0
// Genererad: 2026-05-19

Logical: ProcessRegistrationNotificationRequest
Id: processregistrationnotification-request
Title: "ProcessRegistrationNotification — Request"
Description: """
  Logisk modell för requestparametrar i ProcessRegistrationNotification
  (RIV-TA urn:riv:followup:qualityregistry:nkrr:ProcessRegistrationNotification:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* type 0..1 string "type" "type"
* patientId 1..* IIType "patientId" "patientId"
* healthcareProviderId 1..1 IIType "healthcareProviderId" "healthcareProviderId"
* registerUnitId 0..1 string "registerUnitId" "registerUnitId"
* reference 0..* Base "ReferenceType" "reference"
* reference.key 1..1 string "key" "key"
* reference.value 1..1 string "value" "value"
* NkrrParameters 0..1 Base "NkrrParameters" "NkrrParameters"
* NkrrParameters.formId 0..1 string "formId" "formId"
* NkrrParameters.sampleDate 0..* string "sampleDate" "sampleDate"
* NkrrParameters.careUnitId 0..* IIType "careUnitId" "careUnitId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessRegistrationNotificationRequestFieldDescriptions
