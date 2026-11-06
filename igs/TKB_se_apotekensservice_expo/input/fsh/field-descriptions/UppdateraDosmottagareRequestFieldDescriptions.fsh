// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: UppdateraDosmottagareRequestFieldDescriptions
* adress ^definition = "Adress till dosmottagare. Obligatorisk om typ = 'D'."
* adress ^comment = "TKB-fält: `adress` (`string`, kardinalitet 0..1)."
* apoteksIdDosproducent ^definition = "Apoteks-id för dosproducent som dosmottagaren ska registreras på."
* apoteksIdDosproducent ^comment = "TKB-fält: `apoteksIdDosproducent` (`string`, kardinalitet 1..1)."
* arbetsplatskod ^definition = "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning."
* arbetsplatskod ^comment = "TKB-fält: `arbetsplatskod` (`string`, kardinalitet 0..1)."
* avdelning ^definition = "Avdelning inom dosmottagare."
* avdelning ^comment = "TKB-fält: `avdelning` (`string`, kardinalitet 0..1)."
* dosmottagarId ^definition = "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket."
* dosmottagarId ^comment = "TKB-fält: `dosmottagarId` (`string`, kardinalitet 1..1)."
* kommunkod ^definition = "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB."
* kommunkod ^comment = "TKB-fält: `kommunkod` (`string`, kardinalitet 0..1)."
* lanskod ^definition = "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB."
* lanskod ^comment = "TKB-fält: `lanskod` (`string`, kardinalitet 0..1)."
* mottagarnamn ^definition = "Namn på dosmottagare."
* mottagarnamn ^comment = "TKB-fält: `mottagarnamn` (`string`, kardinalitet 1..1)."
* postnummer ^definition = "Postnummer till dosmottagare."
* postnummer ^comment = "TKB-fält: `postnummer` (`string`, kardinalitet 0..1)."
* postort ^definition = "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'."
* postort ^comment = "TKB-fält: `postort` (`string`, kardinalitet 0..1)."
