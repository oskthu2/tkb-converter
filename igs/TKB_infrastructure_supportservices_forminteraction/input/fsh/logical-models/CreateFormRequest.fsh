// Elementen genereras ur CreateFormRequestResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "2.0"
* formRequest 1..* Base "FormRequestType" "formRequest"
* formRequest.clinicalProcessInterestId 0..1 string "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID." "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID."
* formRequest.expireDate 1..1 string "expireDate" "expireDate"
* formRequest.formText 0..1 string "formText" "Unik text för Formulär. Används t.ex. \"CreateFormRequest\" för att bifoga en unik text för formuläret. T.ex. \"Hälsoundersökning inför besök X\"."
* formRequest.healthcare_CareGiver 0..1 string "Ansvarig vårdgivare (huvudman). T.ex. Landsting." "Ansvarig vårdgivare (huvudman). T.ex. Landsting."
* formRequest.healthcare_facility_CareUnit 1..1 string "healthcare_facility_CareUnit" "Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. T.ex. Den avdelning som formuläret: se2321000016-1hz3"
* formRequest.healthcare_MedUnit 0..1 string "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik" "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik"
* formRequest.healthcare_systemID 0..1 string "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem" "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem"
* formRequest.keepUntil 1..1 string "keepUntil" "keepUntil"
* formRequest.subjectOfCare 0..1 string "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt." "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* formRequest.templateId 1..1 string "Typ av formulär. Kodverk för standardiserade id för formulärtyper." "Typ av formulär. Kodverk för standardiserade id för formulärtyper."
* formRequest.templateVersion 0..1 integer "templateVersion" "templateVersion"

Logical: CreateFormRequestResponse
Id: createformrequest
Title: "CreateFormRequest"
Description: """
  Logisk modell för svar (response) i tjänstekontraktet CreateFormRequest
  (RIV-TA urn:riv:infrastructure:supportservices:forminteraction:CreateFormRequest:2).
  Bekräftar att formulärbegäran har registrerats.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* formRequest 1..* Base "FormRequestType" "formRequest"
* formRequest.clinicalProcessInterestId 0..1 string "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID." "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID."
* formRequest.expireDate 1..1 string "expireDate" "expireDate"
* formRequest.formText 0..1 string "formText" "Unik text för Formulär. Används t.ex. \"CreateFormRequest\" för att bifoga en unik text för formuläret. T.ex. \"Hälsoundersökning inför besök X\"."
* formRequest.healthcare_CareGiver 0..1 string "Ansvarig vårdgivare (huvudman). T.ex. Landsting." "Ansvarig vårdgivare (huvudman). T.ex. Landsting."
* formRequest.healthcare_facility_CareUnit 1..1 string "healthcare_facility_CareUnit" "Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. T.ex. Den avdelning som formuläret: se2321000016-1hz3"
* formRequest.healthcare_MedUnit 0..1 string "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik" "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik"
* formRequest.healthcare_systemID 0..1 string "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem" "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem"
* formRequest.keepUntil 1..1 string "keepUntil" "keepUntil"
* formRequest.subjectOfCare 0..1 string "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt." "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* formRequest.templateId 1..1 string "Typ av formulär. Kodverk för standardiserade id för formulärtyper." "Typ av formulär. Kodverk för standardiserade id för formulärtyper."
* formRequest.templateVersion 0..1 integer "templateVersion" "templateVersion"
