# ehr: blocking — Spärrhantering

<!-- tkb-version -->
**TKB-version:** 3.2.2 · **IG-version:** 3.2.2 · **Källa:** Bitbucket-commit `caadc6edb904`, efter taggen `ehr_blocking_3.2.2`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: spärrhantering - informationsecurity:authorization:blocking Spärrhantering registrerar spärrar och kontrollerar om en patient har spärrat tillgång till patientinformation från IT-system inom och mellan vårdgivare. Tjänstekontrakten för Spärrhantering gör det möjligt för vårdpersonal att genom sina egna vårdsystem registrera lokala spärrar. Tjänstekontrakten gör det också möjligt att replikera de lokala spärrarna till den nationella spärrtjänsten. Detta är nödvändigt för att lokalt spärrad information även ska vara spärrad i nationella tjänster som har åtkomst till patientinformation, till exempel NPÖ.</td></tr>
<tr><th>Svenskt kortnamn</th><td>spärrhantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:spärrhantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 3.2.2 · <a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/ehr_blocking_3.2.2">tagg ehr_blocking_3.2.2</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/master/docs/TKB_ehr_blocking_3.2.2.docx">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **ehr: blocking** (Spärrhantering) version 3.2.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen hanterar spärrhantering för vårdgivare som behöver registrera spärr av uppgifter på patientens begäran enligt Patientdatalagens regleringar samt att utföra kontroll mot spärr i vårdsystemen.

RIV-TA namnrymd: `urn:riv:ehr:blocking`

## Tjänstekontrakt

Domänen innehåller följande tjänstekontrakt, organiserade i fyra underdomäner:

### Querying — Frågetjänster

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetAllBlocks](7-tjanstekontrakt.html#getallblocks) | 2.0 | Läs alla spärrar (nationell nivå) |
| [GetAllBlocksForPatient](7-tjanstekontrakt.html#getallblocksforpatient) | 2.0 | Läs alla spärrar för en patient |
| [GetBlocks](7-tjanstekontrakt.html#getblocks) | 2.0 | Läs spärrar för en vårdgivare |
| [GetBlocksForPatient](7-tjanstekontrakt.html#getblocksforpatient) | 2.0 | Läs spärrar för patient och vårdgivare |

### Accesscontrol — Spärrkontroll

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [CheckBlocks](7-tjanstekontrakt.html#checkblocks) | 3.0 | Kontrollera om spärr finns för given personal/vårdenhet |

### Synchronization — Replikering till nationell tjänst

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [RegisterBlock](7-tjanstekontrakt.html#registerblock) | 2.0 | Registrera spärr i nationell spärrtjänst |
| [UnregisterBlock](7-tjanstekontrakt.html#unregisterblock) | 2.0 | Avregistrera spärr från nationell spärrtjänst |
| [RegisterTemporaryRevoke](7-tjanstekontrakt.html#registertemporaryrevoke) | 2.0 | Registrera tillfällig hävning |
| [UnregisterTemporaryRevoke](7-tjanstekontrakt.html#unregistertemporaryrevoke) | 2.0 | Avregistrera tillfällig hävning |

### Administration — Lokal spärradministration

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetPatientIds](7-tjanstekontrakt.html#getpatientids) | 2.0 | Läs patient-ID för spärrade patienter |
| [GetExtendedBlocksForPatient](7-tjanstekontrakt.html#getextendedblocksforpatient) | 2.0 | Läs utökade spärrar för patient |
| [RegisterExtendedBlock](7-tjanstekontrakt.html#registerextendedblock) | 2.0 | Registrera utökad spärr |
| [RevokeExtendedBlock](7-tjanstekontrakt.html#revokeextendedblock) | 2.0 | Häv spärr permanent |
| [DeleteExtendedBlock](7-tjanstekontrakt.html#deleteextendedblock) | 2.0 | Makulera spärr |
| [RegisterTemporaryExtendedRevoke](7-tjanstekontrakt.html#registertemporaryextendedrevoke) | 2.0 | Registrera tillfällig hävning (utökad) |
| [CancelTemporaryExtendedRevoke](7-tjanstekontrakt.html#canceltemporaryextendedrevoke) | 2.0 | Återkalla tillfällig hävning |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.2.2</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//ehr_blocking/3.2.2/T-granskning%20-%20ehr_blocking_3.2.2.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//ehr_blocking/3.2.2/ServiceContracts_ehr_blocking_3.2.2.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/ehr_blocking_3.2.2">källkod</a></td></tr>
<tr><td>2.0</td><td></td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/ehr_blocking/2.0/ServiceContracts_ehr_blocking_2.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/ehr_blocking_2.0">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.blocking/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
