##### Beställ originalförpackning

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att beställa originalförpackning.

##### Dokumenthistorik

| Version | Datum | Författare | Beskrivning |
| :--- | :--- | :--- | :--- |
| 1.3 | 2011-10-05 | Jan Rozenbeek | Tidigare godkänd version |
| 1.4 | 2012-03-21 | Ronny Nordgren | Ändrat fältlängd på Dosmottagareid från 10 till 13 i Fältbeskrivningar – Utdata (Beställningrader) samt infört dokumenthistorik |

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| Ordinationsid | Identitet för ordination i ordinationsregistret tilldelad av Apoteken Service |
| Beställningsid | Identitet för beställning tilldelad av beställare följer GUID format |
| Radidentitet | Identitet för beställningsrad tilldelad av dosproducenten |
| GLN-kod | Identitet för dosapotek |
| Yrkeskod | Kod tilldelad yrkesgrupp i vården |
| Dosunderlagversion | Version på dosrecept används för att säkerställa att korrekt underlag används |
| Receptid | Identitet som tilldelats e-recept |
| Dosmottagare | kundadress känd av dosproducenten till leverans ska ske , källa är EXPO, kan vara särskillt boende, vårdcentral, apotek eller dyl |

##### Verksamhetsregler

Beställning kan göras på NPLpackId eller varunummer.

Om en beställningsrad felar, misslyckas hela beställningen. En beställning kan ha följande tillstånd Mottagen – Validerad och godkänd av dosapoteket Avvisad – Validerad men ej godkänd av dosapoteket Avbeställd – Avbeställd av vårdpersonal Expedierad – Levererad till vård Beställningen ska innehålla antingen leveransadress till ordinärt eller särskilt boende, dvs. dosmottagare.

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”. ref[1]

![Figur 1](BestallOrginalforpackning-1.jpg)

##### Fältbeskrivningar – Indata

| Attribut | Beskrivning | Fält längd | Förekom st | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighetsinformation | Se ref[1] |  | 1..1 |  |
| Beställningsrader | BestallningsinfoRequest |  | 1..* |  |
| Patientidentiet | Patientinformation, se ref[1] | Klass | 1..1 | Valideras |
| Beställningsidentitet | Tilldelat id enligt UUID | 40 | 1..1 | Valideras |
| Radid | Identitet på rad | 10 | 0..1 | Valideras |
| NPLPackId | Identitet på beställd förpackning | 16 | 0..1 | Valideras |
| Varunummer | Identitet på beställd förpackning | 8 | 0..1 | Valideras |
| ReceptId | Identitet på recept | 40 | 0..1 | Loggas |
| OrdinationsId | Identitet på ordination | 20 | 1..1 | Valideras |
| Dosunderlagsversion |  | 10 | 0..1 | Valideras |
| Antal förpackningar |  | 10 | 1..1 | Valideras |
| Akutbeställning | Ja eller Nej | Enum | 0..1 | Valideras |
| Max veckodos |  | 10 | 0..1 | Valideras |
| Max dygnsdos |  | 10 | 0..1 | Valideras |
| Dosmottagares identitet |  | 13 | 1..1 | Valideras |
| Dosmottagare namn |  | 40 | 1..1 | Valideras |
| Meddelande | Meddelande till dosproducent | 1024 | 0..1 | Loggas |
| Önskat leveransdatum |  | Kalender | 0..1 | Valideras |

##### Fältbeskrivningar - Utdata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Resultat av beställning | Kod | 1..1 | Valideras |
| Meddelandetext |  | 80 | 1..1 | Loggas |
| Meddelandeid |  | Enum | 1..1 | Valideras |
| Beställningrader |  |  | 0..* |  |
| Beställningsid | Tilldelat beställningsidentitet | GUID | 1..1 | Valideras |
| Radid | Tilldelat radidentitet | 10 | 0..1 | Valideras |
| Patientidentitet | Patientinformation, se ref[1] | Klass | 1..1 | Valideras |
| NPLPackid | Identitet på förpackning | 16 | 0..1 | Valideras |
| Varunummer | Identitet på förpackning | 8 | 0..1 | Valideras |
| Receptid | Identitet på recept | 40 | 0..1 | Valideras |
| Ordinationsid | Identitet på ordination | 20 | 1..1 | Valideras |
| Dosunderslagversion |  | 10 | 0..1 | Valideras |
| Beställningsresultat | Resultat av beställning | Kod | 0..1 | Valideras |
| Beställningsresultattext |  | 80 | 0..1 | Loggas |
| Beställningsstatus | Mottagen, Avvisad, Expedierad, Avbeställd | Enum | 1..1 | Valideras |
| Statustidpunkt |  | Kalender | 1..1 | Loggas |
| Beställningsstatustext |  | 256 | 1..1 | Loggas |
| Meddelande från apotek |  | 1024 | 0..1 | Loggas |
| Önskadleveranstid |  | Kalender | 0..1 | Loggas |
| Planeradleveranstid |  | Kalender | 0..1 | Loggas |
| Dosmottagareid |  | 13 | 0..1 | Loggas |
| Dosmottagarenamn |  | 256 | 0..1 | Loggas |
| Beställningstid |  | Kalender | 0..1 | Loggas |
| Beställare förnamn |  | 25 | 1..1 | Loggas |
| Beställare efternamn |  | 50 | 1..1 | Loggas |
| Beställare arbetsplats |  | 256 | 1..1 | Loggas |
