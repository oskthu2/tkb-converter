## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen Infrastructure: Directory: Employee. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 4.0

#### Oförändrade tjänstekontrakt

#### Nya tjänstekontrakt
Inga tjänstekontrakt har tillkommit.

#### Förändrade tjänstekontrakt
GetCommissionMembersIncludingProtectedPerson
GetCommissionMembers
GetEmployeeIncludingProtectedPerson
GetEmployee
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetEmployeeIncludingProtectedPerson |  |  |  |
| GetEmployeeIncludingProtectedPerson |  |  |  |
| GetEmployeeIncludingProtectedPerson |  |  |  |
|  | 3.0 | 4.0 | Icke-kompatibel med avseende på användning av attributet kön (gender), om tjänsten följt XML-schema för domänen.
 Kompatibel för övriga parametrar. |
| GetEmployee | 2.0 | 2.0, 2.1, 2.2 | Kompatibel |
| GetEmployee | 2.1 | 2.0, 2.1, 2.2 | Kompatibel |
| GetEmployee | 2.2 | 2.0, 2.1, 2.2 | Kompatibel |
| GetEmployee | 2.0, 2.1, 2.2 | 3.0 | Kompatibel |
| GetEmployee | 2.0, 2.1, 2,2, 3.0 | 4.0 | Icke-kompatibel med avseende på användning av attributet kön (gender), om tjänsten följt XML-schema för domänen.
 Kompatibel för övriga parametrar. |
| GetCommissionMembersIncludingProtectedPerson | 2.1 | 2.0 | Kompatibel |
| GetCommissionMembersIncludingProtectedPerson | 2.0 | 2.1 | Kompatibel |
| GetCommissionMembersIncludingProtectedPerson | 2.0, 2.1 | 4.0 | Icke-kompatibel med avseende på användning av attributet kön (gender), om tjänsten följt XML-schema för domänen.
 Kompatibel för övriga parametrar. |
| GetCommissionMembers | 2.1 | 2.0 | Kompatibel |
| GetCommissionMembers | 2.0 | 2.1 | Kompatibel |
| GetCommissionMembers | 2.0, 2.1 | 4.0 | Icke-kompatibel med avseende på användning av attributet kön (gender), om tjänsten följt XML-schema för domänen.
 Kompatibel för övriga parametrar. |

#### Utgångna tjänstekontrakt
Inga tjänstekontrakt har utgått.

### Version tidigare
Struktur enligt ovan

