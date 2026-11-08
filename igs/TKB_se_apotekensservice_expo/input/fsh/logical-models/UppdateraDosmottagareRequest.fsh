// Elementen genereras ur UppdateraDosmottagareResponder_4.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: UppdateraDosmottagare v4.0
// Genererad: 2026-09-26

Logical: UppdateraDosmottagareRequest
Id: uppdateradosmottagare-request
Title: "UppdateraDosmottagare — Request"
Description: """
  Logisk modell för begäran i UppdateraDosmottagare
  (urn:riv:se.apotekensservice:expo:UppdateraDosmottagareResponder:4, UppdateraDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "4.0"
* adress 0..1 string "Adress till dosmottagare. Obligatorisk om typ = 'D'." "Adress till dosmottagare. Obligatorisk om typ = 'D'."
* apoteksIdDosproducent 1..1 string "Apoteks-id för dosproducent som dosmottagaren ska registreras på." "Apoteks-id för dosproducent som dosmottagaren ska registreras på."
* arbetsplatskod 0..1 string "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning." "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning."
* avdelning 0..1 string "Avdelning inom dosmottagare." "Avdelning inom dosmottagare."
* dosmottagarId 1..1 string "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket." "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket."
* kommunkod 0..1 string "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB." "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB."
* lanskod 0..1 string "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB." "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB."
* mottagarnamn 1..1 string "Namn på dosmottagare." "Namn på dosmottagare."
* postnummer 0..1 string "Postnummer till dosmottagare." "Postnummer till dosmottagare."
* postort 0..1 string "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'." "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert UppdateraDosmottagareRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys uppdateradosmottagare-request-adress-when-d

Invariant: uppdateradosmottagare-request-adress-when-d
Description: "adress och postort ska anges när typ = 'D' (direktleverans)."
Expression: "typ = 'D' implies (adress.exists() and postort.exists())"
Severity: #error
