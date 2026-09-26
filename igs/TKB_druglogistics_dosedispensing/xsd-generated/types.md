### AvbestallningsinfoRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Patientinformation | PatientinfoResponse |  | 1..1 |
| bestallningsid | string |  | 1..1 |
| radid | string |  | 0..1 |
| NPLpackid | string |  | 0..1 |
| varunummer | string |  | 0..1 |
| receptid | string |  | 0..1 |
| ordinationsid | string |  | 1..1 |
| dosunderlagsversion | string |  | 0..1 |
| meddelandetillapotek | string |  | 0..1 |
| onskadleveranstid | dateTime |  | 0..1 |

### BehorighetsinfoRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fornamn | string |  | 1..1 |
| efternamn | string |  | 1..1 |
| forskrivarkod | string |  | 0..1 |
| yrkeskod | YrkesKodEnum |  | 0..1 |
| arbetsplatskod | string |  | 1..1 |
| hsaid | string |  | 0..1 |
| personnummer | string |  | 0..1 |
| organisationsnummer | string |  | 0..1 |

### BestallningsinfoRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Patientinformation | PatientinfoResponse |  | 1..1 |
| bestallningsid | string |  | 1..1 |
| radid | string |  | 0..1 |
| NPLpackid | string |  | 0..1 |
| varunummer | string |  | 0..1 |
| receptid | string |  | 0..1 |
| ordinationsid | string |  | 1..1 |
| dosunderlagsversion | string |  | 0..1 |
| antalforpackningar | string |  | 0..1 |
| akutbestallning | boolean |  | 0..1 |
| maxveckodos | string |  | 0..1 |
| maxdygnsdos | string |  | 0..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |
| meddelandetillapotek | string |  | 0..1 |
| onskadleveransdatum | dateTime |  | 1..1 |

### BestallningsinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| bestallningsid | string |  | 1..1 |
| radid | string |  | 0..1 |
| Patientinformation | PatientinfoResponse |  | 1..1 |
| NPLpackid | string |  | 0..1 |
| varunummer | string |  | 0..1 |
| receptid | string |  | 0..1 |
| ordinationsid | string |  | 1..1 |
| dosunderlagsversion | string |  | 0..1 |
| bestallningsresultat | int |  | 0..1 |
| bestallningsresultattext | string |  | 0..1 |
| bestallningsstatus | BestallningsStatusEnum |  | 1..1 |
| statustidpunkt | dateTime |  | 1..1 |
| bestallningstatustext | string |  | 0..1 |
| meddelandefranapotek | string |  | 0..1 |
| onskadleveranstid | dateTime |  | 0..1 |
| planeradleveranstid | dateTime |  | 0..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |
| bestallningstid | dateTime |  | 0..1 |
| bestallarefornamn | string |  | 1..1 |
| bestallareefternamn | string |  | 1..1 |
| bestallarearbetsplats | string |  | 1..1 |

### BestallningsutvalRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| bestallningsurval | BestallningsurvalEnum |  | 1..1 |
| bestallningsid | string |  | 0..1 |
| patientid | string |  | 0..1 |
| patientidtyp | IdentitetstypEnum |  | 0..1 |
| patientfornamn | string |  | 0..1 |
| patientefternamn | string |  | 0..1 |
| vardgivarid | string |  | 0..1 |
| dosmottagareid | string |  | 0..* |
| bestallningsstatus | BestallningsStatusEnum |  | 1..1 |
| frandatum | dateTime |  | 1..1 |
| tilldatum | dateTime |  | 1..1 |

### BetalningsinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| form | string |  | 0..1 |
| information | string |  | 0..1 |
| betalningsansvarigfornamn | string |  | 0..1 |
| betalningsansvarigefternamn | string |  | 0..1 |
| betalningsansvarigadress | string |  | 0..1 |
| betalningsansvarigpostnummer | string |  | 0..1 |
| betalningsansvarigort | string |  | 0..1 |
| betalningsansvarigtelefon | string |  | 0..1 |

### BoendeinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| adress | string |  | 0..1 |
| postnummer | string |  | 0..1 |
| ort | string |  | 0..1 |
| telefon | string |  | 0..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |

### DoseringsschemaResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| periodlangd | int | Antal dagar som dosering skall galla. Vid regelbunden dosering anges periodlangd = 1 Vid oregelbunden dosering anges antal dagar som intervallet omfattar. Exempelvis 2 om intag ska ske varannan dag. | 1..1 |
| intagstillfalle | IntagstillfalleResponse | Beskriver tid och mangd for intag av lakemedel. | 1..* |

### HamtaMeddelandeninfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| meddelandeid | string |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 0..1 |
| kommunikationsriktning | KommunikationsriktningEnum |  | 0..1 |
| tidigaremeddelandeid | string |  | 0..1 |
| ordinationsid | string |  | 0..1 |
| glnkod | string |  | 0..1 |
| dosapoteknamn | string |  | 0..1 |
| sandningstidpunkt | dateTime |  | 1..1 |
| sandarefornamn | string |  | 1..1 |
| sandareefternamn | string |  | 1..1 |
| sandarehsaid | string |  | 0..1 |
| sandareyrkeskod | YrkesKodEnum |  | 0..1 |
| sandarearbetsplats | string |  | 0..1 |
| rubrik | string |  | 0..1 |
| prioritet | MeddelandePrioritetEnum |  | 0..1 |
| meddelandestatus | MeddelandeStatusEnum |  | 1..1 |
| meddelandestatusfornamn | string |  | 1..1 |
| meddelandestatusefternamn | string |  | 1..1 |
| meddelandestatusarbetsplats | string |  | 1..1 |
| statustidpunkt | dateTime |  | 1..1 |
| meddelande | string |  | 1..1 |

### IntagstillfalleResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| intagstillfalle | int | Klockslag nar patienten ska inta medicinering. | 1..1 |
| intagsmangd | double | Intagsmangd per tillfalle | 0..1 |
| dagIPeriod | int | Dag i perioden nar intag skall goras. Exempel: Intag ska ske varje mandag och onsdag och startdatum ar pa en mandag. Mandag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period= 1. Onsdag Insattningsdatum = 2010-01-01, Periodlangd=7, Dag i period=3. | 1..1 |

### KontaktinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| PALforskrivarkod | string |  | 0..1 |
| PALfornamn | string |  | 0..1 |
| PALefternamn | string |  | 0..1 |
| anhorigkontaktnamn | string |  | 0..1 |
| anhorigkontaktemail | string |  | 0..1 |
| ansvarigkontaktnamn | string |  | 0..1 |
| ansvarigkontaktemail | string |  | 0..1 |
| ansvarigkontaktadress | string |  | 0..1 |
| ansvarigkontaktpostnummer | string |  | 0..1 |
| ansvarigkontaktpostort | string |  | 0..1 |
| ansvarigkontakttelefon1 | string |  | 0..1 |
| ansvarigkontakttelefon2 | string |  | 0..1 |
| vardandeenhetid | string |  | 0..1 |
| vardandeenhetnamn | string |  | 0..1 |
| vardandeenhetpostort | string |  | 0..1 |
| vardandeenhetpostnummer | string |  | 0..1 |

### LeveransadressinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| boendeenhetnamn | string |  | 1..1 |
| boendeenhetid | string |  | 1..1 |
| boendeenhetadress | string |  | 1..1 |
| boendeenhetpostnummer | string |  | 1..1 |
| boendeenhetpostort | string |  | 1..1 |
| boendeenhetavdelning | string |  | 0..1 |
| arbetsplatskod | string |  | 1..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |

### MeddelandeninfoRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Meddelandetyp | MeddelandetypEnum |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 0..1 |
| kommunikationsriktning | KommunikationsriktningEnum |  | 0..1 |
| tidigaremeddelandeid | string |  | 0..1 |
| ordinationsid | string |  | 0..1 |
| glnkod | string |  | 0..1 |
| sandningstidpunkt | dateTime |  | 1..1 |
| rubrik | string |  | 0..1 |
| prioritet | MeddelandePrioritetEnum |  | 0..1 |
| meddelande | string |  | 1..1 |

### MeddelandenutvalRequest

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Meddelandetyp | MeddelandetypEnum |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 0..1 |
| meddelandeid | string |  | 0..1 |
| meddelandestatus | MeddelandeStatusEnum |  | 0..1 |
| ordinationsid | string |  | 0..1 |
| vardgivarespersonid | string |  | 0..1 |
| forskrivarkod | string |  | 0..1 |
| frantid | dateTime |  | 0..1 |
| tilltid | dateTime |  | 0..1 |

### PatientinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fornamn | string | Anvandarens fornamn. | 1..1 |
| mellannamn | string | Anvandarens mellanamn. | 0..1 |
| efternamn | string | Anvandarens efternamn. | 1..1 |
| identitetstyp | IdentitetstypEnum |  | 1..1 |
| personid | string | Anvandarens personid | 1..1 |
| lanskod | string | Anvandarens folkbokforda lanskod | 0..1 |
| kommunkod | string | Anvandarens folkbokforda kommunkod | 0..1 |

### ProduktionsinfoResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| dosaktor | string |  | 0..1 |
| dosapotek | string |  | 1..1 |
| dosapotekid | string |  | 1..1 |
| stopptidbestallning | dateTime |  | 0..1 |
| stopptidordination | dateTime |  | 0..1 |
| forstadosdag | dateTime |  | 1..1 |
| dosvecka | string |  | 0..1 |
| doseringsschema | DoseringsschemaResponse |  | 1..1 |
| dosmottagareid | string |  | 0..1 |
| dosmottagarenamn | string |  | 0..1 |

### ProduktsortimentResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| nplid | string |  | 1..1 |
| nplpackid | string |  | 1..1 |
| glnkod | string |  | 0..* |

### UppdateraMeddelandestatus

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| meddelandeid | string |  | 1..1 |
| meddelandestatus | MeddelandeStatusEnum |  | 1..1 |
| statustidpunkt | dateTime |  | 1..1 |

### VardandeEnhetResponse

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| vardandeenhetid | string |  | 1..1 |
| vardandeenhetnamn | string |  | 1..1 |
| vardandeenhetpostort | string |  | 1..1 |
| glnkod | string |  | 1..1 |

### Vardtagarinformation

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hemmaboende | boolean |  | 1..1 |
| dosapoteksid | string |  | 1..1 |
| dosapoteknamn | string |  | 1..1 |
| forstadosdag | dateTime |  | 1..1 |
| avvikandedosschema | boolean |  | 1..1 |
| Patientinformation | PatientinfoResponse |  | 1..1 |
| Hemmaboendeinformation | BoendeinfoResponse |  | 0..1 |
| Tillfalligadress | BoendeinfoResponse |  | 0..1 |
| Leveransadressinformation | LeveransadressinfoResponse |  | 0..1 |
| Kontaktinformation | KontaktinfoResponse |  | 1..1 |
| Betalningsinformation | BetalningsinfoResponse |  | 0..1 |
| Produktionsinfo | ProduktionsinfoResponse |  | 0..1 |
| Vardtagarstatus | Vardtagarstatusinfo |  | 0..* |
| vilandestatusorsak | string |  | 0..* |

### Vardtagarstatusinfo

Domänschema `druglogistics_dosedispensing_1.0.xsd` (namnrymd `urn:riv:druglogistics:dosedispensing:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| statuskod | VardtagarStatusEnum |  | 1..1 |
| frantid | dateTime |  | 0..1 |
| tilltid | dateTime |  | 0..1 |
