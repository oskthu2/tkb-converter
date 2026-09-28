| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| orgNr | long | Aktörens organisationsnummer | 0..1 |
| **Svar** | | | |
| epostadressServicedesk | string | E-postadress till aktörens servicedesk | 0..1 |
| kontaktpersonLista | KontaktpersonResponse | Kontaktpersoner | 0..* |
| ../befattning | string | Kontaktpersonens befattning. | 1..1 |
| ../efternamn | string | Efternamn på kontaktperson hos aktören. | 1..1 |
| ../epostadress | string | Kontaktpersonens e-postadress | 1..1 |
| ../fornamn | string | Förnamn på kontaktperson hos aktören. | 1..1 |
| ../telefonnummer | string | Kontaktpersonens telefonnummer. | 1..1 |
| orgNr | long | Aktörens organisationsnummer | 0..1 |
| telefonnummerServicedesk | string | Telefonnummer till aktörens servicedesk | 0..1 |
