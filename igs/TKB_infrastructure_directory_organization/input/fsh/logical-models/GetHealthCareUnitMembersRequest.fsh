// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnitMembers v2.1
// Genererad: 2026-05-19

Logical: GetHealthCareUnitMembersRequest
Id: gethealthcareunitmembers-request
Title: "GetHealthCareUnitMembers — Request"
Description: "Logisk modell för requestparametrar i GetHealthCareUnitMembers (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitMembers:2)."
Characteristics: #can-be-target

* healthCareUnitHsaId 1..1 string "HSA-id för vårdenhet enligt PDL. Ref. hsaIdentity [R5]."
    """
    Kardinalitet: Obligatorisk.
    """
* searchBase 0..1 string "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
    """
    DN-format. Obs: kopplade enheter söks alltid med sökbas c=se.
    Kardinalitet: Valfri.
    """
* includeFeignedObject 0..1 boolean "true: om metoden ska leverera svar med fingerade objekt."
    """
    Uteblivet värde tolkas som false.
    Kardinalitet: Valfri.
    """
