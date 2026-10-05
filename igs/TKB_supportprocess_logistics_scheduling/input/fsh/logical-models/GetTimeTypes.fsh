// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (Genererad ur scheman i riv.supportprocess.logistics.scheduling, tagg 2.0_RC1 (commit 5131f0ee09b2); scripts/xsd_to_ig.py)
// Kontrakt: GetTimeTypes v2.0
// Genererad: 2026-09-26

Logical: GetTimeTypes
Id: gettimetypes
Title: "GetTimeTypes — Response"
Description: """
  Logisk modell för svaret i GetTimeTypes
  (urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* timeType 0..* BackboneElement "timeType" "timeType"
  * timeTypeCode 1..1 string "timeTypeCode" "timeTypeCode Heter code i schemat."
  * hidden 0..1 boolean "hidden" "hidden"
  * careContactCode 0..1 BackboneElement "careContactCode" "careContactCode"
    * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
    * codeSystem 1..1 string "codeSystem" "codeSystem"
    * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
    * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
    * displayName 0..1 string "displayName" "displayName"
    * originalText 0..1 string "originalText" "originalText"
  * healthcareService 0..* BackboneElement "healthcareService" "healthcareService"
    * healthcareServiceCode 1..1 BackboneElement "healthcareServiceCode" "healthcareServiceCode Heter code i schemat."
      * snomedCtCode 1..1 string "snomedCtCode" "snomedCtCode Heter code i schemat."
      * codeSystem 1..1 string "codeSystem" "Tillåtna värden: 1.2.752.116.2.1.1."
      * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
      * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
      * displayName 0..1 string "displayName" "displayName"
      * originalText 0..1 string "originalText" "originalText"
    * information 0..* BackboneElement "information" "information"
      * header 1..1 string "header" "header"
      * description 0..1 string "description" "description"
      * link 0..1 uri "link" "link"
    * conditionsToConfirm 0..* BackboneElement "conditionsToConfirm" "conditionsToConfirm"
      * header 1..1 string "header" "header"
      * description 0..1 string "description" "description"
      * link 0..1 uri "link" "link"
  * healthcareTeam 0..1 boolean "healthcareTeam" "healthcareTeam"
  * patientGroup 0..1 boolean "patientGroup" "patientGroup"
  * cancelAppointmentAllowed 1..1 boolean "cancelAppointmentAllowed" "cancelAppointmentAllowed"
  * updateAppointmentAllowed 1..1 boolean "updateAppointmentAllowed" "updateAppointmentAllowed"
  * appointmentRule 0..3 BackboneElement "appointmentRule" "appointmentRule"
    * timeTypeRulesType 1..1 code "timeTypeRulesType" "timeTypeRulesType Heter type i schemat."
    * timeTypeRulesType from ProcessVS (required)
    * reasonTextRequired 1..1 code "reasonTextRequired" "reasonTextRequired"
    * reasonTextRequired from ReasonRequiredVS (required)
    * reasonCodeRequired 1..1 code "reasonCodeRequired" "reasonCodeRequired"
    * reasonCodeRequired from ReasonRequiredVS (required)
    * reasonCodes 0..* BackboneElement "reasonCodes" "reasonCodes"
      * cvCode 1..1 string "cvCode" "cvCode Heter code i schemat."
      * codeSystem 1..1 string "codeSystem" "codeSystem"
      * codeSystemName 0..1 string "codeSystemName" "codeSystemName"
      * codeSystemVersion 0..1 string "codeSystemVersion" "codeSystemVersion"
      * displayName 0..1 string "displayName" "displayName"
      * originalText 0..1 string "originalText" "originalText"
    * information 0..* BackboneElement "information" "information"
      * header 1..1 string "header" "header"
      * description 0..1 string "description" "description"
      * link 0..1 uri "link" "link"
    * conditionToConfirm 0..* BackboneElement "conditionToConfirm" "conditionToConfirm"
      * header 1..1 string "header" "header"
      * description 0..1 string "description" "description"
      * link 0..1 uri "link" "link"
* resultCode 1..1 code "resultCode" "resultCode"
* resultCode from ResultCodeVS (required)
* resultText 0..1 string "resultText" "resultText"
