// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaBarn v1.0
// Genererad: 2026-09-26

Logical: HamtaBarnRequest
Id: hamtabarn-request
Title: "HamtaBarn — Request"
Description: """
  Logisk modell för begäran i HamtaBarn
  (urn:riv:se.apotekensservice:pris:HamtaBarnResponder:1, HamtaBarnRequestType), inklusive SOAP-huvuden enligt WSDL.
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
* huvudPersNr 1..1 string "huvudPersNr" "Personnummer för huvudperson (vårdnadshavare)."
* klientinformation 1..1 BackboneElement "klientinformation" "Objekt innehållande information om anropande klientsystem."
  * anvandare 1..1 string "anvandare" "Unikt användarid i anropande system."
  * session 1..1 string "session" "Sessionens id i anropande system."
  * system 1..1 string "system" "GLN-kod för anropande system."
