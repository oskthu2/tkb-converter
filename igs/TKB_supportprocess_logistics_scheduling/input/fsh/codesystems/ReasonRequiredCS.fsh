// Genererad från XSD för supportprocess.logistics.scheduling v2.0.0 (scripts/xsd_to_ig.py --codesystems)
// Genererad: 2026-09-26

CodeSystem: ReasonRequiredCS
Id: scheduling-reasonrequired-cs
Title: "Krav på anledning (ReasonRequired)"
Description: "Koder för ReasonRequiredEnum i domänschemat. Visningstexter ur TKB avsnitt 7.8 TimeTypeRulesType."
* ^version = "2.0.0-rc1"
* ^url = "https://fhir.inera.se/CodeSystem/scheduling-reasonrequired-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #Mandatory "Obligatorisk" "Invånaren måste ange en anledning"
* #Optional "Frivillig" "Invånaren kan ange en anledning (frivilligt)"
* #ReasonNotSupported "Stöds inte" "Invånaren kan inte ange en anledning"
