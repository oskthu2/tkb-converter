// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KontrolleraForman v1.1
// Genererad: 2026-09-26

Logical: KontrolleraFormanRequest
Id: kontrolleraforman-request
Title: "KontrolleraForman — Request"
Description: """
  Logisk modell för begäran i KontrolleraForman
  (urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1, KontrolleraFormanRequestType), inklusive SOAP-huvuden enligt WSDL.
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
* artikelIdLista 1..* BackboneElement "artikelIdLista" "Artikel - Endast ett id per artikel"
  * gtin 0..1 string "gtin" "GTIN-kod"
  * nplPackageId 0..1 string "nplPackageId" "Förpackningsid från Nationellt Produktregister för Läkemedel Unikt id för LM-artikel"
  * varunr 0..1 string "varunr" "Nordiskt varunummer Unik för handelsvaror. För läkemedel kan dubletter förekomma vid parallellimport"
* klientinformation 1..1 BackboneElement "klientinformation" "Objekt innehållande information om anropande klientsystem."
  * anvandare 1..1 string "anvandare" "Unikt användarid i anropande system."
  * session 1..1 string "session" "Sessionens id i anropande system."
  * system 1..1 string "system" "GLN-kod för anropande system."
* fodelsedatum 0..1 string "fodelsedatum" "Födelsedatum. Anges på formen yyyymmdd. Används vid framtagning av förmånskod när varan är preventivmedel med förmånskod R. Om personen är under 21 år blir förmånskoden F för dessa varor. Gäller när lagen om gratis preventivmedel för personer under 21 år trätt i kraft. (Refererat element ur KontrolleraFormanResponder_1_ext_1.0.xsd, namnrymd urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1:ext:1.)"
