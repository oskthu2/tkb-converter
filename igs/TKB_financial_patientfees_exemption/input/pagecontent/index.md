# financial: patientfees: exemption

## Översikt

FHIR Implementation Guide för tjänstedomänen **financial: patientfees: exemption** (Nationellt högkostnadsskydd) version 1.0.
Genererad från Ineras Tjänstekontraktbeskrivning (TKB), version 1.0 (2024-03-25), och domänens WSDL- och XSD-filer.

Domänen gör det möjligt att hämta en patients högkostnadsskydd (frikort och registrerade patientavgifter) från andra vårdgivare, så att högkostnadsskyddet kan tillämpas nationellt.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [RequestExemptionStatuses](7-tjanstekontrakt.html#requestexemptionstatuses) | 1.0 | Detta tjänstekontrakt används för att begära ut högkostandsskyddstatus samt alla transaktioner 12 månader bakåt i tiden för det patientId som anges i begäran. Genom att anropa tjänstekontraktet initieras en begäran om ett utlämnande. Den efterfrågade informationen skickas sedan av utlämnande part via tjänstekontraktet ProcessExemptionStatuses. |
| [ProcessExemptionStatuses](7-tjanstekontrakt.html#processexemptionstatuses) | 1.0 | Detta tjänstekontrakt används för att lämna ut högkostandsskyddstatus samt alla transaktioner 12 månader bakåt i tiden för det patientId som begärts ut. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
