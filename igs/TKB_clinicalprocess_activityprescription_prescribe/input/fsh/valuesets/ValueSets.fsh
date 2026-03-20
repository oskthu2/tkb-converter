// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Genererad: 2026-03-19

ValueSet: LFConsentVS
Id: lfconsent-vs
Title: "LFConsent — ValueSet"
Description: "Tillåtna värden för samtyckestyp i läkemedelsförteckning."
* ^status = #active
* include codes from system LFConsentCS

ValueSet: DispensedDrugsConsentOrderVS
Id: dispenseddrugsconsentorder-vs
Title: "DispensedDrugsConsentOrder — ValueSet"
Description: "Tillåtna värden för samtyckesorder för uthämtade läkemedel."
* ^status = #active
* include codes from system DispensedDrugsConsentOrderCS

ValueSet: ResultCodeVS
Id: resultcode-vs
Title: "ResultCode — ValueSet"
Description: "Tillåtna svarskoder i ResultType."
* ^status = #active
* include codes from system ResultCodeCS

ValueSet: ErrorCodeVS
Id: errorcode-vs
Title: "ErrorCode — ValueSet"
Description: "Tillåtna felkoder i ResultType."
* ^status = #active
* include codes from system ErrorCodeCS

ValueSet: DispensedDrugsTypeOfResponseVS
Id: dispenseddrugstypeofresponse-vs
Title: "DispensedDrugsTypeOfResponse — ValueSet"
Description: "Tillåtna svarstyper i GetDispensedDrugs."
* ^status = #active
* include codes from system DispensedDrugsTypeOfResponseCS

ValueSet: DispenseAuthorizationStatusVS
Id: dispenseauthorizationstatus-vs
Title: "DispenseAuthorizationStatus — ValueSet"
Description: "Tillåtna statusvärden för expedieringsunderlag i GetMedicationDispenseAuthorizations."
* ^status = #active
* include codes from system DispenseAuthorizationStatusCS

ValueSet: GenderVS
Id: gender-vs
Title: "Gender — ValueSet"
Description: "Tillåtna könsvärden för patientinformation."
* ^status = #active
* include codes from system GenderCS
