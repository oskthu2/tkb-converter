| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| apoteksIdDosproducent | string | Apoteks-id för dosproducent som dosmottagaren ska registreras på. | 1..1 |
| dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| **Svar** | | | |
| *(tomt)* | | Svaret innehåller inga element utöver utökningspunkter. | |
