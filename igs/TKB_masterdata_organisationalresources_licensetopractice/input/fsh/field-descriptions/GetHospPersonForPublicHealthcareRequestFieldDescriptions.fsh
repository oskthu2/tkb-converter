// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHospPersonForPublicHealthcareRequestFieldDescriptions
* personId ^definition = "Ett personnummer eller samordningsnummer för en person"
* personId ^comment = "TKB-fält: `personId*` (`II`, kardinalitet 0..1)."
* personId.extension ^definition = "Identitet i form av ÅÅÅÅMMDDXXXX."
* personId.extension ^comment = "TKB-fält: `../ extension` (`String`, kardinalitet 1..1)."
* personId.root ^definition = "Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: \"1.2.752.129.2.1.3.1\"

Samordningsnummer: \"1.2.752.129.2.1.3.3\""
* personId.root ^comment = "TKB-fält: `../ root` (`String`, kardinalitet 1..1).

Obs: modellen anger 0..1 där TKB:n anger 1..1.

**Modellanteckning:** root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3."
* efternamn ^definition = "Söker personer efter efternamn"
* efternamn ^comment = "TKB-fält: `efternamn` (`String`, kardinalitet 0..1)."
* fornamn ^definition = "Söker personer efter förnamn"
* fornamn ^comment = "TKB-fält: `fornamn` (`String`, kardinalitet 0..*)."
* fodelsedatum ^definition = "Söker personer efter födelsedatum"
* fodelsedatum ^comment = "TKB-fält: `födelseDatum` (`date`, kardinalitet 0..1)."
