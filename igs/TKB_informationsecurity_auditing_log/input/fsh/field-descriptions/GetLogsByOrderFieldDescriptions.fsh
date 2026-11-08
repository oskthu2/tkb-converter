// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetLogsByOrderFieldDescriptions
* result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.

En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.

Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* result ^comment = "TKB-fält: `result` (`urn:riv:informationsecurity:auditing:log:2:ResultType`, kardinalitet 1..1)."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1).

**Modellanteckning:** resultCode Tillåtna värden: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
* orderId ^definition = "Det ordernummer som ska bifogas anropet till GetFilesForOrder för att få de loggposter som urvalet angavs i anropet till tjänsten. Se kap 3.1.5"
* orderId ^comment = "TKB-fält: `orderId` (`Urn:riv:informationsecurity:auditing:log:2:OrderId`, kardinalitet 0..1)."
