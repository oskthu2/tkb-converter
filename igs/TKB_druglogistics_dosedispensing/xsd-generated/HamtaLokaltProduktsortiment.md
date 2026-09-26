| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| glnkod | string |  | 1..1 |
| dosaktor | string |  | 1..1 |
| **Svar** | | | |
| resultatkod | ResultatkodEnum |  | 1..1 |
| meddelandetext | string |  | 1..1 |
| meddelandeid | int |  | 1..1 |
| dosaktor | string |  | 1..1 |
| Produktsortiment | ProduktsortimentResponse |  | 0..* |
| ../nplid | string |  | 1..1 |
| ../nplpackid | string |  | 1..1 |
| ../glnkod | string |  | 0..* |
