// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Genererad: 2026-05-19

CodeSystem: StatusCS
Id: status-cs
Title: "Status"
Description: "Kodverk för statustyp för läkarintyg i tjänstekontrakten ListCertificates och SetCertificateStatus."
* ^url = "https://fhir.inera.se/CodeSystem/status-cs"
* ^status = #active
* ^content = #fragment
// ASSUME: Kodverk för Status är ej fullständigt dokumenterat i TKB. Se XSD för fler möjliga värden.
* #SENT "Skickat" "Intyget har skickats till mottagaren"
* #RECEIVED "Mottaget" "Mottagaren har bekräftat mottagande"
* #CANCELLED "Makulerat" "Intyget har makulerats"
* #DELETED "Borttaget" "Intyget har tagits bort"
