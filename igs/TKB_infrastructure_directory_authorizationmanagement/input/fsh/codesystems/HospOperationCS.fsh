// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Genererad: 2026-05-19

CodeSystem: HospOperationCS
Id: hosp-operation-cs
Title: "HOSP Operation"
Description: "Kodverk för operation i HandleHospCertificationPerson. Anger om en person ska läggas till eller tas bort från utlämningsförfrågningar av HOSP-information."
* ^url = "https://fhir.inera.se/CodeSystem/hosp-operation-cs"
* ^status = #active
* ^content = #complete
* #add "add" "Lägg till personen i kommande utlämningsförfrågningar"
* #remove "remove" "Ta bort personen från kommande utlämningsförfrågningar"
