# informationsecurity: auditing: log

## Översikt

FHIR Implementation Guide för tjänstedomänen **informationsecurity: auditing: log** (Loggtjänst, Informationssäkerhet: Uppföljning: Åtkomstlogg) version 2.0.8.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 2.0.8 (2024-10-24), och domänens WSDL- och XSD-filer (tagg 2.0.8).

Domänen standardiserar informationsutbytet med loggtjänster: registrering av åtkomstloggar enligt patientdatalagen och uppföljning av dem ur patientens, vårdgivarens och informationsägarens perspektiv.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [StoreLog](7-tjanstekontrakt.html#storelog) | 2.0 | Tjänst som sparar en eller flera loggposter i loggtjänsten för att möjliggöra uppföljning enligt PDL. Loggposter ska sparas i ett arkiv med löpnummer samt signeras för att säkerställa integriteten av loggposter. |
| [GetLogs](7-tjanstekontrakt.html#getlogs) | 2.0 | Tjänst som returnerar loggposter utifrån angivna sökkriterier, all åtkomst som har skett av vårdgivarens medarbetare. |
| [GetAccessLogsForPatient](7-tjanstekontrakt.html#getaccesslogsforpatient) | 2.0 | Tjänst som returnerar lista för angiven patient, vilka vårdgivare och vårdaktör som har haft åtkomst till information. Informationen som returneras innehåller även tidpunkt, syfte och typ av resurs. |
| [GetInfoLogs](7-tjanstekontrakt.html#getinfologs) | 2.0 | Tjänst som returnerar loggposter utifrån angivna sökkriterier, vilka vårdgivare som har haft åtkomst till vårdgivarens information där vårdgivaren är informationsägare. |
| [GetLogsByOrder](7-tjanstekontrakt.html#getlogsbyorder) | 1.0 | En tjänst som returnerar ett unikt ordernummer (order-id) vilket senare kan användas för anrop av tjänsten GetFilesForOrderId för att från denna tjänst erhålla ett unikt URL, vilket man sedan kan använda för att via REST-anrop hämta hem de filer som har skapats av GetLogsByOrder, se kap 3.1.5. |
| [GetFilesForOrderId](7-tjanstekontrakt.html#getfilesfororderid) | 1.0 | Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
