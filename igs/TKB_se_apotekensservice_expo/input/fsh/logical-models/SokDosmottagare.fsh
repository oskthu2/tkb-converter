// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SokDosmottagare v1.0
// Genererad: 2026-09-26

Logical: SokDosmottagare
Id: sokdosmottagare
Title: "SokDosmottagare — Response"
Description: """
  Logisk modell för svaret i SokDosmottagare
  (urn:riv:se.apotekensservice:expo:SokDosmottagareResponder:1, SokDosmottagareResponseType).
"""
Characteristics: #can-be-target
* resultat 0..* BackboneElement "resultat" "Lista med apotek och kopplade dosmottagare som utdata"
  * apotek 0..1 BackboneElement "apotek" "Apoteksinformation för dosproducenten."
    * apoteksinformationLista 1..* BackboneElement "apoteksinformationLista" "Lista innehållande ett eller flera Apoteksinformation."
      * aktorsnamn 0..1 string "aktorsnamn" "Officiellt namn för aktör"
      * aktorsorgnr 0..1 string "aktorsorgnr" "Aktörens organisationsnummer. (xs:long i schemat.)"
      * allmantelefon 0..1 string "allmantelefon" "Telefonnummer för allmänheten"
      * besoksadress 0..1 string "besoksadress" "Expeditionsställets besöksadress"
      * eReceptDjur 1..1 boolean "eReceptDjur" "Markering gällande om apoteket kan expediera elektroniska djurrecept."
      * fax 0..1 string "fax" "Expeditionsställets faxnummer"
      * glnKod 1..1 string "glnKod" "Expeditionsställets GLN-kod"
      * huvudtypkod 0..1 string "huvudtypkod" "Kod som beskriver huvudverksamheten för expeditionsstället"
      * namn 0..1 string "namn" "Expeditionsställets officiella namn"
      * ort 0..1 string "ort" "Expeditionsställets besöksort"
      * slutdatum 0..1 dateTime "slutdatum" "Datum för stängning av verksamhet"
      * startdatum 1..1 dateTime "startdatum" "Datum för start av verksamhet"
  * dosmottagare 0..* BackboneElement "dosmottagare" "dosmottagare"
    * adress 0..1 string "adress" "Adress till dosmottagare. Obligatorisk om typ = 'D'."
    * apoteksIdDosmottagare 0..1 string "apoteksIdDosmottagare" "Apoteks-id för dosmottagare om dosmottagare är av typen apotek."
    * arbetsplatskod 0..1 string "arbetsplatskod" "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning."
    * avdelning 0..1 string "avdelning" "Avdelning inom dosmottagare."
    * dosmottagarId 1..1 string "dosmottagarId" "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket."
    * kommunkod 0..1 string "kommunkod" "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB."
    * lanskod 0..1 string "lanskod" "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB."
    * mottagarnamn 1..1 string "mottagarnamn" "Namn på dosmottagare."
    * postnummer 0..1 string "postnummer" "Postnummer till dosmottagare."
    * postort 0..1 string "postort" "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'."
    * typ 1..1 string "typ" "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek)."
