# 6 Gemensamma informationskomponenter - informationsecurity: auditing: log v2.0.8

* [**Table of Contents**](toc.md)
* **6 Gemensamma informationskomponenter**

## 6 Gemensamma informationskomponenter

# 6 Gemensamma informationskomponenter

Källa: **Logg – Loggning och uppföljning av åtkomst till patientjournal**, tjänstekontraktsbeskrivning version 2.0.8 (2024-10-24), [TKB_informationsecurity_auditing_log.docx](TKB_informationsecurity_auditing_log.docx).

Motsvarar TKB kapitel 7 **Datatyper** (6.1 = TKB 7.1 osv.). Rubrikerna för datatyperna anges här utan namnrymdsprefixet `urn:riv:informationsecurity:auditing:log:2:`.

Kapitlet beskriver alla datatyper som används av tjänsterna, version 2.0.

### 6.1 Datatyper från namnrymd urn:riv:informationsecurity:auditing:log:2

Nedan beskrivs komplexa och simpla datatyper som är deklarerade i aktuell namnrymd urn:riv:informationsecurity:auditing:log:2, version 2.0. Dessa datatyper är vanligt förekommande i övriga tjänster senare i kapitlet.

#### 6.1.1 AccessLogType

Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.

| | | | |
| :--- | :--- | :--- | :--- |
| careProviderId | HsaId | Vårdgivare som haft åtkomst. | 1 |
| careProviderName | CareProviderName | Namn på vårdgivare som haft åtkomst. | 0..1 |
| careUnitId | HsaId | Vårdenhet som haft åtkomst. | 1 |
| careUnitName | CareUnitName | Namn på vårdenhet som haft åtkomst. | 0..1 |
| accessDate | xs:DateTime | Tidpunkt för åtkomst. | 1 |
| userId | HsaId | Vårdaktörens id. | 1 |
| userName | UserName | Namn på vårdaktör. | 0..1 |
| userTitle | UserTitle | Titel på vårdaktör. | 0..1 |
| purpose | PurposeDescription | Information om syftet med aktiviten. / kan vara något av dessa värden: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister. | 1 |
| resourceType | ResourceTypeValue | Typ av resurs. Se ref #7 och #8 | 1 |

#### 6.1.2 AccessLogsType

Datatyp som håller lista med Access loggar. Kan vara en tom lista.

| | | | |
| :--- | :--- | :--- | :--- |
| accessLog | AccessLogType |   | 0..* |

#### 6.1.3 AccessLogsResultType

Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel.

| | | | |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |   | 1 |
| accesssLogs | AccessLogsType |   | 0..1 |

#### 6.1.4 ActivityType

Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten.

| | | | |
| :--- | :--- | :--- | :--- |
| activityType | ActivityTypeValue | Värde som anger vilken typ av aktivitet som utförts. / Något av dessa värden ska anges: Läsa, Skriva, Signera, Utskrift, Vidimera, Radera och Nödöppning | 1 |
| activityLevel | ActivityLevel | Information om vilken nivå som aktivitet utförts på. | 0..1 |
| activityArgs | ActivityArgs | Övrig information för aktiviteten. T.ex. parametrar för en rapport. | 0..1 |
| startDate | xs:DateTime | Information om tidpunkt som aktivitet utfördes på. | 1 |
| purpose | PurposeDescription | Information om syftet med aktiviteten. / Något av dessa värden ska anges: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister. | 1 |

#### 6.1.5 ActivityArgs

Datatyp som representerar en .

Restriktionstyp: xs:string

Maxlängd: 8192

#### 6.1.6 ActivityLevel

Datatyp som representerar en aktivitetsnivå.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.7 ActivityTypeValue

Datatyp som representerar beskrivning av en aktivitetstyp.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.8 Assignment

Datatyp som representerar namn på medarbetare i uppdrag.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.9 CareProviderType

Datatyp som representerar en vårdgivare.

| | | | |
| :--- | :--- | :--- | :--- |
| careProviderId | HsaId | Vårdgivarens id. | 1 |
| careProviderName | CareProviderName | Vårdgivarens namn. Värdet är ej obligatoriskt. | 0..1 |

