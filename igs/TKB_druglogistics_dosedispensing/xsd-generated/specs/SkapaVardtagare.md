##### Skapa ny vårdtagare för dos

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att registrera en ny vårdtagare för dos.

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| Yrkeskod | Kod tilldelad yrkesgrupp i vården |
| Leveransenhet | Kundadress känd av dosproducenten till leverans ska ske |

##### Verksamhetsregler

Registrering av ny vårdtagare görs av förskrivare eller annan vårdpersonal. Uppgifter om till vem samtycke till dos getts registreras. I dagsläget kan endast samtycke ges till förskrivare med personlig förskrivarkod. Dosapoteket uppdaterar samtycket via Apotekens Service tjänster och skapar dosunderlaget. I dosunderlaget görs kopplingen till dosapotek. Innan dosunderlaget är skapat kan inga ordinationer skapas. Vårdtagaren ska ha ett HKDB konto för att bli dospatient. Betalningsinformation hanteras ej av denna tjänst. Ett separat avtal måste ifyllas, undertecknas och skickas till dosapoteket för att betalningsinformation ska registreras. Patienten registreras med betalningsformen kontant. Vid registrering av PAL valideras förskrivarkod. En resultatkod (Information, varning eller fel) med tillhörande meddelandetext och identitet returneras efter anrop.

##### Processbeskrivning

![Figur 1](SkapaVardtagare-1.png)

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”. ref [1]

##### Fältbeskrivningar - Indata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighetsinformation | BehorighetsinfoResponse, se ref [1] | Klass | 1..1 |  |
| Förskrivares samtycke förnamn |  | 25 | 1..1 |  |
| Förskrivares samtycke efternamn |  | 50 | 1..1 |  |
| Förskrivare samtycke förskrivarkod |  | 7 | 1..1 |  |
| Förskrivare samtycke arbetsplatskod |  | 13 | 1..1 |  |
| Förskrivare samtycke yrkeskod |  | Enum | 1..1 |  |
| Vårdtagarinformation | Vardtagareinform ation, se ref [1] | Klass | 1..1 |  |
| akut |  | Boolean | 1..1 |  |
| meddelande till apotek |  | 1024 | 0..1 |  |

![Figur 2](SkapaVardtagare-2.jpg)

##### Fältbeskrivningar - Utdata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Information, varning eller fel | Kod | 1..1 | Valideras |
| Meddelandetext |  | 80 | 1..1 | Loggas |
| Meddelandeid |  | Enum | 1..1 | Valideras |
| Patientidentitet | Patientinformation, se ref [1] | Patientinf ormation | 0..1 | Valideras |
| Produktionsinformation | Information om stopptider, grundschema mm, se ref [1] | Produktio nsinforma tion | 0..1 | Valideras |
