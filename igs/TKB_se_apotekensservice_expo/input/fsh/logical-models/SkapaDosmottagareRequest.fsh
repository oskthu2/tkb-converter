// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SkapaDosmottagare v4.0
// Genererad: 2026-09-26

Logical: SkapaDosmottagareRequest
Id: skapadosmottagare-request
Title: "SkapaDosmottagare — Request"
Description: """
  Logisk modell för begäran i SkapaDosmottagare
  (urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL.
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
* adress 0..1 string "adress" "Adress till dosmottagare. Obligatorisk om typ = 'D'."
* apoteksIdDosmottagare 0..1 string "apoteksIdDosmottagare" "Apoteks-id för dosmottagare om dosmottagare är av typen apotek."
* apoteksIdDosproducent 1..1 string "apoteksIdDosproducent" "Apoteks-id för dosproducent som dosmottagaren ska registreras på."
* arbetsplatskod 0..1 string "arbetsplatskod" "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning."
* avdelning 0..1 string "avdelning" "Avdelning inom dosmottagare."
* dosmottagarId 1..1 string "dosmottagarId" "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket."
* kommunkod 0..1 string "kommunkod" "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB."
* lanskod 0..1 string "lanskod" "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB."
* mottagarnamn 1..1 string "mottagarnamn" "Namn på dosmottagare."
* postnummer 0..1 string "postnummer" "Postnummer till dosmottagare."
* postort 0..1 string "postort" "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'."
* typ 1..1 string "typ" "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek)."
