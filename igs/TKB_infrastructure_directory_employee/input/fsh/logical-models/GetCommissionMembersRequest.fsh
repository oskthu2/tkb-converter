// Genererad från TKB infrastructure:directory:employee v4.0
// Kontrakt: GetCommissionMembers v3.0 — Request
// Genererad: 2026-05-19

Logical: GetCommissionMembersRequest
Id: getcommissionmembers-request
Title: "GetCommissionMembers — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetCommissionMembers
  (RIV-TA urn:riv:infrastructure:directory:employee:GetCommissionMembers:3).
  Är identisk med GetCommissionMembersIncludingProtectedPersonRequest förutom att
  skyddade personer aldrig returneras.
"""
Characteristics: #can-be-target

* healthCareUnitHsaId 1..1 string "HSA-id för vårdenhet (PDL)"
    """
    HSA-id för vårdenhet enligt PDL.
    Ref. HSA-id (hsaIdentity) [R5]. Kardinalitet: Obligatorisk.
    """
* commissionPurpose 1..1 string "Vårdmedarbetaruppdragets ändamål"
    """
    Vårdmedarbetaruppdragets ändamål enligt definierad värdemängd.
    Ref. vårdmedarbetaruppdragets ändamål (hsaCommissionPurpose) [R5].
    Kardinalitet: Obligatorisk.
    """
* commissionRights 0..* string "Vårdmedarbetaruppdragets rättigheter"
    """
    Vårdmedarbetaruppdragets rättigheter enligt definierade värdemängder.
    Syntax: Aktivitet;Informationstyp;Omfång — alla delar behöver anges.
    Ref. vårdmedarbetaruppdragets rättigheter (hsaCommissionRight) [R5].
    Kardinalitet: Valfri, lista.
    """
* healthCareProfessionalLicense 0..* string "Legitimerad yrkesgrupp (filter)"
    """
    Legitimerad yrkesgrupp enligt definierad värdemängd. Används som filter.
    Ref. legitimerad yrkesgrupp (hsaTitle) [R5]. Kardinalitet: Valfri, lista.
    """
* searchBase 0..1 string "Sökbas (DN)"
    """
    Sökbas. Om ingen sökbas anges används c=SE som sökbas. Kardinalitet: Valfri.
    """
* includeFeignedObject 0..1 boolean "Inkludera fingerade objekt"
    """
    true: om metoden ska leverera svar med fingerade objekt. Kardinalitet: Valfri.
    """
