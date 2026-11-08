// Elementen genereras ur GetHospPersonForPublicHealthCareResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB masterdata:organisationalresources:licensetopractice v2.0
// Kontrakt: GetHospPersonForPublicHealthcare v2.0 — Request
// Genererad: 2026-05-19

Logical: GetHospPersonForPublicHealthcareRequest
Id: gethosppersonforpublichealthcare-request
Title: "GetHospPersonForPublicHealthcare — Request"
Description: """
  Logisk modell för requestparametrar i GetHospPersonForPublicHealthcare.
  Antingen anges personId, eller ett eller flera av fälten efternamn, fornamn, fodelsedatum.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personId 0..1 Base "PersonIdType" "personId"
* personId.extension 1..1 string "extension" "extension"
* personId.extension only PersonIdentitet
* personId.root 0..1 code "root" "root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* efternamn 0..1 string "efternamn" "efternamn"
* fornamn 0..* string "fornamn" "fornamn"
* fodelsedatum 0..1 string "fodelsedatum" "fodelsedatum"
* fodelsedatum only DateType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHospPersonForPublicHealthcareRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys gethosppersonforpublichealthcare-request-search-criteria

Invariant: gethosppersonforpublichealthcare-request-search-criteria
Description: "Antingen anges personId, eller minst ett av efternamn, fornamn och fodelsedatum."
Expression: "personId.exists() or efternamn.exists() or fornamn.exists() or fodelsedatum.exists()"
Severity: #error
