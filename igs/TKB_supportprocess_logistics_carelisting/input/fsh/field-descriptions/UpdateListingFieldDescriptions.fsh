// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UpdateListingFieldDescriptions
* resultCode ^definition = "Kan vara OK, INFO, ERROR alternativt något av följande specifika koder (se även resultText nedan):

ERROR_MAXIMUM_ANNUAL_UPDATES_EXCEEDED"
* resultCode ^comment = "TKB-fält: `resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* resultText ^definition = "Kan utelämnas om resultCode = OK.

Producent förväntas skicka ett tillräckligt informativt meddelande som kan presenteras för slutanvändare i ett användargränssnitt i de fall resultCode == ERROR.

OBSERVERA:

Producent ska returnera specifika felkoder för följande situationer:

Invånares maximalt antal tillåtna omlistningar under en 12-månaders-period har uppnåtts

Den valda vårdenheten som invånare vill lista sig på har uppnått det maximala antalet tillåtna invånare (*)

Omlistningen tillåts inte då det saknas fullvärdigt samtycke (t ex att båda vårdnadshavare har samtyckt om omlistningen)

Invånares ålder är utanför tillåtet åldersspann för listningstypen

(*)

Detta kan inträffa då anropet görs med addToQueue = FALSE och maxtaket för antal tillåtna listningar/invånare på mottagningen uppnåtts. I det fall addToQueue = TRUE och invånare kan placeras i kö ska resultCode=OK returneras."
* resultText ^comment = "TKB-fält: `resultText` (`string`, kardinalitet 0..1)."
