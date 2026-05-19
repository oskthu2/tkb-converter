// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: CreateForm v2.0
// Genererad: 2026-05-19

Logical: CreateFormRequest
Id: createform-request
Title: "CreateForm — Request"
Description: """
  Logisk modell för requestparametrar i CreateForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateForm:2).
  Skapar och initierar/startar ett formulär.
"""
Characteristics: #can-be-target

* healthcareFacilityCareUnit 1..1 string "Hsa-Id för vårdenhet som ansvarar för formuläret"
* subjectOfCare 0..1 string "Personnummer för invånaren (yyyymmddnnnn)"
    """
    FormTemplate-attributet anonymousForm styr om fältet är obligatoriskt eller frivilligt.
    """
* templateId 1..1 string "Formulärmallets typ-id (KV Malltyp)"
* templateVersion 0..1 string "Önskad version av formulärmallt (valfritt)"
* clinicalProcessInterestId 0..1 string "Hälsoärende-id (HSA-id + unik identifierare)"
* formId 0..1 string "Formulär-id genererat av konsumerande system (GUID). Om ej angivet genererar producenten."
* formText 0..1 string "Unik text för formuläret, t.ex. Hälsoundersökning inför besök X"


Logical: CreateForm
Id: createform
Title: "CreateForm"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet CreateForm
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateForm:2).
  Returnerar det skapade formuläret inkl. första sidan med frågor.
"""
Characteristics: #can-be-target

* form 1..1 BackboneElement "Formulärobjekt (FormType)"
    """
    Det skapade formuläret. Returnerar alltid ett formulär. Om fel uppstår returneras SOAP-fault.
    """
  * formId 1..1 string "Formulärets unika ID (GUID). Genererat av formulärmotor eller konsument."
  * subjectOfCare 1..1 string "Patientens personnummer (yyyymmddnnnn)"
  * healthcareFacilityCareUnit 1..1 string "HSA-id för ansvarig vårdenhet"
  * healthcareFacilityCareUnitName 1..1 string "Vårdenhetens namn"
  * formStatus 1..1 CodeableConcept "Formulärets status"
  * formStatus from FormStatusVS (required)
  * createdDateTime 1..1 string "Datum när formuläret skapades (ISO 8601 yyyyMMddThhmmss)"
  * expireDate 0..1 string "Formulärets giltighetstid (ISO 8601 yyyyMMdd)"
  * formText 0..1 string "Unik text för formuläret"
  * formTemplate 1..1 BackboneElement "Formulärmall kopplad till formuläret"
    * templateId 1..1 string "Mallens typ-id"
    * templateVersion 1..1 string "Mallens version"
    * formName 1..1 string "Mallens namn"
  * currentPage 0..1 BackboneElement "Aktuell sida med frågor"
    * pageNumber 1..1 integer "Sidnummer"
    * subject 0..1 string "Sidans rubrik"
    * lastPage 1..1 boolean "Indikerar om detta är sista sidan"
