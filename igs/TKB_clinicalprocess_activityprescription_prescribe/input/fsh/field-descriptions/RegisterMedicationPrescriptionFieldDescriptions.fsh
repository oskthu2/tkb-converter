// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicationPrescriptionFieldDescriptions
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 1..1)."
* medicationPrescriptionList ^definition = "Övergripande objekt som håller ihop"
* medicationPrescriptionList ^comment = "TKB-fält: `medicationPrescriptionList` (`MedicationPrescriptionListType`, kardinalitet 1..1)."
* medicationPrescriptionList.medicationPrescriptionSequence.medicationPrescription ^comment = "TKB-fält: `medicationPrescription` (`MedicationPrescription`, kardinalitet 1..1).

Obs: modellen anger 1..* där TKB:n anger 1..1."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.3 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1)."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
