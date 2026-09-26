| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| klientinformation | KlientinformationRequest | Information om anropande system. | 1..1 |
| ../anvandare | string | Unikt användarid i anropande system. | 1..1 |
| ../session | string | Sessionens id i anropande system. | 1..1 |
| ../system | string | GLN-kod för anropande system. | 1..1 |
| samtyckesgivare | string | Giltigt personnummer för patient vars samtycke ska registreras. Valideras mot FOLK. | 1..1 |
| samtyckestagareForskrivarkod | string | Förskrivarkod för förskrivare som skall få samtycke. Förskrivarens personnummer hämtas från FORS och sparas i LF Samtyckesregister. Förskrivarkoden sparas EJ. | 1..1 |
| **Svar** | | | |
| *(tomt)* | | Svaret innehåller inga element utöver utökningspunkter. | |
