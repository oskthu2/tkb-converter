// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetEmployee v4.0 — Request
// Genererad: 2026-05-19

Logical: GetEmployeeRequest
Id: getemployee-request
Title: "GetEmployee — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetEmployee
  (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployee:4).
  Är identisk med GetEmployeeIncludingProtectedPersonRequest förutom att
  skyddade personer aldrig returneras.
  OBS: Exakt ett av fälten personHsaId och personalIdentityNumber ska anges (*1).
"""
Characteristics: #can-be-target

* personHsaId 0..1 string "Sökt persons HSA-id"
    """
    Sökt persons HSA-id. Ref. HSA-id (hsaIdentity) [R5].
    Kardinalitet: Villkorlig (*1) — exakt ett av personHsaId/personalIdentityNumber ska anges.
    """
* personalIdentityNumber 0..1 string "Sökt persons Person-id (personnummer eller samordningsnummer)"
    """
    Sökt persons Person-id. Ref. person-id (personalIdentityNumber) [R5].
    Kardinalitet: Villkorlig (*1) — exakt ett av personHsaId/personalIdentityNumber ska anges.
    """
* searchBase 0..1 string "Sökbas (DN)"
    """
    Sökbas. Om ingen sökbas anges används c=SE som sökbas. Kardinalitet: Valfri.
    """
* includeFeignedObject 0..1 boolean "Inkludera fingerade objekt"
    """
    true: om metoden ska leverera svar med fingerade objekt. Kardinalitet: Valfri.
    """
* profile 0..1 string "Profilval för returnerade attribut (BASIC, TITLE, CONTACT, FULL, extended1)"
    """
    Anger vilka attribut som returneras i svaret.
    Om värdet utelämnas antas FULL. Kardinalitet: Valfri.
    """
