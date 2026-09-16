// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetHealthCareProvider v1.0 — Request-parametrar
// Genererad: 2026-09-16 (kompletterad — saknades i ursprunglig migrering, upptäckt via check_links.py)

Invariant: gethealthcareprovider-id-or-orgno
Description: "Exakt ett av healthCareProviderHsaId och healthCareProviderOrgNo ska anges."
Expression: "healthCareProviderHsaId.exists() xor healthCareProviderOrgNo.exists()"
Severity: #error

Logical: GetHealthCareProviderRequest
Id: gethealthcareprovider-request
Title: "GetHealthCareProvider — Request"
Description: "Logisk modell för requestparametrar i GetHealthCareProvider (RIV-TA urn:riv:infrastructure:directory:organization:GetHealthCareProvider:1)."
Characteristics: #can-be-target

* healthCareProviderHsaId 0..1 string "HSA-id för en vårdgivare enligt PDL. Ref. HSA-id (hsaIdentity) [R5]."
  * obeys gethealthcareprovider-id-or-orgno
* healthCareProviderOrgNo 0..1 string "Organisationsnummer för en vårdgivare."
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
