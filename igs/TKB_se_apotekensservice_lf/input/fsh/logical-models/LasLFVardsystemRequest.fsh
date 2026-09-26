// Genererad från XSD för se.apotekensservice.lf v7.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: LasLFVardsystem v4.1
// Genererad: 2026-09-26

Logical: LasLFVardsystemRequest
Id: laslfvardsystem-request
Title: "LasLFVardsystem — Request"
Description: """
  Logisk modell för begäran i LasLFVardsystem
  (urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4, LasLFVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL.
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
* anvandarnamn 0..1 string "anvandarnamn" "Användarnamn, används i kombination med HSA användar-id (klientinformation.anvandare) för att identifiera användare. Obligatoriskt om förskrivarkod saknas."
* arbetsplatsId 0..1 string "arbetsplatsId" "HSA-id för arbetsplats."
* arbetsplatskod 0..1 string "arbetsplatskod" "Förskrivarens arbetsplatskod, valideras mot ARKO. Obligatorisk om arbetsplatsnamn och arbetsplatsort inte anges."
* arbetsplatsnamn 0..1 string "arbetsplatsnamn" "Namnet på användarens arbetsplats. Används istället för arbetsplatskod. Obligatorisk om arbetsplatskod inte anges."
* arbetsplatsort 0..1 string "arbetsplatsort" "Orten för användarens arbetsplats. Används istället för arbetsplatskod. Obligatorisk om arbetsplatskod inte anges."
* atkomsttyp 1..1 string "atkomsttyp" "Treställig kod för typ av åtkomst. Tillåtna värden: ENG - Engångssamtycke SAM - Tillsvidaresamtycke NOD - Nödåtkomst"
* forskrivarkod 0..1 string "forskrivarkod" "Förskrivarens förskrivarkod, valideras mot FORS. Förskrivarkod skall även anges som användare i klientinformation."
* klientinformation 1..1 BackboneElement "klientinformation" "Information om anropande system."
  * anvandare 1..1 string "anvandare" "Unikt användarid i anropande system."
  * session 1..1 string "session" "Sessionens id i anropande system."
  * system 1..1 string "system" "Systemnamn för anropande system. GLN-kod krävs för anrop från MVK och LTj."
* personnummer 1..1 string "personnummer" "Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas."
