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
| forskrivaresamtyckefornamn | string |  | 1..1 |
| forskrivaresamtyckeefternamn | string |  | 1..1 |
| forskrivaresamtyckeforskrivarkod | string |  | 1..1 |
| forskrivaresamtyckearbetsplatskod | string |  | 1..1 |
| forskrivaresamtyckeyrkeskod | YrkesKodEnum |  | 1..1 |
| Vardtagarinformation | Vardtagarinformation |  | 1..1 |
| ../hemmaboende | boolean |  | 1..1 |
| ../dosapoteksid | string |  | 1..1 |
| ../dosapoteknamn | string |  | 1..1 |
| ../forstadosdag | dateTime |  | 1..1 |
| ../avvikandedosschema | boolean |  | 1..1 |
| ../Patientinformation | PatientinfoResponse |  | 1..1 |
| ../../fornamn | string | Anvandarens fornamn. | 1..1 |
| ../../mellannamn | string | Anvandarens mellanamn. | 0..1 |
| ../../efternamn | string | Anvandarens efternamn. | 1..1 |
| ../../identitetstyp | IdentitetstypEnum |  | 1..1 |
| ../../personid | string | Anvandarens personid | 1..1 |
| ../../lanskod | string | Anvandarens folkbokforda lanskod | 0..1 |
| ../../kommunkod | string | Anvandarens folkbokforda kommunkod | 0..1 |
| ../Hemmaboendeinformation | BoendeinfoResponse |  | 0..1 |
| ../../adress | string |  | 0..1 |
| ../../postnummer | string |  | 0..1 |
| ../../ort | string |  | 0..1 |
| ../../telefon | string |  | 0..1 |
| ../../dosmottagareid | string |  | 0..1 |
| ../../dosmottagarenamn | string |  | 0..1 |
| ../Tillfalligadress | BoendeinfoResponse |  | 0..1 |
| ../../adress | string |  | 0..1 |
| ../../postnummer | string |  | 0..1 |
| ../../ort | string |  | 0..1 |
| ../../telefon | string |  | 0..1 |
| ../../dosmottagareid | string |  | 0..1 |
| ../../dosmottagarenamn | string |  | 0..1 |
| ../Leveransadressinformation | LeveransadressinfoResponse |  | 0..1 |
| ../../boendeenhetnamn | string |  | 1..1 |
| ../../boendeenhetid | string |  | 1..1 |
| ../../boendeenhetadress | string |  | 1..1 |
| ../../boendeenhetpostnummer | string |  | 1..1 |
| ../../boendeenhetpostort | string |  | 1..1 |
| ../../boendeenhetavdelning | string |  | 0..1 |
| ../../arbetsplatskod | string |  | 1..1 |
| ../../dosmottagareid | string |  | 0..1 |
| ../../dosmottagarenamn | string |  | 0..1 |
| ../Kontaktinformation | KontaktinfoResponse |  | 1..1 |
| ../../PALforskrivarkod | string |  | 0..1 |
| ../../PALfornamn | string |  | 0..1 |
| ../../PALefternamn | string |  | 0..1 |
| ../../anhorigkontaktnamn | string |  | 0..1 |
| ../../anhorigkontaktemail | string |  | 0..1 |
| ../../ansvarigkontaktnamn | string |  | 0..1 |
| ../../ansvarigkontaktemail | string |  | 0..1 |
| ../../ansvarigkontaktadress | string |  | 0..1 |
| ../../ansvarigkontaktpostnummer | string |  | 0..1 |
| ../../ansvarigkontaktpostort | string |  | 0..1 |
| ../../ansvarigkontakttelefon1 | string |  | 0..1 |
| ../../ansvarigkontakttelefon2 | string |  | 0..1 |
| ../../vardandeenhetid | string |  | 0..1 |
| ../../vardandeenhetnamn | string |  | 0..1 |
| ../../vardandeenhetpostort | string |  | 0..1 |
| ../../vardandeenhetpostnummer | string |  | 0..1 |
| ../Betalningsinformation | BetalningsinfoResponse |  | 0..1 |
| ../../form | string |  | 0..1 |
| ../../information | string |  | 0..1 |
| ../../betalningsansvarigfornamn | string |  | 0..1 |
| ../../betalningsansvarigefternamn | string |  | 0..1 |
| ../../betalningsansvarigadress | string |  | 0..1 |
| ../../betalningsansvarigpostnummer | string |  | 0..1 |
| ../../betalningsansvarigort | string |  | 0..1 |
| ../../betalningsansvarigtelefon | string |  | 0..1 |
| ../Produktionsinfo | ProduktionsinfoResponse |  | 0..1 |
| ../../dosaktor | string |  | 0..1 |
| ../../dosapotek | string |  | 1..1 |
| ../../dosapotekid | string |  | 1..1 |
| ../../stopptidbestallning | dateTime |  | 0..1 |
| ../../stopptidordination | dateTime |  | 0..1 |
| ../../forstadosdag | dateTime |  | 1..1 |
| ../../dosvecka | string |  | 0..1 |
| ../../doseringsschema | DoseringsschemaResponse |  | 1..1 |
| ../../../periodlangd | int | Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag. | 1..1 |
| ../../../intagstillfalle | IntagstillfalleResponse | Beskriver tid och mangd for intag av lakemedel. | 1..* |
| ../../../../intagstillfalle | int | Klockslag nar patienten ska inta medicinering. | 1..1 |
| ../../../../intagsmangd | double | Intagsmangd per tillfalle | 0..1 |
| ../../../../dagIPeriod | int | Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3. | 1..1 |
| ../../dosmottagareid | string |  | 0..1 |
| ../../dosmottagarenamn | string |  | 0..1 |
| ../Vardtagarstatus | Vardtagarstatusinfo |  | 0..* |
| ../../statuskod | VardtagarStatusEnum |  | 1..1 |
| ../../frantid | dateTime |  | 0..1 |
| ../../tilltid | dateTime |  | 0..1 |
| ../vilandestatusorsak | string |  | 0..* |
| akut | boolean |  | 0..1 |
| meddelandetillapotek | string |  | 1..1 |
| **Svar** | | | |
| resultatkod | ResultatkodEnum |  | 1..1 |
| meddelandetext | string |  | 1..1 |
| meddelandeid | int |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 0..1 |
| ../fornamn | string | Anvandarens fornamn. | 1..1 |
| ../mellannamn | string | Anvandarens mellanamn. | 0..1 |
| ../efternamn | string | Anvandarens efternamn. | 1..1 |
| ../identitetstyp | IdentitetstypEnum |  | 1..1 |
| ../personid | string | Anvandarens personid | 1..1 |
| ../lanskod | string | Anvandarens folkbokforda lanskod | 0..1 |
| ../kommunkod | string | Anvandarens folkbokforda kommunkod | 0..1 |
| Produktionsinformation | ProduktionsinfoResponse |  | 0..1 |
| ../dosaktor | string |  | 0..1 |
| ../dosapotek | string |  | 1..1 |
| ../dosapotekid | string |  | 1..1 |
| ../stopptidbestallning | dateTime |  | 0..1 |
| ../stopptidordination | dateTime |  | 0..1 |
| ../forstadosdag | dateTime |  | 1..1 |
| ../dosvecka | string |  | 0..1 |
| ../doseringsschema | DoseringsschemaResponse |  | 1..1 |
| ../../periodlangd | int | Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag. | 1..1 |
| ../../intagstillfalle | IntagstillfalleResponse | Beskriver tid och mangd for intag av lakemedel. | 1..* |
| ../../../intagstillfalle | int | Klockslag nar patienten ska inta medicinering. | 1..1 |
| ../../../intagsmangd | double | Intagsmangd per tillfalle | 0..1 |
| ../../../dagIPeriod | int | Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3. | 1..1 |
| ../dosmottagareid | string |  | 0..1 |
| ../dosmottagarenamn | string |  | 0..1 |
