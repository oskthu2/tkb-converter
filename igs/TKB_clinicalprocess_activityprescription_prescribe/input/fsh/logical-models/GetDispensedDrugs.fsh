// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Kontrakt: GetDispensedDrugs v2.0
// Genererad: 2026-03-19

Logical: GetDispensedDrugs
Id: getdispenseddrugs
Title: "GetDispensedDrugs"
Description: """
  Logisk modell för tjänstekontraktet GetDispensedDrugs
  (RIV-TA urn:riv:clinicalprocess:activityprescription:prescribe:GetDispensedDrugs:2).
  Representerar responsens informationsstruktur — uthämtade läkemedel för patient.
"""
Characteristics: #can-be-target

* dispensedDrug 0..* BackboneElement "Uthämtat läkemedel"
    """
    En eller flera expedieringar för patienten inom angiven tidsperiod.
    """
  * dispensedDrugId 1..1 Identifier "Unikt id för expedieringen"
  * dispenseDate 1..1 dateTime "Expedieringsdatum"
  * dispensedArticle 1..1 BackboneElement "Expedierad artikel (läkemedelsprodukt)"
    * articleId 0..1 Identifier "Artikelns id (NPL-id eller liknande)"
    * articleName 1..1 string "Artikelnamn"
    * strength 0..1 string "Styrka"
    * form 0..1 string "Läkemedelsform"
  * dispensedQuantity 0..1 BackboneElement "Expedierad mängd"
    * value 1..1 decimal "Numeriskt värde"
    * unit 1..1 string "Enhet"
  * dispensedDrugBody 0..1 BackboneElement "Expedieringstext (om svarstyp inkluderar TEXT)"
  * dispensedDrugMultimedia 0..1 BackboneElement "Expediering som multimedia (om svarstyp inkluderar MULTIMEDIA)"
* result 1..1 BackboneElement "Resultat av begäran"
  * resultCode 1..1 code "Svarskod"
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Felkod"
  * errorCode from ErrorCodeVS (required)
  * logId 1..1 string "UUID för felanmälan"
  * message 0..1 string "Beskrivande text"
