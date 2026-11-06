// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: KontrolleraFormanFieldDescriptions
* formansLista ^definition = "Lista med förmånskoder per artikel."
* formansLista ^comment = "TKB-fält: `formansLista` (`FormansInfoResponse`, kardinalitet 1..*)."
* formansLista.formanskod ^definition = "Förmånskod R, U, L, eller F"
* formansLista.formanskod ^comment = "TKB-fält: `../formanskod` (`string`, kardinalitet 1..1)."
* formansLista.formansInfoId ^definition = "Id som representerar det id som var satt i motsvarande ArtikelIdentiteterTo. Det vill säga antingen GTIN, Förpackningsid eller Varunr beroende på vad som frågats efter."
* formansLista.formansInfoId ^comment = "TKB-fält: `../id` (`string`, kardinalitet 1..1)."
