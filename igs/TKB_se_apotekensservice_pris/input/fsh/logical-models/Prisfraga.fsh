// Genererad från XSD för se.apotekensservice.pris v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: Prisfraga v4.1
// Genererad: 2026-09-26

Logical: Prisfraga
Id: prisfraga
Title: "Prisfraga — Response"
Description: """
  Logisk modell för svaret i Prisfraga
  (urn:riv:se.apotekensservice:pris:PrisfragaResponder:4, PrisfragaResponseType).
"""
Characteristics: #can-be-target
* bruttoBeloppHogkostnad 0..1 decimal "bruttoBeloppHogkostnad" "Förmånsgrundande bruttobelopp kopplat till högkostnadsskyddet. Bruttobelopp inkl. ev. moms, att tillgodoräkna i högkostnadsskyddet. Gäller förmånskod = R. Vid kreditering blir detta värde negativt."
* bruttoPris 1..1 decimal "bruttoPris" "Summa apoteksaktörs utpris inkl. ev. moms för receptexpeditionen. Vid kreditering blir detta värde negativt."
* egenAvgiftHogkostnad 0..1 decimal "egenAvgiftHogkostnad" "Summa kundens egenavgift kopplat till högkostnadsskyddet. Egenavgift inkl. ev. moms, att tillgodoräkna i högkostnadsskyddet. Gäller förmånskod = R. Vid kreditering blir detta värde negativt."
* egenAvgiftLivsmedel 0..1 decimal "egenAvgiftLivsmedel" "Summa kundens egenavgift inkl. moms för livsmedel till barn under 16 år. Gäller förmånskod = L. Max 120 kr. Vid kreditering blir detta värde negativt."
* kundKostnad 1..1 decimal "kundKostnad" "Kostnad kunden skall betala. Egenavgift, pristillägg samt pris inkl. ev . moms för varor utan förmån. Vid kreditering blir detta värde negativt."
* landstingetsFormanskostnad 0..1 decimal "landstingetsFormanskostnad" "Summa förmån inkl. ev. moms för receptexpeditionen. Gäller förmånskod = R, F och L. Vid kreditering blir detta värde negativt."
* personnummer 1..1 string "personnummer" "Personnummer för person som prisfrågan gäller. Om personnummer saknas, använd tjänsten AnonymPrisfraga"
* prisTillagg 0..1 decimal "prisTillagg" "Summa pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt."
* rader 1..* BackboneElement "rader" "Rader"
  * bruttoPris 1..1 decimal "bruttoPris" "Apoteksaktörs utpris för receptrad inkl. ev. moms. Vid kreditering blir detta värde negativt."
  * prisTillagg 0..1 decimal "prisTillagg" "Radens ev. pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt."
  * radNr 1..1 integer "radNr" "Radnr."
