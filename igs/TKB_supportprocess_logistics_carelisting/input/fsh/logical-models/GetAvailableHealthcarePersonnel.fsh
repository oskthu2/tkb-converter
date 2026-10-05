// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: GetAvailableHealthcarePersonnel v2.0
// Genererad: 2026-09-26

Logical: GetAvailableHealthcarePersonnel
Id: getavailablehealthcarepersonnel
Title: "GetAvailableHealthcarePersonnel — Response"
Description: """
  Logisk modell för svaret i GetAvailableHealthcarePersonnel
  (urn:riv:supportprocess:logistics:carelisting:GetAvailableHealthcarePersonnelResponder:2, GetAvailableHealthcarePersonnelResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* healthcarePersonnel 0..* BackboneElement "healthcarePersonnel" "healthcarePersonnel"
  * healthcarePersonnelId 1..1 string "healthcarePersonnelId" "healthcarePersonnelId Heter id i schemat."
  * healthcarePersonnelName 1..1 string "healthcarePersonnelName" "healthcarePersonnelName Heter name i schemat."
  * title 0..1 string "title" "title"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
