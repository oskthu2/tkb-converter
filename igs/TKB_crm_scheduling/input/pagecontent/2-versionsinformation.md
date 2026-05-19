## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen crm:scheduling. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.
Historik, bakåtkompabilitet och konsumenter
Fram till denna version var tjänstedomänen Invånarens Tidbokning en s.k. projekt-specifik tjänstedomän. Det innebar att Mina vårdkontakter var den enda tillåtna konsumenten inom Tidbokning. Under tiden som projekt-specifik domän åtog sig Mina vårdkontakter att uppgradera till senaste versionen av tidbokningskontrakten före någon producent uppgraderat. Detta löste bristen på kompatibilitet mellan 1.0-konsument och 1.1-producent. Därför används versionsnummer 1.1 istället för 2.0.
Tjänstedomänen är godkänd nationellt. Nya konsumenter måste implementera version 1.1 av kontrakten

### Version 1.1

#### Oförändrade tjänstekontrakt
Det finns inga oförändrade kontrakt i denna version

#### Nya tjänstekontrakt
GetAllPerformers, version 1.1
GetAllHealthcareFacilities, version 1.1
GetAllCareTypes 1.1
CancelBooking, version 1.1

#### Förändrade tjänstekontrakt
GetAllTimeTypes, version 1.1
GetBookingDetails, version 1.1
GetSubjectOfCareSchedule, version 1.1
GetAllCareTypes, version 1.1
GetAvailableDates, version 1.1
GetAvailableTimeslots, version 1.1
MakeBooking, version 1.1
UpdateBooking, version 1.1
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar; RIV-TA 2.1 översikt

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| GetAllTimeTypes | 1.1 | 1.0 | Ja |
| GetAllTimeTypes | 1.0 | 1.1 | Nej* |
| GetAvailableDates | 1.1 | 1.0 | Ja |
| GetAvailableDates | 1.0 | 1.1 | Nej* |
| GetAvailableTimeslots | 1.1 | 1.0 | Ja |
| GetAvailableTimeslots | 1.0 | 1.1 | Nej* |
| GetBookingDetail | 1.1 | 1.0 | Ja |
| GetBookingDetail | 1.0 | 1.1 | Nej* |
| GetSubjectOfCareSchedule | 1.1 | 1.0 | Ja |
|  | 1.0 | 1.1 | Nej* |
| MakeBooking | 1.1 | 1.0 | Ja |
| MakeBooking | 1.0 | 1.1 | Nej* |
| UpdateBooking | 1.1 | 1.0 | Ja |
| UpdateBooking | 1.0 | 1.1 | Nej* |

#### Utgångna tjänstekontrakt
GetCancelledAndRebooked 1.0

### Version tidigare
Version 1.0

