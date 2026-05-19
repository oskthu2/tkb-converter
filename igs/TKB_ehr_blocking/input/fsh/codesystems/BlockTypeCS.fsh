// Genererad från TKB ehr:blocking v3.2.2
// Kodverk: BlockType (urn:riv:ehr:blocking:2)
// Genererad: 2026-04-09

CodeSystem: BlockTypeCS
Id: blocktype-cs
Title: "BlockType"
Description: "Typ av spärr enligt urn:riv:ehr:blocking:2. Anger om spärren gäller inom en vårdenhet (inre) eller inom hela vårdgivaren (yttre)."
* ^url = "https://fhir.inera.se/CodeSystem/blocktype-cs"
* ^status = #active
* ^content = #complete
* #Inner "Inre spärr" "Representerar en inre spärr (inom vårdenhet). Gäller all personal hos en specifik vårdenhet."
* #Outer "Yttre spärr" "Representerar en yttre spärr (inom vårdgivare). Gäller all personal hos en specifik vårdgivare."
