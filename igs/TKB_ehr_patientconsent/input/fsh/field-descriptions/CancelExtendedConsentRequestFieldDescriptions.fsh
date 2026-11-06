// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CancelExtendedConsentRequestFieldDescriptions
* assertionId ^definition = "Identifierare för det intyg som skall återkallas."
* assertionId ^comment = "TKB-fält: `assertionId` (`patientconsent:Id`, kardinalitet 1..1)."
* cancellationAction ^definition = "Identifierar de personer som begärt och registrerat återkallan samt tidpunkter för dessa. En anledning till återkallan i fritext kan även ges."
* cancellationAction ^comment = "TKB-fält: `cancellationAction` (`patientconsent:Action`, kardinalitet 1..1)."
