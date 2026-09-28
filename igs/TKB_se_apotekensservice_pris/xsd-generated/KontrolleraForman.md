| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| artikelIdLista | ArtikelIdentiteterRequest | Artikel - Endast ett id per artikel | 1..* |
| ../gtin | string | GTIN-kod | 0..1 |
| ../nplPackageId | string | Förpackningsid från Nationellt Produktregister för Läkemedel Unikt id för LM-artikel | 0..1 |
| ../varunr | string | Nordiskt varunummer Unik för handelsvaror. För läkemedel kan dubletter förekomma vid parallellimport | 0..1 |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| fodelsedatum | string | Födelsedatum. Anges på formen yyyymmdd. Används vid framtagning av förmånskod när varan är preventivmedel med förmånskod R. Om personen är under 21 år blir förmånskoden F för dessa varor. Gäller när lagen om gratis preventivmedel för personer under 21 år trätt i kraft. (Refererat element ur KontrolleraFormanResponder_1_ext_1.0.xsd, namnrymd urn:riv:se.apotekensservice:pris:KontrolleraFormanResponder:1:ext:1.) | 0..1 |
| **Svar** | | | |
| formansLista | FormansInfoResponse | Lista med förmånskoder per artikel. | 1..* |
| ../formanskod | string | Förmånskod R, U, L, eller F | 1..1 |
| ../id | string | Id som representerar det id som var satt i motsvarande ArtikelIdentiteterTo. Det vill säga antingen GTIN, Förpackningsid eller Varunr beroende på vad som frågats efter. | 1..1 |
