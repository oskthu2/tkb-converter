// Genererad från XSD för se.apotekensservice:axs v7.0 (ingen TKB finns i källan)
// Kontrakt: HamtaPatientInfo v6.0
// Genererad: 2026-09-26

Logical: HamtaPatientInfoRequest
Id: hamtapatientinfo-request
Title: "HamtaPatientInfo — Request"
Description: """
  Logisk modell för begäran i HamtaPatientInfo
  (urn:riv:se.apotekensservice:axs:HamtaPatientInfoResponder:6, HamtaPatientInfoRequestType),
  inklusive de två SOAP-huvuden som WSDL:en kräver (LogicalAddress och ArgosHeader).
"""
Characteristics: #can-be-target
* logicalAddress 1..1 string "Logisk adress" "SOAP-huvud LogicalAddress (itintegration_registry_1.0.xsd). Enligt WSDL: organisationsnummer för Apotekens Service AB."
* argosHeader 1..1 BackboneElement "Argos-huvud" "SOAP-huvud ArgosHeader (ArgosHeader_1.0.xsd). Enligt WSDL: se dokumentationen för vilka fält som är obligatoriska för just denna tjänsteinteraktion. Alla fält är 0..1 i schemat."
  * forskrivarkod 0..1 string "Förskrivarkod" "Förskrivarkod."
  * legitimationskod 0..1 string "Legitimationskod" "Legitimationskod."
  * fornamn 0..1 string "Förnamn" "Användarens förnamn."
  * efternamn 0..1 string "Efternamn" "Användarens efternamn."
  * yrkesgrupp 0..1 string "Yrkesgrupp" "Yrkesgrupp."
  * befattningskod 0..1 string "Befattningskod" "Befattningskod."
  * arbetsplatskod 0..1 string "Arbetsplatskod" "Arbetsplatskod."
  * arbetsplatsnamn 0..1 string "Arbetsplatsnamn" "Arbetsplatsnamn."
  * postort 0..1 string "Postort" "Postort."
  * postadress 0..1 string "Postadress" "Postadress."
  * postnummer 0..1 string "Postnummer" "Postnummer."
  * telefonnummer 0..1 string "Telefonnummer" "Telefonnummer."
  * requestId 0..1 string "Anrops-id" "Anropets identitet."
  * rollnamn 0..1 string "Rollnamn" "Rollnamn."
  * hsaID 0..1 string "HSA-id" "Användarens HSA-id."
  * katalog 0..1 string "Katalog" "Katalog."
  * organisationsnummer 0..1 string "Organisationsnummer" "Organisationsnummer."
  * systemnamn 0..1 string "Systemnamn" "Anropande systems namn."
  * systemversion 0..1 string "Systemversion" "Anropande systems version."
  * systemIp 0..1 string "System-IP" "Anropande systems IP-adress."
* personnummer 1..1 string "Personnummer" "Giltigt personnummer för patient. Typen är xs:string i schemat (inte PersonIdType)."
