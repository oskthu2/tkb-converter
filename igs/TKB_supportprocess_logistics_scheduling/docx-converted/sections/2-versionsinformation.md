## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen supportprocess:logistics:scheduling. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.0

#### Oförändrade tjänstekontrakt
Det finns inga oförändrade kontrakt i denna version

#### Nya tjänstekontrakt
Samtliga tjänstekontrakt i domänen är förändrade utifrån att den information de bär är om-modellerad, i förhållande till föregående version (version 1). Tjänstekontraktens namnsättning är också förändrad för att bättre liera med de begrepp som används inom FHIR i relation till tidbokning.
Här följer en mappningstabell som visar respektive tjänstekontrakts motsvarighet i de två versionerna (version 1 och version 2),

| Tjänstekontrakt v1 | Tjänstekontrakt v2 | Funktion |
| :--- | :--- | :--- |
| CancelBooking | CancelAppointment | Avbokar en befintlig bokning |
| - | ConfirmAppointment | Bekräftar en bokning som bokats från verksamheten |
| GetAllCareTypes | - | Hämtar vårdtyper som stödjs av vårdcentral. (Detta tjänstekontrakt används inte av 1177) |
| - | GetHealthcareFacility | Nytt tjänstekontrakt för att hämta detaljer om vårdcentral |
| GetAllHealthcareFacilities | GetHealthcareFacilities | Hämtar vårdcentraler som ingår i en grupp av vårdcentraler med samma utbud |
| GetAllPerformers | GetPractitioners | Hämtar vårdpersonal som kan bokas i samband med tidbokningen |
| GetAllTimeTypes | GetTimeTypes | Hämtar tidstyper (vad bokningen avser) som vårdcentral erbjuder |
| GetAvailableDates | GetAvailableDates | Hämtar datum som har lediga tider |
| GetAvailableTimeslots | GetAvailableTimeslots | Hämtar lediga tider |
| GetBookingDetails | GetAppointment | Hämtar detaljer om en bokning |
| GetSubjectOfCareSchedule | GetAppointments | Hämtar en lista med bokningar (invånarens bokningar) |
| MakeBooking | MakeAppointment | Bokar en ny tid, baserat på en tid (tidslucka) |
| UpdateBooking | UpdateAppointment | Uppdaterar en bokning med ny tid (baserat på en ny tidslucka) |

#### Förändrade tjänstekontrakt
Se kap 2.1.2

#### Utgångna tjänstekontrakt

### Version tidigare
Version 1.1

