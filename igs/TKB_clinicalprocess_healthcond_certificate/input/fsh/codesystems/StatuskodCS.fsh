// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Genererad: 2026-05-19

CodeSystem: StatuskodCS
Id: statuskod-cs
Title: "Statuskod"
Description: "Kodsystem för intygsstatus i SetCertificateStatus och GetCertificate enligt clinicalprocess:healthcond:certificate."
* ^url = "https://fhir.inera.se/CodeSystem/statuskod-cs"
* ^status = #active
* ^content = #complete
* #SENT "SENT" "Intyget är skickat till angiven intygsmottagare"
* #RECEIV "RECEIV" "Intyget har mottagits av intygsmottagaren"
* #CANCEL "CANCEL" "Intyget är makulerat"
* #DELETED "DELETED" "Intyget är raderat av invånaren"
* #RESTOR "RESTOR" "Intyget är återställt från papperskorgen"
