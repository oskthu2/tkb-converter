| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Information om anropande system. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| samtyckesgivare | string | Giltigt personnummer för patient vars samtycke ska återkallas. | 1..1 |
| samtyckestagareForskrivarkod | string | Förskrivarkod för förskrivare som vars samtycke ska återkallas, valideras mot FORS. Skall vara samma som användare i klientinformation. | 1..1 |
| **Svar** | | | |
| aterkallandedatum | dateTime | Datum då tillsvidaresamtycke återkallades. Ej angiven om samtycke saknades. | 0..1 |
| samtycke | int | Anger status efter återkallande. Möjliga värden är: 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats | 1..1 |
