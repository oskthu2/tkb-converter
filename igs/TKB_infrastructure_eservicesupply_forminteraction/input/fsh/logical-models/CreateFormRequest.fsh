// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: CreateFormRequest v2.0
// Genererad: 2026-05-19

Logical: CreateFormRequest
Id: createformrequest
Title: "CreateFormRequest"
Description: """
  Logisk modell för tjänstekontraktet CreateFormRequest
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateFormRequest:2).
  Representerar responsens informationsstruktur — returnerar skapade formulärbegärans unika id:n.
"""
Characteristics: #can-be-target

* formRequestResponses 0..* BackboneElement "Formulärbegäranssvar (FormRequestResponseType)" "Lista med svar per formulärbegäran."
  * clinicalProcessInterestId 0..1 Identifier "Hälsoärende-id" "Hälsoärende id."
  * formId 1..1 Identifier "Formulär-id" "Det skapade formulärets unika id, sätts av producenten."
  * healthcare_Facility_CareUnit 1..1 Identifier "Vårdenhetens HSA-id" "Hsa-id vårdenhet (informationsägare)."
  * subjectOfCare 0..1 Identifier "Personnummer" "Personnummer patient/invånare."
* comment 0..1 string "Kommentar" "Attribut för felsignalering. Skall kunna visas för slutanvändaren."
* resultCode 1..1 CodeableConcept "Resultatkod" "Möjliga värden: OK, INFO, ERROR."
* resultCode from ResultCodeVS (required)

Logical: CreateFormRequestRequest
Id: createformrequest-request
Title: "CreateFormRequest — Request"
Description: "Logisk modell för requestparametrar i CreateFormRequest."
Characteristics: #can-be-target

* formRequests 1..* BackboneElement "Formulärbegäran (FormRequestType)" "Lista med formulärbegäran att skapa."
  * healthcare_CareGiver 0..1 Identifier "Vårdenhetens HSA-id (vårdgivare)" "Hsa-id vårdgivare (informationsägare)."
  * healthcare_MedUnit 0..1 Identifier "Medicinsk ansvarig enhet" "Hsa-id medicinskt ansvarig (informationsägare)."
  * healthcare_Facility_CareUnit 1..1 Identifier "Vårdenhetens HSA-id" "Hsa-id vårdenhet (informationsägare)."
  * healthcare_systemID 0..1 Identifier "System-id" "Hsa-id vårdsystem."
  * subjectOfCare 0..1 Identifier "Personnummer" "Personnummer patient/invånare. Utelämnas hanteras formulär som anonymt."
  * templateId 1..1 string "Formulärmall-id" "Formulärmall id."
  * templateVersion 0..1 integer "Mallversion" "Formulärmall version."
  * clinicalProcessInterestId 0..1 Identifier "Hälsoärende-id" "Hälsoärende id."
  * formText 0..1 string "Formulärtext" "Formulärtext för formulärbegäran."
  * expireDate 1..1 string "Utgångsdatum" "Datum för att reglera hur länge patient/invånaren kan besvara formulär."
  * keepUntil 1..1 string "Bevaras till" "Datum för hur länge formulär lagras innan gallring/arkivering. Tomt indikerar tillsvidare."
