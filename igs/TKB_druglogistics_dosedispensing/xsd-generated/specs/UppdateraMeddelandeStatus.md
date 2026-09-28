##### Uppdatera meddelandestatus

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att uppdatera meddelandestatus för ett eller flera meddelanden som skickats mellan vårdsystem och dosapotek .

##### Definitioner och förkortningar

-

##### Verksamhetsregler

Meddelande kan uppdateras från status ”Oläst” till ”Läst” ”Oläst” till ”Borttaget” ”Läst” till ”Borttaget” Ett eller flera meddelande kan ändra status i samma anrop. Borttagna meddelanden visas ej när tjänsten HämtaMeddelanden används. En resultatkod (Information, varning eller fel) med tillhörande meddelandetext och identitet returneras:

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”. ref[1]

##### Fältbeskrivningar - Indata

| Attribut | Beskrivning | Max längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighetsinformation | Se ref[1] | Klass | 1..1 |  |
| UppdateraMeddelandestatus |  | Klass | 1..* |  |
| Meddelandeidentitet |  | 10 | 1..1 |  |
| Meddelandestatus | Läst eller Oläst | Enum | 1..1 |  |
| Statustidpunkt |  | Kalender | 1..1 |  |

![Figur 1](UppdateraMeddelandeStatus-1.jpg)

##### Fältbeskrivningar – Utdata

| Attribut | Beskrivning | Max längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Information, varning eller fel | Enum | 1..1 | Valideras |
| Meddelandetext |  | 80 | 1..1 | Loggas |
| Meddelandeid |  | Kod | 1..1 | Valideras |
| Meddelandeninfo |  |  | 0..* |  |
| Meddelandeidentitet |  | 10 | 1..1 |  |
| Meddelandestatus | Läst eller Borttaget | Enum | 1..1 |  |
| Statustidpunkt |  | Kalender | 1..1 |  |
