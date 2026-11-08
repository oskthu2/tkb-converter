// Elementen genereras ur GetConsentsForPatientResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetConsentsForPatient v2.0
// Genererad: 2026-09-26

Logical: GetConsentsForPatient
Id: getconsentsforpatient
Title: "GetConsentsForPatient — Response"
Description: """
  Logisk modell för svaret i GetConsentsForPatient
  (urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* getConsentsResult 1..1 Base "GetConsentsResultType" "getConsentsResult"
* getConsentsResult.result 1..1 Base "ResultType" "result"
* getConsentsResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* getConsentsResult.result.resultCode from ResultCodeVS (required)
* getConsentsResult.result.resultText 0..1 string "resultText" "resultText"
* getConsentsResult.pdlAssertions 0..* Base "PDLAssertionType" "pdlAssertions"
* getConsentsResult.pdlAssertions.assertionId 1..1 string "assertionId" "assertionId"
* getConsentsResult.pdlAssertions.assertionType 1..1 code "assertionType" "assertionType Tillåtna värden: Consent, Emergency."
* getConsentsResult.pdlAssertions.assertionType from AssertionTypeVS (required)
* getConsentsResult.pdlAssertions.scope 1..1 code "scope" "scope Tillåtna värden: NationalLevel."
* getConsentsResult.pdlAssertions.scope from ScopeVS (required)
* getConsentsResult.pdlAssertions.careProviderId 1..1 string "careProviderId" "careProviderId"
* getConsentsResult.pdlAssertions.careUnitId 1..1 string "careUnitId" "careUnitId"
* getConsentsResult.pdlAssertions.employeeId 0..1 string "employeeId" "employeeId"
* getConsentsResult.pdlAssertions.startDate 1..1 dateTime "startDate" "startDate"
* getConsentsResult.pdlAssertions.endDate 0..1 dateTime "endDate" "endDate"
* getConsentsResult.pdlAssertions.ownerId 0..1 string "ownerId" "ownerId"
* getConsentsResult.pdlAssertions.patientId 1..1 IIType "patientId" "patientId"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetConsentsForPatientFieldDescriptions
