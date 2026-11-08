// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: FindAllQuestionsFieldDescriptions
* result ^comment = "TKB-fält: `result` (kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1."
* result.resultCode ^definition = "Information om anropet gick bra(OK, ERROR, INFO)"
* result.resultCode ^comment = "TKB-fält: `result.resultCode` (`string`, kardinalitet 1..1)."
* result.infoText ^definition = "Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text."
* result.infoText ^comment = "TKB-fält: `result.infoText` (`string`, kardinalitet 0..1)."
* result.errorId ^definition = "Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)"
* result.errorId ^comment = "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1)."
* result.errorText ^definition = "Text som ytterliggare beskriver felet"
* result.errorText ^comment = "TKB-fält: `result.errorText` (`string`, kardinalitet 0..1)."
* questionsLeft ^definition = "Antal kvarvarande frågor för denna vårdenhet"
* questionsLeft ^comment = "TKB-fält: `questionsLeft` (`int`, kardinalitet 1..1)."
* questions ^definition = "Fråga"
* questions ^comment = "TKB-fält: `questions` (kardinalitet 0..1)."
* questions.question ^definition = "Lista av frågor"
* questions.question ^comment = "TKB-fält: `questions.question` (kardinalitet 0..n)."
* questions.question.Question ^definition = "Själva frågan, se ReceiveMedicalCertificateQuestion"
* questions.question.Question ^comment = "TKB-fält: `..question.question` (kardinalitet 1..1)."
* questions.question.id ^definition = "Ärendelådans identitet på den returnerade frågan. Används när man senare vill ta bort frågan från ärendelådan"
* questions.question.id ^comment = "TKB-fält: `..question.id` (`int`, kardinalitet 1..1)."
* questions.question.receivedDate ^definition = "Datum då frågan inkom"
* questions.question.receivedDate ^comment = "TKB-fält: `..question.receivedDate` (`datum`, kardinalitet 1..1)."
