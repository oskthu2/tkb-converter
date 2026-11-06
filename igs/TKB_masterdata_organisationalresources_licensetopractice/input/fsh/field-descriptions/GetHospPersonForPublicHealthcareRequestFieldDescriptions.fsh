// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetHospPersonForPublicHealthcareRequestFieldDescriptions
* personId ^definition = "Ett personnummer eller samordningsnummer för en person"
* personId ^comment = "TKB-fält: `personId*` (`II`, kardinalitet 0..1).

**Modellanteckning:** Personnummer (OID: 1.2.752.129.2.1.3.1) eller
samordningsnummer (OID: 1.2.752.129.2.1.3.3).
Format: ÅÅÅÅMMDDXXXX (12 siffror).
Om personId inte anges måste minst ett av efternamn, fornamn eller fodelsedatum anges."
* fodelsedatum ^definition = "Söker personer efter födelsedatum"
* fodelsedatum ^comment = "TKB-fält: `födelseDatum` (`date`, kardinalitet 0..1)."
* efternamn ^definition = "Söker personer efter efternamn"
* efternamn ^comment = "TKB-fält: `efternamn` (`String`, kardinalitet 0..1)."
* fornamn ^definition = "Söker personer efter förnamn"
* fornamn ^comment = "TKB-fält: `fornamn` (`String`, kardinalitet 0..*).

**Modellanteckning:** Söker personer efter förnamn. Kan anges 0 eller fler."
