// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetMedicationPrescriptionsRequestFieldDescriptions
* patientId ^definition = "Person- eller samordningsnummer enligt skatteverkets definition (12 tecken).

Se kapitel 5.2 för exempel och regler kring format."
* patientId ^comment = "TKB-fält: `patientId` (`Identifier`, kardinalitet 1..1)."
* medicationPrescriptionSequenceId ^definition = "Unikt id för Läkemedelsbehandlingen.

Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras.

Se kapitel 5.2 för exempel och regler kring format."
* medicationPrescriptionSequenceId ^comment = "TKB-fält: `medicationPrescriptionSequenceId*` (`Identifier`, kardinalitet 0..*)."
* includeMedicalDispenseAuthorizations ^definition = "Inkludera expedieringsunderlag eller ej i svaret."
* includeMedicalDispenseAuthorizations ^comment = "TKB-fält: `includeMedicalDispenseAuthorizations` (`boolean`, kardinalitet 1..1)."
* medicationStatus ^definition = "Inkludera enligt status enligt http://www.hl7.org/FHIR/medication-prescription-status.html"
* medicationStatus ^comment = "TKB-fält: `medicationStatus` (`code`, kardinalitet 1..1)."
* medicationListVersion ^definition = "Version på patientens samlade läkemedelslista.

Se kapitel 5.2 för exempel och regler kring format."
* medicationListVersion ^comment = "TKB-fält: `medicationListVersion` (`Identifier`, kardinalitet 0..1)."
* currentVersion ^definition = "Sätts till true om \"senaste version\" skall returneras.

Senaste version av en Läkmedelsbehandling omfattar det senaste hela beslutet dvs läkemedelsordinationen."
* currentVersion ^comment = "TKB-fält: `currentVersion*` (`boolean`, kardinalitet 1..1)."
* validTimePeriod ^comment = "TKB-fält: `validTimePeriod*` (`DateTimePeriodType`, kardinalitet 0..1)."
* registrationTime ^definition = "Hämtar listan med Medications såsom den såg ut vid angiven registreringstidpunkt."
* registrationTime ^comment = "TKB-fält: `registrationTime*` (`dateTime`, kardinalitet 0..1)."
