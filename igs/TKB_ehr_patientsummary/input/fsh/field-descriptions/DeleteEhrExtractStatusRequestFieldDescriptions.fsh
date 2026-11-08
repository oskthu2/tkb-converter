// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: DeleteEhrExtractStatusRequestFieldDescriptions
* parameters ^definition = "Transaktions-id: detta är samma värde som användes i anropet till tjänsten DeleteEhrExtract. Med hjälp av detta värde går det koppla samman statusanropet med ett tidigare anrop till tjänsten DeleteEhrExtract."
* parameters ^comment = "TKB-fält: `parameters` (`ParameterType`, kardinalitet 1..1).

Obs: modellen anger 0..* där TKB:n anger 1..1."
* parameters.code ^comment = "TKB-fält: `../code` (`CD`, kardinalitet 0..1)."
* parameters.name ^comment = "TKB-fält: `../name` (`ST`, kardinalitet 1..1)."
* parameters.value ^comment = "TKB-fält: `../value` (`ST`, kardinalitet 1..1)."
* response_detail ^definition = "Fel-, varnings- och/eller informationsmeddelanden."
* response_detail ^comment = "TKB-fält: `response_detail` (`ResponseDetailType`, kardinalitet 0..*)."
* response_detail.code ^comment = "TKB-fält: `../code` (`CD`, kardinalitet 0..1)."
* response_detail.text ^comment = "TKB-fält: `../text` (`ST`, kardinalitet 1..1)."
* response_detail.type_code ^definition = "(XML-attribut.)"
* response_detail.type_code ^comment = "TKB-fält: `../type_code` (`ResponseDetailTypeCodes`, kardinalitet 0..1).

**Modellanteckning:** type_code (XML-attribut) Tillåtna värden: E, W, I."
