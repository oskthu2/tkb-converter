// Genererad från TKB ehr:commission v1.0 RC1
// Kontrakt: GetCommissionsForPerson v1.0 — Request
// Genererad: 2026-04-09

Logical: GetCommissionsForPersonRequest
Id: getcommissionsforperson-request
Title: "GetCommissionsForPerson — Request"
Description: """
  Logisk modell för requestparametrar i GetCommissionsForPerson
  (RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1).

  Exakt ett av fälten personalHsaId och personalIdentityNumber ska anges.
  Om inget av dessa anges, eller om värdet är ogiltigt, returneras statuskod VALIDATIONERROR.
"""
Characteristics: #can-be-target

* personalHsaId 0..1 string "HSA-id för den aktör som medarbetaruppdrag ska hämtas för"
    """
    HSA-id för den person vars medarbetaruppdrag efterfrågas.
    Maxlängd: 32 tecken.
    Villkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges.
    Kardinalitet: Villkorlig (0..1) — se ASSUME-EC-001 i QUESTIONS.md.
    """
* personalIdentityNumber 0..1 string "Personnummer för den aktör som medarbetaruppdrag ska hämtas för"
    """
    Personnummer eller samordningsnummer för den person vars medarbetaruppdrag efterfrågas.
    Maxlängd: 12 tecken.
    Villkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges.
    Kardinalitet: Villkorlig (0..1) — se ASSUME-EC-001 i QUESTIONS.md.
    """
