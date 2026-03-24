// Genererad från TKB crm:scheduling v1.1
// Genererad: 2026-03-24

CodeSystem: ResultCodeCS
Id: result-code-cs
Title: "ResultCode"
Description: "Kodverk för resultatkoder i tjänstedomänen crm:scheduling. Används i svaren för CancelBooking, MakeBooking och UpdateBooking."
* ^url = "https://fhir.inera.se/CodeSystem/result-code-cs"
* ^status = #active
* ^content = #complete
* #OK "OK" "Åtgärden utfördes korrekt utan informationsmeddelanden."
* #INFO "INFO" "Åtgärden utfördes korrekt men ett informationsmeddelande returnerades."
* #ERROR "ERROR" "Åtgärden utfördes inte korrekt. Felmeddelande returnerades."
