// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeleteExtendedConsentRequestFieldDescriptions
* assertionId ^definition = "Identifierar det intyg som skall makuleras."
* assertionId ^comment = "TKB-fält: `assertionId` (`patientconsent:Id`, kardinalitet 1..1)."
* deletionAction ^definition = "Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges."
* deletionAction ^comment = "TKB-fält: `deletionAction` (`patientconsent:Action`, kardinalitet 1..1)."
