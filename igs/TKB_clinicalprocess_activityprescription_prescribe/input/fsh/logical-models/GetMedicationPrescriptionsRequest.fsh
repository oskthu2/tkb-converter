// Elementen genereras ur GetMedicationPrescriptionsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: GetMedicationPrescriptions v2.0 — Request
// Genererad: 2026-03-19

Logical: GetMedicationPrescriptionsRequest
Id: getmedicationprescriptions-request
Title: "GetMedicationPrescriptions — Request"
Description: "Logisk modell för requestparametrar i GetMedicationPrescriptions."
Characteristics: #can-be-target

* ^version = "2.0"
* patientId 1..1 Identifier "patientId" "patientId"
* medicationPrescriptionSequenceId 0..* Identifier "medicationPrescriptionSequenceId" "medicationPrescriptionSequenceId"
* includeMedicalDispenseAuthorizations 1..1 boolean "includeMedicalDispenseAuthorizations" "includeMedicalDispenseAuthorizations"
* medicationStatus 1..1 code "medicationStatus" "medicationStatus"
* medicationListVersion 0..1 Identifier "medicationListVersion" "medicationListVersion"
* currentVersion 1..1 boolean "currentVersion" "currentVersion"
* validTimePeriod 0..1 Base "DateTimePeriodType" "validTimePeriod"
* validTimePeriod.start 0..1 dateTime "start" "start"
* validTimePeriod.end 0..1 dateTime "end" "end"
* registrationTime 0..1 dateTime "registrationTime" "registrationTime"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetMedicationPrescriptionsRequestFieldDescriptions
