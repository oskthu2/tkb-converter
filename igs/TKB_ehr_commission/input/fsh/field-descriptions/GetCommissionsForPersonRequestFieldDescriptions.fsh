// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCommissionsForPersonRequestFieldDescriptions
* personalHsaId ^definition = "HSA-id för den aktör som medarbetaruppdrag ska hämtas för."
* personalHsaId ^comment = "TKB-fält: `personalHsaId *)` (`commissionservice:HsaId`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för den person vars medarbetaruppdrag efterfrågas.
Maxlängd: 32 tecken.
Villkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges."
* personalIdentityNumber ^definition = "Personnummer för den aktör som medarbetaruppdrag ska hämtas för."
* personalIdentityNumber ^comment = "TKB-fält: `personalIdentityNumber *)` (`commissionservice:PersonalIdentityNumber`, kardinalitet 0..1).

**Modellanteckning:** Personnummer eller samordningsnummer för den person vars medarbetaruppdrag efterfrågas.
Maxlängd: 12 tecken.
Villkor: Exakt ett av personalHsaId och personalIdentityNumber ska anges."
