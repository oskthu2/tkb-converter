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

* performer 1..1 Identifier "HSA-id för medarbetaren som begär åtkomst"
    """
    HSA-id för medarbetare som begär åtkomst till sammanhållen journalföring.
    Ska vara HSA-id för den medarbetare som är autentiserad i tjänstekonsumenten
    och som begär åtkomst till sammanhållen journalföring.
    Kardinalitet: Obligatorisk.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA)
    """

* subjectOfCareId 1..1 Identifier "Person- eller samordningsnummer"
    """
    Person- eller samordningsnummer för den patient vars sammanhållna journalföring
    söks. 12 tecken enligt Skatteverkets format (ej bindestreck).
    Kardinalitet: Obligatorisk.
    """

* careUnitHsaIdentity 1..1 Identifier "HSA-id för medarbetarens uppdragsvårdenhet"
    """
    HSA-id för den vårdenhet på vars uppdrag medarbetaren agerar och begär åtkomst
    till sammanhållen journalföring.
    Kardinalitet: Obligatorisk.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA)
    """

* careGiverHsaIdentity 1..1 Identifier "HSA-id för vårdgivaren"
    """
    HSA-id för vårdgivaren där vårdenhet med HSA-id enligt careUnitHsaIdentity ingår.
    Kardinalitet: Obligatorisk.
    System: urn:oid:1.2.752.129.2.1.4.1 (HSA)
    """
