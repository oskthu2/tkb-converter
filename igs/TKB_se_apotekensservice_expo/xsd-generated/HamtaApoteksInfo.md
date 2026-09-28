| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| glnKod | string | Lista med en eller flera GLN-koder som identifierar de expeditionsställen man vill ha information om. GLN-koderna i listan ska vara unika. | 1..* |
| tidpunkt | dateTime | Om givet så returneras information som gällde vid tidpunkten, annars aktuell information. | 0..1 |
| **Svar** | | | |
| apoteksinformationLista | ApoteksinformationResponse | Lista innehållande ett eller flera Apoteksinformation. | 1..* |
| ../aktorsnamn | string | Officiellt namn för aktör | 0..1 |
| ../aktorsorgnr | long | Aktörens organisationsnummer. | 0..1 |
| ../allmantelefon | string | Telefonnummer för allmänheten | 0..1 |
| ../besoksadress | string | Expeditionsställets besöksadress | 0..1 |
| ../eReceptDjur | boolean | Markering gällande om apoteket kan expediera elektroniska djurrecept. | 1..1 |
| ../fax | string | Expeditionsställets faxnummer | 0..1 |
| ../glnKod | string | Expeditionsställets GLN-kod | 1..1 |
| ../huvudtypkod | string | Kod som beskriver huvudverksamheten för expeditionsstället | 0..1 |
| ../namn | string | Expeditionsställets officiella namn | 0..1 |
| ../ort | string | Expeditionsställets besöksort | 0..1 |
| ../slutdatum | dateTime | Datum för stängning av verksamhet | 0..1 |
| ../startdatum | dateTime | Datum för start av verksamhet | 1..1 |
