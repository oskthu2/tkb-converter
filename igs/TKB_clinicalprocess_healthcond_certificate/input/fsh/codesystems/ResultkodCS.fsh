// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Genererad: 2026-05-19

CodeSystem: ResultkodCS
Id: resultkod-cs
Title: "Resultatkod"
Description: "Kodsystem för resultat av tjänsteanrop (ResultType) enligt clinicalprocess:healthcond:certificate."
* ^url = "https://fhir.inera.se/CodeSystem/resultkod-cs"
* ^status = #active
* ^content = #complete
* #OK "OK" "Anropet lyckades"
* #INFO "INFO" "Anropet lyckades men med informationsmeddelande (t.ex. dubletthantering)"
* #ERROR "ERROR" "Anropet misslyckades"

CodeSystem: ErrorIdCS
Id: errorid-cs
Title: "Fel-ID"
Description: "Kodsystem för felkoder i ResultType.errorId enligt clinicalprocess:healthcond:certificate."
* ^url = "https://fhir.inera.se/CodeSystem/errorid-cs"
* ^status = #active
* ^content = #complete
* #VALIDATION_ERROR "VALIDATION_ERROR" "Valideringsfel — indata uppfyller inte krav"
* #APPLICATION_ERROR "APPLICATION_ERROR" "Applikationsfel — fel i tjänsteproducenten"
* #TECHNICAL_ERROR "TECHNICAL_ERROR" "Tekniskt fel"
* #REVOKED "REVOKED" "Intyget är makulerat"
* #NOT_FOUND "NOT_FOUND" "Efterfrågad resurs hittades inte"
