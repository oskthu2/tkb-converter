## Datatyper
Kaptitlet beskriver alla datatyper som används av tjänsterna, version 1.0.

### Datatyper från namnrymd urn:riv:ehr:log:1
Nedan beskrivs några komplexa datatyper som är deklarerade i den beroende namnrymden urn:riv:ehr:log:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### log:Activity
Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| activityType | log:ActivityTypeValue | Värde som anger vilken typ av aktivitet som utförts. / Något av dessa värden ska anges: Läsa, Skriva, Signera, Utskrift, Vidimera, Radera och Nödöppning | 1 |
| activityLevel | log:ActivityLevel | Information om vilken nivå som aktivitet utförts på. | 0..1 |
| activityArgs | log:ActivityArgs | Övrig information för aktiviteten. T.ex. parameterar för en rapport. | 0..1 |
| startDate | xs:dateTime | Information om tidpunkt som aktivitet utfördes på. | 1 |
| purpose | log:PurposeDescription | Information om syftet med aktiviten. / Något av dessa värden ska anges: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister. | 1 |

#### log:ActivityArgs
Datatyp som representerar en .
Maxlängd: 8192

#### log:ActivityLevel
Datatyp som representerar en aktivitets nivå.
Maxlängd: 50

#### log:ActivityType
Enumerationsvärde som anger typ av aktivitet som utförts.
Kan vara Läsa, Skriva, Signera, Utskrift, Vidimera, Radera, Nödöppning

| Värde | Beskrivning |
| :--- | :--- |
| "Läsa" | En läsning av data har utförts. |
| "Skriva" | En aktivitet där något läggs till. |
| "Signera" | Signering har utförts. |
| "Utskrift" | En utskrift har utförts. |
| "Vidimera" | En autentisering har utförts. |
| "Radera" | Något har raderats. |
| "Nödöppning" | Nödöppning har gjorts. |

#### log:Assignment
Datatyp som representerar namn på medarbetare i uppdrag.
Maxlängd: 256

#### log:CareProvider
Datatyp som representerar en vårdgivare.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProviderId | log:HsaId | Vårdgivarens id. | 1 |
| careProviderName | log:CareProviderName | Vårdgivarens namn. Värdet är ej obligatoriskt. | 0..1 |

#### log:CareProviderName
Datatyp som representerar namn på en vårdgivare.
Maxlängd: 256

#### log:CareUnit
Datatyp som representerar en vårdenhet.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careUnitId | log:HsaId | Vårdenhetens id. | 1 |
| careUnitName | log:CareUnitName | Vårdenhetens namn. Värdet är ej obligatoriskt. | 0..1 |

#### log:CareUnitName
Datatyp som representerar namn på en vårdenhet.
Maxlängd: 256

#### log:HsaId
Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).
Specificerat enligt HSA-schema tjänsteträdet version 3.9.
Maxlängd: 32

#### log:Id
Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).
Maxlängd: 36

#### log:Log
Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| logId | log:Id | Unik, global identifierare för loggposten. | 1 |
| system | log:System | Information om systemet som skapar loggpost. Innehåller systemets id samt eventuellt namn. | 1 |
| activity | log:Activity | Information om aktivitet som utförts och som ska loggas. Innehåller typ av aktivitet, datum för aktiviteten och i vilket syfte som aktiviteten utfördes. | 1 |
| user | log:User | Information om användaren som utfört aktivitet. Innehåller användarens id samt till vilken vårdenhet användaren tillhör. Kan även innehålla ej obligatoriska uppgifter som namn, personnummer, uppdrag och titel. | 1 |
| resources | log:Resources | Information om aktuella resurser. | 1 |

#### log:Patient
Datatyp som representerar en patient i en resurs.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| patientId | log:PersonId | Patientens id nummer, kan vara personnummer, samordningsnummer alternativt reservnummer. | 1 |
| patientName | log:PatientName | Patienten namn. Värdet är ej obligatoriskt. | 0..1 |

#### log:PatientName
Datatyp som representerar en patients namn.
Maxlängd: 256

#### log:PersonId
Datatyp som representerar ett personnummer, samordningsnummer eller ett reservnummer.
Maxlängd: 12

#### log:PurposeDescription
Datatyp som representerar beskrivning av ett syfte i Hsa.
Maxlängd: 256

#### log:ActivityTypeValue
Datatyp som representerar beskrivning av en aktivitetstyp.
Maxlängd: 256

#### log:Resource
Datatyp som representerar en resurs i loggposten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resourceType | log:ResourceTypeValue | Information om vilken typ av resurs som loggpost avser. Kan vara kemlabbsvar, journaltext, remiss, översikt, samtycke, patientrelation, sätta spärr, rapport osv. | 1 |
| patient | log:Patient | Information om vilken patient som resursen avser. Värdet är ej obligatoriskt. | 0..1 |
| careProvider | log:CareProvider | Information om vilken vårdgivare resursen tillhör. | 1 |
| careUnit | log:CareUnit | Information om vilken vårdenhet resursen tillhör. | 0..1 |

#### log:ResourceTypeValue
Datatyp som representerar en aktivitets nivå.
Maxlängd: 50

#### log:Resources
Information om aktuella resurser. En loggpost kan hålla en eller flera resurser.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resource | log:Resource |  | 1..* |

#### log:ResultCode
Enumerationsvärde som anger de svarskoder som finns.

