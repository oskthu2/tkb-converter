// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetEmployeeIncludingProtectedPerson v4.0 — Request
// Genererad: 2026-05-19

Logical: GetEmployeeIncludingProtectedPersonRequest
Id: getemployeeincludingprotectedperson-request
Title: "GetEmployeeIncludingProtectedPerson — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetEmployeeIncludingProtectedPerson
  (RIV-TA urn:riv:infrastructure:directory:employee:GetEmployeeIncludingProtectedPerson:4).
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
    Sökt persons Person-id (personnummer eller samordningsnummer).
    Ref. person-id (personalIdentityNumber) [R5].
    Kardinalitet: Villkorlig (*1) — exakt ett av personHsaId/personalIdentityNumber ska anges.
    """
* searchBase 0..1 string "Sökbas (DN)"
    """
    Sökbas. Om ingen sökbas anges används c=SE som sökbas.
    Kardinalitet: Valfri.
    """
* includeFeignedObject 0..1 boolean "Inkludera fingerade objekt"
    """
    true: om metoden ska leverera svar med fingerade objekt.
    Uteblivet värde tolkas som false. Kardinalitet: Valfri.
    """
* profile 0..1 string "Profilval för returnerade attribut (BASIC, TITLE, CONTACT, FULL, extended1)"
    """
    Anger vilka attribut som returneras i svaret.
    BASIC: personHsaId, givenName, middleAndSurName, nickname, dn, protectedPerson, feignedPerson.
    TITLE: Alla BASIC-attribut samt description, title, healthCareProfessionalLicence, m.fl.
    CONTACT: Alla BASIC-attribut samt mail, telefonnummer, adress m.fl.
    FULL: Alla BASIC-, TITLE- och CONTACT-attribut.
    extended1: Alla FULL-attribut samt age och gender.
    Om värdet utelämnas antas FULL.
    Kardinalitet: Valfri.
    """
