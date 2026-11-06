// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareManagersRequestFieldDescriptions
* patientId ^definition = "PatientId för patient vars fasta kontakter ska hämtas"
* patientId ^comment = "TKB-fält: `patientId` (`IIType`, kardinalitet 1..1)."
* patientId.root ^definition = "Fältet sätts till OID motsvarande typ av patientidentifierare.

Följande patientId’n kan förmedlas:

1) För personnummer skall Skatteverkets oid för personnummer (1.2.752.129.2.1.3.1) användas.

2) För samordningsnummer skall Skatteverkets oid för samordningsnummer (1.2.752.129.2.1.3.3) användas.

3) För nationellt reservid skall Ineras oid för nationellt reservid (1.2.752.74.9.1) användas.

Observera:

För att en konsument och en producent ska kunna samverka behöver båda tjänstekomponenterna ha möjlighet till uppslag, antingen direkt eller indirekt, i Ineras nationella personuppgiftstjänst."
* patientId.root ^comment = "TKB-fält: `patientId.root` (`string`, kardinalitet 1..1)."
* patientId.iIExtension ^definition = "Id för patienten. Anges med 12 tecken utan avskiljare."
* patientId.iIExtension ^comment = "TKB-fält: `patientId.extension` (`string`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** iIExtension Heter extension i schemat."
* careGiverId ^definition = "Frivilligt fält för filtrering av svar baserat på given vårdgivare. Sätts till HSAId för vårdgivaren."
* careGiverId ^comment = "TKB-fält: `careGiverId` (`HSAIdType`, kardinalitet 0..1)."
* careGiverId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* careGiverId.iIExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careUnitId ^definition = "Frivilligt fält för filtrering av svar baserat på given vårdenhet. Sätts till HSAId för vårdenheten."
* careUnitId ^comment = "TKB-fält: `careUnitId` (`HSAIdType`, kardinalitet 0..1)."
* careUnitId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* careUnitId.iIExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
* careManagerType ^definition = "Kod för att filtrera svaret, baserat på typ av fast kontakt. Se referens R7 – kodverk för Fasta kontakter. Konsument begär filtrering genom att ange vilken typ av fast kontakt i fältet careManagerType.code samt anger careManagerType.codeSystem = ” 1.2.752.129.5.1.69”. Övriga fält i careManagerType kan utelämnas."
* careManagerType ^comment = "TKB-fält: `careManagerType` (`CVType`, kardinalitet 0..1).

Obs: modellen anger 0..* där TKB:n anger 0..1."
* careManagerType.cVCode ^comment = "TKB-fält: `../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cVCode Heter code i schemat."
* careManagerType.codeSystem ^comment = "TKB-fält: `../codeSystem` (`string`, kardinalitet 0..1)."
* careManagerType.codeSystemName ^comment = "TKB-fält: `../codeSystemName` (`string`, kardinalitet 0..1)."
* careManagerType.codeSystemVersion ^comment = "TKB-fält: `../codeSystemVersion` (`string`, kardinalitet 0..1)."
* careManagerType.displayName ^comment = "TKB-fält: `../displayName` (`string`, kardinalitet 0..1)."
* careManagerType.originalText ^comment = "TKB-fält: `../originalText` (`string`, kardinalitet 0..1)."
* careProcessId ^definition = "Unik identifierare för filtrering av svaret baserat på specifikt hälsoärende"
* careProcessId ^comment = "TKB-fält: `careProcessId` (`IIType`, kardinalitet 0..1)."
* careProcessId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* careProcessId.iIExtension ^comment = "TKB-fält: `../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iIExtension Heter extension i schemat."
