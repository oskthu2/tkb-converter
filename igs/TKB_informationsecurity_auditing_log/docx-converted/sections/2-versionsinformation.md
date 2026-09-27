## Versionsinformation
Denna revision av tjänstekontraktsbeskrivningen handlar om domänen informationsecurity: auditing: log.

### Version 2.0.8
Skillnaden mellan 2.0 och 2.0.1 är förtydligande kring aggregering, se mer i kapitel 3.3 nedan.
Skillnaden mellam 2.0.1 och 2.0.2 är språkliga justeringar, komplettering av queueTime i datatypen ReportResultType samt åtgärdat brutna URL-länkar. Version 2.0.6 innebär 2 nya kontrakt samt smärre textjusteringar.

#### Oförändrade tjänstekontrakt
Samtliga befintliga kontrakt är oförändrade.

#### Nya tjänstekontrakt (version 2.0.6)
GetLogsByOrder samt GetFilesForOrderId

#### Förändrade tjänstekontrakt (version 2)
Inga befintliga kontrakt i denna release är oförändrad.
Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
| :--- | :--- | :--- | :--- |
| Samtliga kontrakt | 1.x | 2.0 | Ej kompatibel |
| Samtliga kontrakt | 2.0 | 1.x | Ej kompatibel |
|  | 2.0 | 2.0 | OK |

#### Utgångna tjänstekontrakt (version 2)
GetLogsForCareProvider, GetLogsForUser, GetLogsForPatient -är ersatta av GetLogs
GetInfoLogsForCareProvider, GetInfoLogsForPatient -är ersatta av GetInfoLogs

### Version tidigare
Endast en version 1.x tidigare

