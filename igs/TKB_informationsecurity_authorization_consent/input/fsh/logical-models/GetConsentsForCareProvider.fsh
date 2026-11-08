// Elementen genereras ur GetConsentsForCareProviderResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetConsentsForCareProvider v2.0
// Genererad: 2026-09-26

Logical: GetConsentsForCareProvider
Id: getconsentsforcareprovider
Title: "GetConsentsForCareProvider — Response"
Description: """
  Logisk modell för svaret i GetConsentsForCareProvider
  (urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderResponseType).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* getAllAssertionsResult 1..1 Base "GetAllAssertionsResultType" "getAllAssertionsResult"
* getAllAssertionsResult.result 1..1 Base "ResultType" "result"
* getAllAssertionsResult.result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, NOTFOUND, ALREADYEXISTS, INVALIDSTATE."
* getAllAssertionsResult.result.resultCode from ResultCodeVS (required)
* getAllAssertionsResult.result.resultText 0..1 string "resultText" "resultText"
* getAllAssertionsResult.moreOnOrAfter 1..1 dateTime "moreOnOrAfter" "moreOnOrAfter"
* getAllAssertionsResult.hasMore 1..1 boolean "hasMore" "hasMore"
* getAllAssertionsResult.assertions 0..* Base "PDLAssertionType" "assertions"
* getAllAssertionsResult.assertions.assertionId 1..1 string "assertionId" "assertionId"
* getAllAssertionsResult.assertions.assertionType 1..1 code "assertionType" "assertionType Tillåtna värden: Consent, Emergency."
* getAllAssertionsResult.assertions.assertionType from AssertionTypeVS (required)
* getAllAssertionsResult.assertions.scope 1..1 code "scope" "scope Tillåtna värden: NationalLevel."
* getAllAssertionsResult.assertions.scope from ScopeVS (required)
* getAllAssertionsResult.assertions.careProviderId 1..1 string "careProviderId" "careProviderId"
* getAllAssertionsResult.assertions.careUnitId 1..1 string "careUnitId" "careUnitId"
* getAllAssertionsResult.assertions.employeeId 0..1 string "employeeId" "employeeId"
* getAllAssertionsResult.assertions.startDate 1..1 dateTime "startDate" "startDate"
* getAllAssertionsResult.assertions.endDate 0..1 dateTime "endDate" "endDate"
* getAllAssertionsResult.assertions.ownerId 0..1 string "ownerId" "ownerId"
* getAllAssertionsResult.assertions.patientId 1..1 IIType "patientId" "patientId"
* getAllAssertionsResult.cancelledAssertions 0..* Base "CancelledAssertionType" "cancelledAssertions"
* getAllAssertionsResult.cancelledAssertions.assertionId 1..1 string "assertionId" "assertionId"
* getAllAssertionsResult.cancelledAssertions.cancellationDate 1..1 dateTime "cancellationDate" "cancellationDate"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetConsentsForCareProviderFieldDescriptions
