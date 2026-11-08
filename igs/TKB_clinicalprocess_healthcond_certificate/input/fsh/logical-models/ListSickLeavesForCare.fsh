// Elementen genereras ur ListSickLeavesForCareResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "1.0"
* sjukfallLista 1..1 Base "SjukfallLista" "sjukfallLista"
* sjukfallLista.sjukfall 0..* Base "Sjukfall" "sjukfall"
* sjukfallLista.sjukfall.person-id 1..1 Base "PersonId" "person-id"
* sjukfallLista.sjukfall.patientFullstandigtNamn 0..1 string "patientFullstandigtNamn" "patientFullstandigtNamn"
* sjukfallLista.sjukfall.enhets-id 1..1 Base "HsaId" "enhets-id"
* sjukfallLista.sjukfall.personal-id 1..1 Base "HsaId" "personal-id"
* sjukfallLista.sjukfall.startdatum 1..1 date "startdatum" "startdatum"
* sjukfallLista.sjukfall.startdatum only DateType
* sjukfallLista.sjukfall.slutdatum 1..1 date "slutdatum" "slutdatum"
* sjukfallLista.sjukfall.slutdatum only DateType
* sjukfallLista.sjukfall.diagnoskod 1..1 Base "Diagnoskod" "diagnoskod"
* sjukfallLista.sjukfall.diagnoskod.code 1..1 string "code" "code"
* sjukfallLista.sjukfall.diagnoskod.codeSystem 0..1 string "codeSystem" "codeSystem"
* sjukfallLista.sjukfall.diagnoskod.codeSystemName 0..1 string "codeSystemName" "codeSystemName"
* sjukfallLista.sjukfall.diagnoskod.codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
* sjukfallLista.sjukfall.diagnoskod.displayName 0..1 string "displayName" "displayName"
* sjukfallLista.sjukfall.diagnoskod.originalText 0..1 string "originalText" "originalText"
* sjukfallLista.sjukfall.antalIntyg 1..1 integer "antalIntyg" "antalIntyg"
* sjukfallLista.sjukfall.sjukskrivningslangd 1..1 integer "sjukskrivningslangd" "sjukskrivningslangd"
* sjukfallLista.sjukfall.sjukskrivningsgrad 1..1 Base "Sjukskrivningsgrad" "sjukskrivningsgrad"
* sjukfallLista.sjukfall.sjukskrivningsgrad.aktivGrad 1..1 integer "aktivGrad" "aktivGrad"
* sjukfallLista.sjukfall.sjukskrivningsgrad.grader 1..1 Base "Sjukskrivningsgrader" "grader"
* sjukfallLista.sjukfall.sjukskrivningsgrad.grader.grad 1..4 integer "grad" "grad"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListSickLeavesForCareFieldDescriptions

Logical: ListSickLeavesForCareRequest
Id: listsickleavesforcare-request
Title: "ListSickLeavesForCare — Request"
Description: "Logisk modell för requestparametrar i ListSickLeavesForCare."
Characteristics: #can-be-target

* ^version = "1.0"
* enhets-id 1..1 Base "HsaId" "enhets-id"
* maxDagarMellanIntyg 1..1 integer "maxDagarMellanIntyg" "maxDagarMellanIntyg"
* minstaSjukskrivningslangd 0..1 integer "minstaSjukskrivningslangd" "minstaSjukskrivningslangd"
* maxSjukskrivningslangd 0..1 integer "maxSjukskrivningslangd" "maxSjukskrivningslangd"
* personal-id 0..* Base "HsaId" "personal-id"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ListSickLeavesForCareRequestFieldDescriptions
