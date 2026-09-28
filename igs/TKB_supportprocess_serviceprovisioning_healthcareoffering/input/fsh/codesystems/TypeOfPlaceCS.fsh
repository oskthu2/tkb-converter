// Genererad från XSD för supportprocess.serviceprovisioning.healthcareoffering v3.0.0 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: TypeOfPlaceCS
Id: healthcareoffering-typeofplace-cs
Title: "Typ av plats (TypeOfPlace)"
Description: "Koder för TypeOfPlaceEnum i domänschemat. Visningstexter ur TKB avsnitt 6.2.2 (GetCareServiceOfferings, typeOfPlace)."
* ^url = "https://fhir.inera.se/CodeSystem/healthcareoffering-typeofplace-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #ALL "Alla" "Både fysisk och virtuell plats."
* #PHYSICAL "Fysisk" "Endast fysisk plats."
* #VIRTUAL "Virtuell" "Endast virtuell plats."
