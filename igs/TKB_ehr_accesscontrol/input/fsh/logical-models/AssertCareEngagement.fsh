// Elementen genereras ur AssertCareEngagementResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB ehr:accesscontrol v1.0.6
// Kontrakt: AssertCareEngagement v1.0
// RIV-TA namespace: urn:riv:ehr:accesscontrol:AssertCareEngagement:1
// Genererad: 2026-03-24

Logical: AssertCareEngagement
Id: assertcareengagement
Title: "AssertCareEngagement"
Description: """
  Logisk modell för tjänstekontraktet AssertCareEngagement
  (RIV-TA urn:riv:ehr:accesscontrol:AssertCareEngagement:1).
  Representerar responsens informationsstruktur.

  Tjänsten ger svar på om en medarbetare med uppdrag på angiven vårdenhet ska ges
  möjlighet att begära åtkomst till sammanhållen journalföring (TGP — Tillgänglig Patient).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* HasCareEngagement 1..1 boolean "true if care engagement is asserted, else false" "true if care engagement is asserted, else false"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert AssertCareEngagementFieldDescriptions
