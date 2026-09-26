// Genererad från XSD för se.apotekensservice:axs v7.0 (se.apotekensservice_axs_5.0.xsd, PatientInformationResponse.statusKod)
// Genererad: 2026-09-26

CodeSystem: FolkStatusKodCS
Id: axs-folkstatuskod-cs
Title: "Statuskod för person i FOLK"
Description: "Status på personen i FOLK, mappad från träffkoder i FOLK, enligt dokumentationen av statusKod i se.apotekensservice_axs_5.0.xsd."
* ^url = "https://fhir.inera.se/CodeSystem/axs-folkstatuskod-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #0 "Person finns i FOLK"
* #1 "Person finns ej i FOLK, underliggande system är ej tillgängligt"
* #2 "Person finns ej"
* #3 "Person sekretesskyddad"
* #4 "Person är avliden"
* #5 "Träffkod okänd"
* #6 "Testperson"
