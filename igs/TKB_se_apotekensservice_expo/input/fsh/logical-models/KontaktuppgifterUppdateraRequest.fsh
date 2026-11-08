// Elementen genereras ur KontaktuppgifterUppdateraResponder_5.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: KontaktuppgifterUppdatera v5.0
// Genererad: 2026-09-26

Logical: KontaktuppgifterUppdateraRequest
Id: kontaktuppgifteruppdatera-request
Title: "KontaktuppgifterUppdatera — Request"
Description: """
  Logisk modell för begäran i KontaktuppgifterUppdatera
  (urn:riv:se.apotekensservice:expo:KontaktuppgifterUppdateraResponder:5, KontaktuppgifterUppdateraRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "5.0"
* epostadressServicedesk 1..1 string "E-postadress till aktörens servicedesk" "E-postadress till aktörens servicedesk"
* kontaktpersonLista 1..* Base "KontaktpersonRequest" "Kontaktpersoner. Minst en kontaktperson måste anges."
* kontaktpersonLista.befattning 1..1 string "Kontaktpersonens befattning." "Kontaktpersonens befattning."
* kontaktpersonLista.efternamn 1..1 string "Efternamn på kontaktperson hos aktören." "Efternamn på kontaktperson hos aktören."
* kontaktpersonLista.epostadress 1..1 string "Kontaktpersonens e-postadress" "Kontaktpersonens e-postadress"
* kontaktpersonLista.fornamn 1..1 string "Förnamn på kontaktperson hos aktören." "Förnamn på kontaktperson hos aktören."
* kontaktpersonLista.telefonnummer 1..1 string "Kontaktpersonens telefonnummer." "Kontaktpersonens telefonnummer."
* orgNr 1..1 string "Aktörens organisationsnummer" "Aktörens organisationsnummer"
* telefonnummerServicedesk 1..1 string "Telefonnummer till aktörens servicedesk" "Telefonnummer till aktörens servicedesk"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert KontaktuppgifterUppdateraRequestFieldDescriptions
