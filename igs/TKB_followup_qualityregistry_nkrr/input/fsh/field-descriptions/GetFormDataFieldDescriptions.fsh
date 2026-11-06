// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetFormDataFieldDescriptions
* formElement ^definition = "Svaret består av en lista med formulärets enskilda element."
* formElement ^comment = "TKB-fält: `formElement` (`FormElementType`, kardinalitet 0..*).

**Modellanteckning:** Svaret består av en lista med formulärets enskilda element.
Om ett givet formulär innehåller N frågor kan en konsument förvänta sig M answer-element
där M ≤ N (R1 – Flexibel ifyllnadsgrad)."
* formElement.formID ^definition = "Identifierare av mallen."
* formElement.formID ^comment = "TKB-fält: `formID` (`string`, kardinalitet 1..1)."
* formElement.query ^definition = "Identitet för fråga."
* formElement.query ^comment = "TKB-fält: `query` (`string`, kardinalitet 0..1)."
* formElement.answer ^definition = "Svar på fråga."
* formElement.answer ^comment = "TKB-fält: `answer` (`AnswerType`, kardinalitet 0..*)."
* formElement.answer.value ^definition = "Svar på fråga."
* formElement.answer.value ^comment = "TKB-fält: `value` (`string`, kardinalitet 1..1)."
* formElement.answer.type ^definition = "Typning av svaret."
* formElement.answer.type ^comment = "TKB-fält: `type` (`string`, kardinalitet 1..1)."
* formElement.sourceData ^definition = "Beskrivning på hur svaret framställts. Kan visas för slutanvändare i konsumentapplikationen."
* formElement.sourceData ^comment = "TKB-fält: `sourceData` (`SourceDataType`, kardinalitet 0..*)."
* formElement.sourceData.name ^definition = "Domän + kontraktsnamn för grunddata."
* formElement.sourceData.name ^comment = "TKB-fält: `name` (`string`, kardinalitet 1..1)."
* formElement.sourceData.entry ^definition = "Del av underlaget för svaret."
* formElement.sourceData.entry ^comment = "TKB-fält: `entry` (`SourceDataEntryType`, kardinalitet 1..*)."
* resultCode ^definition = "OK = Hämtningen av underlag utfört utan fel.

ERROR = Fel har uppstått.

Felet beskrivs i elementet resultText.

INFO = Information finns om hämtningen. Informationen beskrivs i elementet resultText."
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Beskrivning av fel som uppstått alternativt information om genomförd registrering."
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
* logId ^definition = "Identifierare av loggpost hos tjänsteproducenten, t.ex. ett UUID som kan användas vid felsökning."
* logId ^comment = "TKB-fält: `logId` (`string`, kardinalitet 0..1)."
