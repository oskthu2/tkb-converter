# 6 Gemensamma informationskomponenter

I tjänstekontraktsbeskrivningarna används ett antal komponenter som är gemensamma för vissa
meddelanden i flera domäner och tjänstekontrakt.

De gemensamma typerna beskrivs i bilaga/bilagor med namn "Bilaga Gemensamma_typer_\<version\>.pdf".
Hänvisad \<version\> anger vilken version av gemensamma typer som använts i respektive kontrakt.

Version 19 av gemensamma datatyper har använts för GetCareDocumentation (v3.0).

## Gemensamma typer använda i denna domän

| Typ | Beskrivning |
|-----|-------------|
| CVType | Referens till begrepp i externt kodverk (kod + kodsystem + klartext) |
| DatePeriodType | Datumintervall med start- och slutdatum (format ÅÅÅÅMMDD) |
| DateType | Datum som sträng på formatet ÅÅÅÅMMDD |
| HSAIdType | HSA-identifierare för vårdenhet eller personal |
| IIType | Instance Identifier — numerisk/alfanumerisk sträng med root och extension |
| MultimediaType | Binärt innehåll med mediaType, value (base64) eller reference (URL) |
| OrgUnitType | Organisationsenhet med HSA-id, namn, telefon, epost, adress |
| ResultType | Resultatkod (OK/INFO/ERROR) och valfritt felmeddelande |
| TimeStampType | Tidpunkt på formatet ÅÅÅÅMMDDttmmss |
| PatientSummaryHeaderType | Gemensam header för GetDiagnosis, GetAlertInformation, GetFunctionalStatus |
| HealthcareProfessionalType | Information om hälso- och sjukvårdsperson (HSA-id, namn, befattning, org) |
| LegalAuthenticatorType | Information om signerande person |

Se bilaga "Bilaga Gemensamma_typer_7.pdf" i källdistributionen för fullständiga fältregler.