#### 6.1.10 CareProviderName

Datatyp som representerar namn på en vårdgivare.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.11 CareProvidersType

Datatyp som håller lista med vårdgivare. Kan vara en tom lista.

| | | | |
| :--- | :--- | :--- | :--- |
| careProvider | CareProviderType |   | 0..* |

#### 6.1.12 CareUnitType

Datatyp som representerar en vårdenhet.

| | | | |
| :--- | :--- | :--- | :--- |
| careUnitId | HsaId | Vårdenhetens id. | 1 |
| careUnitName | CareUnitName | Vårdenhetens namn. Värdet är ej obligatoriskt. | 0..1 |

#### 6.1.13 CareUnitName

Datatyp som representerar namn på en vårdenhet.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.14 HsaId

Datatyp som representerar det unika nummer som identifierar en anställd, uppdragstagare, strukturenhet eller en HCC funktion (HSA-id).

Specificerat enligt HSA-schema tjänsteträdet version 3.9.

Restriktionstyp: xs:string

Maxlängd: 32

#### 6.1.15 IIType

En universellt unik identifierare.

| | | | |
| :--- | :--- | :--- | :--- |
| root | xs:String | Fältet root sätts till OID för kodverket för identifieraren (extension) / Som exempel för svenskt personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. | 1 |
| extension | xs:String | Ett id som tillsammans med värdet i root är unikt. Som exempel för svensk personidentitet så är extension lika med personnummer. | 0..1 |

#### 6.1.16 Id

Datatyp som representerar ett unikt identifikationsnummer enligt formatet för UUID (Universally Unique Identifier).

Restriktionstyp: xs:string

Maxlängd: 36

#### 6.1.17 InfoLogsResultType

Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel.

| | | | |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |   | 1 |
| careProviders | CareProvidersType |   | 0..1 |

#### 6.1.18 LogType

Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost.

| | | | |
| :--- | :--- | :--- | :--- |
| logId | Id | Unik, global identifierare för loggposten. | 1 |
| system | SystemType | Information om systemet som skapar loggpost. Innehåller systemets id samt eventuellt namn. | 1 |
| activity | ActivityType | Information om aktivitet som utförts och som ska loggas. Innehåller typ av aktivitet, datum för aktiviteten och i vilket syfte som aktiviteten utfördes. | 1 |
| user | UserType | Information om användaren som utfört aktivitet. Innehåller användarens id samt till vilken vårdenhet användaren tillhör. Kan även innehålla ej obligatoriska uppgifter som namn, personnummer, uppdrag och titel. | 1 |
| resources | ResourcesType | Information om aktuella resurser. Se ref #7 och #8 | 1 |

#### 6.1.19 LogsType

Datatyp som håller lista med loggposter. Kan vara en tom lista

| | | | |
| :--- | :--- | :--- | :--- |
| log | LogType |   | 0..* |

#### 6.1.20 LogsResultType

Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel.

| | | | |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |   | 1 |
| logs | LogsType |   | 0..1 |

#### 6.1.21 PatientType

Datatyp som representerar en patient i en resurs.

| | | | |
| :--- | :--- | :--- | :--- |
| patientId | IIType | Patientens id nummer, kan vara personnummer, samordningsnummer alternativt reservnummer. | 1 |
| patientName | PatientName | Patienten namn. Värdet är ej obligatoriskt. | 0..1 |

#### 6.1.22 PatientName

Datatyp som representerar en patients namn.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.23 PurposeDescription

Datatyp som representerar beskrivning av ett syfte i Hsa.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.24 ReportResultType

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType |   | 1 |
| startInterval | xs:DateTime | Parameter som anger datum för första loggposten som finns för uppföljning när rapporten skapas. | 0..1 |
| endInterval | xs:DateTime | Parameter som anger datum för sista loggposten som finns för uppföljning när rapporten skapas. | 0..1 |
| queuedReportId | Id | Parameter som anger id på den rapport som efterfrågas och returneras om anropet avslutas innan rapporten är genererad. Ytterligare anrop kan då göras med rapport id som inparameter för att hämta rapport. Finns för att undvika hängande anrop samt köa upp jobb vid hög belastning. | 0..1 |
| queueTime | Integer | Anger förväntad tid i sekunder tills en köad rapport (identifierad med queuedReportId) kan levereras av producenten. | 0..1 |