| Värde | Beskrivning |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATION_ERROR" | En eller flera inparametrar innehåller felaktiga värden. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "REPORT_ON_QUEUE" | Angiven rapport är ej klar. Rapporten ligger på kö för att genereras. Ytterligere anrop kan göras för att kontrollera om jobbet är klart. |
| "REPORT_IN_PROCESS" | Angiven rapport är ej klar. Rapporten är under uppbyggnad. Ytterligere anrop kan göras för att kontrollera om jobbet är klart. |
| "REPORT_NOT_FOUND" | Felaktig id angivet. Angiven tjänst ej kan hitta rapport med angivet id som är skapad eller rapport som ligger på kö för att skapas. |
| "MAX_QUERY_RESULT_EXCEEDED" | Max antal loggposter som tjänsten kan returnera har överstigits. Ändra sökparametrar för att begränsa rapportuttaget. |

#### log:System
Datatyp som representerar ett system i loggposten. Det system som skapar loggposten.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| systemId | log:HsaId | Systemets id. | 1 |
| systemName | log:SystemName | Systemets namn. Värdet är ej obligatoriskt. | 0..1 |

#### log:SystemName
Datatyp som representerar namn på ett system.
Maxlängd: 256

#### log:User
Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| userId | log:HsaId | Användarens id. Loggpostens ägare. | 1 |
| name | log:UserName | Användarens fulla namn. Värdet är ej obligatoriskt. | 0..1 |
| personId | log:PersonId | Användarens id nummer, kan vara personnummer, samordningsnummer alternativt reservnummer. Värdet är ej obligatoriskt. | 0..1 |
| assignment | log:Assignment | Namn på medarbetare i uppdrag, exempelvis sjuksköterska på kirurgkliniken. Värdet är ej obligatoriskt. | 0..1 |
| title | log:UserTitle | Användarens titel. Värdet är ej obligatoriskt. | 0..1 |
| careProvider | log:CareProvider | Användarens vårdgivare när aktivitet utfördes. Den vårdgivaren är ägare av loggposten. | 1 |
| careUnit | log:CareUnit | Användarens vårdenhet när aktivitet utfördes. | 1 |

#### log:UserName
Datatyp som representerar namn för en användare.
Maxlängd: 256

#### log:UserTitle
Datatyp som representerar titel på användare.
Maxlängd: 256

### Datatyper från namnrymd urn:riv:ehr:log.querying:1
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:log.querying:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### log.querying:AccessLogType
Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| CareProviderId | log:HsaId | Vårdgivare som haft åtkomst. | 1 |
| CareProviderName | log:CareProviderName | Namn på vårdgivare som haft åtkomst. | 0..1 |
| CareUnitId | log:HsaId | Vårdenhet som haft åtkomst. | 1 |
| CareUnitName | log:CareUnitName | Namn på vårdenhet som haft åtkomst. | 0..1 |
| AccessDate | xs:dateTime | Tidpunkt för åtkomst. | 1 |
| UserId | log:HsaId | Aktörens Id | 1 |
| UserName | log:UserName | Namn på vårdaktören | 0..1 |
| UserTitle | log:UserTitle | Titel på vårdaktören | 0..1 |
| Purpose | log:PurposeDescription | Information om syftet med aktiviten. / kan vara något av dessa värden: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister. | 1 |
| ResourceType | log:ResourceTypeValue | Typ av resurs. | 1 |

#### log.querying:AccessLogs
Datatyp som håller lista med Access loggar. Kan vara en tom lista.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accessLog | log.querying:AccessLog |  | 0..* |

#### log.querying:AccessLogsResult
Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accesssLogs | log.querying:AccessLogs |  | 0..1 |

#### log.querying:CareProviders
Datatyp som håller lista med vårdgivare. Kan vara en tom lista.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProvider | log:CareProvider |  | 0..* |

#### log.querying:InfoLogsResult
Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careProviders | log.querying:CareProviders |  | 0..1 |

#### log.querying:Logs
Datatyp som håller lista med loggposter. Kan vara en tom lista

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| log | log:Log |  | 0..* |

#### log.querying:LogsResult
Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| logs | log.querying:Logs |  | 0..1 |

#### log.querying:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | log:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |
| startInterval | xs:dateTime | Parameter som anger datum för första loggposten som finns för uppföljning när rapporten skapas. | 0..1 |
| endInterval | xs:dateTime | Parameter som anger datum för sista loggposten som finns för uppföljning när rapporten skapas. | 0..1 |
| queuedReportId | log:Id | Parameter som anger id på den rapport som efterfrågas och returneras om anropet avslutas innan rapporten är genererad. Ytterligare anrop kan då göras / med raport id som inparameter för att hämta rapport. Finns för att undvika hängande anrop samt köa upp jobb vid hög belastning. | 0..1 |
| queueTime | xs:int | Parameter som anger ungefärlig tid det förväntas ta innan rapporten är genererad och returneras tillsammans med queuedReportId. / Ytterligare anrop kan då göras av anropande system efter föväntad tid har gått.	Finns för att undvika hängande anrop. Anges i sekunder. | 0..1 |

### Datatyper från namnrymd urn:riv:ehr:log.store:1
Nedan beskrivs några komplexa datatyper som är deklarerade i aktuell namnrymd urn:riv:ehr:log.store:1, version 1.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### log.store:Result
Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.
En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.
Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | log:ResultCode | Anger svarskod för åtgärden. | 1 |
| resultText | xs:string | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 1 |