// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareUnitList v2.0
// Genererad: 2026-05-19

Logical: GetHealthCareUnitListRequest
Id: gethealthcareunitlist-request
Title: "GetHealthCareUnitList — Request"
Description: "Logisk modell för requestparametrar i GetHealthCareUnitList (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareUnitList:2)."
Characteristics: #can-be-target

* healthCareProviderHsaId 1..1 string "Vårdgivarens HSA-id. Ref. hsaIdentity [R5]."
    """
    Kardinalitet: Obligatorisk.
    """
* searchBase 0..1 string "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
    """
    DN-format. Används för sökning av kopplad enhet, vårdenhet och vårdgivare.
    Kardinalitet: Valfri.
    """
* includeFeignedObject 0..1 boolean "true: om metoden ska leverera svar med fingerade objekt."
    """
    Uteblivet värde tolkas som false.
    Kardinalitet: Valfri.
    """
