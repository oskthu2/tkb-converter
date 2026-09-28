// Genererad från TKB clinicalprocess:activityprescription:logistics v1.0.2
// Kontrakt: PrintListOfDispensedDrugs v1.0
// Genererad: 2026-09-26

Logical: PrintListOfDispensedDrugs
Id: printlistofdispenseddrugs
Title: "PrintListOfDispensedDrugs"
Description: """
  Logisk modell för tjänstekontraktet PrintListOfDispensedDrugs
  (RIV-TA urn:riv:clinicalprocess:activityprescription:logistics:PrintListOfDispensedDrugsResponder:1).
  Representerar responsens informationsstruktur: en PDF-rapport med patientens läkemedelsförteckning.
"""
Characteristics: #can-be-target

* patientinformation 0..1 BackboneElement "Information om patienten"
    """
    Information om patienten vars läkemedelsförteckning man hämtat.
    Om patienten är markerad som Avliden returneras ej pdf.
    """
  * patientidentifikation 0..1 BackboneElement "Patientidentifikation"
      """
      Kan enbart innehålla personnummer (kodverk OID 1.2.752.129.2.1.3), enhetligt utformat unikt person-id registrerat i folkbokföringen.
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
  * fornamn 0..1 string "Patientens förnamn"
      """
      För patient med skyddad identitet visas inte förnamn. Fältlängd 1..80.
      """
  * efternamn 0..1 string "Patientens efternamn"
      """
      För patient med skyddad identitet visas inte efternamn. Fältlängd 1..60.
      """
  * redigeratNamn 1..1 string "Redigerat namn"
      """
      Redigerat namn i formatet "mellannamn efternamn, förnamn". Förkortat till 36 tecken. Fältlängd 1..36.
      """
  * harRedigeratNamnForkortats 1..1 boolean "Anger om redigeratNamn har förkortats"
  * avliden 1..1 boolean "Anger om patienten är avliden"
      """
      Sant om personen är markerad som avliden, annars falskt.
      """
* pdf 0..1 base64Binary "Utdrag från läkemedelsförteckningen som PDF"
* resultCode 1..1 code "Resultatkod för anropet"
* resultCode from ResultCodeVS (required)
* comment 0..1 string "Kommentar till eventuella fel eller varningar"
    """
    Fältlängd 1..1024. Vid logiska fel returneras resultCode ERROR med beskrivande text i comment.
    """
