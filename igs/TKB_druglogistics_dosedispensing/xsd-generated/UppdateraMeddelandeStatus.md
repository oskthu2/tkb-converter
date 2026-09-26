| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| glnkod | string |  | 1..1 |
| Behorighetsinformation | BehorighetsinfoRequest |  | 1..1 |
| ../fornamn | string |  | 1..1 |
| ../efternamn | string |  | 1..1 |
| ../forskrivarkod | string |  | 0..1 |
| ../yrkeskod | YrkesKodEnum |  | 0..1 |
| ../arbetsplatskod | string |  | 1..1 |
| ../hsaid | string |  | 0..1 |
| ../personnummer | string |  | 0..1 |
| ../organisationsnummer | string |  | 0..1 |
| Meddelandeninfo | UppdateraMeddelandestatus |  | 1..* |
| ../meddelandeid | string |  | 1..1 |
| ../meddelandestatus | MeddelandeStatusEnum |  | 1..1 |
| ../statustidpunkt | dateTime |  | 1..1 |
| **Svar** | | | |
| resultatkod | ResultatkodEnum |  | 1..1 |
| meddelandetext | string |  | 1..1 |
| meddelandeid | int |  | 1..1 |
| Meddelandeninfo | UppdateraMeddelandestatus |  | 0..* |
| ../meddelandeid | string |  | 1..1 |
| ../meddelandestatus | MeddelandeStatusEnum |  | 1..1 |
| ../statustidpunkt | dateTime |  | 1..1 |
