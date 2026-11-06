// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessExemptionStatusesRequestFieldDescriptions
* requestId ^definition = "Unikt Id för begäran om utlämnandet. Det är begärande parts ansvar att säkerställa identifierarens unikitet. Detta Id ska således återspegla det requestId som tidigare skickats via tjänstekontraktet RequestExemptionStatuses."
* requestId ^comment = "TKB-fält: `requestId` (`IIType`, kardinalitet 1..1)."
* requestId.root ^definition = "Unikt Id för begäran om utlämnandet, ska förmedlas så som ett uuid."
* requestId.root ^comment = "TKB-fält: `../root` (`string`, kardinalitet 1..1)."
* requestId.iiExtension ^definition = "Ska utelämnas, då id förmedlas som ett uuid."
* requestId.iiExtension ^comment = "TKB-fält: `../extension` (kardinalitet 0..0).

**Modellanteckning:** iiExtension Heter extension i schemat."
* feeExemption ^definition = "Returnerar en patients högkostnadsskyddstatus"
* feeExemption ^comment = "TKB-fält: `feeExemption` (`FeeExemptionType`, kardinalitet 0..*)."
* feeExemption.patientId ^definition = "Id för patienten (samma som i begäran), även kopplade identiteter till en huvudidentitet i begäran skall returneras av tjänsteproducenten.

Dvs information som registrerats på t.ex tidigare NRID, LRID, SNR eller PNR.

Fältet extension sätts till patientens identifierare, anges med 12 siffror utan avskiljare.

Fältet root sätts till typ av identifierare.

För personnummer ska Skatteverkets identifierare för personnummer (1.2.752.129.2.1.3.1) användas.

För samordningsnummer ska Skatteverkets identifierare för samordningsnummer (1.2.752.129.2.1.3.3) användas.

För reservidentiterer ska identifierare för nationell reservidentitet (1.2.752.74.9.1) användas.

Exempel:

`<patientId>`

`<root>`1.2.752.129.2.1.3.1`</root>`

`<extension>`196705053723`</extension>`

`</patientId>`"
* feeExemption.patientId ^comment = "TKB-fält: `../patientId` (`IIType`, kardinalitet 1..1)."
* feeExemption.patientId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* feeExemption.patientId.iiExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* feeExemption.transactions ^comment = "TKB-fält: `../transactions` (`TransactionType`, kardinalitet 0..*)."
* feeExemption.transactions.fee ^comment = "TKB-fält: `../../fee` (`AmountType`, kardinalitet 0..1)."
* feeExemption.transactions.fee.amount ^definition = "Belopp med högst två decimaler."
* feeExemption.transactions.fee.amount ^comment = "TKB-fält: `../../../amount` (`decimal`, kardinalitet 1..1)."
* feeExemption.transactions.fee.currency ^definition = "Typ av valuta anges med oid 1.0.4217 samt den ISO-kod för valutan summan avser. Ska alltid vara SEK.

code: SEK

codeSystem: ”1.0.4217”"
* feeExemption.transactions.fee.currency ^comment = "TKB-fält: `../../../currency*` (`CVType`, kardinalitet 1..1)."
* feeExemption.transactions.fee.currency.cvCode ^comment = "TKB-fält: `../../../../code` (`string`, kardinalitet 0..1).

**Modellanteckning:** cvCode Heter code i schemat."
* feeExemption.transactions.fee.currency.codeSystem ^comment = "TKB-fält: `../../../../codeSystem` (`string`, kardinalitet 0..1)."
* feeExemption.transactions.fee.currency.codeSystemName ^comment = "TKB-fält: `../../../../codeSystemName` (`string`, kardinalitet 0..1)."
* feeExemption.transactions.fee.currency.codeSystemVersion ^comment = "TKB-fält: `../../../../codeSystemVersion` (`string`, kardinalitet 0..1)."
* feeExemption.transactions.fee.currency.displayName ^comment = "TKB-fält: `../../../../displayName` (`string`, kardinalitet 0..1)."
* feeExemption.transactions.fee.currency.originalText ^comment = "TKB-fält: `../../../../originalText` (`string`, kardinalitet 0..1)."
* feeExemption.transactions.dateOfVisit ^comment = "TKB-fält: `../../dateOfVisit` (`DateType`, kardinalitet 0..1)."
* feeExemption.transactions.timeOfRegistration ^comment = "TKB-fält: `../../timeOfRegistration` (`TimeStampType`, kardinalitet 0..1)."
* feeExemption.transactions.typeOfFee ^comment = "TKB-fält: `../../typeOfFee` (`TypeOfExemptionEnum`, kardinalitet 1..1)."
* feeExemption.transactions.careGiver ^comment = "TKB-fält: `../../careGiver` (`IIType`, kardinalitet 0..1)."
* feeExemption.transactions.careGiver.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* feeExemption.transactions.careGiver.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* feeExemption.transactions.careUnit ^comment = "TKB-fält: `../../careUnit` (`IIType`, kardinalitet 0..1)."
* feeExemption.transactions.careUnit.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* feeExemption.transactions.careUnit.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
* feeExemption.exemptions ^comment = "TKB-fält: `../exemptions` (`ExemptionType`, kardinalitet 0..*)."
* feeExemption.exemptions.exemptionId ^comment = "TKB-fält: `../../id` (`string`, kardinalitet 1..1).

**Modellanteckning:** exemptionId Heter id i schemat."
* feeExemption.exemptions.highCostProtectionPeriod ^comment = "TKB-fält: `../../highCostProtectionPeriod` (`DatePeriodType`, kardinalitet 1..1)."
* feeExemption.exemptions.highCostProtectionPeriod.start ^definition = "Startdatum för högkostnadsskydd."
* feeExemption.exemptions.highCostProtectionPeriod.start ^comment = "TKB-fält: `../../../start` (`DateType`, kardinalitet 0..1)."
* feeExemption.exemptions.highCostProtectionPeriod.end ^definition = "Slutdatum för högkostnadsskydd."
* feeExemption.exemptions.highCostProtectionPeriod.end ^comment = "TKB-fält: `../../../end` (`DateType`, kardinalitet 0..1)."
* feeExemption.exemptions.exemptionPeriod ^comment = "TKB-fält: `../../exemptionPeriod` (`DatePeriodType`, kardinalitet 1..1)."
* feeExemption.exemptions.exemptionPeriod.start ^definition = "Startdatum för frikort."
* feeExemption.exemptions.exemptionPeriod.start ^comment = "TKB-fält: `../../../start` (`DateType`, kardinalitet 0..1)."
* feeExemption.exemptions.exemptionPeriod.end ^definition = "Slutdatum för frikort."
* feeExemption.exemptions.exemptionPeriod.end ^comment = "TKB-fält: `../../../end` (`DateType`, kardinalitet 0..1)."
* feeExemption.exemptions.typeOfExemption ^comment = "TKB-fält: `../../typeOfExemption` (`TypeOfExemptionEnum`, kardinalitet 1..1)."
* feeExemption.exemptions.region ^comment = "TKB-fält: `../../region` (`IIType`, kardinalitet 1..1)."
* feeExemption.exemptions.region.root ^comment = "TKB-fält: `../../../root` (`string`, kardinalitet 1..1)."
* feeExemption.exemptions.region.iiExtension ^comment = "TKB-fält: `../../../extension` (`string`, kardinalitet 0..1).

**Modellanteckning:** iiExtension Heter extension i schemat."
