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
| Bestallningsinfo | BestallningsinfoRequest |  | 1..* |
| ../Patientinformation | PatientinfoResponse |  | 1..1 |
| ../../fornamn | string | Anvandarens fornamn. | 1..1 |
| ../../mellannamn | string | Anvandarens mellanamn. | 0..1 |
| ../../efternamn | string | Anvandarens efternamn. | 1..1 |
| ../../identitetstyp | IdentitetstypEnum |  | 1..1 |
| ../../personid | string | Anvandarens personid | 1..1 |
| ../../lanskod | string | Anvandarens folkbokforda lanskod | 0..1 |
| ../../kommunkod | string | Anvandarens folkbokforda kommunkod | 0..1 |
| ../bestallningsid | string |  | 1..1 |
| ../radid | string |  | 0..1 |
| ../NPLpackid | string |  | 0..1 |
| ../varunummer | string |  | 0..1 |
| ../receptid | string |  | 0..1 |
| ../ordinationsid | string |  | 1..1 |
| ../dosunderlagsversion | string |  | 0..1 |
| ../antalforpackningar | string |  | 0..1 |
| ../akutbestallning | boolean |  | 0..1 |
| ../maxveckodos | string |  | 0..1 |
| ../maxdygnsdos | string |  | 0..1 |
| ../dosmottagareid | string |  | 0..1 |
| ../dosmottagarenamn | string |  | 0..1 |
| ../meddelandetillapotek | string |  | 0..1 |
| ../onskadleveransdatum | dateTime |  | 1..1 |
| **Svar** | | | |
| resultatkod | ResultatkodEnum |  | 1..1 |
| meddelandetext | string |  | 1..1 |
| meddelandeid | int |  | 1..1 |
| Bestallningsrader | BestallningsinfoResponse |  | 0..* |
| ../bestallningsid | string |  | 1..1 |
| ../radid | string |  | 0..1 |
| ../Patientinformation | PatientinfoResponse |  | 1..1 |
| ../../fornamn | string | Anvandarens fornamn. | 1..1 |
| ../../mellannamn | string | Anvandarens mellanamn. | 0..1 |
| ../../efternamn | string | Anvandarens efternamn. | 1..1 |
| ../../identitetstyp | IdentitetstypEnum |  | 1..1 |
| ../../personid | string | Anvandarens personid | 1..1 |
| ../../lanskod | string | Anvandarens folkbokforda lanskod | 0..1 |
| ../../kommunkod | string | Anvandarens folkbokforda kommunkod | 0..1 |
| ../NPLpackid | string |  | 0..1 |
| ../varunummer | string |  | 0..1 |
| ../receptid | string |  | 0..1 |
| ../ordinationsid | string |  | 1..1 |
| ../dosunderlagsversion | string |  | 0..1 |
| ../bestallningsresultat | int |  | 0..1 |
| ../bestallningsresultattext | string |  | 0..1 |
| ../bestallningsstatus | BestallningsStatusEnum |  | 1..1 |
| ../statustidpunkt | dateTime |  | 1..1 |
| ../bestallningstatustext | string |  | 0..1 |
| ../meddelandefranapotek | string |  | 0..1 |
| ../onskadleveranstid | dateTime |  | 0..1 |
| ../planeradleveranstid | dateTime |  | 0..1 |
| ../dosmottagareid | string |  | 0..1 |
| ../dosmottagarenamn | string |  | 0..1 |
| ../bestallningstid | dateTime |  | 0..1 |
| ../bestallarefornamn | string |  | 1..1 |
| ../bestallareefternamn | string |  | 1..1 |
| ../bestallarearbetsplats | string |  | 1..1 |
