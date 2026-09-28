// Genererad från XSD för ehr.patientsummary v1.0 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: ResponseDetailTypeCodesCS
Id: patientsummary-responsedetailtypecodes-cs
Title: "Typ av statusmeddelande (response_detail)"
Description: "Koder för ResponseDetailTypeCodes i domänschemat. Visningstexter ur TKB avsnitt 2.3 Statusrapportering."
* ^url = "https://fhir.inera.se/CodeSystem/patientsummary-responsedetailtypecodes-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #E "Fel" "Fel som innebär att anropet inte kunde bearbetas och ingen information returneras."
* #W "Varning" "För GetEhrExtract: problem uppstod som kan påverka det som returneras, men åtminstone partiell information finns. För ReceiveEhrExtract: problem uppstod vid hanteringen, men ingen information har förlorats."
* #I "Information" "Kan skickas oavsett hur bearbetningen av anropet fungerat."
