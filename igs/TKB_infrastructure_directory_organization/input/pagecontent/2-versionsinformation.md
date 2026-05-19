## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen Infrastructure: Directory: Organization. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 5.0

#### Oförändrade tjänstekontrakt
Följande tjänstekontrakt är oförändrade:
GetHealthCareUnit
GetHealthCareUnitList
GetHealthCareProvider

#### Nya tjänstekontrakt
Följande tjänstekontrakt har tillkommit.

#### Förändrade tjänstekontrakt
Följande tjänstekontrakt har förändrats.
GetHealthCareUnitMembers
GetUnit
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetUnit | 4.0 | 4.1 | Kompatibel |
|  | 4.1 | 4.0 | Kompatibel |
|  | 4.0, 4.1 | 5.0 | Icke-kompatibel med avseende på användning av attributet texttelefon (textTelephoneNumber), Kompatibel för övriga parametrar. |
|  | 5.0 | 4.0, 4.1 | Icke-kompatibel med avseende på användning av attributet texttelefon (textTelephoneNumber).
 Kompatibel för övriga parametrar. |
| GetHealtCareUnitMembers | 2.0 | 2.1 | Kompatibel |
|  | 2.1 | 2.0 | Kompatibel |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.
-

### Version tidigare
Struktur enligt ovan

