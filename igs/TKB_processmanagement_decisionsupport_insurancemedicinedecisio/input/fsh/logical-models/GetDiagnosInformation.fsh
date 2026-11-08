// Elementen genereras ur GetDiagnosInformationResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB processmanagement:decisionsupport:insurancemedicinedecisionsupport v1.0
// Kontrakt: GetDiagnosInformation v1.0
// Genererad: 2026-05-19

Logical: GetDiagnosInformation
Id: getdiagnosinformation
Title: "GetDiagnosInformation"
Description: """
  Logisk modell för tjänstekontraktet GetDiagnosInformation
  (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1).
  Representerar responsens informationsstruktur — generell information om diagnoser.
  Sådan information kan gälla för en eller flera diagnoser samtidigt.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* diagnosInformation 0..* Base "DiagnosInformationType" "diagnosInformation"
* diagnosInformation.informationsId 1..1 IIType "informationsId" "informationsId"
* diagnosInformation.giltighetstid 1..1 Base "IVLType" "giltighetstid"
* diagnosInformation.giltighetstid.start 1..1 string "start" "start"
* diagnosInformation.giltighetstid.start only DatumType
* diagnosInformation.giltighetstid.slut 0..1 string "slut" "slut"
* diagnosInformation.giltighetstid.slut only DatumType
* diagnosInformation.verson 1..1 integer "verson" "verson"
* diagnosInformation.rubrik 1..1 string "rubrik" "rubrik"
* diagnosInformation.funktionsnedsattningBeskrivning 0..1 string "funktionsnedsattningBeskrivning" "funktionsnedsattningBeskrivning"
* diagnosInformation.aktivitetsbegransningBeskrivning 0..1 string "aktivitetsbegransningBeskrivning" "aktivitetsbegransningBeskrivning"
* diagnosInformation.huvuddiagnos 1..* Base "HuvuddiagnosType" "huvuddiagnos"
* diagnosInformation.huvuddiagnos.kod 1..1 Base "ICD10SEType" "kod"
* diagnosInformation.funktionsnedsattning 0..* Base "FunktionsnedsattningType" "funktionsnedsattning"
* diagnosInformation.funktionsnedsattning.kod 1..1 Base "ICFType" "kod"
* diagnosInformation.aktivitetsbegransning 0..* Base "AktivitetsbegransningType" "aktivitetsbegransning"
* diagnosInformation.aktivitetsbegransning.kod 1..1 Base "ICFType" "kod"
* diagnosInformation.ovrigFmbInformation 0..1 Base "OvrigFmbInformationType" "ovrigFmbInformation"
* diagnosInformation.ovrigFmbInformation.symtomPrognosBehandling 0..1 string "symtomPrognosBehandling" "symtomPrognosBehandling"
* diagnosInformation.ovrigFmbInformation.genrellInformation 0..1 string "genrellInformation" "genrellInformation"
* version 1..1 Base "VersionType" "version"
* version.senasteVersionsuppdatering 1..1 string "senasteVersionsuppdatering" "senasteVersionsuppdatering"
* version.senasteVersionsuppdatering only TidpunktType
* version.senateAndring 1..1 string "senateAndring" "senateAndring"
* version.senateAndring only TidpunktType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetDiagnosInformationFieldDescriptions
