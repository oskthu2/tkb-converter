// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Domänspecifikt kodverk: AssertionTypeCS
// Genererad: 2026-04-22

CodeSystem: AssertionTypeCS
Id: assertiontype-cs
Title: "AssertionType"
Description: "Typ av intyg som ger direktåtkomst till information från andra vårdgivare enligt PDL. Kan vara patientens samtycke eller nödsituation."
* ^url = "https://fhir.inera.se/CodeSystem/assertiontype-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #Consent "Consent" "Patienten/Företrädaren har givit sitt samtycke."
* #Emergency "Emergency" "Nödsituation föreligger. Patientens samtycke kunde ej inhämtas."
