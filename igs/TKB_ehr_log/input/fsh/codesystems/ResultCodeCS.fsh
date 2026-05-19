// Genererad från TKB ehr:log v1.2.3
// Kodverk: ResultCode (log.store:ResultCode och log.querying:ResultCode)
// Genererad: 2026-04-09

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCode"
Description: "Statuskoder som returneras av tjänstekontrakten i ehr:log-domänen. Definieras i TKB ehr:log avsnitt Datatyper."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* #OK "OK" "Anropet genomfördes utan fel."
* #INFO "INFO" "Anropet genomfördes med informationsmeddelande."
* #ERROR "ERROR" "Tekniskt fel uppstod."
* #VALIDATIONERROR "VALIDATIONERROR" "Valideringsfel i indata."
* #ACCESSDENIED "ACCESSDENIED" "Åtkomst nekad av behörighetskontroll."
* #REPORTONQUEUE "REPORTONQUEUE" "Rapport är köad för generering. Använd returnerat queuedReportId i nästa anrop."
* #REPORTINPROCESS "REPORTINPROCESS" "Rapport håller på att genereras. Använd returnerat queuedReportId i nästa anrop."
* #REPORTNOTFOUND "REPORTNOTFOUND" "Rapport med angivet queuedReportId hittades inte."
* #MAXQUERYRESULTEXCEEDED "MAXQUERYRESULTEXCEEDED" "Maxantalet loggposter (10000) i svaret har överskridits. Justera datumintervallet."
