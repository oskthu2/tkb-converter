// Elementen genereras ur ProcessExemptionStatusesResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för financial.patientfees.exemption v1.0 (Genererad ur scheman i riv.financial.patientfees.exemption, commit fbd046e11e50; scripts/xsd_to_ig.py)
// Kontrakt: ProcessExemptionStatuses v1.0
// Genererad: 2026-09-26

Logical: ProcessExemptionStatusesRequest
Id: processexemptionstatuses-request
Title: "ProcessExemptionStatuses — Request"
Description: """
  Logisk modell för begäran i ProcessExemptionStatuses
  (urn:riv:financial:patientfees:exemption:ProcessExemptionStatusesResponder:1, ProcessExemptionStatusesType), inklusive SOAP-huvuden enligt WSDL.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* requestId 1..1 IIType "requestId" "requestId"
* feeExemption 0..* Base "FeeExemptionType" "feeExemption"
* feeExemption.patientId 1..1 IIType "patientId" "patientId"
* feeExemption.transactions 0..* Base "TransactionType" "transactions"
* feeExemption.transactions.fee 0..1 Base "AmountType" "fee"
* feeExemption.transactions.fee.amount 1..1 decimal "amount" "amount"
* feeExemption.transactions.fee.currency 1..1 CVType "currency" "currency"
* feeExemption.transactions.dateOfVisit 0..1 string "dateOfVisit" "dateOfVisit"
* feeExemption.transactions.dateOfVisit only DateType
* feeExemption.transactions.timeOfRegistration 0..1 string "timeOfRegistration" "timeOfRegistration"
* feeExemption.transactions.timeOfRegistration only TimeStampType
* feeExemption.transactions.typeOfFee 1..1 code "typeOfFee" "typeOfFee Tillåtna värden: CARE_VISIT, TECHNICAL_AID, TRANSPORTATION."
* feeExemption.transactions.typeOfFee from TypeOfExemptionVS (required)
* feeExemption.transactions.careGiver 0..1 IIType "careGiver" "careGiver"
* feeExemption.transactions.careUnit 0..1 IIType "careUnit" "careUnit"
* feeExemption.exemptions 0..* Base "ExemptionType" "exemptions"
* feeExemption.exemptions.id 1..1 string "id" "id"
* feeExemption.exemptions.highCostProtectionPeriod 1..1 DatePeriodType "highCostProtectionPeriod" "highCostProtectionPeriod"
* feeExemption.exemptions.exemptionPeriod 1..1 DatePeriodType "exemptionPeriod" "exemptionPeriod"
* feeExemption.exemptions.typeOfExemption 1..1 code "typeOfExemption" "typeOfExemption Tillåtna värden: CARE_VISIT, TECHNICAL_AID, TRANSPORTATION."
* feeExemption.exemptions.typeOfExemption from TypeOfExemptionVS (required)
* feeExemption.exemptions.region 1..1 IIType "region" "region"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessExemptionStatusesRequestFieldDescriptions
