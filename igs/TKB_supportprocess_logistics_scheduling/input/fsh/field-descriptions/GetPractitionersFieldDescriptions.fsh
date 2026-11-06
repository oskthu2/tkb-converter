// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetPractitionersFieldDescriptions
* practitioner ^definition = "Information om bokningsbar vårdpersonal."
* practitioner ^comment = "TKB-fält: `practitioner` (`PractitionerType`, kardinalitet 0..*)."
* practitioner.HSAId ^definition = "Bokningsbar vårdpersonals HsaId"
* practitioner.HSAId ^comment = "TKB-fält: `practitioner.HSAId` (`HSAIdType`)."
* practitioner.HSAId.root ^comment = "TKB-fält: `../../root` (`string`, kardinalitet 1..1)."
* practitioner.HSAId.hSAIdExtension ^comment = "TKB-fält: `../../extension` (`string`, kardinalitet 1..1).

**Modellanteckning:** hSAIdExtension Heter extension i schemat."
* practitioner.firstName ^definition = "Vårdpersonals förnamn."
* practitioner.firstName ^comment = "TKB-fält: `practitioner.firstName` (`string`, kardinalitet 1..1)."
* practitioner.lastName ^definition = "Vårdpersonals efternamn."
* practitioner.lastName ^comment = "TKB-fält: `practitioner.lastName` (`string`, kardinalitet 1..1)."
* practitioner.title ^definition = "Vårdpersonals titel."
* practitioner.title ^comment = "TKB-fält: `practitioner.title` (`string`, kardinalitet 0..1)."
* resultCode ^definition = "Kan endast vara OK, INFO eller ERROR."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som underlättar felsökning i de fall resultCode == ERROR"
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
