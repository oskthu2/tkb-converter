// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: SetSelectedCommissionForPersonRequestFieldDescriptions
* personalHsaId ^definition = "HSA-id för den aktör som medarbetaruppdrag ska hämtas för."
* personalHsaId ^comment = "TKB-fält: `personalHsaId *)` (`commissionservice:HsaId`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för den person vars medarbetaruppdragsval ska registreras.
Maxlängd: 32 tecken.
Villkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges."
* personalIdentityNumber ^definition = "Personnummer för den aktör som medarbetaruppdrag ska hämtas för."
* personalIdentityNumber ^comment = "TKB-fält: `personalIdentityNumber *)` (`commissionservice:PersonalIdentityNumber`, kardinalitet 0..1).

**Modellanteckning:** Personnummer eller samordningsnummer för den person vars uppdragsval ska registreras.
Maxlängd: 12 tecken.
Villkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges."
* commissionHsaId ^definition = "HsaId för vilket uppdrag som är valt. Om detta fält utelämnas, så blir inget uppdrag valt. Detta kan vara aktuellt vid utloggning från en tunn klient."
* commissionHsaId ^comment = "TKB-fält: `commissionHsaId` (`commissionservice:HsaId`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för det medarbetaruppdrag som ska väljas som aktivt.
Om detta fält utelämnas nollställs uppdragsvalet.
Detta kan användas av autentiseringstjänsten för att tvinga fram ett
nytt uppdragsval (t.ex. funktionen Byta Uppdrag).
Maxlängd: 32 tecken."
