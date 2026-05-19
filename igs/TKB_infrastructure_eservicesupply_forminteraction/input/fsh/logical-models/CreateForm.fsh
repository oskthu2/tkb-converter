// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: CreateForm v2.1
// Genererad: 2026-05-19

Logical: CreateForm
Id: createform
Title: "CreateForm"
Description: """
  Logisk modell för tjänstekontraktet CreateForm
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:CreateForm:2).
  Representerar responsens informationsstruktur — returnerar ett skapat och initierat formulär.
"""
Characteristics: #can-be-target

* form 1..1 BackboneElement "Formulär (FormType)" "Skapat formulär med grundläggande information och egenskaper."
  * healthcare_CareGiver 0..1 Identifier "Enhets-id vårdgivare" "Ansvarig vårdgivare (huvudman). HSA-id."
  * healthcare_MedUnit 0..1 Identifier "Enhets-id medicinskt ansvarig" "Medicinsk ansvarig klinik/vårdcentral. HSA-id."
  * healthcare_facility_CareUnit 1..1 Identifier "Enhets-id vårdenhet" "Vårdenheten som tillhandahåller formuläret. HSA-id."
  * healthcare_facility_CareUnitName 1..1 string "Enhetsnamn" "Vårdenhetens namn."
  * healthcare_systemID 0..1 Identifier "System-id" "Id för att identifiera mottagande system. HSA-id."
  * clinicalProcessInterestId 0..1 Identifier "Hälsoärende-id" "Globalt/nationellt hälsoärende ID."
  * formStatus 1..1 CodeableConcept "Formulärstatus" "Formulärets status."
  * formStatus from FormStatusVS (required)
  * formText 0..1 string "Formulärtext" "Unik text för formuläret, t.ex. 'Hälsoundersökning inför besök X'."
  * formID 1..1 Identifier "Formulär-id" "Formulärets unika ID (GUID). Sätts av formulärmotorn."
  * subjectOfCare 1..1 Identifier "Patient-id" "Patienten formuläret avser. Personnummer format yyyymmddnnnn."
  * expireDate 0..1 date "Giltighetsdatum" "Formulärets giltighetstid. Datum (ÅÅÅÅMMDD)."
  * createdDateTime 1..1 dateTime "Skapandedatum" "Datum när användaren/patienten skapade formuläret."
  * lastSavedDate 0..1 dateTime "Senaste sparningsdatum" "Datum för senaste temporärsparning."
  * keepUntil 0..1 date "Bevaras till" "Datum för hur länge formuläret skall lagras. Tomt indikerar tillsvidare."
  * formTemplate 1..1 BackboneElement "Formulärmall" "Koppling till formulärmallen."
    * templateId 1..1 string "Mall-id" "Typ av formulär."
    * templateVersion 1..1 integer "Mallens version" "Versionsnummer."

Logical: CreateFormRequest
Id: createform-request
Title: "CreateForm — Request"
Description: "Logisk modell för requestparametrar i CreateForm."
Characteristics: #can-be-target

* healthcare_Facility_CareUnit 1..1 Identifier "Vårdenhetens HSA-id" "Hsa-Id (Vårdenhet/enhets-id). T.ex. se2321000016-1hz3."
* subjectOfCare 0..1 Identifier "Personnummer" "Starkt autentiserad användares personnummer. Tomt fält indikerar anonym användare."
* templateId 1..1 string "Mall-id" "Mallid för den formulärmall som skall användas."
* templateVersion 0..1 integer "Mallversion" "Mallens version. Utelämnas används den senaste versionen."
* clinicalProcessInterestId 0..1 Identifier "Hälsoärende-id" "Indikerar att formuläret ingår i ett hälsoärende."
* actor 0..1 BackboneElement "Aktör" "Aktör som skapar formuläret — invånaren själv, vårdnadshavare eller vårdpersonal."
  * actorType 1..1 string "Aktörstyp" "Typ av aktör."
  * actorId 0..1 Identifier "Aktörs-id" "Identifierare för aktören."
