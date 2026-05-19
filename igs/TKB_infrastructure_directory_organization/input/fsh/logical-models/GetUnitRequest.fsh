// Genererad från TKB infrastructure:directory:organization v5.0
// Kontrakt: GetUnit v5.0
// Genererad: 2026-05-19

Logical: GetUnitRequest
Id: getunit-request
Title: "GetUnit — Request"
Description: "Logisk modell för requestparametrar i GetUnit (RIV-TA urn:riv:infrastructure:directory:organization:GetUnit:5)."
Characteristics: #can-be-target

* unitHsaId 1..1 string "HSA-id för sökt organisatorisk enhet. Ref. hsaIdentity [R5]."
    """
    Kardinalitet: Obligatorisk.
    """
* searchBase 0..1 string "Sökbas. Om ingen sökbas anges används c=SE som sökbas."
    """
    DN-format.
    Kardinalitet: Valfri.
    """
* includeFeignedObject 0..1 boolean "true: om metoden ska leverera svar med fingerade objekt."
    """
    Uteblivet värde tolkas som false.
    Kardinalitet: Valfri.
    """
* profile 0..* string "Anger hur mycket information om enheten som begärs."
    """
    Tillåtna värden: basic, extended, extended2, all (default).
    basic: bara grundläggande information (*b).
    extended: grundläggande + vård- och omsorgsinformation (*b, *e).
    extended2: även nonPublicTelephoneNumber (*f), måste kombineras med annat profilvärde.
    all: all tillgänglig information (*b, *e, *a) förutom nonPublicTelephoneNumber.
    Kardinalitet: Valfri, lista.
    """
