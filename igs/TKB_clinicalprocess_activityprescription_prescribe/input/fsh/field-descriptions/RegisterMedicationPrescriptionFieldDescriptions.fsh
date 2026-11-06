// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicationPrescriptionFieldDescriptions
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1)."
* medicationPrescriptionList ^definition = "Övergripande objekt som håller ihop"
* medicationPrescriptionList ^comment = "TKB-fält: `medicationPrescriptionList` (`MedicationPrescriptionListType`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription ^comment = "TKB-fält: `medicationPrescription` (`MedicationPrescription`, kardinalitet 1..1).

Obs: modellen anger 1..* där TKB:n anger 1..1."
