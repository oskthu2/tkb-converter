// Elementen genereras ur SokVardandeEnhetResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för druglogistics.dosedispensing v1.1.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SokVardandeEnhet v1.0
// Genererad: 2026-09-26

Logical: SokVardandeEnhet
Id: sokvardandeenhet
Title: "SokVardandeEnhet — Response"
Description: """
  Logisk modell för svaret i SokVardandeEnhet
  (urn:riv:druglogistics:dosedispensing:SokVardandeEnhetResponder:1, SokVardandeEnhetResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* resultatkod 1..1 code "resultatkod" "resultatkod Tillåtna värden: 1, 2, 3."
* resultatkod from ResultatkodVS (required)
* meddelandetext 1..1 string "meddelandetext" "meddelandetext"
* meddelandeid 1..1 integer "meddelandeid" "meddelandeid"
* dosaktor 1..1 string "dosaktor" "dosaktor"
* VardandeEnhet 0..* Base "VardandeEnhetResponse" "VardandeEnhet"
* VardandeEnhet.vardandeenhetid 1..1 string "vardandeenhetid" "vardandeenhetid"
* VardandeEnhet.vardandeenhetnamn 1..1 string "vardandeenhetnamn" "vardandeenhetnamn"
* VardandeEnhet.vardandeenhetpostort 1..1 string "vardandeenhetpostort" "vardandeenhetpostort"
* VardandeEnhet.glnkod 1..1 string "glnkod" "glnkod"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SokVardandeEnhetFieldDescriptions
