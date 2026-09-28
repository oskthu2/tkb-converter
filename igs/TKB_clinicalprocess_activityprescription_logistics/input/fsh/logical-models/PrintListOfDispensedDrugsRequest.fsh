// Genererad från TKB clinicalprocess:activityprescription:logistics v1.0.2
// Kontrakt: PrintListOfDispensedDrugs v1.0
// Genererad: 2026-09-26

Invariant: printlistofdispenseddrugs-request-arbetsplats-choice
Description: "Exakt ett av arbetsplatskod och arbetsplats ska anges (xs:choice i ArbetsplatsIdentifikation)"
Expression: "arbetsplatskod.exists() xor arbetsplats.exists()"
Severity: #error

Logical: PrintListOfDispensedDrugsRequest
Id: printlistofdispenseddrugs-request
Title: "PrintListOfDispensedDrugs — Request"
Description: """
  Logisk modell för requestparametrar i PrintListOfDispensedDrugs
  (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1, PrintListOfDispensedDrugsType).
  Anropande system ska ha anropat GetDispensedDrugs innan denna tjänst anropas.
"""
Characteristics: #can-be-target

* patient 1..1 BackboneElement "Patient vars läkemedelsförteckning skall hämtas"
  * patientidentifikation 1..1 BackboneElement "Patientidentifikation"
      """
      Personnummer från kodverk med OID 1.2.752.129.2.1.3, enhetligt utformat unikt person-id registrerat i folkbokföringen.
      """
    * kod 1..1 string "Patientens personnummer"
        """
        Fältlängd 1..12.
        """
    * kodverk 1..1 string "OID för kodverket"
        """
        Identifiering av berört kodverk/klassifikation enligt V-TIM 2.2 (XSD-typ OID, mönster [0-9][0-9.]*).
        För personnummer: 1.2.752.129.2.1.3.
        """
* anropandeVardpersonal 1..1 BackboneElement "Anropande vårdpersonal"
  * efternamn 1..1 string "Efternamn"
      """
      Används i kombination med personHsaId för att identifiera användare. Fältlängd 1..35.
      """
  * fornamn 1..1 string "Förnamn"
      """
      Används i kombination med personHsaId för att identifiera användare. Fältlängd 1..35.
      """
  * personHsaId 1..1 string "HSA-id för läsande person"
      """
      Fältlängd 1..64.
      """
  * vardenhetHsaId 1..1 string "HSA-id för läsande vårdenhet"
      """
      Används för spårbarhet. Fältlängd 1..64.
      """
  * vardgivareHsaId 1..1 string "HSA-id för läsande vårdgivare"
      """
      Används för spårbarhet. Fältlängd 1..64.
      """
* forskrivarkod 0..1 string "Förskrivarens individuella förskrivarkod"
    """
    Gruppförskrivarkoder får ej användas. Valideras mot FORS. Fältlängd 7..7.
    """
* identifieradArbetsplats 1..1 BackboneElement "Identifierad arbetsplats"
    """
    XSD: ArbetsplatsIdentifikation (xs:choice). Exakt ett av arbetsplatskod och arbetsplats ska anges.
    """
  * obeys printlistofdispenseddrugs-request-arbetsplats-choice
  * arbetsplatskod 0..1 string "Förskrivarens arbetsplatskod"
      """
      Del av val. Valideras. Obligatorisk om arbetsplats inte anges. Fältlängd 1..20.
      """
  * arbetsplats 0..1 BackboneElement "Förskrivarens arbetsplats"
      """
      Del av val. Obligatorisk om arbetsplatskod inte anges.
      """
    * arbetsplatsnamn 1..1 string "Namnet på användarens arbetsplats"
        """
        Fältlängd 1..64.
        """
    * arbetsplatsort 1..1 string "Orten för användarens arbetsplats"
        """
        Fältlängd 1..28.
        """
