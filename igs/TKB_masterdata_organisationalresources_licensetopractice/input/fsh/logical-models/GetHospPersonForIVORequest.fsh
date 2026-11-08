// Elementen genereras ur GetHospPersonForIvoResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB masterdata:organisationalresources:licensetopractice v2.0
// Kontrakt: GetHospPersonForIVO v2.0 — Request
// Genererad: 2026-05-19

Logical: GetHospPersonForIVORequest
Id: gethosppersonforivo-request
Title: "GetHospPersonForIVO — Request"
Description: """
  Logisk modell för requestparametrar i GetHospPersonForIVO.
  IVO har utökade sökparametrar jämfört med den publika tjänsten, bland annat möjlighet att
  filtrera på länskod, kommunkod, folkbokföringsort, förskrivarkod, yrke och specialistinriktning.
  Sökfälten folkbokforingsort, yrke och specialistinriktning stöder wildcard-sökning.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* personnummer 0..1 string "personnummer" "personnummer"
* personnummer only PersonIdentitet
* samordningsnummer 0..1 string "samordningsnummer" "samordningsnummer"
* samordningsnummer only PersonIdentitet
* efternamn 0..1 string "efternamn" "efternamn"
* fornamn 0..1 string "fornamn" "fornamn"
* fodelsedatum 0..1 string "fodelsedatum" "fodelsedatum"
* fodelsedatum only DateType
* lansKod 0..1 string "lansKod" "lansKod"
* kommunKod 0..1 string "kommunKod" "kommunKod"
* folkbokforingsort 0..1 string "folkbokforingsort" "folkbokforingsort"
* forskrivarKod 0..1 string "forskrivarKod" "forskrivarKod"
* yrke 0..1 string "yrke" "yrke"
* specialistinriktning 0..1 string "specialistinriktning" "specialistinriktning"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetHospPersonForIVORequestFieldDescriptions
