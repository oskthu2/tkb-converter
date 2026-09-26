##### Hämta beställningar

Denna specifikation beskriver gränssnittet mellan vårdsystem och dosapotek för att hämta beställningar av originalförpackning.

##### Definitioner och förkortningar

| Definition | Beskrivning |
| :--- | :--- |
| Ordinationsid | Identitet för ordination i ordinationsregistret tilldelad av Apoteken Service |
| Beställningsid | Identitet för beställning tilldelad av beställare |
| Radidentitet | Identitet för beställningsrad tilldelad av dosproducenten |
| GLN-kod | Identitet för dosapotek |
| Yrkeskod | Kod tilldelad yrkesgrupp i vården |
| Dosmottagare | kundadress känd av dosproducenten till leverans ska ske, kan vara Vårdcentral, boende, apotek mm |

##### Verksamhetsregler

Utsökning kan göras baserat på nedan sökbegrepp

* Patientidentitet (personnummer)
* Dosmottagare (dosmottagaridentitet)
* Beställning (beställningsidentitet)
* Beställare (Vårdgivares personnummer)

Endast ett sökbegrepp kan anges. Om utsökningskriterier överskrider maxgränsen skall inga rader returneras endast en felkod och felmeddelande att sökbegreppet måste minskas. Vid utsökning på dosmottagare eller beställning kan en eller flera identiteter anges. Vid utsökning kan beställningens status anges, om ingen status anges returneras samtliga beställningar oavsett status. Om inga till eller från datum anges i utsökning, kan max antal träffas överskridas. Detta ska då framgå i övergripande resultatkod och resultattext, inga beställningsrader ska returneras. Max antal träffar definieras av dosapoteket. En resultatkod (Information, varning eller fel) med tillhörande meddelandetext och identitet returneras:

Sökbegrepp

| Typ | Patient Pnr | Dosmottagare id | Beställnings id | Vårdgivares pnr | Best status | Till datum | Från datum |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Patient | JA |  |  |  | JA | JA | JA |
| Dosmottagare |  | JA (en eller flera) |  |  | JA | JA | JA |
| Beställning |  |  | JA (en eller flera) |  | JA | JA | JA |
| Vårdgivare Objektbeskrivning |  |  |  | JA | JA | JA | JA |

För detaljerad beskrivning av generella objekt, se dokument “Pascal – Objekt och felhantering.doc”. ref[1]

![Figur 1](HamtaOrginalforpackning-1.jpg)

##### Fältbeskrivningar - Indata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Glnkod | Adresserat dosapotek | 13 | 1..1 |  |
| Behörighets information | Behorighetsinfo Request, se ref[1] |  | 1..1 |  |
| Beställningsurval |  | Klass | 1..1 |  |
| Beställningsurval | Endast ett begrepp kan anges, Patienturval Dosmottagar Beställning Beställare | Enum |  | Valideras |
| Beställningsid | UUID | 40 | 0..* | Valideras |
| Patientidentiet | Personnummer enligt format YYYYMMDDX XXX | 12 | 0..1 | Valideras |
| Typ av identitet | Person, samordning eller reservnummer | Enum | 0..1 | Valideras |
| Patient förnamn |  | 25 | 0..1 | Loggas |
| Patient efternamn |  | 25 | 0..1 | Loggas |
| Vårdgivares identitet | HSAid | 64 | 0..1 | Valideras |
| Dosmottagare id |  | 10 | 0..* | Valideras |
| Beställningsstatus | Mottagen, Avvisad, Expedierad, Avbeställd | Enum | 0..1 | Valideras |
| Fråndatum |  | Kalender | 1..1 | Valideras |
| Tilldatum |  | Kalender | 1..1 | Valideras |

##### Fältbeskrivningar - Utdata

| Attribut | Beskrivning | Fält längd | Förekomst | Värdemängd |
| :--- | :--- | :--- | :--- | :--- |
| Resultatkod | Information, varning eller fel | Enum | 1..1 | Valideras |
| Meddelandetext |  | 80 | 1..1 | Loggas |
| Meddelandeid |  | Kod | 1..1 | Valideras |
| Beställningsrader |  | Klass | 0..* |  |
| Bestallningsidentitet |  | GUID | 1..1 | Valideras |
| Radid |  | 10 | 0..1 | Valideras |
| Patientidentiet | Patientinformation, se ref[1] | Klass | 1..1 | Valideras |
| Nplpackid |  | 16 | 0..1 | Valideras |
| Varunummer |  | 8 | 0..1 | Valideras |
| Receptid |  | 10 | 0..1 |  |
| Ordinationsid |  | 20 | 1..1 | Valideras |
| Dosunderlagsversion |  | 10 | 0..1 | Loggas |
| Beställningsresultat |  | 10 | 0..1 | Loggas |
| Beställningsresultat text |  | 80 | 0..1 | Loggas |
| Beställningsstatus | Mottagen, Avvisad, Expedierad, Avbeställd | Enum | 1..1 | Valideras |
| Statustidpunkt |  | Kalender | 1..1 | Loggas |
| Beställningstatustext |  | 80 | 0..1 | Loggas |
| Meddelande | Meddelande från dosapoteket | 1024 | 0..1 | Loggas |
| Önskat leveranstid |  | Kalender | 1..1 | Valideras |
| Planerat leveranstid |  | Kalender | 0..1 | Valideras |
| Dosmottagareid |  | 13 | 0..1 | Valideras |
| Dosmottagare namn |  | 40 | 0..1 | Valideras |
| Beställningstid |  | Kalender | 0..1 | Valideras |
| Beställare förnamn |  | 25 | 1..1 | Loggas |
| Beställare efternamn |  | 50 | 1..1 | Loggas |
| Beställares arbetsplats | Beställares arbetsplats | 256 | 1..1 | Valideras |
