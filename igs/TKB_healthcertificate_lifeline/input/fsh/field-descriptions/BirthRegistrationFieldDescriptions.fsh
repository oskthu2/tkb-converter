// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: BirthRegistrationFieldDescriptions
* FodelsesvarId ^definition = "Unikt id. Unikt id som sätts av tjänsteproducent"
* FodelsesvarId ^comment = "TKB-fält: `FodelsesvarId` (`string`, kardinalitet 1..1)."
* AnmalningsId ^definition = "Det anmälnings-id som vården angett som identitet för den aktuella födelseanmälan. Max 80 tecken."
* AnmalningsId ^comment = "TKB-fält: `AnmalningsId` (`string`, kardinalitet 1..1)."
* PersonNummer ^definition = "Barnets fullständiga personnummer som Skatteverket tilldelat det nyfödda barnet.. `<br>` Sekel inkluderat. 12 tecken. `<br>` ÅÅÅÅMMDDXXXX."
* PersonNummer ^comment = "TKB-fält: `PersonNummer` (`long`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* Meddelande ^definition = "I de fall ett personnummer inte kunde tilldelas barnet levererar Skatteverket ett orsaksmeddelande istället."
* Meddelande ^comment = "TKB-fält: `/BirthRegistrationResponse/Meddelande` (kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** Indikerar orsaken till att personnummer ej tilldelats."
* Meddelande.AnmalanMottagen ^definition = "\"JA\" anger att anmälan är mottagen av Skatteverket och \"NEJ\" att anmälan inte har mottagits. `<br>` En mottagen anmälan ska INTE sändas in igen. En anmälan som Skatteverket inte kunnat ta emot får sändas om. `<br>` Får endast ha värde `<br>` \"JA\" `<br>` \"NEJ\""
* Meddelande.AnmalanMottagen ^comment = "TKB-fält: `AnmalanMottagen` (`string`, kardinalitet 1..1)."
* Meddelande.MeddelandeKod ^definition = "MeddelandeKod indikerar orsaken till att ett personnummer inte returnerats. `<br>` Förteckning över förekommande koder och beskrivning, se rubrik \"Lista över meddelandekoder\". `<br>` Värde inom intervallet givet av tabell med meddlandekoder."
* Meddelande.MeddelandeKod ^comment = "TKB-fält: `MeddelandeKod` (`int`, kardinalitet 1..1).

**Modellanteckning:** Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number"
* Meddelande.MeddelandeText ^definition = "Text som ger ytterligare information utöver MeddelandeKod om felorsak. Endast avsedd att nyttjas vid utveckling/felsökning."
* Meddelande.MeddelandeText ^comment = "TKB-fält: `MeddelandeText` (`string`, kardinalitet 1..1)."
* result ^definition = "Holds information about the success of the call. If INFO is set the field infoText should contain more information. If ERROR is set the fields errorId and errorText will contain information about the error."
* result ^comment = "TKB-fält: `result` (`ResultOfCallType`, kardinalitet 0..1)."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnumType`, kardinalitet 1..1)."
* result.infoText ^comment = "TKB-fält: `../infoText` (`string`, kardinalitet 0..1)."
* result.errorId ^comment = "TKB-fält: `../errorId` (`ErrorIdEnumType`, kardinalitet 0..1)."
* result.errorText ^comment = "TKB-fält: `../errorText` (`string`, kardinalitet 0..1)."
