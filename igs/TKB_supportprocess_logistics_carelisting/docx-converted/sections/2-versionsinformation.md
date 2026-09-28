## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen supportprocess: logistics: carelisting. Observera att version för detta dokument och domänen måste vara lika. Detta för att spårbarheten inte skall brytas.

### Version 2.1
Samtliga av de fem tjänstekontrakt som ingått i föregående majorversion (1.0) är förändrade i sitt informationsinnehåll.
Kontraktet GetAvailableFacilities har dessutom bytt namn till GetAvailableHealthcareFacilities.
Tjänstedomänens namnrymd har i samband med uppdatering till denna version (version 2) också uppdaterats för att följa den tre-ställiga namnrymnds-standarden. Domänens namnrymd är således uppdaterade från crm:carelisting till supportprocess:logistics:carelisting.

#### Nya tjänstekontrakt
Följande nya tjänstekontrakt finns från och med version 2.0:

| Tjänstekontrakt | Syfte |
| :--- | :--- |
| GetListingCounty | Tjänstekontrakt för att fråga region om i vilken region en invånare är listad på. Tjänstekontraktet adresseras till invånares folkbokföringsregion. |
| UpdateListing | Tjänstekontrakt för att förmedla att en invånare ändrat sin listning över en regiongräns. Tjänstekontraktet används mellan regioners listningssystem. |
| GetAvailableHealthcarePersonnel | Frivilligt tjänstekontrakt för att listningsbar mottagning även ska kunna erbjuda listningsval på vårdpersonal. |

#### Förändrade tjänstekontrakt
Följande tjänstekontrakt har förändrats i version 2.x sedan föregående majorversion (v 1.0):

| Tjänstekontrakt | Ändring |
| :--- | :--- |
| CreateListing | Förbättrat stöd för olika listningstyper. Stöd för utomlänslistning. |
| GetAvailableHealthcareFacilities | Tidigare namn på kontraktet är GetAvailableFacilities. |
| GetListing | Förbättrat stöd för olika listningstyper för aktiv listning. Status om invånare står i kö. |
| GetListingTypes | Förbättrat stöd för olika listningstyper. |
Följande tjänstekontrakt har förändrats i minor-version 2.1 (sedan majorversion v 2.0):

| Tjänstekontrakt | Ändring |
| :--- | :--- |
| GetAvailableHealthcareFacilities | Producent kan frivilligt svara med hur lång kö det är på mottagningen för att lista sig samt uppskattad väntetid, i det fall då mottagningen inte kan ta in flera listningar och också erbjuder möjlighet för invånare att ställa sig i kö. |
| GetListing | Producent kan frivilligt förmedla hur många kvarvarande omlistningar som invånare tillåts utföra. Producent har också möjlighet att förmedla invånarens plats i kön samt förväntad väntetid innan invånaren kan bli listad på mottagningen, i det fall då invånaren står i kö för att bli listad på mottagningen. |

#### Utgångna tjänstekontrakt
Följande tjänstekontrakt har utgått inför version 2.0:

| Tjänstekontrakt | Kommentar |
| :--- | :--- |
| GetPersonQueueStatus | Kontraktet har utgått då information om invånares eventuella köstatus fås via kontraktet GetListing. |

### Version tidigare
Samtliga av de fem tjänstekontrakten i tidigare majorversion (1.0) är förändrade. Inga tjänstekontrakt är därmed kompatibla mellan 1.0 och 2.0 versionerna av domänen.

