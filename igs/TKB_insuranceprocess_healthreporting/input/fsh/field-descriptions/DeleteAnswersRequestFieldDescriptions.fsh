// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeleteAnswersRequestFieldDescriptions
* careUnitId ^definition = "Vårdenhetens hsa-id"
* careUnitId ^comment = "TKB-fält: `careUnitId` (`hsaid`, kardinalitet 1..1)."
* careGiverId ^definition = "Vårdgivarens hsa-id"
* careGiverId ^comment = "TKB-fält: `careGiverId` (`hsaid`, kardinalitet 1..1)."
* AnswerId ^definition = "Ärendelådans identitet på svaren som skall tas bort ur ärendelådan."
* AnswerId ^comment = "TKB-fält: `answerId` (`string`, kardinalitet 0..n).

Obs: modellen anger 1..* där TKB:n anger 0..*."