#### 6.1.25 ResourceType

Datatyp som representerar en resurs i loggposten.

| | | | |
| :--- | :--- | :--- | :--- |
| resourceType | ResourceTypeValue | Information om vilken typ av resurs som loggpost avser. Se resurstyp (informationstyp) under ref #7 och ref #8 | 1 |
| patient | PatientType | Information om vilken patient som resursen avser. Värdet är ej obligatoriskt. | 0..1 |
| careProvider | CareProviderType | Information om vilken vårdgivare resursen tillhör. | 1 |
| careUnit | CareUnitType | Information om vilken vårdenhet resursen tillhör. | 0..1 |

#### 6.1.26 ResourceTypeValue

Datatyp som representerar en aktivitetsnivå. Se Logganvisning på inera.se, under Säkerhetstjänster

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.27 ResourcesType

Information om aktuella resurser. En loggpost kan hålla en eller flera resurser.

| | | | |
| :--- | :--- | :--- | :--- |
| resource | ResourceType | Se mer under ref #7 och ref #8 | 1..* |

#### 6.1.28 ResultType

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc.

En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades.

Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType | Anger svarskod för åtgärden. | 1 |
| resultText | xs:String | Optionellt felmeddelande som innehåller information om felet som uppstod. Fältet är tomt om resultatkoden är "OK". | 0..1 |

#### 6.1.29 ResultCodeType

Enumerationsvärde som anger de svarskoder som finns.

| | |
| :--- | :--- |
| "OK" | Transaktionen har utförts enligt uppdraget. |
| "INFO" | Transaktionen har utförts enligt begäran, men det finns ett meddelande som konsumenten måste visa upp för användaren (om tillämpbart). Exempel på detta kan vara "kom fastande". |
| "ERROR" | Transaktionen har INTE kunnat utföras p.g.a ett logiskt fel. Det finns ett meddelande som konsumenten måste visa upp. Exempel på detta kan vara "tiden har bokats av annan patient". |
| "VALIDATION_ERROR" | Svaret som skulle ha returnerats innehåller korrupt data enligt valideringen. Information på blockkedjan kan inte valideras. Angiven tjänst utfördes ej. |
| "ACCESSDENIED" | Behörighet saknas för att utföra begärd tjänst. Angiven tjänst utfördes ej. |
| "REPORT_ON_QUEUE" | Angiven rapport är ej klar. Rapporten ligger på kö för att genereras. Ytterligere anrop kan göras för att kontrollera om jobbet är klart. |
| "REPORT_IN_PROCESS" | Angiven rapport är ej klar. Rapporten är under uppbyggnad. Ytterligere anrop kan göras för att kontrollera om jobbet är klart. |
| "REPORT_NOT_FOUND" | Felaktig id angivet. Angiven tjänst ej kan hitta rapport med angivet id som är skapad eller rapport som ligger på kö för att skapas. |
| "MAX_QUERY_RESULT_EXCEEDED" | Max antal loggposter som tjänsten kan returnera har överstigits. Ändra sökparametrar för att begränsa rapportuttaget. |

#### 6.1.30 SystemType

Datatyp som representerar ett system i loggposten. Det system som skapar loggposten.

| | | | |
| :--- | :--- | :--- | :--- |
| systemId | HsaId | Systemets id. | 1 |
| systemName | SystemName | Systemets namn. Värdet är ej obligatoriskt. | 0..1 |

#### 6.1.31 SystemName

Datatyp som representerar namn på ett system.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.32 UserType

Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost.

