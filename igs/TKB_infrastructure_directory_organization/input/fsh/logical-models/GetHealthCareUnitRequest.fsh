// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnit v2.0
// Genererad: 2026-05-19

Logical: GetHealthCareUnitRequest
Id: gethealthcareunit-request
Title: "GetHealthCareUnit — Request"
Description: "Logisk modell för requestparametrar i GetHealthCareUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnit:2)."
Characteristics: #can-be-target

* healthCareUnitMemberHsaId 1..1 string "HSA-id för en enhet eller funktion som är kopplad till en vårdenhet enligt PDL."
    """
    Ref. HSA-id (hsaIdentity) i Informationsspecifikationen [R5].
    Kardinalitet: Obligatorisk.
    """
* searchBase 0..1 string "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
    """
    DN-format (Distinguished Name).
    Kardinalitet: Valfri.
    """
* includeFeignedObject 0..1 boolean "true: om metoden ska leverera svar med fingerade objekt."
    """
    Uteblivet värde tolkas som false, dvs inga fingerade objekt levereras.
    Kardinalitet: Valfri.
    """
