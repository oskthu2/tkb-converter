// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetVaccinationHistoryRequestFieldDescriptions
* careUnitHSAid ^definition = "Filtrering på Vårdenhet vilket motsvarar careUnitHSAid i HealthCareProfessionalType. Journalposter som saknar märkning med vårdenhet ingår inte i svaret om detta fält använts i anropet."
* careUnitHSAid ^comment = "TKB-fält: `careUnitHSAId` (`HSAIdType`, kardinalitet 0..*)."
* patientId ^definition = "Id för patienten.

value sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

Type sätts till OID för typ av identifierare.

För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).

För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).

För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)"
* patientId ^comment = "TKB-fält: `patientId` (`PersonIdType`, kardinalitet 1..1)."
* timePeriod ^definition = "Begränsning av sökningen i tid. Begränsningen sker genom att resultatet innehåller de poster som i något av de tidsfält som ingår i vaccinationMedicalRecordHeader eller vaccinationMedicalRecordBody.registrationrecord.date anger en tidpunkt som ligger inom det sökta tidsintervallet (start- och slutpunkt inkluderas i intervallet)."
* timePeriod ^comment = "TKB-fält: `timePeriod` (`DatePeriodType`, kardinalitet 0..1)."
* sourceSystemHSAid ^definition = "Begränsar sökningen till dokument som är skapade i angivet system.

Värdet på detta fält måste överensstämma med värdet på logicalAddress i anropets tekniska kuvertering (ex. SOAP-header).

Det innebär i praktiken att aggregerande tjänster inte används när detta fält anges.

Fältet är tvingande om careContactId angivits."
* sourceSystemHSAid ^comment = "TKB-fält: `sourceSystemHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careContactId ^definition = "Begränsar sökningen till den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* careContactId ^comment = "TKB-fält: `careContactId` (`string`, kardinalitet 0..*)."
