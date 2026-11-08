// Elementen genereras ur AssertCareEngagementResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:accesscontrol v1.0.6
// Kontrakt: AssertCareEngagement v1.0 — Request
// RIV-TA namespace: urn:riv:ehr:accesscontrol:AssertCareEngagement:1
// Genererad: 2026-03-24

Logical: AssertCareEngagementRequest
Id: assertcareengagement-request
Title: "AssertCareEngagement — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet AssertCareEngagement
  (RIV-TA urn:riv:ehr:accesscontrol:AssertCareEngagement:1).

  Kontraktet används av tillämpningar som bereder professionen åtkomst till
  sammanhållen journalföring för att styrka att medarbetaren har ett
  behörighetsgrundande engagemang (TGP — Tillgänglig Patient).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* performer 1..1 string "HSAId of the performer (healthcare professional) requesting access to EHR records of the subject of care." "HSAId of the performer (healthcare professional) requesting access to EHR records of the subject of care."
* performer only HsaIdType
* subjectOfCareId 1..1 string "Id of the subject of care of the EHR for which access is requested by the performer." "Id of the subject of care of the EHR for which access is requested by the performer."
* subjectOfCareId only SubjectOfCareIdType
* careUnitHsaIdentity 1..1 string "HSAId of care unit where the performer is in duty when requesting access to EHR records of the subject of care." "HSAId of care unit where the performer is in duty when requesting access to EHR records of the subject of care."
* careUnitHsaIdentity only HsaIdType
* careGiverHsaIdentity 1..1 string "HSAId of the organisation operating the healthcare_facility" "HSAId of the organisation operating the healthcare_facility"
* careGiverHsaIdentity only HsaIdType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert AssertCareEngagementRequestFieldDescriptions
