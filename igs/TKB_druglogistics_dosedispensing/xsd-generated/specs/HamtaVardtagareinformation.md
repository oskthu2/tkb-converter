##### Hämta vårdtagarinformation

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att hämta information om en vårdtagare för dos. Tjänsten används i samband med att en ordination ska göras, eller att vårdtagarinformation ska uppdateras.

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| GLN-kod | Identitet för dosapotek |
| Yrkeskod | Kod tilldelad yrkesgrupp i vården |

##### Verksamhetsregler

Utsökning sker på patientidentitet (personnummer) Patienten ska tidigare vara registrerad via tjänsten ”SkapaVårdtagare”. Innan uppgifter kan registreras hos dosapotek skall ett samtycke till dos vara inhämtat och registrerat av en behörig vårdgivare. Patienten ska även ha samtyckt till HKDB. Tjänsten har möjlighet att returnera nuvarande och framtida vårdtagarstatus. För dosaktör Apoteket AB returnera endast nuvarande status.

Giltig status är Aktiv – Patienten får leveranser Vilande – Inga leveranser Tillfällig adressändring – Patienten får leveranser men till en tillfällig adress (används ej) Avförd – Patienten får inga leveranser Avliden – Patienten får inga leveranser En resultatkod (Information, varning eller fel) med tillhörande meddelandetext och identitet returneras:

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”. ref[1]

##### Fältbeskrivningar – Indata

| Attribut | Beskrivning | Max längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighetsinformation | BehorighetsinfoRequest, se ref[1] | Klass | 1..1 |  |
| Vårdtagarinformation |  |  | 1..1 |  |
| Typ av identitet | Person, samordning eller reservnummer | Enum | 1..1 | Valideras |
| Personid | Personnummer enligt format YYYYMMDDXXX X | 12 | 1..1 | Valideras |

![Figur 1](HamtaVardtagareinformation-1.jpg)

##### Fältbeskrivningar – Utdata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Information, varning eller fel | Enum | 1..1 |  |
| Meddelandetext |  | 80 | 1..1 |  |
| Meddelandeid |  | Kod | 1..1 |  |
| Vårdtagarinformation |  |  | 0..1 |  |
| Hemmaboende | Indikator om hemma boende (Ja/Nej) | Enum | 1..1 | Valideras |
| Dosapotek | GLN kod till dosapotek | 13 | 1..1 | Loggas |
| Dosapotek namn | Namn på dosapotek | 50 | 1..1 | Loggas |
| Första dosdag | Första dosdag | Kalendar | 1..1 | Valideras |
| Avvikandedosschema |  | Boolean | 1..1 | Valideras |
| Patientinformation | PatientinfoResponse, se ref [1] | Klass | 1..1 | Valideras |
| Hemmaboendeinformation | BoendeInfoResponse, se ref[1] | Klass | 0..1 | Valideras |
| Tillfälligadress | BoendeinfoResponse, se ref[1] | Klass | 0..1 | Valideras |
| Leveransadressinformation | LeveransadressinfoREsponse, se ref[1] | Klass | 0..1 | Valideras |
| Kontaktinformation | KontaktinfoResponse, se ref[1] | Klass | 1..1 | Valideras |
| Betalningsinformation | BetalningsinfoResponse, se ref[1] | Klass | 0..1 | Valideras |
| Produktionsinfo | ProduktionsinfoRespon se, se ref[1] | Klass | 0..1 | Valideras |
| Vardtagarstatus | Vardtagarstatusinfo, se ref[1] | Klass | 1..1 | Valideras |
| Vilandestatusorsak | Kompletterande information | 10 | 0..1 | Loggas |
