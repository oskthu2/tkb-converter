// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SkapaDosmottagare v4.0
// Genererad: 2026-09-26

Logical: SkapaDosmottagare
Id: skapadosmottagare
Title: "SkapaDosmottagare — Response"
Description: """
  Logisk modell för svaret i SkapaDosmottagare
  (urn:riv:se.apotekensservice:expo:SkapaDosmottagareResponder:4, SkapaDosmottagareResponseType).
"""
Characteristics: #can-be-target
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
