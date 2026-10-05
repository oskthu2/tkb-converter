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
* logicalAddress 1..1 string "logicalAddress" "SOAP-huvud LogicalAddress. The organisation number of the receiving insurance institution"
* requestId 1..1 BackboneElement "requestId" "requestId"
  * root 1..1 string "root" "root"
  * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
* feeExemption 0..* BackboneElement "feeExemption" "feeExemption"
  * patientId 1..1 BackboneElement "patientId" "patientId"
    * root 1..1 string "root" "root"
    * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * transactions 0..* BackboneElement "transactions" "transactions"
    * fee 0..1 BackboneElement "fee" "fee"
      * amount 1..1 decimal "amount" "amount"
      * currency 1..1 BackboneElement "currency" "currency"
        * cvCode 0..1 string "cvCode" "cvCode Heter code i schemat."
        * codeSystem 0..1 string "codeSystem" "codeSystem"
        * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
        * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
        * displayName 0..1 string "displayName" "displayName"
        * originalText 0..1 string "originalText" "originalText"
    * dateOfVisit 0..1 string "dateOfVisit" "dateOfVisit"
    * timeOfRegistration 0..1 string "timeOfRegistration" "timeOfRegistration"
    * typeOfFee 1..1 code "typeOfFee" "typeOfFee"
    * typeOfFee from TypeOfExemptionVS (required)
    * careGiver 0..1 BackboneElement "careGiver" "careGiver"
      * root 1..1 string "root" "root"
      * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
    * careUnit 0..1 BackboneElement "careUnit" "careUnit"
      * root 1..1 string "root" "root"
      * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
  * exemptions 0..* BackboneElement "exemptions" "exemptions"
    * exemptionId 1..1 string "exemptionId" "exemptionId Heter id i schemat."
    * highCostProtectionPeriod 1..1 BackboneElement "highCostProtectionPeriod" "highCostProtectionPeriod"
      * start 0..1 string "start" "start"
      * end 0..1 string "end" "end"
    * exemptionPeriod 1..1 BackboneElement "exemptionPeriod" "exemptionPeriod"
      * start 0..1 string "start" "start"
      * end 0..1 string "end" "end"
    * typeOfExemption 1..1 code "typeOfExemption" "typeOfExemption"
    * typeOfExemption from TypeOfExemptionVS (required)
    * region 1..1 BackboneElement "region" "region"
      * root 1..1 string "root" "root"
      * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
