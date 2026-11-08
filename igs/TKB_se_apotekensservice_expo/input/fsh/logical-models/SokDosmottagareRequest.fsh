// Elementen genereras ur SokDosmottagareResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SokDosmottagare v1.0
// Genererad: 2026-09-26

Logical: SokDosmottagareRequest
Id: sokdosmottagare-request
Title: "SokDosmottagare — Request"
Description: """
  Logisk modell för begäran i SokDosmottagare
  (urn:riv:se.apotekensservice:expo:SokDosmottagareResponder:1, SokDosmottagareRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* aktorsnamn 0..1 string "Aktörens namn. Inledande del av aktörsnamnet kan anges" "Aktörens namn. Inledande del av aktörsnamnet kan anges"
* arbetsplatskod 0..1 string "Arbetsplatskod. Inledande del av arbetsplatskoden kan anges" "Arbetsplatskod. Inledande del av arbetsplatskoden kan anges"
* dosproducentsNamn 0..1 string "Dosproducentens namn. Inledande del av dosproducentens kan anges" "Dosproducentens namn. Inledande del av dosproducentens kan anges"
* kommunkod 0..1 string "Kommunkod till vilken dosmottagaren tillhör. Kod enligt SCB." "Kommunkod till vilken dosmottagaren tillhör. Kod enligt SCB."
* mottagarnamn 0..1 string "Mottagarens namn. Inledande del av mottagarnamn kan anges" "Mottagarens namn. Inledande del av mottagarnamn kan anges"
* postort 0..1 string "Arbetsplatsort till dosmottagare. Inledande del av arbetsplatsorten kan anges" "Arbetsplatsort till dosmottagare. Inledande del av arbetsplatsorten kan anges"
* typ 0..1 string "typ" "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SokDosmottagareRequestFieldDescriptions
