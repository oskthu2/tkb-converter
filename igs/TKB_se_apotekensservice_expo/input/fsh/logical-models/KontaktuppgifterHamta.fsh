// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KontaktuppgifterHamta v4.0
// Genererad: 2026-09-26

Logical: KontaktuppgifterHamta
Id: kontaktuppgifterhamta
Title: "KontaktuppgifterHamta — Response"
Description: """
  Logisk modell för svaret i KontaktuppgifterHamta
  (urn:riv:se.apotekensservice:expo:KontaktuppgifterHamtaResponder:4, KontaktuppgifterHamtaResponseType).
"""
Characteristics: #can-be-target
* epostadressServicedesk 0..1 string "epostadressServicedesk" "E-postadress till aktörens servicedesk"
* kontaktpersonLista 0..* BackboneElement "kontaktpersonLista" "Kontaktpersoner"
  * befattning 1..1 string "befattning" "Kontaktpersonens befattning."
  * efternamn 1..1 string "efternamn" "Efternamn på kontaktperson hos aktören."
  * epostadress 1..1 string "epostadress" "Kontaktpersonens e-postadress"
  * fornamn 1..1 string "fornamn" "Förnamn på kontaktperson hos aktören."
  * telefonnummer 1..1 string "telefonnummer" "Kontaktpersonens telefonnummer."
* orgNr 0..1 string "orgNr" "Aktörens organisationsnummer (xs:long i schemat.)"
* telefonnummerServicedesk 0..1 string "telefonnummerServicedesk" "Telefonnummer till aktörens servicedesk"
