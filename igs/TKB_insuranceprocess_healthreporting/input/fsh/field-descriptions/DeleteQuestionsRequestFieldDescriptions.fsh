// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeleteQuestionsRequestFieldDescriptions
* careUnitId ^definition = "Vårdenhetens hsa-id"
* careUnitId ^comment = "TKB-fält: `careUnitId` (`hsaid`, kardinalitet 1..1)."
* careGiverId ^definition = "Vårdgivarens hsa-id"
* careGiverId ^comment = "TKB-fält: `careGiverId` (`hsaid`, kardinalitet 1..1)."
* questionId ^definition = "Ärendelådans identitet på frågor som skall tas bort ur ärendelådan."
* questionId ^comment = "TKB-fält: `questionId` (`string`, kardinalitet 0..n)."
