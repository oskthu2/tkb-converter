// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: GetForms v2.0
// Genererad: 2026-05-19

Logical: GetForms
Id: getforms
Title: "GetForms"
Description: """
  Logisk modell för tjänstekontraktet GetForms
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetForms:2).
  Representerar responsens informationsstruktur — returnerar lista med pågående/avslutade formulär.
"""
Characteristics: #can-be-target

* form 0..* BackboneElement "Formulär" "Lista med formulär som matchar sökkriterierna."
  * healthcare_facility_CareUnit 0..1 Identifier "Enhets-id vårdenhet" "Vårdenheten som tillhandahåller formuläret. HSA-id."
  * clinicalProcessInterestId 0..1 Identifier "Hälsoärende-id" "Globalt/nationellt hälsoärende ID."
  * formStatus 1..1 CodeableConcept "Formulärstatus" "Formulärets status: ONGOING, PENDING_COMPLETION eller COMPLETED."
  * formStatus from FormStatusVS (required)
  * formID 1..1 Identifier "Formulär-id" "Formulärets unika ID (GUID)."
  * subjectOfCare 1..1 Identifier "Patient-id" "Patienten formuläret avser. Personnummer format yyyymmddnnnn."
  * formTemplate 1..1 BackboneElement "Formulärmall" "Referens till formulärmallen."
    * templateId 1..1 string "Mall-id" "Typ av formulär."
    * templateVersion 1..1 integer "Mallens version" "Versionsnummer."
  * createdDateTime 1..1 dateTime "Skapandedatum" "Datum när formuläret skapades."
  * lastSavedDate 0..1 dateTime "Senaste sparningsdatum" "Datum för senaste temporärsparning."

Logical: GetFormsRequest
Id: getforms-request
Title: "GetForms — Request"
Description: "Logisk modell för requestparametrar i GetForms."
Characteristics: #can-be-target

* healthcare_Facility_CareUnit 0..1 Identifier "Vårdenhetens HSA-id" "Hsa-Id. Konsument ska säkerställa att konsument har avtal (PuB-avtal)."
* subjectOfCare 0..1 Identifier "Personnummer" "Starkt autentiserad användares personnummer."
* templateIds 0..* string "Mall-id:n" "Filtrera på formulärtyp."
* clinicalProcessInterestIds 0..* Identifier "Hälsoärende-id:n" "Filtrera på hälsoärende."
