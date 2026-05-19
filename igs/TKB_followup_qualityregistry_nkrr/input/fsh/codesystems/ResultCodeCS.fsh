// Genererad från TKB followup:qualityregistry:nkrr v1.2.2
// Genererad: 2026-05-19

CodeSystem: ResultCodeCS
Id: resultcode-cs
Title: "ResultCodeEnum"
Description: "Resultatkoder (ResultCodeEnum) för tjänstedomänen followup:qualityregistry:nkrr. Används i svarsmeddelanden för att indikera utfall av tjänsteanrop."
* ^url = "https://fhir.inera.se/CodeSystem/resultcode-cs"
* ^status = #active
* ^content = #complete
* #OK "OK" "Transaktionen/uppslaget har utförts enligt uppdraget utan fel."
* #INFO "INFO" "Transaktionen/uppslaget har utförts men det finns information att förmedla. En beskrivande text kan anges i resultText."
* #ERROR "ERROR" "Transaktionen/uppslaget har INTE kunnat utföras p.g.a. ett logiskt fel. Felet beskrivs i resultText."
