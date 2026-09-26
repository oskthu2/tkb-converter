##### Hämta meddelanden

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att hämta meddelanden.

##### Dokumenthistorik

| Version | Datum | Författare | Beskrivning |
| :--- | :--- | :--- | :--- |
| 1.3 | 2011-10-05 | Jan Rozenbeek | Tidigare godkänd version |
| 1.4 | 2012-03-21 | Ronny Nordgren | Ändrat fältlängd på Sändare HSAid från 20 till 64 i Fältbeskrivningar – Utdata samt infört dokumenthistorik |
| 1.5 | 2012-03-27 | Jan Rozenbeek | Ändrat fältlängd till 64 för Vårdgivares personid - Indata |

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| Ordinationsid | Identitet för ordination i ordinationsregistret tilldelad av Apoteken Service |
| GLN-kod | Identitet för dosapotek |
| Yrkeskod | Kod tilldelad yrkesgrupp i vården |
| Meddelandeid | Id tilldelat av dosapoteket för meddelandet |

##### Verksamhetsregler

Denna tjänst används endast av vårdpersonal när meddelande ska hämtas från det lokala dosapotekets register. Meddelanden kan ha skickats i båda riktningarna mellan vårdgivare och dosapotek.

Dosapoteket kan initiera kommunikationen antingen genom att ange förskrivares förskrivarkod som adressat, eller patientens personnummer. Gruppförskrivarkoder kan ej anges. Dosapoteket kan endast anges som mottagare om meddelande skickas till dosapotek. Utsökning görs på meddelandetyp och till och från tidpunkt. Utsökning av meddelanden görs enligt nedan

* Patientbundna – Samtliga meddelande kopplade till en patientidentitet (personnummer)
* Meddelandebundna – Samtliga meddelande som är kopplade till en meddelandeidentitet
* Ordinationsbundna – Samtliga meddelande kopplade till ordination (ordinationsidentitet)
* Avsändare – Samtliga meddelanden skickade från vårdtagare (personnummer) eller av dosapoteket adresserade meddelande till förskrivare.
* Fristående – Meddelanden skickade mellan vårdgivare och dosapotek

Vid utsökning kan även meddelandestatus ”Läst/Oläst” anges. Meddelanden som är markerade som ”Borttagna” returneras ej. Om inget till eller fråntidpunkt anges vid anrop hämtas samtliga meddelande som är kopplade till vårdtagare. Meddelande som skickats från Dosapoteket till vårdgivare baseras på vårdgivares personnummer. Meddelanden lagras i maximalt 15 månader. Dosaktören Apoteket AB kommer att hantera patientbundna och

##### Sökbegrepp

| Meddelandetyp | Vårdgivare fkod | Vårdgivare personnr | Meddelande Id | Ordination id | Apotek id | Patient pnr | Meddel status | Från datum | Till datum |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Avsändare | JA | JA |  |  |  |  | JA | JA | JA |
| Meddelande |  |  | JA |  |  |  | JA | JA | JA |
| Ordination |  |  |  | JA |  |  | JA | JA | JA |
| Fristående |  |  |  |  | JA |  | JA | JA | JA |
| Personbundet |  |  |  |  |  | JA | JA | JA | JA |

##### Gruppförskrivarkoder

9000001 - Examinerad läkare som gör AT (AT-läkare)

9100009 - Examinerad läkare som saknar svensk legitimation och innehar vikariat

9200007 - Medicine studerande som innehar vikariat

9300005 - Examinerade nordiska läkare utan svensk legitimation

9400003 - Examinerade utomnordiska läkare utan svensk legitimation

9600008 - Diabetessköterskor

9610007 - Stomisköterskor

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”.

![Figur 1](HamtaMeddelanden-1.jpg)

##### Fältbeskrivningar - Indata

| Attribut | Beskrivning | Max längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighetsinformation | Ss ref[1] | Klass | 1..1 |  |
| Meddelande urval |  | Klass | 1..1 |  |
| Meddelandetyp | Patientbunden Ordinationsbunden Fristående Meddelandebunden Avsändarbundet | Enum | 1..1 | Valideras |
| Patientinformation | PatientinfoResponse, se ref[1] | Klass | 0..1 | Valideras |
| Meddelandeid | Obligatoriskt om meddelandetyp MeddelandeId | 10 | 0..1 | Valideras |
| Meddelande status | Läst Oläst Borttaget Alla | Enum | 1..1 | Valideras |
| Ordinationsid |  | 10 | 0..1 | Valideras |
| Vårdgivares personid | Obligatoriskt om meddelandetyp Avsändare HSAid | 64 | 0..1 | Valideras |
| Vårdgivares förskrivarkod | Obligatoriskt om meddelandetyp Avsändare | 7 | 0..1 | Valideras |
| Fråntidpunkt | Sändningstidpunkt from | Kalender | 0..1 | Valideras |
| Tilltidpunkt | Sändningtidpunkt Tom | Kalender | 0..1 | Valideras |

##### Fältbeskrivningar – Utdata

| Attribut | Beskrivning | Max längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Information, varning eller fel | Enum | 1..1 | Loggas |
| Meddelandeid |  | Kod | 1..1 | Loggas |
| Meddelandetext |  | 80 | 1..1 | Loggas |
| Meddelanden |  |  | 0..* |  |
| Meddelandeid |  | 10 | 1..1 |  |
| Patientinformation | PatientinfoResponse , se ref[1] | Klass | 0..1 | Loggas |
| Kommunikationsriktning | Från dosapotek eller Till dosapotek | Enum | 0..1 | Loggas |
| Tidigare meddelandeid |  | 10 | 0..1 | Loggas |
| Ordinationsid |  | 10 | 0..1 | Loggas |
| GLN-kod | Dosapotekets identitet | 13 | 0..1 | Loggas |
| Dosapotek namn | Dosapoteket namn | 40 | 0..1 | Loggas |
| Sändningstidpunkt |  | Kalender | 1..1 | Loggas |
| Sändare förnamn |  | 25 | 1..1 | Loggas |
| Sändare efternamn |  | 50 | 1..1 | Loggas |
| Sändare HSAid |  | 64 | 0..1 | loggas |
| Sändare yrkeskod |  | Enum | 0..1 | Loggas |
| Sändare arbetsplats |  | 40 | 1..1 | Loggas |
| Rubrik |  | 40 | 0..1 | Loggas |
| Prioritet | Hög, Normal eller Låg | Enum | 0..1 | Loggas |
| Meddelandestatus | Oläst eller Läst | Enum | 1..1 | Loggas |
| Meddelandestatus förnamn |  | 25 | 1..1 | Loggas |
| Meddelandestatus efternamn |  | 25 | 1..1 | Loggas |
| Meddelandestatus arbetsplats |  | 40 | 1..1 | Loggas |
| Meddelandestatus tidpunkt |  | Kalender | 1..1 | Loggas |
| Meddelande |  | 1024 | 1..1 | Loggas |
