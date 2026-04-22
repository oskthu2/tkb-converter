// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: CheckConsent v1.0 — Request-modell
// RIV-TA: urn:riv:ehr:patientconsent:accesscontrol:CheckConsentResponder:1
// Genererad: 2026-04-22

Logical: CheckConsentRequest
Id: checkconsent-request
Title: "CheckConsent — Request"
Description: "Logisk modell för requestparametrar i CheckConsent."
Characteristics: #can-be-target

* accessingActor 1..1 BackboneElement "Den aktör/person som önskar åtkomst till informationen (AccessingActorType)"
  * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
  * careProviderId 1..1 Identifier "HSA-id för vårdgivaren som medarbetaren tillhör (max 32 tecken)"
  * careUnitId 1..1 Identifier "HSA-id för vårdenheten som medarbetaren tillhör (max 32 tecken)"
* patientId 1..1 Identifier "Patientens personnummer alternativt samordningsnummer vars information aktören önskar åtkomst till"
  """
  PersonIdValue — personnummer, samordningsnummer eller reservnummer. Max 12 tecken.
  """
