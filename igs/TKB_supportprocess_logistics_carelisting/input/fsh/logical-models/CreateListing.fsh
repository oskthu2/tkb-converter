// Genererad från XSD för supportprocess.logistics.carelisting v2.1 (Genererad ur scheman i riv.supportprocess.logistics.carelisting, tagg 2.1; scripts/xsd_to_ig.py; scripts/xsd_to_ig.py)
// Kontrakt: CreateListing v2.0
// Genererad: 2026-09-26

Logical: CreateListing
Id: createlisting
Title: "CreateListing — Response"
Description: """
  Logisk modell för svaret i CreateListing
  (urn:riv:supportprocess:logistics:carelisting:CreateListingResponder:2, CreateListingResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
