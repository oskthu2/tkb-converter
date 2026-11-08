// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareManagersRequestFieldDescriptions
* patientId ^definition = "PatientId för patient vars fasta kontakter ska hämtas"
* patientId ^comment = "TKB-fält: `patientId` (`IIType`, kardinalitet 1..1)."
* careGiverId ^definition = "Frivilligt fält för filtrering av svar baserat på given vårdgivare. Sätts till HSAId för vårdgivaren."
* careGiverId ^comment = "TKB-fält: `careGiverId` (`HSAIdType`, kardinalitet 0..1)."
* careUnitId ^definition = "Frivilligt fält för filtrering av svar baserat på given vårdenhet. Sätts till HSAId för vårdenheten."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`HSAIdType`, kardinalitet 0..1)."
* careManagerType ^definition = "Kod för att filtrera svaret, baserat på typ av fast kontakt. Se referens R7 – kodverk för Fasta kontakter. Konsument begär filtrering genom att ange vilken typ av fast kontakt i fältet careManagerType.code samt anger careManagerType.codeSystem = ” 1.2.752.129.5.1.69”. Övriga fält i careManagerType kan utelämnas."
* careManagerType ^comment = "TKB-fält: `careManagerType` (`CVType`, kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1."
* careProcessId ^definition = "Unik identifierare för filtrering av svaret baserat på specifikt hälsoärende"
* careProcessId ^comment = "TKB-fält: `careProcessId` (`IIType`, kardinalitet 0..1)."
