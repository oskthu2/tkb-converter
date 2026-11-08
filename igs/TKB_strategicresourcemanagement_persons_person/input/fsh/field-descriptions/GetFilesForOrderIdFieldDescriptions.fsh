// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetFilesForOrderIdFieldDescriptions
* multimedia ^definition = "GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer."
* multimedia ^comment = "TKB-fält: `multimedia` (`urn:riv:strategicresourcemanagement:persons:person:5:MultimediaType`, kardinalitet 0..*)."
* multimedia.id ^comment = "TKB-fält: `../id` (`string`, kardinalitet 0..1)."
* multimedia.mediaType ^comment = "TKB-fält: `../mediaType` (`CodedValue`, kardinalitet 1..1)."
* multimedia.value ^comment = "TKB-fält: `../value` (`base64Binary`, kardinalitet 0..1)."
* multimedia.reference ^comment = "TKB-fält: `../reference` (`anyURI`, kardinalitet 0..1)."
