##### Sök vårdande enhet

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att söka vårdande enheter.

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| Vårdande enhet | Vårdcentral eller sjukhus som vårdtagare tillhör |
| Kortnamn | Dosapotekets identitet på vårdande enhet |

##### Verksamhetsregler

Vid utsökning av vårdande enhet ska både del av namn och ort anges. Om utsökning resulterar i mer en max antal träffar (100) ska ett varningsmeddelande visas tillsammans med sökresultatet.

##### Objektsbeskrivning

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”. ref [1]

##### Fältbeskrivningar - Indata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighetsinformation | BehorighetsinfoResponse, se ref [1] | Klass | 1..1 |  |
| Vårdande enhets namn |  | 25 | 1..1 |  |
| Vårdande enhets ort |  | 25 | 1..1 |  |

##### Fältbeskrivningar - Utdata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Information, varning eller fel | Kod | 1..1 | Valideras |
| Meddelandetext |  | 80 | 1..1 | Loggas |
| Meddelandeid |  | Enum | 1..1 | Valideras |
| Vårdande enheter |  | Klass | 0..* |  |
| Apoteksid | GLNkod för dosapotek som vårdande enhet tillhör | 13 | 1..1 | Valideras |
| Vårdande enhets kortnamn |  | 25 | 0..1 | Loggas |
| Vårdande enhets namn |  | 25 | 0..1 | Loggas |
| Vårdande enhets ort |  | 25 | 0..1 | Loggas |
