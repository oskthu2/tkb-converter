| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| glnkod | string |  | 1..1 |
| dosaktor | string |  | 1..1 |
| vardandeenhetnamn | string |  | 1..1 |
| vardandeenhetort | string |  | 1..1 |
| **Svar** | | | |
| resultatkod | ResultatkodEnum |  | 1..1 |
| meddelandetext | string |  | 1..1 |
| meddelandeid | int |  | 1..1 |
| dosaktor | string |  | 1..1 |
| VardandeEnhet | VardandeEnhetResponse |  | 0..* |
| ../vardandeenhetid | string |  | 1..1 |
| ../vardandeenhetnamn | string |  | 1..1 |
| ../vardandeenhetpostort | string |  | 1..1 |
| ../glnkod | string |  | 1..1 |
