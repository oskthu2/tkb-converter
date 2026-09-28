| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Information om anropande system. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| samtyckesgivare | string | Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas. | 1..1 |
| samtyckestagareForskrivarkod | string | Förskrivarkod för förskrivare vars samtycke ska kontrolleras. Ska vara identisk med användare i klientinformation. Valideras mot FORS. | 1..1 |
| **Svar** | | | |
| avliden | boolean | Markering om patient är avliden enligt FOLK. Sant om patient är markerad som avliden, annars falskt. | 1..1 |
| samtycke | int | Anger om aktuell förskrivare har samtycke av patient. Möjliga värden är: 0 = Samtycke att läsa Läkemedelsförteckningen saknas 1= Samtycke att läsa Läkemedelsförteckningen finns 2 = Samtycke att läsa Läkemedelsförteckningen har återkallats | 1..1 |
| samtyckesgivare | string | Giltigt personnummer för patient vars läkemedelsförteckning skall hämtas. | 1..1 |
| statusdatum | dateTime | Datum då patient givit eller återkallat samtycke till förskrivare. Blank om uppgift om samtycke saknas. | 0..1 |
