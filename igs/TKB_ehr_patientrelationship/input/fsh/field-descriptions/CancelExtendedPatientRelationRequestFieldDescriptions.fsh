// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: CancelExtendedPatientRelationRequestFieldDescriptions
* patientRelationId ^definition = "Identifierare för den patientrelation som skall återkallas."
* patientRelationId ^comment = "TKB-fält: `patientRelationId` (`patientrelationship:Id`, kardinalitet 1..1)."
* cancellationAction ^definition = "Identifierar de personer som begärt och registrerat återkallan samt tidpunkter för dessa. En anledning till återkallan i fritext kan även ges."
* cancellationAction ^comment = "TKB-fält: `cancellationAction` (`patientrelationship:Action`, kardinalitet 1..1)."
