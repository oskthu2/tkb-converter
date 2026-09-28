// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KontaktuppgifterUppdatera v5.0
// Genererad: 2026-09-26

Logical: KontaktuppgifterUppdateraRequest
Id: kontaktuppgifteruppdatera-request
Title: "KontaktuppgifterUppdatera — Request"
Description: """
  Logisk modell för begäran i KontaktuppgifterUppdatera
  (urn:riv:se.apotekensservice:expo:KontaktuppgifterUppdateraResponder:5, KontaktuppgifterUppdateraRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB"
* argosHeader 1..1 BackboneElement "argosHeader" "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction"
  * forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
  * legitimationskod 0..1 string "legitimationskod" "legitimationskod"
  * fornamn 0..1 string "fornamn" "fornamn"
  * efternamn 0..1 string "efternamn" "efternamn"
  * yrkesgrupp 0..1 string "yrkesgrupp" "yrkesgrupp"
  * befattningskod 0..1 string "befattningskod" "befattningskod"
  * arbetsplatskod 0..1 string "arbetsplatskod" "arbetsplatskod"
  * arbetsplatsnamn 0..1 string "arbetsplatsnamn" "arbetsplatsnamn"
  * postort 0..1 string "postort" "postort"
  * postadress 0..1 string "postadress" "postadress"
  * postnummer 0..1 string "postnummer" "postnummer"
  * telefonnummer 0..1 string "telefonnummer" "telefonnummer"
  * requestId 0..1 string "requestId" "requestId"
  * rollnamn 0..1 string "rollnamn" "rollnamn"
  * hsaID 0..1 string "hsaID" "hsaID"
  * katalog 0..1 string "katalog" "katalog"
  * organisationsnummer 0..1 string "organisationsnummer" "organisationsnummer"
  * systemnamn 0..1 string "systemnamn" "systemnamn"
  * systemversion 0..1 string "systemversion" "systemversion"
  * systemIp 0..1 string "systemIp" "systemIp"
* epostadressServicedesk 1..1 string "epostadressServicedesk" "E-postadress till aktörens servicedesk"
* kontaktpersonLista 1..* BackboneElement "kontaktpersonLista" "Kontaktpersoner. Minst en kontaktperson måste anges."
  * befattning 1..1 string "befattning" "Kontaktpersonens befattning."
  * efternamn 1..1 string "efternamn" "Efternamn på kontaktperson hos aktören."
  * epostadress 1..1 string "epostadress" "Kontaktpersonens e-postadress"
  * fornamn 1..1 string "fornamn" "Förnamn på kontaktperson hos aktören."
  * telefonnummer 1..1 string "telefonnummer" "Kontaktpersonens telefonnummer."
* orgNr 1..1 string "orgNr" "Aktörens organisationsnummer (xs:long i schemat.)"
* telefonnummerServicedesk 1..1 string "telefonnummerServicedesk" "Telefonnummer till aktörens servicedesk"
