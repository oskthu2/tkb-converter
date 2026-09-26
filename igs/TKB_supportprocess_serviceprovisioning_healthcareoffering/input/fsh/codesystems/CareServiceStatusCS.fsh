// Genererad från XSD för supportprocess.serviceprovisioning.healthcareoffering v3.0.0 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: CareServiceStatusCS
Id: healthcareoffering-careservicestatus-cs
Title: "Status för vård- och omsorgstjänst (CareServiceStatus)"
Description: "Koder för CareServiceStatusEnum i domänschemat. Visningstexter ur TKB avsnitt 6.2.2 (GetCareServiceOfferings, careServiceStatus)."
* ^url = "https://fhir.inera.se/CodeSystem/healthcareoffering-careservicestatus-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #INACTIVE "Inaktiv" "Innan vård- och omsorgstjänsten är färdig att erbjudas."
* #ACTIVE "Aktiv" "Vård- och omsorgstjänsten är färdigbeskriven och kan erbjudas."
* #DEPRECATED "Utgången" "Vård- och omsorgstjänsten ska ej längre erbjudas."
