// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetFilesForOrderIdFieldDescriptions
* result ^definition = "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeType`, kardinalitet 1..1)."
* result.resultText ^comment = "TKB-fält: `../resultText` (`string`, kardinalitet 0..1)."
* multimedia ^definition = "GetFilesResponse innehållande 0..* Multimedia element med data för, eller referenser till (URL-referenser), tillgängliga filer."
* multimedia ^comment = "TKB-fält: `multimedia` (`urn:riv:informationsecurity:auditing:log:2:MultimediaType`, kardinalitet 0..*).

**Modellanteckning:** Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL."
* multimedia.multimediaId ^comment = "TKB-fält: `../id` (`string`, kardinalitet 0..1).

**Modellanteckning:** multimediaId Heter id i schemat."
* multimedia.mediaType ^comment = "TKB-fält: `../mediaType` (`CodedValue`, kardinalitet 1..1)."
* multimedia.multimediaValue ^comment = "TKB-fält: `../value` (`base64Binary`, kardinalitet 0..1).

**Modellanteckning:** multimediaValue Heter value i schemat."
* multimedia.reference ^comment = "TKB-fält: `../reference` (`anyURI`, kardinalitet 0..1)."
