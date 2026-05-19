// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: GetForm v2.1
// Genererad: 2026-05-19

Logical: GetForm
Id: getform
Title: "GetForm"
Description: """
  Logisk modell för tjänstekontraktet GetForm
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForm:2).
  Representerar responsens informationsstruktur — returnerar ett specifikt formulär med aktuell sida.
"""
Characteristics: #can-be-target

* form 0..1 BackboneElement "Formulär (FormType)" "Det begärda formuläret inklusive aktuell sida."
  * healthcare_CareGiver 0..1 Identifier "Enhets-id vårdgivare" "Ansvarig vårdgivare. HSA-id."
  * healthcare_MedUnit 0..1 Identifier "Enhets-id medicinskt ansvarig" "Medicinsk ansvarig klinik. HSA-id."
  * healthcare_facility_CareUnit 1..1 Identifier "Enhets-id vårdenhet" "Vårdenheten som tillhandahåller formuläret. HSA-id."
  * healthcare_facility_CareUnitName 1..1 string "Enhetsnamn" "Vårdenhetens namn."
  * clinicalProcessInterestId 0..1 Identifier "Hälsoärende-id" "Globalt/nationellt hälsoärende ID."
  * formStatus 1..1 CodeableConcept "Formulärstatus" "Formulärets status: ONGOING, PENDING_COMPLETION eller COMPLETED."
  * formStatus from FormStatusVS (required)
  * formID 1..1 Identifier "Formulär-id" "Formulärets unika ID (GUID)."
  * subjectOfCare 1..1 Identifier "Patient-id" "Patienten formuläret avser. Personnummer format yyyymmddnnnn."
  * expireDate 0..1 date "Giltighetsdatum" "Formulärets giltighetstid."
  * createdDateTime 1..1 dateTime "Skapandedatum" "Datum när formuläret skapades."
  * lastSavedDate 0..1 dateTime "Senaste sparningsdatum" "Datum för senaste temporärsparning."
  * keepUntil 0..1 date "Bevaras till" "Datum för hur länge formuläret lagras."
  * formTemplate 1..1 BackboneElement "Formulärmall" "Referens till formulärmallen."
    * templateId 1..1 string "Mall-id" "Typ av formulär."
    * templateVersion 1..1 integer "Mallens version" "Versionsnummer."
  * currentPage 0..1 BackboneElement "Aktuell sida (PageType)" "Den aktuella sidan i formuläret att presentera för invånaren."
    * pageNumber 1..1 integer "Sidnummer" "Sidans nummer i formuläret."
    * lastPage 1..1 boolean "Sista sidan" "Indikerar om detta är den sista sidan i formuläret."

Logical: GetFormRequest
Id: getform-request
Title: "GetForm — Request"
Description: "Logisk modell för requestparametrar i GetForm."
Characteristics: #can-be-target

* formID 1..1 Identifier "Formulär-id" "Ett unikt id (GUID) för ett formulär."
* subjectOfCare 0..1 Identifier "Personnummer" "Starkt autentiserad användares personnummer."
