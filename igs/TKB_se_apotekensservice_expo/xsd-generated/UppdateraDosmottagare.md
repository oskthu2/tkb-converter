| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| adress | string | Adress till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| apoteksIdDosproducent | string | Apoteks-id för dosproducent som dosmottagaren ska registreras på. | 1..1 |
| arbetsplatskod | string | Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning. | 0..1 |
| avdelning | string | Avdelning inom dosmottagare. | 0..1 |
| dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| kommunkod | string | Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB. | 0..1 |
| lanskod | string | Länskod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| mottagarnamn | string | Namn på dosmottagare. | 1..1 |
| postnummer | string | Postnummer till dosmottagare. | 0..1 |
| postort | string | Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| **Svar** | | | |
| *(tomt)* | | Svaret innehåller inga element utöver utökningspunkter. | |
