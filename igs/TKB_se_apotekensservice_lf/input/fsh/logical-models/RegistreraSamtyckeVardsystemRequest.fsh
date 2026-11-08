// Elementen genereras ur RegistreraSamtyckeVardsystemResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.lf v7.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: RegistreraSamtyckeVardsystem v1.0
// Genererad: 2026-09-26

Logical: RegistreraSamtyckeVardsystemRequest
Id: registrerasamtyckevardsystem-request
Title: "RegistreraSamtyckeVardsystem — Request"
Description: """
  Logisk modell för begäran i RegistreraSamtyckeVardsystem
  (urn:riv:se.apotekensservice:lf:RegistreraSamtyckeVardsystemResponder:1, RegistreraSamtyckeVardsystemRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* klientinformation 1..1 Base "KlientinformationRequest" "Information om anropande system."
* klientinformation.anvandare 1..1 string "Unikt användarid i anropande system." "Unikt användarid i anropande system."
* klientinformation.session 1..1 string "Sessionens id i anropande system." "Sessionens id i anropande system."
* klientinformation.system 1..1 string "GLN-kod för anropande system." "GLN-kod för anropande system."
* samtyckesgivare 1..1 string "Giltigt personnummer för patient vars samtycke ska registreras. Valideras mot FOLK." "Giltigt personnummer för patient vars samtycke ska registreras. Valideras mot FOLK."
* samtyckestagareForskrivarkod 1..1 string "samtyckestagareForskrivarkod" "Förskrivarkod för förskrivare som skall få samtycke. Förskrivarens personnummer hämtas från FORS och sparas i LF Samtyckesregister. Förskrivarkoden sparas EJ."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RegistreraSamtyckeVardsystemRequestFieldDescriptions
