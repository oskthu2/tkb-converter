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

* hasCareEngagement 1..1 boolean "Åtkomstberättigande vårdrelation"
    """
    'true' om åtkomstberättigande vårdrelation kan anses föreligga, annars 'false'.
    Kardinalitet: Obligatorisk.
    Notering: Fältnamnet anges som 'HasCareEngagement' (versalt H) i TKB-tabellen
    men som 'hasCareEngagement' i XSD. Normaliserat till camelCase i FHIR-modellen.
    Kardinaliteten anges som '1' (utan punktnotation) i TKB — tolkat som 1..1.
    """
