// Genererad från XSD för informationsecurity.authorization.blocking v4.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.blocking, tagg 4.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetPatientIds v4.0
// Genererad: 2026-09-26

Logical: GetPatientIds
Id: getpatientids
Title: "GetPatientIds — Response"
Description: """
  Logisk modell för svaret i GetPatientIds
  (urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4, GetPatientIdsResponseType).
"""
Characteristics: #can-be-target
* ^version = "4.0"
* getPatientIdResult 1..1 BackboneElement "getPatientIdResult" "Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider. Datatypen utökar datatypen Result."
  * result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
    * resultCode 1..1 code "resultCode" "resultCode"
    * resultCode from ResultCodeVS (required)
    * resultText 0..1 string "resultText" "resultText"
  * patientIds 0..* BackboneElement "patientIds" "En universellt unik identifierare."
    * root 1..1 string "root" "root"
    * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
