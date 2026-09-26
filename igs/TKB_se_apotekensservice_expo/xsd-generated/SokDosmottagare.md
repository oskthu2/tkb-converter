| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| aktorsnamn | string | Aktörens namn. Inledande del av aktörsnamnet kan anges | 0..1 |
| arbetsplatskod | string | Arbetsplatskod. Inledande del av arbetsplatskoden kan anges | 0..1 |
| dosproducentsNamn | string | Dosproducentens namn. Inledande del av dosproducentens kan anges | 0..1 |
| kommunkod | string | Kommunkod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| mottagarnamn | string | Mottagarens namn. Inledande del av mottagarnamn kan anges | 0..1 |
| postort | string | Arbetsplatsort till dosmottagare. Inledande del av arbetsplatsorten kan anges | 0..1 |
| typ | string | Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. | 0..1 |
| **Svar** | | | |
| resultat | SokDosmottagareResultatResponse | Lista med apotek och kopplade dosmottagare som utdata | 0..* |
| ../apotek | HamtaApoteksInfoResponse | Apoteksinformation för dosproducenten. | 0..1 |
| ../../apoteksinformationLista | ApoteksinformationResponse | Lista innehållande ett eller flera Apoteksinformation. | 1..* |
| ../../../aktorsnamn | string | Officiellt namn för aktör | 0..1 |
| ../../../aktorsorgnr | long | Aktörens organisationsnummer. | 0..1 |
| ../../../allmantelefon | string | Telefonnummer för allmänheten | 0..1 |
| ../../../besoksadress | string | Expeditionsställets besöksadress | 0..1 |
| ../../../eReceptDjur | boolean | Markering gällande om apoteket kan expediera elektroniska djurrecept. | 1..1 |
| ../../../fax | string | Expeditionsställets faxnummer | 0..1 |
| ../../../glnKod | string | Expeditionsställets GLN-kod | 1..1 |
| ../../../huvudtypkod | string | Kod som beskriver huvudverksamheten för expeditionsstället | 0..1 |
| ../../../namn | string | Expeditionsställets officiella namn | 0..1 |
| ../../../ort | string | Expeditionsställets besöksort | 0..1 |
| ../../../slutdatum | dateTime | Datum för stängning av verksamhet | 0..1 |
| ../../../startdatum | dateTime | Datum för start av verksamhet | 1..1 |
| ../dosmottagare | DosmottagareResponse |  | 0..* |
| ../../adress | string | Adress till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| ../../apoteksIdDosmottagare | string | Apoteks-id för dosmottagare om dosmottagare är av typen apotek. | 0..1 |
| ../../arbetsplatskod | string | Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning. | 0..1 |
| ../../avdelning | string | Avdelning inom dosmottagare. | 0..1 |
| ../../dosmottagarId | string | Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket. | 1..1 |
| ../../kommunkod | string | Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB. | 0..1 |
| ../../lanskod | string | Länskod till vilken dosmottagaren tillhör. Kod enligt SCB. | 0..1 |
| ../../mottagarnamn | string | Namn på dosmottagare. | 1..1 |
| ../../postnummer | string | Postnummer till dosmottagare. | 0..1 |
| ../../postort | string | Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'. | 0..1 |
| ../../typ | string | Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek). | 1..1 |
