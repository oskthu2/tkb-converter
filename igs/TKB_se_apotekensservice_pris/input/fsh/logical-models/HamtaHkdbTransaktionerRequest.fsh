// Elementen genereras ur HamtaHkdbTransaktionerResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaHkdbTransaktioner v1.0
// Genererad: 2026-09-26

Logical: HamtaHkdbTransaktionerRequest
Id: hamtahkdbtransaktioner-request
Title: "HamtaHkdbTransaktioner — Request"
Description: """
  Logisk modell för begäran i HamtaHkdbTransaktioner
  (urn:riv:se.apotekensservice:pris:HamtaHkdbTransaktionerResponder:1, HamtaHkdbTransaktionerRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* klientinformation 1..1 Base "KlientinformationRequest" "Objekt innehållande information om anropande klientsystem."
* klientinformation.anvandare 1..1 string "Unikt användarid i anropande system." "Unikt användarid i anropande system."
* klientinformation.session 1..1 string "Sessionens id i anropande system." "Sessionens id i anropande system."
* klientinformation.system 1..1 string "GLN-kod för anropande system." "GLN-kod för anropande system."
* maxantal 0..1 integer "maxantal" "Ställer in begränsning av maximala mängden returnerade transaktioner. T.ex innebär maxantal = 5, att endast de fem senaste transaktionerna hämtas. Om maxantal inte anges så är defaultvärde fem. Om man vill ha alla transaktioner sätts maxantal till -1."
* persNr 1..1 string "Personnummer för den som sökningen gäller." "Personnummer för den som sökningen gäller."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaHkdbTransaktionerRequestFieldDescriptions
