// Elementen genereras ur HamtaIckeAktuellaOrdinationerResponder_6.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.or v7.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaIckeAktuellaOrdinationer v6.2
// Genererad: 2026-09-26

Logical: HamtaIckeAktuellaOrdinationerRequest
Id: hamtaickeaktuellaordinationer-request
Title: "HamtaIckeAktuellaOrdinationer — Request"
Description: """
  Logisk modell för begäran i HamtaIckeAktuellaOrdinationer
  (urn:riv:se.apotekensservice:or:HamtaIckeAktuellaOrdinationerResponder:6, HamtaIckeAktuellaOrdinationerRequestType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "6.2"
* fromDatum 0..1 dateTime "Från och med datum för perioden som ska visas." "Från och med datum för perioden som ska visas."
* personnummer 1..1 string "Giltigt personnummer för patient." "Giltigt personnummer för patient."
* ordinationsId 0..1 string "OrdinationsId. Anges om bara en ordination ska returneras." "OrdinationsId. Anges om bara en ordination ska returneras."
* grupplegitimationskod 0..1 string "grupplegitimationskod" "Användarens 6-ställiga grupplegitimationskod. Obligatorisk för Apotekselev, receptarieelev, Teknikerelev och Europeisk farmaceut."
* gruppforskrivarkod 0..1 string "gruppforskrivarkod" "Gruppförskrivarkod används då förskrivaren saknar individuell förskrivarkod men har via sin roll erhållit förskrivningsrätt. Kan exempelvis vara en AT-läkare eller förskrivare med förordnande. Förskrivarkoden definieras av Socialstyrelsen och gruppförskrivarkoden definieras av eHälsomyndigheten."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaIckeAktuellaOrdinationerRequestFieldDescriptions
