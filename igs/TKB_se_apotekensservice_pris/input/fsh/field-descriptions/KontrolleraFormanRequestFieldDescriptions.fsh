// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: KontrolleraFormanRequestFieldDescriptions
* artikelIdLista ^definition = "Artikel - Endast ett id per artikel"
* artikelIdLista ^comment = "TKB-fält: `artikelIdLista` (`ArtikelIdentiteterRequest`, kardinalitet 1..*)."
* artikelIdLista.gtin ^definition = "GTIN-kod"
* artikelIdLista.gtin ^comment = "TKB-fält: `../gtin` (`string`, kardinalitet 0..1)."
* artikelIdLista.nplPackageId ^definition = "Förpackningsid från Nationellt Produktregister för Läkemedel Unikt id för LM-artikel"
* artikelIdLista.nplPackageId ^comment = "TKB-fält: `../nplPackageId` (`string`, kardinalitet 0..1)."
* artikelIdLista.varunr ^definition = "Nordiskt varunummer Unik för handelsvaror. För läkemedel kan dubletter förekomma vid parallellimport"
* artikelIdLista.varunr ^comment = "TKB-fält: `../varunr` (`string`, kardinalitet 0..1)."
* klientinformation ^definition = "Objekt innehållande information om anropande klientsystem."
* klientinformation ^comment = "TKB-fält: `klientinformation` (`KlientinformationRequest`, kardinalitet 1..1)."
* klientinformation.anvandare ^definition = "Unikt användarid i anropande system."
* klientinformation.anvandare ^comment = "TKB-fält: `../anvandare` (`string`, kardinalitet 1..1)."
* klientinformation.session ^definition = "Sessionens id i anropande system."
* klientinformation.session ^comment = "TKB-fält: `../session` (`string`, kardinalitet 1..1)."
* klientinformation.system ^definition = "GLN-kod för anropande system."
* klientinformation.system ^comment = "TKB-fält: `../system` (`string`, kardinalitet 1..1)."
* fodelsedatum ^definition = "Födelsedatum. Anges på formen yyyymmdd. Används vid framtagning av förmånskod när varan är preventivmedel med förmånskod R. Om personen är under 21 år blir förmånskoden F för dessa varor. Gäller när lagen om gratis preventivmedel för personer under 21 år trätt i kraft. (Refererat element ur KontrolleraFormanResponder_1_ext_1.0.xsd, namnrymd urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1:ext:1.)"
* fodelsedatum ^comment = "TKB-fält: `fodelsedatum` (`string`, kardinalitet 0..1)."
