// Elementen genereras ur GetCareContactsResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:logistics:logistics 2.0.7 (Bitbucket-tagg 2.0.7)
// Kontrakt: GetCareContacts v2.0 — Response (GetCareContactsResponseType i GetCareContactsResponder_2.0.xsd)
// Genererad: 2026-10-08
// Strukturen följer schemat (CareContactType, PatientSummaryHeaderType, CareContactBodyType
// i clinicalprocess_logistics_logistics_2.0.xsd). Avvikelser mot TKB-tabellen: se 7-tjanstekontrakt.md.

Logical: GetCareContacts
Id: getcarecontacts
Title: "GetCareContacts"
Description: """
  Logisk modell för tjänstekontraktet GetCareContacts 2.0
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2).
  Representerar svarets informationsstruktur (GetCareContactsResponseType):
  noll eller flera vårdkontakter, var och en med ett huvud (careContactHeader) och en kropp (careContactBody).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careContact 0..* Base "CareContactType" "careContact"
* careContact.careContactHeader 1..1 Base "PatientSummaryHeaderType" "careContactHeader"
* careContact.careContactHeader.documentId 1..1 string "documentId" "documentId"
* careContact.careContactHeader.sourceSystemHSAId 1..1 string "sourceSystemHSAId" "sourceSystemHSAId"
* careContact.careContactHeader.sourceSystemHSAId only HSAIdType
* careContact.careContactHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* careContact.careContactHeader.accountableHealthcareProfessional 0..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* careContact.careContactHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* careContact.careContactHeader.nullified 0..1 boolean "nullified" "nullified"
* careContact.careContactHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* careContact.careContactBody 1..1 Base "CareContactBodyType" "careContactBody"
* careContact.careContactBody.careContactCode 0..1 code "careContactCode" "careContactCode Tillåtna värden: 1, 2, 3, 4, 5."
* careContact.careContactBody.careContactCode from CareContactCodeVS (required)
* careContact.careContactBody.careContactReason 0..1 string "careContactReason" "careContactReason"
* careContact.careContactBody.careContactOrgUnit 1..1 OrgUnitType "careContactOrgUnit" "careContactOrgUnit"
* careContact.careContactBody.careContactTimePeriod 1..1 TimePeriodType "careContactTimePeriod" "careContactTimePeriod"
* careContact.careContactBody.careContactStatus 0..1 code "careContactStatus" "careContactStatus Tillåtna värden: 1, 2, 3, 4, 5."
* careContact.careContactBody.careContactStatus from CareContactStatusVS (required)

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareContactsFieldDescriptions
