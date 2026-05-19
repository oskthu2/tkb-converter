# ehr: log

## Översikt

FHIR Implementation Guide för tjänstedomänen **ehr: log** version 1.2.3.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen **urn:riv:ehr:log** hanterar loggning och uppföljning av åtkomst till patientjournal enligt Patientdatalagen (PDL) och Socialstyrelsens föreskrifter (SOSFS 2008:14). Den är indelad i två underdomäner:

- **urn:riv:ehr:log:store** — registrerande tjänst
- **urn:riv:ehr:log:querying** — läsande tjänster

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Underdomän | Beskrivning |
|----------|---------|------------|-------------|
| [StoreLog](7-tjanstekontrakt.html#storelog) | 1.0 | store | Sparar en eller flera loggposter i loggtjänsten |
| [GetLogsForCareProvider](7-tjanstekontrakt.html#getlogsforcareprovider) | 1.1 | querying | Returnerar loggposter för angiven vårdgivare |
| [GetLogsForUser](7-tjanstekontrakt.html#getlogsforuser) | 1.1 | querying | Returnerar loggposter för angiven medarbetare |
| [GetLogsForPatient](7-tjanstekontrakt.html#getlogsforpatient) | 1.0 | querying | Returnerar loggposter för angiven patient |
| [GetAccessLogsForPatient](7-tjanstekontrakt.html#getaccesslogsforpatient) | 1.1 | querying | Returnerar åtkomstloggar för angiven patient |
| [GetInfoLogsForCareProvider](7-tjanstekontrakt.html#getinfologsforcareprovider) | 1.0 | querying | Returnerar informationsloggar per informationsägande vårdgivare |
| [GetInfoLogsForPatient](7-tjanstekontrakt.html#getinfologsforpatient) | 1.0 | querying | Returnerar informationsloggar per patient och informationsägare |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Datatyper](8-datatyper.html)
* [Artefakter](artifacts.html)
