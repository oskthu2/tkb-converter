### Dokumenthistorik

| Version | Datum | Författare | Beskrivning |
| :--- | :--- | :--- | :--- |
| 1.4 | 2011-11-29 | Jan Rozenbeek | Tidigare godkänd version |
| 1.5 | 2012-03-21 | Ronny Nordgren | Ändrat fältlängd på HSAId från 20 till 64 i Objekt-Behörighetsinformation samt Infört dokumenthistorik |

### Objekt och felhantering

Denna specifikation beskriver generella objekt och definitioner samt felhantering i gränssnittet mellan vårdsystem och dosapotek .

### Felhantering

Varje anrop innehåller behörighetsinformation, vilken endast behöver logggas på mottagande sida. Ingen validering behöver göras på informationen endast loggning. Detta för spåra och felsöka. Som resultat av varje anrop returneras en generell kod som indikerar om anropet lyckats eller misslyckats, alternativ innehåller varningar. Utöver detta returneras ett meddelandeidentitet och tillhörande meddelandetext. Meddelandetexterna är inte avsett för att visas för användare.

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Resultatkod | Resultat av anrop (1=Information, 2=varning eller 3=fel) | Enum | 1..1 |
| Meddelandetext | Information | 80 | 1..1 |
| Meddelandeid | Identitet kopplad till meddelandetext | integer | 1..1 |

Om flera resultatrader returneras som t.ex. vid avbeställ originalförpackning, innehåller dessa rader information om avbeställningen lyckats eller misslyckats samt beställningsstatus (avbeställd, expedierad).

### Objekt-Patientinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Förnamn |  | 25 | 1..1 |
| Efternamn |  | 25 | 0..1 |
| Identitetstyp | Person, samordnings eller reservnummer | Enum | 1..1 |
| Personid |  | 12 | 1..1 |

### Objekt-Behörighetsinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Förnamn |  | 25 | 1..1 |
| Efternamn |  | 25 | 1..1 |
| Förskrivarkod |  | 7 | 0..1 |
| Yrkeskod |  | Enum | 1..1 |
| Arbetsplatskod |  | 13 | 1..1 |
| Hsaid | Förskrivares hsaid | 64 | 0..1 |
| Personnummer |  | 12 | 1..1 |
| Organisationsnummer |  | 20 | 0..1 |

### Objekt-BoendeinfoResponse

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Adress |  | 40 | 0..1 |
| Postnummer |  | 10 | 0..1 |
| Ort |  | 20 | 0..1 |
| Telefon |  | 15 | 1..1 |
| Dosmottagareid |  | 13 | 1..1 |
| Dosmottagarenamn |  | 40 | 1..1 |

### Objekt-Leveransadress

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Boendeenhetsnamn |  | 40 | 0..1 |
| Boendeenhetsid |  | 10 | 0..1 |
| Boendeenhetsadress |  | 20 | 0..1 |
| Boendeenhetspostnr |  | 10 | 1..1 |
| Boendeenhetsavdelning |  | 10 | 0..1 |
| Arbetsplatskod |  | 13 | 1..1 |
| Dosmottagareid |  | 13 | 1..1 |
| Dosmottagarenamn |  | 40 | 1..1 |

### Objekt-Kontaktinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| PAL förskrivarkod |  | 7 | 0..1 |
| PAL förnamn |  | 25 | 0..1 |
| PAL efternamn |  | 25 | 0..1 |
| Anhörigkontaktnamn | Används ej | 50 | 0..1 |
| Anhörigkontaktemail | Används ej | 40 | 0..1 |
| Ansvarigkontaktnamn |  | 50 | 0..1 |
| Ansvarigkontaktadress |  | 50 | 0..1 |
| Ansvarigkontaktpostnummer |  | 5 | 0..1 |
| Ansvarigkontaktpostort |  | 25 | 0..1 |
| Ansvarigkontakttelefon1 |  | 15 | 0..1 |
| Ansvarigkontakttelefon2 |  | 15 | 0..1 |
| Vårdandeenhetid |  | 10 | 0..1 |
| Vårdandeenhetnamn |  | 40 | 0..1 |
| Vårdandeenhetpostnummer |  | 5 | 0..1 |
| Vårdandeenhetpostort |  | 25 | 0..1 |

### Objekt-Betalningsinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Betalningsform |  | 10 | 0..1 |
| Information |  | 40 | 0..1 |
| Betalningsansvarig fornamn |  | 25 | 0..1 |
| Betalningsansvarig fornamn |  | 25 | 0..1 |
| Betalningsansvarig adress |  | 25 | 0..1 |
| Betalningsansvarig postnummer |  | 10 | 0..1 |
| Betalningsansvarig ort |  | 15 | 0..1 |
| Betalningsansvarig telefon |  | 15 | 0..1 |

### Objekt-Produktionsinformation

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Dosaktör |  | 10 | 1..1 |
| Dosapotek namn |  | 25 | 1..1 |
| Betalningsansvarig fornamn | GLN-kod | 13 | 0..1 |
| Stopptid beställning | Absoluttid | Kalender | 0..1 |
| Stopptid ordination | Absoluttid | Kalender | 1..1 |
| Första dosdag |  | Kalender | 0..1 |
| Dosvecka |  | 10 | 0..1 |
| Doseringsschema |  | Klass | 1..1 |
| Dosmottagareid |  | 13 | 1..1 |
| Dosmottagarenamn |  | 40 | 1..1 |

### Objekt-Vårdtagarstatus

| Attribut | Beskrivning | Fält längd | Förekomst |
| :--- | :--- | :--- | :--- |
| Vårdtagar status |  | Enum | 1..1 |
| Från tid |  | Kalender | 0..1 |
| Till tid |  | Kalender | 0..1 |

### Enum-Yrkeskod

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Läkare |  | LK |
| Barnmorska |  | BM |
| Sjuksköterska |  | SJ |
| Tandläkare |  | TL |
| Röntgensjuksköterska |  | RS |
| Tandhygenist |  | TH |

### Enum-Vårdtagarstatus

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Aktiv |  | 1 |
| Vilade |  | 2 |
| Tillfälligadressändring |  | 3 |
| Avförd |  | 4 |
| Avliden |  | 5 |
| Ej registrerad |  | 6 |

### Enum-Meddelandestatus

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Läst |  | L |
| Oläst |  | O |
| Borttagen |  | B |
| Borttagen/Läst/Oläst |  | BLO |
| Läst/Oläst |  | LO |
| Borttagen/Läst |  | BL |

### Enum-kommunikationsriktning

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Till dosapotek |  | 1 |
| Från dosapotek |  | 2 |

### Enum-Meddelandetyp

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Ordinationsbundet | Används ej | OB |
| Personbundet |  | PB |
| Fristående |  | FR |
| Meddelandebundet |  | MB |

### Enum-Meddelandeprio

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Låg |  | L |
| Normal |  | N |
| Hög |  | H |

### Enum-Beställningsurval

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Personurval | Endast en | PU |
| Dosmottagare | En eller flera | DM |
| Beställningsidentitet | En eller flera | BU |
| Vårdgivare | Endast en | VG |

### Enum-Beställningsstatus

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Mottagen |  | 1 |
| Avvisad |  | 2 |
| Expedierad |  | 3 |
| Avbeställd |  | 4 |

### Enum-Identitetstyp

| Värde | Beskrivning | Värdemängd |
| :--- | :--- | :--- |
| Personnummer |  | P |
| Samordningsnummer | Används ej | S |
| Reservnummer | Används ej | R |
