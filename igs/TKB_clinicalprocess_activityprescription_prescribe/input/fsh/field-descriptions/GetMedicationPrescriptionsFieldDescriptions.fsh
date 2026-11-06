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
* medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registrationDataId ^definition = "Unikt id för det omgivande objektet."
* medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registrationDataId ^comment = "TKB-fält: `../../../../id` (`Identifier`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registeredBy ^definition = "Den person som registrerat det omgivande objektet. Denna måste vara starkt autentiserad och det är informationen från autentiseringen som används. Det är vårdgivare och vårdenhet för registrerad av som utgör vårdgivare och vårdenhet för det omgivande objektet som helhet.

Värdet sätts av NOD baserat på den Autentiseringsinformation som bifogas vid anrop av NOD:s tjänster."
* medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registeredBy ^comment = "TKB-fält: `../../../../registeredBy` (`HealthcareProfessionalType`, kardinalitet 1)."
* medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationList.medicationPrescriptionSequence.medicationPrescription.registrationData.registrationTime ^comment = "TKB-fält: `../../../../registrationTime` (`dateTime`, kardinalitet 1)."
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
