// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMedicationPrescriptionsFieldDescriptions
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista.

Se kapitel 5.2 för exempel och regler kring format."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1).

**Modellanteckning:** Unik version för patientens aktuella läkemedelslista.
Format: se avsnitt 5 i TKB (Formatregler)."
* medicationList ^comment = "TKB-fält: `medicationList` (`MedicationList`, kardinalitet 0..1).

**Modellanteckning:** Övergripande objekt som håller ihop läkemedelslistan för patienten.
Valfri — returneras om data finns."