| | | | |
| :--- | :--- | :--- | :--- |
| userId | HsaId | Användarens id. Loggpostens ägare. | 1 |
| name | UserName | Användarens fulla namn. Värdet är ej obligatoriskt. | 0..1 |
| personId | IIType | Användarens id nummer, kan vara personnummer, samordningsnummer alternativt reservnummer. Värdet är ej obligatoriskt. | 0..1 |
| assignment | Assignment | Namn på medarbetare i uppdrag, exempelvis sjuksköterska på kirurgkliniken. Värdet är ej obligatoriskt. | 0..1 |
| title | UserTitle | Användarens titel. Värdet är ej obligatoriskt. | 0..1 |
| careProvider | CareProviderType | Användarens vårdgivare när aktivitet utfördes. Den vårdgivaren är ägare av loggposten. | 1 |
| careUnit | CareUnitType | Användarens vårdenhet när aktivitet utfördes. | 1 |

#### 6.1.33 UserName

Datatyp som representerar namn för en användare.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.34 UserTitle

Datatyp som representerar titel på användare.

Restriktionstyp: xs:string

Maxlängd: 256

#### 6.1.35 OrderId

OrderId med begränsad längd

Restriktionstyp: xs:string

Maxlängd: 36

#### 6.1.36 MultimediaType

Datatyp som beskriver en multimediatyp.

Data kan förekomma som inbäddat element eller hänvisas via en referens URL

| | | | |
| :--- | :--- | :--- | :--- |
| id | xs:String | Identitet på bilagan. Används vid referenser inom en tjänsteinteraktion. | 0..1 |
| mediaType | CodedValue | Mediatyper i MIME-format. Se ARK_0038 för mediatyper | 1 |
| value | xs:Base64Binary | Används vid inbäddad bilaga och innehåller då bilagans binärdata, kodat enligt base64. / Om bilagan innehåller avkodad text ska denna vara kodad enligt UTF-8-format. | 0..1 |
| reference | xs:AnyURI | Används vid refererad bilaga, och innehåller då den URL där bilagan kan hämtas. | 0..1 |

### 6.2 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| | | | |
| :--- | :--- | :--- | :--- |
| ResultCode (`ResultCodeType`) | OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED | [auditing-log-resultcode-cs](CodeSystem-auditing-log-resultcode-cs.md) | [auditing-log-resultcode-vs](ValueSet-auditing-log-resultcode-vs.md) |

### 6.3 Typer i domänschemat (XSD)

Genererat ur [informationsecurity_auditing_log_2.0.xsd](informationsecurity_auditing_log_2.0.xsd).

#### AccessLogType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.

| | | | |
| :--- | :--- | :--- | :--- |
| careProviderId | HsaId |   | 1..1 |
| careProviderName | CareProviderName |   | 0..1 |
| careUnitId | HsaId |   | 1..1 |
| careUnitName | CareUnitName |   | 0..1 |
| accessDate | dateTime |   | 1..1 |
| userId | HsaId |   | 1..1 |
| userName | UserName |   | 0..1 |
| userTitle | UserTitle |   | 0..1 |
| purpose | PurposeDescription |   | 1..1 |
| resourceType | ResourceTypeValue |   | 1..1 |

#### AccessLogsResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som returneras av tjänst. accessLogs ej satt vid eventuella fel.

| | | | |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |   | 1..1 |
| accesssLogs | AccessLogsType | Datatyp som håller lista med Access loggar. Kan vara en tom lista. | 0..1 |

#### AccessLogsType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som håller lista med Access loggar. Kan vara en tom lista.

| | | | |
| :--- | :--- | :--- | :--- |
| accessLog | AccessLogType | Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt. | 0..* |

#### ActivityType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten.

| | | | |
| :--- | :--- | :--- | :--- |
| activityType | ActivityTypeValue |   | 1..1 |
| activityLevel | ActivityLevel |   | 0..1 |
| activityArgs | ActivityArgs |   | 0..1 |
| startDate | dateTime |   | 1..1 |
| purpose | PurposeDescription |   | 1..1 |

#### CareProviderType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en vårdgivare.

| | | | |
| :--- | :--- | :--- | :--- |
| careProviderId | HsaId |   | 1..1 |
| careProviderName | CareProviderName |   | 0..1 |

#### CareProvidersType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som håller lista med vårdgivare. Kan vara en tom lista.

| | | | |
| :--- | :--- | :--- | :--- |
| careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 0..* |

#### CareUnitType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en vårdenhet.

| | | | |
| :--- | :--- | :--- | :--- |
| careUnitId | HsaId |   | 1..1 |
| careUnitName | CareUnitName |   | 0..1 |

