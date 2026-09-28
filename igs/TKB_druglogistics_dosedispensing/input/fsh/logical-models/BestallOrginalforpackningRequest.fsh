// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: BestallOrginalforpackning v1.0
// Genererad: 2026-09-26

Logical: BestallOrginalforpackningRequest
Id: bestallorginalforpackning-request
Title: "BestallOrginalforpackning — Request"
Description: """
  Logisk modell för begäran i BestallOrginalforpackning
  (urn:riv:druglogistics:dosedispensing:BestallOrginalforpackningResponder:1, BestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target
* logicalAddress 1..1 BackboneElement "logicalAddress" "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter."
* glnkod 1..1 string "glnkod" "glnkod"
* Behorighetsinformation 1..1 BackboneElement "Behorighetsinformation" "Behorighetsinformation"
  * fornamn 1..1 string "fornamn" "fornamn"
  * efternamn 1..1 string "efternamn" "efternamn"
  * forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
  * yrkeskod 0..1 code "yrkeskod" "yrkeskod"
  * yrkeskod from YrkesKodVS (required)
  * arbetsplatskod 1..1 string "arbetsplatskod" "arbetsplatskod"
  * hsaid 0..1 string "hsaid" "hsaid"
  * personnummer 0..1 string "personnummer" "personnummer"
  * organisationsnummer 0..1 string "organisationsnummer" "organisationsnummer"
* Bestallningsinfo 1..* BackboneElement "Bestallningsinfo" "Bestallningsinfo"
  * Patientinformation 1..1 BackboneElement "Patientinformation" "Patientinformation"
    * fornamn 1..1 string "fornamn" "Anvandarens fornamn."
    * mellannamn 0..1 string "mellannamn" "Anvandarens mellanamn."
    * efternamn 1..1 string "efternamn" "Anvandarens efternamn."
    * identitetstyp 1..1 code "identitetstyp" "identitetstyp"
    * identitetstyp from IdentitetstypVS (required)
    * personid 1..1 string "personid" "Anvandarens personid"
    * lanskod 0..1 string "lanskod" "Anvandarens folkbokforda lanskod"
    * kommunkod 0..1 string "kommunkod" "Anvandarens folkbokforda kommunkod"
  * bestallningsid 1..1 string "bestallningsid" "bestallningsid"
  * radid 0..1 string "radid" "radid"
  * NPLpackid 0..1 string "NPLpackid" "NPLpackid"
  * varunummer 0..1 string "varunummer" "varunummer"
  * receptid 0..1 string "receptid" "receptid"
  * ordinationsid 1..1 string "ordinationsid" "ordinationsid"
  * dosunderlagsversion 0..1 string "dosunderlagsversion" "dosunderlagsversion"
  * antalforpackningar 0..1 string "antalforpackningar" "antalforpackningar"
  * akutbestallning 0..1 boolean "akutbestallning" "akutbestallning"
  * maxveckodos 0..1 string "maxveckodos" "maxveckodos"
  * maxdygnsdos 0..1 string "maxdygnsdos" "maxdygnsdos"
  * dosmottagareid 0..1 string "dosmottagareid" "dosmottagareid"
  * dosmottagarenamn 0..1 string "dosmottagarenamn" "dosmottagarenamn"
  * meddelandetillapotek 0..1 string "meddelandetillapotek" "meddelandetillapotek"
  * onskadleveransdatum 1..1 dateTime "onskadleveransdatum" "onskadleveransdatum"
