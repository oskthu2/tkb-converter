// Genererad från TKB informatics:terminology v1.4
// Kontrakt: GetTerminologySubset v1.0 — Request
// Genererad: 2026-05-19

Logical: GetTerminologySubsetRequest
Id: getterminologysubset-request
Title: "GetTerminologySubset — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetTerminologySubset
  (RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1).
"""
Characteristics: #can-be-target

* subsetIdentity 1..1 string "Identifierare för urvalet"
    """
    Unik identifierare för det terminologiurval som ska hämtas.
    Se sidan Tillgängliga urval för kända SubsetId-värden.
    Kardinalitet: Obligatorisk.
    """
* localOrganizationExtension 0..1 string "HSAId för organisationspost (vårdgivare)"
    """
    HSAId för organisationspost motsvarande vårdgivare i HSA-trädet.
    Om denna anges kommer det nationella urvalet returneras tillsammans med de koder
    i urvalet som är specifika för den aktuella vårdgivaren.
    Kardinalitet: Valfri.
    """
* termType 1..1 string "Typ av term som ska användas"
    """
    Typ av term som ska användas i responsen. Fixt värde: DisplayName.
    Kardinalitet: Obligatorisk.

    ASSUME: termType modelleras som string med fixt värde 'DisplayName'. Alternativt
    kan det modelleras med en fixed value constraint. Se QUESTIONS.md [ASSUME-IT-001].
    """
