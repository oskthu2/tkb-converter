// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: BirthRegistrationRequestFieldDescriptions
* FodelseanmalanId ^definition = "Unikt id"
* FodelseanmalanId ^comment = "TKB-fält: `FodelseanmalanId` (`string`, kardinalitet 1..1)."
* Dokumentuppgifter ^comment = "TKB-fält: `Dokumentuppgifter` (`DokumentuppgifterTYPE`, kardinalitet 1..1)."
* Dokumentuppgifter.Ingivarnamn ^definition = "Namnet på sjukhus, klinik eller motsvarande samt namnet på barnmorska eller motsvarande. Max 100 tecken."
* Dokumentuppgifter.Ingivarnamn ^comment = "TKB-fält: `Ingivarnamn` (`string`, kardinalitet 1..1)."
* Dokumentuppgifter.AnmalningsTyp ^definition = "Får endast ha värde:

\"NYANMALD\"

\"RATTAD\"

\"MAKULERAD \""
* Dokumentuppgifter.AnmalningsTyp ^comment = "TKB-fält: `AnmalningsTyp` (`string`, kardinalitet 1..1)."
* Dokumentuppgifter.AnmalningsId ^definition = "Riksunikt id som sätts av vården själva. Vården bestämmer formatet. Max 80 tecken,"
* Dokumentuppgifter.AnmalningsId ^comment = "TKB-fält: `AnmalningsId` (`string`, kardinalitet 1..1)."
* Dokumentuppgifter.Ingivartelefon ^definition = "Telefonnummer till den barnmorska/klinik som är ingivare av anmälan. Max 15 tecken"
* Dokumentuppgifter.Ingivartelefon ^comment = "TKB-fält: `Ingivartelefon` (`string`, kardinalitet 0..1)."
* Arendeuppgifter ^comment = "TKB-fält: `Arendeuppgifter` (`ArendeuppgifterTYPE`, kardinalitet 1..1)."
* Arendeuppgifter.Moder ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/Moder/` (kardinalitet 1..1)."
* Arendeuppgifter.Moder.Namn ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/Moder/Namn` (kardinalitet 0..1)."
* Arendeuppgifter.Moder.Namn.Fornamn ^comment = "TKB-fält: `../../../Fornamn` (`string100TYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Moder.Namn.Mellannamn ^comment = "TKB-fält: `../../../Mellannamn` (`string100TYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Moder.Namn.Efternamn ^comment = "TKB-fält: `../../../Efternamn` (`string100TYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Moder.Fodelsedatum ^definition = "Uppgift om födelsedatum ska lämnas i de fall modern saknar fullständigt personnummer"
* Arendeuppgifter.Moder.Fodelsedatum ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/Moder/Fodelsedatum` (kardinalitet 0..1)."
* Arendeuppgifter.Moder.Fodelsedatum.FodelseAr ^comment = "TKB-fält: `../../../FodelseAr` (`string`, kardinalitet 1..1)."
* Arendeuppgifter.Moder.Fodelsedatum.FodelseManad ^comment = "TKB-fält: `../../../FodelseManad` (`string`, kardinalitet 1..1)."
* Arendeuppgifter.Moder.Fodelsedatum.FodelseDag ^comment = "TKB-fält: `../../../FodelseDag` (`string`, kardinalitet 1..1)."
* Arendeuppgifter.Moder.PersonNummer ^comment = "TKB-fält: `../../PersonNummer` (`PersonNummerTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.ModersMake ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/ModersMake/` (kardinalitet 0..1)."
* Arendeuppgifter.ModersMake.Namn ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/ModersMake/Namn` (kardinalitet 0..1)."
* Arendeuppgifter.ModersMake.Namn.Fornamn ^comment = "TKB-fält: `../../../Fornamn` (`string100TYPE`, kardinalitet 0..1)."
* Arendeuppgifter.ModersMake.Namn.Mellannamn ^comment = "TKB-fält: `../../../Mellannamn` (`string100TYPE`, kardinalitet 0..1)."
* Arendeuppgifter.ModersMake.Namn.Efternamn ^comment = "TKB-fält: `../../../Efternamn` (`string100TYPE`, kardinalitet 0..1)."
* Arendeuppgifter.ModersMake.Fodelsedatum ^definition = "Uppgift om födelsedatum ska lämnas i de fall moderns make saknar fullständigt personnummer"
* Arendeuppgifter.ModersMake.Fodelsedatum ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/ModersMake/Fodelsedatum` (kardinalitet 0..1)."
* Arendeuppgifter.ModersMake.Fodelsedatum.FodelseAr ^comment = "TKB-fält: `../../../FodelseAr` (`string`, kardinalitet 1..1)."
* Arendeuppgifter.ModersMake.Fodelsedatum.FodelseManad ^comment = "TKB-fält: `../../../FodelseManad` (`string`, kardinalitet 1..1)."
* Arendeuppgifter.ModersMake.Fodelsedatum.FodelseDag ^comment = "TKB-fält: `../../../FodelseDag` (`string`, kardinalitet 1..1)."
* Arendeuppgifter.ModersMake.PersonNummer ^comment = "TKB-fält: `../../PersonNummer` (`PersonNummerTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Barn ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/Barn` (kardinalitet 1..1)."
* Arendeuppgifter.Barn.DatumFodelse ^definition = "Barnets födelsedatum. Får ej vara senare än dagens datum. Sekel inluderat. 10 tecken.

ÅÅÅÅ-MM-DD"
* Arendeuppgifter.Barn.DatumFodelse ^comment = "TKB-fält: `DatumFodelse` (`datum`, kardinalitet 1..1)."
* Arendeuppgifter.Barn.Kon ^definition = "Barnets kön. Då uppgift saknas lämnas elementet tomt.

Max 6 tecken. Får endast ha värde

\"FLICKA\"

\"POJKE\""
* Arendeuppgifter.Barn.Kon ^comment = "TKB-fält: `Kon` (`string`, kardinalitet 0..1)."
* Arendeuppgifter.Barn.OrdningsNr ^definition = "Födelseordningsnummer för barnet i förhållande till övriga syskon som fötts vid samma förlossningstillfä lle.

Det har ingen betydelse om barnen (syskonen) var levande eller döda vid förlossningen. OrdningsNr ska beskriva i vilken ordning det aktuella barnet föddes fram.

Ex 1: Om modern fött trillingar och detta är det andra barnet av de tre anges värdet \"2\" som OrdningsNr för det aktuella barnet.

Ex 2: Om födelsen avser en singel födelse anges värdet \"1\" som OrdningsNr. *(Figur saknas: bilden i originalets tabellcell kan inte extraheras ur .doc-filen.)*

1 tecken. Värdet ska finnas i intervallet 1-9."
* Arendeuppgifter.Barn.OrdningsNr ^comment = "TKB-fält: `OrdningsNr` (`int`, kardinalitet 1..1)."
* Arendeuppgifter.Barn.AntalBarn ^definition = "Totalt antal födda barn av samma moder vid förlossningen. Det har ingen betydelse om barnen var levande eller döda vid förlossningen. Samtliga barn ska ingå.

Ex 1: Om modern fött trillingar anges värdet \"3\" för elementet AntalBarn.

Ex 2: Om det är en singel födelse anges värdet \"1\".

OBS: förhållandet mellan de värden som levereras i elementen OrdningsNr och AntalBarn måste vara rimligt. Det kan t ex aldrig förekomma OrdningsNr \"3\" tillsammans med AntalBarn \"2\".

OrdningsNr kan bara vara mindre eller lika med AntalBarn.

1 tecken. Värdet ska finnas i intervallet 1-9."
* Arendeuppgifter.Barn.AntalBarn ^comment = "TKB-fält: `AntalBarn` (`int`, kardinalitet 1..1)."
* Arendeuppgifter.Barn.FodelseKommun ^definition = "Namnet på den kommun där barnet förlöstes I klartext.

T.ex kommun där födelsekliniken är belägen eller den kommun där taxin befann sig då förlossningen skedde i en taxi.

Max 30 tecken"
* Arendeuppgifter.Barn.FodelseKommun ^comment = "TKB-fält: `FodelseKommun` (`string`, kardinalitet 1..1)."
* Arendeuppgifter.Barn.Levande ^definition = "Då barnet var levande vid födelsen anges värdet \"JA\" annars anges värdet \"NEJ\".

Endast ett värde får anges:

Får endast ha värde

\"JA\"

\"NEJ\""
* Arendeuppgifter.Barn.Levande ^comment = "TKB-fält: `Levande` (`string`, kardinalitet 1..1)."
* Arendeuppgifter.Vistelseadress ^definition = "Om uppgift om Vistelseadress lämnas är AdressRad1 obligatorisk"
* Arendeuppgifter.Vistelseadress ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/Vistelseadress` (kardinalitet 0..1)."
* Arendeuppgifter.Vistelseadress.AdressRad1 ^comment = "TKB-fält: `../../AdressRad1` (`AdressRadTYPE`, kardinalitet 1..1)."
* Arendeuppgifter.Vistelseadress.AdressRad2 ^comment = "TKB-fält: `../../AdressRad2` (`AdressRadTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Vistelseadress.AdressRad3 ^comment = "TKB-fält: `../../AdressRad3` (`AdressRadTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Vistelseadress.AdressRad4 ^comment = "TKB-fält: `../../AdressRad4` (`AdressRadTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Vistelseadress.AdressRad5 ^comment = "TKB-fält: `../../AdressRad5` (`AdressRadTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Bostadsadress ^comment = "TKB-fält: `/BirthRegistration/Arendeuppgifter/Bostadsadress` (kardinalitet 0..1)."
* Arendeuppgifter.Bostadsadress.AdressRad1 ^comment = "TKB-fält: `../../AdressRad1` (`AdressRadTYPE`, kardinalitet 1..1)."
* Arendeuppgifter.Bostadsadress.AdressRad2 ^comment = "TKB-fält: `../../AdressRad2` (`AdressRadTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Bostadsadress.AdressRad3 ^comment = "TKB-fält: `../../AdressRad3` (`AdressRadTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Bostadsadress.AdressRad4 ^comment = "TKB-fält: `../../AdressRad4` (`AdressRadTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.Bostadsadress.AdressRad5 ^comment = "TKB-fält: `../../AdressRad5` (`AdressRadTYPE`, kardinalitet 0..1)."
* Arendeuppgifter.KontaktTelefon ^definition = "Max 20 tecken.

Telefonnummer till moder.

Uppgiften används för att kunna nå en moder som inte är permanent bosatt I Sverige."
* Arendeuppgifter.KontaktTelefon ^comment = "TKB-fält: `KontaktTelefon` (`string`, kardinalitet 0..1)."
* Arendeuppgifter.KontaktTelefon2 ^definition = "Max 20 tecken"
* Arendeuppgifter.KontaktTelefon2 ^comment = "TKB-fält: `KontaktTelefon2` (`string`, kardinalitet 0..1)."
* Arendeuppgifter.KontaktTelefon3 ^definition = "Max 20 tecken"
* Arendeuppgifter.KontaktTelefon3 ^comment = "TKB-fält: `KontaktTelefon3` (`string`, kardinalitet 0..1)."
* Arendeuppgifter.KontaktTelefon4 ^definition = "Max 20 tecken"
* Arendeuppgifter.KontaktTelefon4 ^comment = "TKB-fält: `KontaktTelefon4` (`string`, kardinalitet 0..1)."
* Arendeuppgifter.KontaktTelefon5 ^definition = "Max 20 tecken"
* Arendeuppgifter.KontaktTelefon5 ^comment = "TKB-fält: `KontaktTelefon5` (`string`, kardinalitet 0..1)."
