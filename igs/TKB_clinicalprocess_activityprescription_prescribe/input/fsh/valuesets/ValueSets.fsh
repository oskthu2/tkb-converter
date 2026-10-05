// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Genererad: 2026-03-19

ValueSet: LFConsentVS
Id: lfconsent-vs
Title: "LFConsent — ValueSet"
Description: "Tillåtna värden för samtyckestyp i läkemedelsförteckning."
* ^version = "2.0.0-rc1"
* ^status = #active
* include codes from system LFConsentCS

ValueSet: DispensedDrugsConsentOrderVS
Id: dispenseddrugsconsentorder-vs
Title: "DispensedDrugsConsentOrder — ValueSet"
Description: "Tillåtna värden för samtyckesorder för uthämtade läkemedel."
* ^version = "2.0.0-rc1"
* ^status = #active
* include codes from system DispensedDrugsConsentOrderCS

ValueSet: ResultCodeVS
Id: resultcode-vs
Title: "ResultCode — ValueSet"
Description: "Tillåtna svarskoder i ResultType."
* ^version = "2.0.0-rc1"
* ^status = #active
* include codes from system ResultCodeCS

ValueSet: ErrorCodeVS
Id: errorcode-vs
Title: "ErrorCode — ValueSet"
Description: "Tillåtna felkoder i ResultType."
* ^version = "2.0.0-rc1"
* ^status = #active
* include codes from system ErrorCodeCS

ValueSet: DispensedDrugsTypeOfResponseVS
Id: dispenseddrugstypeofresponse-vs
Title: "DispensedDrugsTypeOfResponse — ValueSet"
Description: "Tillåtna svarstyper i GetDispensedDrugs."
* ^version = "2.0.0-rc1"
* ^status = #active
* include codes from system DispensedDrugsTypeOfResponseCS

ValueSet: DispenseAuthorizationStatusVS
Id: dispenseauthorizationstatus-vs
Title: "DispenseAuthorizationStatus — ValueSet"
Description: "Tillåtna statusvärden för expedieringsunderlag i GetMedicationDispenseAuthorizations."
* ^version = "2.0.0-rc1"
* ^status = #active
* include codes from system DispenseAuthorizationStatusCS

ValueSet: GenderVS
Id: gender-vs
Title: "Gender — ValueSet"
Description: "Tillåtna könsvärden för patientinformation."
* ^version = "2.0.0-rc1"
* ^status = #active
* include codes from system GenderCS
