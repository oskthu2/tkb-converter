| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Objekt innehållande information om anropande klientsystem. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| periodStart | dateTime | Start av period. Om periodStart anges så avses normalt annan period än innevarande period. Innehållet är en periodstart och kan avse föregående period, innevarande period eller kommande period. | 0..1 |
| personnummer | string | Personnummer för person som prisfrågan gäller. Om personnummer saknas, använd tjänsten AnonymPrisfraga | 1..1 |
| rader | PrisfragaRadRequest | Rader | 1..* |
| ../antal | int | Antal förpackningar av vara som expedieras. Vid kreditering sätts detta fält till ett negativt värde. Altenativt kan fälten pris och prisUtbyte sättas till negativa värden. | 1..1 |
| ../formansVal | string | Farmacevtens bedömning om vilken förmån som gäller för receptraden. Förmånstyp R, U, F, L kan förekomma. | 1..1 |
| ../pris | double | Apoteksaktörs utpris inkl. eventuell moms per förpackning för vara som avses att expedieras. | 1..1 |
| ../prisUtbyte | double | Apoteksaktörs utpris inkl. eventuell moms för billigare vara som ej expedieras vid möjligt byte inom högkostnadsskyddet. Anges om pristillägg skall gälla, dvs när kund motsätter sig byte och väljer förskriven vara. | 0..1 |
| ../radNr | int | Radnr. | 1..1 |
| transaktionstid | dateTime | Transaktionsdag som priset ska beräknas för. Om värdet inte anges används dagens datum. För att garantera korrekt prisberäkning för en efterföljande transaktionsregistrering skall denna parameter ha samma värde som parametern transTid i RegistreraHkdbTransaktion. Får inte vara mer än ett år och en dag bakåt i tiden, eller två timmar framåt i tiden. | 0..1 |
| ursprungligTransaktionstid | dateTime | Ursprunglig transaktionstidpunkt. Ges vid kreditering. Avser tidpunkten när det ursprungliga köpet gjordes. Används för att avgöra om personen var över eller under 18 år vid köptillfället. Parametern blir obligatorisk i och med att lagen om kostnadsbefrielse för barn under 18 år trätt i kraft. (Refererat element ur PrisfragaResponder_4.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:pris:PrisfragaResponder:4.1.) | 0..1 |
| **Svar** | | | |
| bruttoBeloppHogkostnad | double | Förmånsgrundande bruttobelopp kopplat till högkostnadsskyddet. Bruttobelopp inkl. ev. moms, att tillgodoräkna i högkostnadsskyddet. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| bruttoPris | double | Summa apoteksaktörs utpris inkl. ev. moms för receptexpeditionen. Vid kreditering blir detta värde negativt. | 1..1 |
| egenAvgiftHogkostnad | double | Summa kundens egenavgift kopplat till högkostnadsskyddet. Egenavgift inkl. ev. moms, att tillgodoräkna i högkostnadsskyddet. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| egenAvgiftLivsmedel | double | Summa kundens egenavgift inkl. moms för livsmedel till barn under 16 år. Gäller förmånskod = L. Max 120 kr. Vid kreditering blir detta värde negativt. | 0..1 |
| kundKostnad | double | Kostnad kunden skall betala. Egenavgift, pristillägg samt pris inkl. ev . moms för varor utan förmån. Vid kreditering blir detta värde negativt. | 1..1 |
| landstingetsFormanskostnad | double | Summa förmån inkl. ev. moms för receptexpeditionen. Gäller förmånskod = R, F och L. Vid kreditering blir detta värde negativt. | 0..1 |
| personnummer | string | Personnummer för person som prisfrågan gäller. Om personnummer saknas, använd tjänsten AnonymPrisfraga | 1..1 |
| prisTillagg | double | Summa pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| rader | PrisfragaRadResponse | Rader | 1..* |
| ../bruttoPris | double | Apoteksaktörs utpris för receptrad inkl. ev. moms. Vid kreditering blir detta värde negativt. | 1..1 |
| ../prisTillagg | double | Radens ev. pristillägg inom läkemdelsförmånen. Gäller förmånskod = R. Vid kreditering blir detta värde negativt. | 0..1 |
| ../radNr | int | Radnr. | 1..1 |
