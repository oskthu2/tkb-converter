| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| epostadressServicedesk | string | E-postadress till aktörens servicedesk | 1..1 |
| kontaktpersonLista | KontaktpersonRequest | Kontaktpersoner. Minst en kontaktperson måste anges. | 1..* |
| ../befattning | string | Kontaktpersonens befattning. | 1..1 |
| ../efternamn | string | Efternamn på kontaktperson hos aktören. | 1..1 |
| ../epostadress | string | Kontaktpersonens e-postadress | 1..1 |
| ../fornamn | string | Förnamn på kontaktperson hos aktören. | 1..1 |
| ../telefonnummer | string | Kontaktpersonens telefonnummer. | 1..1 |
| orgNr | long | Aktörens organisationsnummer | 1..1 |
| telefonnummerServicedesk | string | Telefonnummer till aktörens servicedesk | 1..1 |
| **Svar** | | | |
| *(tomt)* | | Svaret innehåller inga element utöver utökningspunkter. | |
