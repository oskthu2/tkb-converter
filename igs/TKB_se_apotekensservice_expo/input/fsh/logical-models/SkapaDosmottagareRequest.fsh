// Elementen genereras ur SkapaDosmottagareResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "4.0"
* adress 0..1 string "Adress till dosmottagare. Obligatorisk om typ = 'D'." "Adress till dosmottagare. Obligatorisk om typ = 'D'."
* apoteksIdDosmottagare 0..1 string "Apoteks-id för dosmottagare om dosmottagare är av typen apotek." "Apoteks-id för dosmottagare om dosmottagare är av typen apotek."
* apoteksIdDosproducent 1..1 string "Apoteks-id för dosproducent som dosmottagaren ska registreras på." "Apoteks-id för dosproducent som dosmottagaren ska registreras på."
* arbetsplatskod 0..1 string "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning." "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning."
* avdelning 0..1 string "Avdelning inom dosmottagare." "Avdelning inom dosmottagare."
* dosmottagarId 1..1 string "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket." "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket."
* kommunkod 0..1 string "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB." "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB."
* lanskod 0..1 string "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB." "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB."
* mottagarnamn 1..1 string "Namn på dosmottagare." "Namn på dosmottagare."
* postnummer 0..1 string "Postnummer till dosmottagare." "Postnummer till dosmottagare."
* postort 0..1 string "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'." "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'."
* typ 1..1 string "typ" "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek)."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SkapaDosmottagareRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys skapadosmottagare-request-adress-when-d

Invariant: skapadosmottagare-request-adress-when-d
Description: "adress och postort ska anges när typ = 'D' (direktleverans)."
Expression: "typ = 'D' implies (adress.exists() and postort.exists())"
Severity: #error
