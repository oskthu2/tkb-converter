// Genererad från XSD för se.apotekensservice.or v7.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaAktuellaOrdinationer v5.2
// Genererad: 2026-09-26

Logical: HamtaAktuellaOrdinationerRequest
Id: hamtaaktuellaordinationer-request
Title: "HamtaAktuellaOrdinationer — Request"
Description: """
  Logisk modell för begäran i HamtaAktuellaOrdinationer
  (urn:riv:se.apotekensservice:or:HamtaAktuellaOrdinationerResponder:5, HamtaAktuellaOrdinationerRequestType), inklusive SOAP-huvuden enligt WSDL.
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
  * directoryID 0..1 string "directoryID" "directoryID"
  * hsaID 0..1 string "hsaID" "hsaID"
  * katalog 0..1 string "katalog" "katalog"
  * organisationsnummer 0..1 string "organisationsnummer" "organisationsnummer"
  * systemnamn 0..1 string "systemnamn" "systemnamn"
  * systemversion 0..1 string "systemversion" "systemversion"
  * systemIp 0..1 string "systemIp" "systemIp"
* personnummer 1..1 string "personnummer" "Giltigt personnummer för patient."
* ordinationsId 0..1 string "ordinationsId" "OrdinationsId. Anges om bara en ordination ska returneras."
* grupplegitimationskod 0..1 string "grupplegitimationskod" "Användarens 6-ställiga grupplegitimationskod. Obligatorisk för Apotekselev, receptarieelev, Teknikerelev och Europeisk farmaceut."
* gruppforskrivarkod 0..1 string "gruppforskrivarkod" "Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten."
