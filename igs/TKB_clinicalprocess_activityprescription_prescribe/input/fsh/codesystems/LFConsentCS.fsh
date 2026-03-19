// Genererad från TKB clinicalprocess:activityprescription:prescribe v2.0
// Källa: clinicalprocess_activityprescription_prescribe_2.0_enum.xsd
// Genererad: 2026-03-19

CodeSystem: LFConsentCS
Id: lfconsent-cs
Title: "LFConsent — Samtyckestyp"
Description: "Kodverk för typ av samtycke för åtkomst till läkemedelsförteckning (LF). Används i GetDispensedDrugsConsent/RegisterDispensedDrugsConsent."
* ^url = "https://fhir.inera.se/CodeSystem/lfconsent"
* ^status = #active
* ^content = #complete
* #ONETIME_CONSENT "ONETIME_CONSENT" "Engångssamtycke."
* #CONSENT "CONSENT" "Tillsvidaresamtycke registrerat hos EHM."
* #EMERGENCY "EMERGENCY" "Nödåtgärd, emergency."
