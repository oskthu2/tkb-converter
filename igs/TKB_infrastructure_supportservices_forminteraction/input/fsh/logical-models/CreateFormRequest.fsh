// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kontrakt: CreateFormRequest v2.0
// Genererad: 2026-05-19

Logical: CreateFormRequestRequest
Id: createformrequest-request
Title: "CreateFormRequest — Request"
Description: """
  Logisk modell för requestparametrar i CreateFormRequest
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2).
  Ett vårdsystem skapar en begäran om att patient skall fylla i ett formulär.
  Formulärmotor skapar ett formulär och skickar indexpost till engagemangsindex
  (categorization = FormCreated).
"""
Characteristics: #can-be-target

* healthcareFacilityCareUnit 1..1 string "HSA-id för vårdenhet (ansvarig enhet)"
* healthcareMedUnit 0..1 string "HSA-id för medicinsk ansvarig klinik/vårdcentral"
* healthcareCareGiver 0..1 string "HSA-id för ansvarig vårdgivare (landsting/region)"
* healthcareSystemId 0..1 string "HSA-id för mottagande system"
* subjectOfCare 1..1 string "Patientens personnummer (yyyymmddnnnn)"
    """
    Obligatorisk i CreateFormRequest — formulärbegäran är alltid knuten till en specifik patient.
    """
* templateId 1..1 string "Typ av formulärmall (KV Malltyp)"
* templateVersion 0..1 string "Önskad version av formulärmallt"
* clinicalProcessInterestId 0..1 string "Hälsoärende-id (HSA-id + unik identifierare)"
* formId 1..1 string "Formulär-id genererat av vårdsystemet (GUID). Notera: vårdsystemet genererar detta."
    """
    Att notera: Vårdsystemet (konsumenten) genererar ett unikt id för formuläret (FormID).
    """
* expireDate 0..1 string "Formulärets giltighetstid (ISO 8601 yyyyMMdd)"
* formText 0..1 string "Unik text för formuläret, t.ex. Hälsoundersökning inför besök X"


Logical: CreateFormRequestResponse
Id: createformrequest
Title: "CreateFormRequest"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet CreateFormRequest
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2).
  Bekräftar att formulärbegäran har registrerats.
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Svarskod (OK = formulärbegäran registrerad)"
* comment 0..1 string "Kommentar"
* formId 0..1 string "Formulär-id (bekräftelse på det ID som skickades i begäran)"
