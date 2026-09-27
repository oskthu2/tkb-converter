## Tjänstekontrakt

### LookupResidentsForProfile
Tjänst för att hämta uppgifter för 1..* personidentiteter.
Mängden data i svaret är beroende av den profil som efterfrågas. Se kap 8 för mer information.

#### Version
2.0

#### Fältregler
Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| personId | PersonalIdentity | Array med personidentiteter som efterfrågas. Maxantal 500 | 1..* |
| profile | LookupProfile | Profil för returnerat data. | 1..1 |
| Svar |  |  |  |
| LookupResidentsForProfile | LookupResidentsResponse | LookupResidentsResponse innehållande folkbokföringsposter för efterfrågade och funna personidentiteter | 1..1 |

#### Övriga regler
Tjänsten skall åtkomstkontrollera om anropande system/aktör har behörighet.

#### Exempel

##### Exempel på anrop
Se LookupResidentsForProfileRequest.xml.

##### Exempel på svar
Se LookupResidentsForProfileResponse.xml

