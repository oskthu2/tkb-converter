// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: GetForms v2.0
// Genererad: 2026-05-19

Logical: GetFormsRequest
Id: getforms-request
Title: "GetForms — Request"
Description: """
  Logisk modell för requestparametrar i GetForms
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2).
  Hämtar alla pågående eller avslutade formulär för en invånare.
"""
Characteristics: #can-be-target

* healthcareFacilityCareUnit 1..1 string "HSA-id för vårdenhet"
* subjectOfCare 0..1 string "Invånarens personnummer (yyyymmddnnnn)"
* formStatus 0..* CodeableConcept "Filterering på formulärstatus"
* formStatus from FormStatusVS (required)
* clinicalProcessInterestId 0..1 string "Hälsoärende-id"


Logical: GetForms
Id: getforms
Title: "GetForms"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet GetForms
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:GetForms:2).
  Returnerar lista med formulär (summering, ej komplett formulär med frågor).
"""
Characteristics: #can-be-target

* form 0..* BackboneElement "Lista med formulär (FormType — summering)"
    """
    Lista med formulär för invånaren. Tom lista = inga formulär hittades för angivna parametrar.
    """
  * formId 1..1 string "Formulärets unika ID (GUID)"
  * subjectOfCare 1..1 string "Patientens personnummer"
  * healthcareFacilityCareUnit 1..1 string "HSA-id för vårdenhet"
  * healthcareFacilityCareUnitName 1..1 string "Vårdenhetens namn"
  * formStatus 1..1 CodeableConcept "Formulärets status"
  * formStatus from FormStatusVS (required)
  * createdDateTime 1..1 string "Datum när formuläret skapades"
  * lastSavedDate 0..1 string "Datum för senaste temporärsparning"
  * expireDate 0..1 string "Formulärets giltighetstid"
  * formText 0..1 string "Unik text för formuläret"
  * formTemplate 1..1 BackboneElement "Formulärmall kopplad till formuläret"
    * templateId 1..1 string "Mallens typ-id"
    * templateVersion 1..1 string "Mallens version"
    * formName 1..1 string "Mallens namn"
