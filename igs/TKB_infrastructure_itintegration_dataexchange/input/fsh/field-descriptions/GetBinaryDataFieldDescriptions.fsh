// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetBinaryDataFieldDescriptions
* binaryData ^definition = "Information om det binära innehållet."
* binaryData ^comment = "TKB-fält: `binaryData` (`BinaryDataType`, kardinalitet 0..1)."
* binaryData.contentType ^comment = "TKB-fält: `../contentType` (`token`, kardinalitet 1..1)."
* binaryData.data ^comment = "TKB-fält: `../data` (`base64Binary`, kardinalitet 1..1)."
* result ^definition = "Innehåller information om det gick bra eller ej att besvara förfrågan."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
