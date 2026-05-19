// Genererad från TKB infrastructure:supportservices:forminteraction v2.0
// Kodverk: FormCategory — formulärets kategori
// Genererad: 2026-05-19

CodeSystem: FormCategoryCS
Id: formcategory-cs
Title: "FormCategory"
Description: "Kodverk för formulärets kategori (KV Formulärkategori) enligt infrastructure:supportservices:forminteraction v2.0. Definierar formulärets typ."
* ^url = "https://fhir.inera.se/CodeSystem/formcategory-cs"
* ^status = #active
* ^content = #fragment
// ASSUME: Koderna är inte fullständigt specificerade i TKB. Exempel nämns: Anmälan, registrering, hälsodeklaration.
* #HEALTH_DECLARATION "Hälsodeklaration" "Formulär av typen hälsodeklaration"
* #SURVEY "Enkät" "Formulär av typen enkät"
* #REGISTRATION "Registrering/anmälan" "Formulär av typen registrering eller anmälan"
