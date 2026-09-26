##### Uppdatera vårdtagarinformation

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att uppdatera information om en vårdtagare för dos

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| GLN-kod | Identitet för dosapotek |
| Yrkeskod | Kod tilldelad yrkesgrupp i vården |

##### Verksamhetsregler

Innan denna tjänst används måste vårdtagarinformation först hämtats via tjänsten HämtaVårdtagarinformation. Detta för att säkerställa att information som inte förändras behåller sina värden. Om ett tomt eller blankt värde skickas med vid uppdatering innebär detta att information tas bort. Värden som inte är uppdateringsbara skickas med för validering. En resultatkod (Information, varning eller fel) med tillhörande meddelandetext och identitet returneras: Vårdtagarstatus ”avliden” kan anges vilket innebär att produktionen blir vilande. Denna status hanteras även via notifieringstjänst från Apoteken Service . För vårdtagarstatus ”avliden” och ”avförd” anges inget slutdatum. Vid uppdatering måste ett boende anges.

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc” ref[1].

![Figur 1](UppdateraVardtagareinformation-1.jpg)

##### Fältbeskrivningar – Indata

| Attribut | Beskrivning | Fält längd | Förekom st | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighetsinformation | För detaljer se ref[1] |  | 1..1 |  |
| Vårdtagarinformation | För detaljer se ref[1] |  | 1..1 |  |
| Meddelande till dosapotek |  | 1024 | 0..1 | Loggas |

##### Fältbeskrivningar – Utdata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Information, varning eller fel | Enum | 1..1 |  |
| Meddelandetext |  | 80 | 1..1 |  |
| Meddelandeid |  | Kod | 1..1 |  |
| Patient | PatientinfoResponse , se ref [1] | Klass | 0..1 |  |
