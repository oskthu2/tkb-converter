// Elementen genereras ur CreateFormRequestResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

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

* ^version = "2.1"
* formRequests 1..* Base "FormRequestType" "formRequests"
* formRequests.clinicalProcessInterestId 0..1 string "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID." "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID."
* formRequests.expireDate 1..1 string "expireDate" "expireDate"
* formRequests.formText 0..1 string "formText" "Unik text för Formulär. Används t.ex. \"CreateFormRequest\" för att bifoga en unik text för formuläret. T.ex. \"Hälsoundersökning inför besök X\"."
* formRequests.healthcare_CareGiver 0..1 string "Ansvarig vårdgivare (huvudman). T.ex. Landsting." "Ansvarig vårdgivare (huvudman). T.ex. Landsting."
* formRequests.healthcare_facility_CareUnit 1..1 string "healthcare_facility_CareUnit" "Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. T.ex. Den avdelning som formuläret: se2321000016-1hz3"
* formRequests.healthcare_MedUnit 0..1 string "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik" "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik"
* formRequests.healthcare_systemID 0..1 string "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem" "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem"
* formRequests.keepUntil 1..1 string "keepUntil" "keepUntil"
* formRequests.subjectOfCare 0..1 string "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt." "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* formRequests.templateId 1..1 string "Typ av formulär. Kodverk för standardiserade id för formulärtyper." "Typ av formulär. Kodverk för standardiserade id för formulärtyper."
* formRequests.templateVersion 0..1 integer "templateVersion" "templateVersion"

Logical: CreateFormRequestRequest
Id: createformrequest-request
Title: "CreateFormRequest — Request"
Description: "Logisk modell för requestparametrar i CreateFormRequest."
Characteristics: #can-be-target

* ^version = "2.0"
* formRequests 1..* Base "FormRequestType" "formRequests"
* formRequests.clinicalProcessInterestId 0..1 string "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID." "HSA-id för framställarens enhet/process + unik identifierare. Globalt/nationellt hälsoärende ID."
* formRequests.expireDate 1..1 string "expireDate" "expireDate"
* formRequests.formText 0..1 string "formText" "Unik text för Formulär. Används t.ex. \"CreateFormRequest\" för att bifoga en unik text för formuläret. T.ex. \"Hälsoundersökning inför besök X\"."
* formRequests.healthcare_CareGiver 0..1 string "Ansvarig vårdgivare (huvudman). T.ex. Landsting." "Ansvarig vårdgivare (huvudman). T.ex. Landsting."
* formRequests.healthcare_facility_CareUnit 1..1 string "healthcare_facility_CareUnit" "Vårdenheten som erbjuder/tillhandahåller formuläret. Fysisk mottagning. T.ex. Den avdelning som formuläret: se2321000016-1hz3"
* formRequests.healthcare_MedUnit 0..1 string "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik" "Medicinsk ansvarig klinik/vårdcentral eller motsvarande. T.ex. Medicinklinik"
* formRequests.healthcare_systemID 0..1 string "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem" "Id för att identifiera mottagande system. T.ex. Ett hsa-id uttaget för en instans av ett journalsystem"
* formRequests.keepUntil 1..1 string "keepUntil" "keepUntil"
* formRequests.subjectOfCare 0..1 string "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt." "FormTemplate.anonymousForm styr huruvida formulärmotorn hanterar detta fält som obligatoriskt eller frivilligt."
* formRequests.templateId 1..1 string "Typ av formulär. Kodverk för standardiserade id för formulärtyper." "Typ av formulär. Kodverk för standardiserade id för formulärtyper."
* formRequests.templateVersion 0..1 integer "templateVersion" "templateVersion"