#### IIType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

En universellt unik identifierare.

| | | | |
| :--- | :--- | :--- | :--- |
| root | string |   | 1..1 |
| extension | string |   | 0..1 |

#### InfoLogsResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som returneras av tjänst. careProviders är ej satt vid eventuella fel.

| | | | |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |   | 1..1 |
| careProviders | CareProvidersType | Datatyp som håller lista med vårdgivare. Kan vara en tom lista. | 0..1 |

#### LogType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost.

| | | | |
| :--- | :--- | :--- | :--- |
| logId | Id |   | 1..1 |
| system | SystemType | Datatyp som representerar ett system i loggposten. Det system som skapar loggposten. | 1..1 |
| activity | ActivityType | Datatyp som representerar vilken typ av aktivitet som utförts, på vilken nivå, tidpunkt samt syftet med aktiviteten. | 1..1 |
| user | UserType | Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost. | 1..1 |
| resources | ResourcesType | Information om aktuella resurser. En loggpost kan hålla en eller flera resurser. | 1..1 |

#### LogsResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som returneras av tjänst. logs är ej satt vid eventuella fel.

| | | | |
| :--- | :--- | :--- | :--- |
| reportResult | ReportResultType |   | 1..1 |
| logs | LogsType | Datatyp som håller lista med loggposter. Kan vara en tom lista | 0..1 |

#### LogsType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som håller lista med loggposter. Kan vara en tom lista

| | | | |
| :--- | :--- | :--- | :--- |
| log | LogType | Datatyp som representerar en loggpost enligt PDL. Datatypen beskriver grundformatet för en loggpost. | 0..* |

#### MultimediaType

Domänschema `GetFilesForOrderIdResponder_1.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:GetFilesForOrderIdResponder:1`).

Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL.

| | | | |
| :--- | :--- | :--- | :--- |
| id | string |   | 0..1 |
| mediaType | CodedValue |   | 1..1 |
| value | base64Binary |   | 0..1 |
| reference | anyURI |   | 0..1 |

#### PatientType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en patient i en resurs.

| | | | |
| :--- | :--- | :--- | :--- |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| patientName | PatientName |   | 0..1 |

#### ReportResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

| | | | |
| :--- | :--- | :--- | :--- |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| startInterval | dateTime |   | 0..1 |
| endInterval | dateTime |   | 0..1 |
| queuedReportId | Id |   | 0..1 |
| queueTime | int |   | 0..1 |

#### ResourceType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar en resurs i loggposten.

| | | | |
| :--- | :--- | :--- | :--- |
| resourceType | ResourceTypeValue |   | 1..1 |
| patient | PatientType | Datatyp som representerar en patient i en resurs. | 0..1 |
| careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 0..1 |

#### ResourcesType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Information om aktuella resurser. En loggpost kan hålla en eller flera resurser.

| | | | |
| :--- | :--- | :--- | :--- |
| resource | ResourceType | Datatyp som representerar en resurs i loggposten. | 1..* |

#### ResultType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.

| | | | |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeType |   | 1..1 |
| resultText | string |   | 0..1 |

#### SystemType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar ett system i loggposten. Det system som skapar loggposten.

| | | | |
| :--- | :--- | :--- | :--- |
| systemId | HsaId |   | 1..1 |
| systemName | SystemName |   | 0..1 |

#### UserType

Domänschema `informationsecurity_auditing_log_2.0.xsd` (namnrymd `urn:riv:informationsecurity:auditing:log:2`).

Datatyp som representerar användaren som utfört aktivitet, tillika ägare av loggpost.

| | | | |
| :--- | :--- | :--- | :--- |
| userId | HsaId |   | 1..1 |
| name | UserName |   | 0..1 |
| personId | IIType | En universellt unik identifierare. | 0..1 |
| assignment | Assignment |   | 0..1 |
| title | UserTitle |   | 0..1 |
| careProvider | CareProviderType | Datatyp som representerar en vårdgivare. | 1..1 |
| careUnit | CareUnitType | Datatyp som representerar en vårdenhet. | 1..1 |

