// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RegisterMedicationStatementFieldDescriptions
* medicationStatement ^definition = "Egenmedicineringsbehandling."
* medicationStatement ^comment = "TKB-fält: `medicationStatement` (`MedicationStatement_setter`, kardinalitet 1..*)."
* medicationStatement.registrationData ^definition = "id, registrerad av och registreringstidpunkt."
* medicationStatement.registrationData ^comment = "TKB-fält: `../registrationData` (`RegistrationData`, kardinalitet 1..1)."
* medicationStatement.registrationData.registrationDataId ^definition = "Unikt id för det omgivande objektet."
* medicationStatement.registrationData.registrationDataId ^comment = "TKB-fält: `../../id` (`Identifier`, kardinalitet 1..1)."
* medicationStatement.registrationData.registeredBy ^definition = "Den person som registrerat ordinationen."
* medicationStatement.registrationData.registeredBy ^comment = "TKB-fält: `registeredBy` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* medicationStatement.registrationData.registrationTime ^definition = "Tidpunkt då det omgivande objektet registrerats i NOD. Värdet sätts av NOD enligt NOD:s systemklocka."
* medicationStatement.registrationData.registrationTime ^comment = "TKB-fält: `../../registrationTime` (`dateTime`, kardinalitet 1..1)."
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
