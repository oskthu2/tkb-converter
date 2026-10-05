// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Genererad: 2026-05-19

ValueSet: AmneskodVS
Id: amneskod-vs
Title: "Ämneskod — ValueSet"
Description: "Tillåtna ämnen för ärendekommunikation i clinicalprocess:healthcond:certificate."
* ^version = "4.1.0-rc1"
* ^status = #active
* include codes from system AmneskodCS

ValueSet: HandelskodVS
Id: handelskod-vs
Title: "Händelsekod — ValueSet"
Description: "Tillåtna händelsetyper i CertificateStatusUpdateForCare."
* ^version = "4.1.0-rc1"
* ^status = #active
* include codes from system HandelskodCS

ValueSet: StatuskodVS
Id: statuskod-vs
Title: "Statuskod — ValueSet"
Description: "Tillåtna statuskoder för intyg i SetCertificateStatus."
* ^version = "4.1.0-rc1"
* ^status = #active
* include codes from system StatuskodCS

ValueSet: PartVS
Id: part-vs
Title: "Part — ValueSet"
Description: "Tillåtna parter i intygshanteringsprocessen."
* ^version = "4.1.0-rc1"
* ^status = #active
* include codes from system PartCS

ValueSet: ResultkodVS
Id: resultkod-vs
Title: "Resultatkod — ValueSet"
Description: "Tillåtna resultatkoder för tjänsteanrop."
* ^version = "4.1.0-rc1"
* ^status = #active
* include codes from system ResultkodCS

ValueSet: ErrorIdVS
Id: errorid-vs
Title: "Fel-ID — ValueSet"
Description: "Tillåtna felkoder i ResultType.errorId."
* ^version = "4.1.0-rc1"
* ^status = #active
* include codes from system ErrorIdCS
