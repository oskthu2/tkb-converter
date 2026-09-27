## Tjänstekontrakt

### GetPatientContactInformation
Kontraktet används för att hämta kontaktuppgifter för en patient.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | IIType | Beskrivning | 1..1 |
| ../root | string |  |  |
| ../extension | string |  |  |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| Svarselemet  *) | Typ | Beskrivning | 1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - Svarselement
Beskrivning av regel för detta element.

##### Icke funktionella krav
Här skall de verksamhatskrav som gäller för aktuellt tjänstekonterakt beskrivas.

###### SLA-krav
Följande SLA-krav gäller för producenter av detta tjänstekontrakt.
Ange krav som avviker från de generella kraven som specificerats i kapitel 4.

#### Annan information om kontraktet
Abcde….

### UpdatePatientContactInformation
Kontraktet används för att hämta kontaktuppgifter för en patient.

#### Version
1.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| Element | Typ | Beskrivning | 1..1 |

| Svar |  |  |  |
| :--- | :--- | :--- | :--- |
| Svarselemet  *) | Typ | Beskrivning | 1 |

#### Övriga regler
Till denna informationsmängd finns regler som ej uttrycks i schemafilerna och tabellen ovan. Dessa återfinns nedan.
Fält 1 - Svarselement
Beskrivning av regel för detta element.

##### Icke funktionella krav
Inga funktionella krav.

###### SLA-krav
Inga avvikande SLA-krav gentemot kapitel 4.2

#### Annan information om kontraktet
