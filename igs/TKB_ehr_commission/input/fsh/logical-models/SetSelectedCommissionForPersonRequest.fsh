// Genererad från TKB ehr:commission v1.0 RC1
// Kontrakt: SetSelectedCommissionForPerson v1.0 — Request
// Genererad: 2026-04-09

Logical: SetSelectedCommissionForPersonRequest
Id: setselectedcommissionforperson-request
Title: "SetSelectedCommissionForPerson — Request"
Description: """
  Logisk modell för requestparametrar i SetSelectedCommissionForPerson
  (RIV-TA urn:riv:ehr:commission:SetSelectedCommissionForPersonResponder:1).

  Exakt ett av fälten personalHsaId och personalIdentityNumber ska anges.
  commissionHsaId är valfritt — om det utelämnas nollställs valet (t.ex. vid utloggning).
"""
Characteristics: #can-be-target

* personalHsaId 0..1 string "HSA-id för den aktör vars uppdragsval ska sättas"
    """
    HSA-id för den person vars medarbetaruppdragsval ska registreras.
    Maxlängd: 32 tecken.
    Villkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges.
    Kardinalitet: Villkorlig (0..1) — se ASSUME-EC-001 i QUESTIONS.md.
    """
* personalIdentityNumber 0..1 string "Personnummer för den aktör vars uppdragsval ska sättas"
    """
    Personnummer eller samordningsnummer för den person vars uppdragsval ska registreras.
    Maxlängd: 12 tecken.
    Villkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges.
    Kardinalitet: Villkorlig (0..1) — se ASSUME-EC-001 i QUESTIONS.md.
    """
* commissionHsaId 0..1 string "HSA-id för det valda uppdraget"
    """
    HSA-id för det medarbetaruppdrag som ska väljas som aktivt.
    Om detta fält utelämnas nollställs uppdragsvalet.
    Detta kan användas av autentiseringstjänsten för att tvinga fram ett
    nytt uppdragsval (t.ex. funktionen Byta Uppdrag).
    Maxlängd: 32 tecken.
    Kardinalitet: Valfri.
    """
