// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeleteExtendedPatientRelationRequestFieldDescriptions
* patientRelationId ^definition = "Identifierare för den patientrelation som skall makuleras."
* patientRelationId ^comment = "TKB-fält: `patientRelationId` (`patientrelationship:Id`, kardinalitet 1..1)."
* deletionAction ^definition = "Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges."
* deletionAction ^comment = "TKB-fält: `deletionAction` (`patientrelationship:Action`, kardinalitet 1..1)."
