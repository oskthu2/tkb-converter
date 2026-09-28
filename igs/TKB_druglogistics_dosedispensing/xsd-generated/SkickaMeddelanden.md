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
| Meddelandeninfo | MeddelandeninfoRequest |  | 1..1 |
| ../Meddelandetyp | MeddelandetypEnum |  | 1..1 |
| ../Patientinformation | PatientinfoResponse |  | 0..1 |
| ../../fornamn | string | Anvandarens fornamn. | 1..1 |
| ../../mellannamn | string | Anvandarens mellanamn. | 0..1 |
| ../../efternamn | string | Anvandarens efternamn. | 1..1 |
| ../../identitetstyp | IdentitetstypEnum |  | 1..1 |
| ../../personid | string | Anvandarens personid | 1..1 |
| ../../lanskod | string | Anvandarens folkbokforda lanskod | 0..1 |
| ../../kommunkod | string | Anvandarens folkbokforda kommunkod | 0..1 |
| ../kommunikationsriktning | KommunikationsriktningEnum |  | 0..1 |
| ../tidigaremeddelandeid | string |  | 0..1 |
| ../ordinationsid | string |  | 0..1 |
| ../glnkod | string |  | 0..1 |
| ../sandningstidpunkt | dateTime |  | 1..1 |
| ../rubrik | string |  | 0..1 |
| ../prioritet | MeddelandePrioritetEnum |  | 0..1 |
| ../meddelande | string |  | 1..1 |
| **Svar** | | | |
| resultatkod | ResultatkodEnum |  | 1..1 |
| meddelandetext | string |  | 1..1 |
| meddelandeid | int |  | 1..1 |
| meddelande | int |  | 0..1 |
