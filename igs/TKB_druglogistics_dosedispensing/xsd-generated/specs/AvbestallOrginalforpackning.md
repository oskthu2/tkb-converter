##### Avbeställ originalförpackning

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att avbeställa originalförpackning.

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| Ordinationsid | Identitet för ordination i ordinationsregistret tilldelad av Apoteken Service |
| Beställningsid | Identitet för beställning tilldelad av dosproducenten |
| Radidentitet | Identitet för beställningsrad tilldelad av dosproducenten |
| GLN-kod | Identitet för dosapotek |
| Yrkeskod | Kod tilldelad yrkesgrupp i vården |

##### Verksamhetsregler

Vid avbeställning anges beställningsid samt radidentitet för de rader som ska avbeställas Patientidentitet ordinationsid och dosunderlagsversion valideras. Tjänsten returnerar samtliga ingående rader i beställningen med uppdaterad status (Mottagen, Avvisad, Expedierad, Avbeställd) En övergripande resultatkod med tillhörande meddelandetext och meddelandeid returneras.

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”. ref [1]

![Figur 1](AvbestallOrginalforpackning-1.jpg)

##### Fältbeskrivningar – Indata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighets information | Se ref [1] | Klass | 1..1 |  |
| Avbeställningsrader | Avbeställningsinfo |  | 1..* |  |
| Patientidentitet | Patientinformation, se ref[1] | Klass | 1..1 | Valideras |
| Beställningsid | UUID tilldelat vid beställning | 40 | 1..1 | Valideras |
| Radid | Unikt id för beställning och rad | 10 | 0..1 | Valideras |
| NPLPackId | Identitet på beställd förpackning | 16 | 0..1 | Valideras |
| Varunummer | Identitet på beställd förpackning | 8 | 0..1 | Valideras |
| Receptid | Identitet på recept | 40 | 0..1 | Valideras |
| OrdinationsId | Identitet på ordination | 20 | 1..1 | Valideras |
| Dosunderlagsversion | Underlag på dosrecept | 10 | 0..1 | Valideras |
| Meddelande | Meddelande till dosproducent | 1024 | 0..1 | Information |
| Önskad leveranstid |  | Kalender | 1..1 | Loggas |

##### Fältbeskrivningar – Utdata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Resultat av samtliga avbeställningar | Kod | 1..1 | Valideras |
| Meddelandeid |  | Kod | 1..1 | Valideras |
| Meddelandetext |  | 80 | 1..1 | Loggas |
| Beställningsrader | BeställningsInfoResponse | Klass | 0..* |  |
| Beställningsid | UUID | 40 | 1..1 | Valideras |
| Radid | Unikt id för beställning och rad | 10 | 0..1 | Valideras |
| Patientidentitet | PatientinfoResponse, se ref [1] | Klass | 1..1 | Valideras |
| NPLPackId | Identitet på beställd förpackning | 16 | 0..1 | Valideras |
| Varunummer | Identitet på beställd förpackning | 8 | 0..1 | Valideras |
| ReceptId | Identitet på recept UUID | 40 | 0..1 | Valideras |
| OrdinationsId | Identitet på ordination | 20 | 1..1 | Valideras |
| Dosunderlagsversion |  | 10 | 0..1 | Valideras |
| Beställningsresultat | Resultat av avbeställning: Avbeställd eller Ej Avbeställd | Enum | 0..1 | Valideras |
| Beställningsstatus | Status på beställning | Enum | 0..1 | Valideras |
| Statustidpunkt |  | Kalender | 1..1 | Loggas |
| Beställningsstatustext |  | 256 | 0..1 | Loggas |
| Meddelande från dosapotek |  | 1024 | 0..1 | Loggas |
| Önskat leveranstid |  | Kalender | 0..1 | Loggas |
| Planerat leveranstid |  | Kalender | 0..1 | Loggas |
| Dosmottagaridentitet |  | 13 | 0..1 | Loggas |
| Dosmottagarnamn |  | 40 | 0..1 | Loggas |
| Beställnings tid |  | Kalender | 0..1 | Loggas |
| Beställares förnamn |  | 25 | 1..1 | Loggas |
| Beställares efternamn |  | 25 | 1..1 | Loggas |
| Beställares arbetsplats | Arbetsplats i klartext | 40 | 1..1 | Loggas |
