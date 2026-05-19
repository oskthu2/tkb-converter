// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: ListSickLeavesForCare v1.0
// Genererad: 2026-05-19

Logical: ListSickLeavesForCare
Id: listsickleavesforcare
Title: "ListSickLeavesForCare"
Description: """
  Logisk modell för tjänstekontraktet ListSickLeavesForCare
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:ListSickLeavesForCare:1).
  Representerar responsens lista med pågående sjukfall på en enhet.
"""
Characteristics: #can-be-target

* sjukfallLista 1..1 BackboneElement "Lista med sjukfall"
* sjukfallLista.sjukfall 0..* BackboneElement "Ett pågående sjukfall"
* sjukfallLista.sjukfall.personId 1..1 Identifier "Patientens person- eller samordningsnummer"
* sjukfallLista.sjukfall.patientFullstandigtNamn 0..1 string "Patientens namn"
* sjukfallLista.sjukfall.enhetsId 1..1 Identifier "HSA-id för enhet"
* sjukfallLista.sjukfall.personalId 1..1 Identifier "HSA-id för HoS-person som signerat nuvarande intyg"
* sjukfallLista.sjukfall.startdatum 1..1 date "Datum då sjukfallet startade"
* sjukfallLista.sjukfall.slutdatum 1..1 date "Datum då sjukfallet avslutas om det ej förlängs"
* sjukfallLista.sjukfall.diagnoskod 1..1 BackboneElement "Huvuddiagnoskod i giltigt intyg"
* sjukfallLista.sjukfall.diagnoskod.code 1..1 string "Diagnoskod"
* sjukfallLista.sjukfall.diagnoskod.codeSystem 0..1 string "Identifierare för kodsystem (om känt)"
* sjukfallLista.sjukfall.diagnoskod.codeSystemName 0..1 string "Namn på kodsystem (används ej)"
* sjukfallLista.sjukfall.diagnoskod.codeSystemVersion 0..1 string "Version på kodsystem (används ej)"
* sjukfallLista.sjukfall.diagnoskod.displayName 0..1 string "Klartext för kod (används ej)"
* sjukfallLista.sjukfall.diagnoskod.originalText 0..1 string "Beskrivande text (används ej)"
* sjukfallLista.sjukfall.antalIntyg 1..1 integer "Antal intyg som ingår i sjukfallet"
* sjukfallLista.sjukfall.sjukskrivningslangd 1..1 integer "Sjukfallets totala längd i dagar"
* sjukfallLista.sjukfall.sjukskrivningsgrad 1..1 BackboneElement "Sjukskrivningsgradsinfo"
* sjukfallLista.sjukfall.sjukskrivningsgrad.aktivGrad 1..1 integer "Aktiv sjukskrivningsgrad (%) vid hämtningstidpunkt"
* sjukfallLista.sjukfall.sjukskrivningsgrad.grader 1..1 BackboneElement "Samtliga sjukskrivningsgrader i giltigt intyg"
* sjukfallLista.sjukfall.sjukskrivningsgrad.grader.grad 1..4 integer "Sjukskrivningsgrad (%)"

Logical: ListSickLeavesForCareRequest
Id: listsickleavesforcare-request
Title: "ListSickLeavesForCare — Request"
Description: "Logisk modell för requestparametrar i ListSickLeavesForCare."
Characteristics: #can-be-target

* enhetsId 1..1 Identifier "HSA-id för enhet"
* maxDagarMellanIntyg 1..1 integer "Max antal dagars uppehåll mellan intyg i ett sjukfall"
* minstaSjukskrivningslangd 0..1 integer "Minimal sjukskrivningslängd i dagar"
* maxSjukskrivningslangd 0..1 integer "Maximal sjukskrivningslängd i dagar"
* personalId 0..* Identifier "HSA-id för HoS-person som signerat nuvarande intyg (filter)"
