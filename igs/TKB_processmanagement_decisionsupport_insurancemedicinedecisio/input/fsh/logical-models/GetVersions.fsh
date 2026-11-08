// Elementen genereras ur GetVersionsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetVersions v1.0
// Genererad: 2026-05-19

Logical: GetVersions
Id: getversions
Title: "GetVersions"
Description: """
  Logisk modell för tjänstekontraktet GetVersions
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetVersions:1).
  Returnerar tidpunkten när FMB och diagnosinformation senast versionsuppdaterades,
  respektive senast ändrades. Begäran har inga inparametrar.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* versioner 0..1 Base "VersionerType" "versioner"
* versioner.fmbSenasteVersionsuppdatering 1..1 string "fmbSenasteVersionsuppdatering" "fmbSenasteVersionsuppdatering"
* versioner.fmbSenasteVersionsuppdatering only TidpunktType
* versioner.fmbSenateAndring 1..1 string "fmbSenateAndring" "fmbSenateAndring"
* versioner.fmbSenateAndring only TidpunktType
* versioner.diagnosInformationSenasteVersionsuppdatering 1..1 string "diagnosInformationSenasteVersionsuppdatering" "diagnosInformationSenasteVersionsuppdatering"
* versioner.diagnosInformationSenasteVersionsuppdatering only TidpunktType
* versioner.diagnosInformationSenateAndring 1..1 string "diagnosInformationSenateAndring" "diagnosInformationSenateAndring"
* versioner.diagnosInformationSenateAndring only TidpunktType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetVersionsFieldDescriptions
